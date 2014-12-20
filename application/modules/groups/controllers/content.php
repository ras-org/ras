<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Groups.Content.Create';
    protected $permissionDelete = 'Groups.Content.Delete';
    protected $permissionEdit   = 'Groups.Content.Edit';
    protected $permissionView   = 'Groups.Content.View';

    /**
	 * Constructor
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		
        $this->auth->restrict($this->permissionView);
		$this->load->model('groups/groups_model');
        $this->lang->load('groups');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
		Template::set_block('sub_nav', 'content/_sub_nav');

		Assets::add_module_js('groups', 'groups.js');
	}

	/**
	 * Display a list of Groups data.
	 *
	 * @return void
	 */
	public function index($offset = 0)
	{
        // Deleting anything?
		if (isset($_POST['delete'])) {
            $this->auth->restrict($this->permissionDelete);
			$checked = $this->input->post('checked');
			if (is_array($checked) && count($checked)) {

                // If any of the deletions fail, set the result to false, so
                // failure message is set if any of the attempts fail, not just
                // the last attempt

				$result = true;
				foreach ($checked as $pid) {
					$deleted = $this->groups_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
				}
				if ($result) {
					Template::set_message(count($checked) . ' ' . lang('groups_delete_success'), 'success');
				} else {
					Template::set_message(lang('groups_delete_failure') . $this->groups_model->error, 'error');
				}
			}
		}
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/groups/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->groups_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->groups_model->limit($limit, $offset);
        
		$records = $this->groups_model->find_all();

		Template::set('records', $records);
        
    Template::set('toolbar_title', lang('groups_manage'));

		Template::render();
	}
    
    /**
	 * Create a Groups object.
	 *
	 * @return void
	 */
	public function create()
	{
		$this->auth->restrict($this->permissionCreate);
        
		if (isset($_POST['save'])) {
			if ($insert_id = $this->save_groups()) {
				log_activity($this->auth->user_id(), lang('groups_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'groups');
				Template::set_message(lang('groups_create_success'), 'success');

				redirect(SITE_AREA . '/content/groups');
			}

            // Not validation error
			if ( ! empty($this->groups_model->error)) {
				Template::set_message(lang('groups_create_failure') . $this->groups_model->error, 'error');
            }
		}

		Template::set('toolbar_title', lang('groups_action_create'));

		Template::render();
	}
	/**
	 * Allows editing of Groups data.
	 *
	 * @return void
	 */
	public function edit()
	{
		$id = $this->uri->segment(5);
		if (empty($id)) {
			Template::set_message(lang('groups_invalid_id'), 'error');

			redirect(SITE_AREA . '/content/groups');
		}
        
		if (isset($_POST['save'])) {
			$this->auth->restrict($this->permissionEdit);

			if ($this->save_groups('update', $id)) {
				log_activity($this->auth->user_id(), lang('groups_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'groups');
				Template::set_message(lang('groups_edit_success'), 'success');
				redirect(SITE_AREA . '/content/groups');
			}

            // Not validation error
            if ( ! empty($this->groups_model->error)) {
                Template::set_message(lang('groups_edit_failure') . $this->groups_model->error, 'error');
			}
		}
        
		elseif (isset($_POST['delete'])) {
			$this->auth->restrict($this->permissionDelete);

			if ($this->groups_model->delete($id)) {
				log_activity($this->auth->user_id(), lang('groups_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'groups');
				Template::set_message(lang('groups_delete_success'), 'success');

				redirect(SITE_AREA . '/content/groups');
			}

            Template::set_message(lang('groups_delete_failure') . $this->groups_model->error, 'error');
		}
        
        Template::set('groups', $this->groups_model->find($id));

		Template::set('toolbar_title', lang('groups_edit_heading'));
		Template::render();
	}

	//--------------------------------------------------------------------
	// !PRIVATE METHODS
	//--------------------------------------------------------------------

	/**
	 * Save the data.
	 *
	 * @param string $type Either 'insert' or 'update'.
	 * @param int	 $id	The ID of the record to update, ignored on inserts.
	 *
	 * @return bool|int An int ID for successful inserts, true for successful
     * updates, else false.
	 */
	private function save_groups($type = 'insert', $id = 0)
	{
		if ($type == 'update') {
			$_POST['id'] = $id;
		}

        // Validate the data
        $this->form_validation->set_rules($this->groups_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

		// Make sure we only pass in the fields we want
		
		$data = $this->groups_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        
		$data['started_on']	= $this->input->post('started_on') ? $this->input->post('started_on') : '0000-00-00';

        $return = false;
		if ($type == 'insert') {
			$id = $this->groups_model->insert($data);

			if (is_numeric($id)) {
				$return = $id;
			}
		} elseif ($type == 'update') {
			$return = $this->groups_model->update($id, $data);
		}

		return $return;
	}
}