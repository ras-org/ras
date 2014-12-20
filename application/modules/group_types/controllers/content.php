<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Content controller
 */
class Content extends Admin_Controller
{
    protected $permissionCreate = 'Group_types.Content.Create';
    protected $permissionDelete = 'Group_types.Content.Delete';
    protected $permissionEdit   = 'Group_types.Content.Edit';
    protected $permissionView   = 'Group_types.Content.View';

    /**
	 * Constructor
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		
        $this->auth->restrict($this->permissionView);
		$this->load->model('group_types/group_types_model');
        $this->lang->load('group_types');
		
            $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");
        
		Template::set_block('sub_nav', 'content/_sub_nav');

		Assets::add_module_js('group_types', 'group_types.js');
	}

	/**
	 * Display a list of Group Types data.
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
					$deleted = $this->group_types_model->delete($pid);
                    if ($deleted == false) {
                        $result = false;
                    }
				}
				if ($result) {
					Template::set_message(count($checked) . ' ' . lang('group_types_delete_success'), 'success');
				} else {
					Template::set_message(lang('group_types_delete_failure') . $this->group_types_model->error, 'error');
				}
			}
		}
        $pagerUriSegment = 5;
        $pagerBaseUrl = site_url(SITE_AREA . '/content/group_types/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->group_types_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->group_types_model->limit($limit, $offset);
        
		$records = $this->group_types_model->find_all();

		Template::set('records', $records);
        
    Template::set('toolbar_title', lang('group_types_manage'));

		Template::render();
	}
    
    /**
	 * Create a Group Types object.
	 *
	 * @return void
	 */
	public function create()
	{
		$this->auth->restrict($this->permissionCreate);
        
		if (isset($_POST['save'])) {
			if ($insert_id = $this->save_group_types()) {
				log_activity($this->auth->user_id(), lang('group_types_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'group_types');
				Template::set_message(lang('group_types_create_success'), 'success');

				redirect(SITE_AREA . '/content/group_types');
			}

            // Not validation error
			if ( ! empty($this->group_types_model->error)) {
				Template::set_message(lang('group_types_create_failure') . $this->group_types_model->error, 'error');
            }
		}

		Template::set('toolbar_title', lang('group_types_action_create'));

		Template::render();
	}
	/**
	 * Allows editing of Group Types data.
	 *
	 * @return void
	 */
	public function edit()
	{
		$id = $this->uri->segment(5);
		if (empty($id)) {
			Template::set_message(lang('group_types_invalid_id'), 'error');

			redirect(SITE_AREA . '/content/group_types');
		}
        
		if (isset($_POST['save'])) {
			$this->auth->restrict($this->permissionEdit);

			if ($this->save_group_types('update', $id)) {
				log_activity($this->auth->user_id(), lang('group_types_act_edit_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'group_types');
				Template::set_message(lang('group_types_edit_success'), 'success');
				redirect(SITE_AREA . '/content/group_types');
			}

            // Not validation error
            if ( ! empty($this->group_types_model->error)) {
                Template::set_message(lang('group_types_edit_failure') . $this->group_types_model->error, 'error');
			}
		}
        
		elseif (isset($_POST['delete'])) {
			$this->auth->restrict($this->permissionDelete);

			if ($this->group_types_model->delete($id)) {
				log_activity($this->auth->user_id(), lang('group_types_act_delete_record') . ': ' . $id . ' : ' . $this->input->ip_address(), 'group_types');
				Template::set_message(lang('group_types_delete_success'), 'success');

				redirect(SITE_AREA . '/content/group_types');
			}

            Template::set_message(lang('group_types_delete_failure') . $this->group_types_model->error, 'error');
		}
        
        Template::set('group_types', $this->group_types_model->find($id));

		Template::set('toolbar_title', lang('group_types_edit_heading'));
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
	private function save_group_types($type = 'insert', $id = 0)
	{
		if ($type == 'update') {
			$_POST['id'] = $id;
		}

        // Validate the data
        $this->form_validation->set_rules($this->group_types_model->get_validation_rules());
        if ($this->form_validation->run() === false) {
            return false;
        }

		// Make sure we only pass in the fields we want
		
		$data = $this->group_types_model->prep_data($this->input->post());

        // Additional handling for default values should be added below,
        // or in the model's prep_data() method
        

        $return = false;
		if ($type == 'insert') {
			$id = $this->group_types_model->insert($data);

			if (is_numeric($id)) {
				$return = $id;
			}
		} elseif ($type == 'update') {
			$return = $this->group_types_model->update($id, $data);
		}

		return $return;
	}
}