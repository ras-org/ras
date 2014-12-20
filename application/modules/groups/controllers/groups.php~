<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Groups controller
 */
class Groups extends Front_Controller
{
    protected $permissionCreate = 'Groups.Groups.Create';
    protected $permissionDelete = 'Groups.Groups.Delete';
    protected $permissionEdit   = 'Groups.Groups.Edit';
    protected $permissionView   = 'Groups.Groups.View';

    /**
	 * Constructor
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->model('groups/groups_model');
		$this->load->model('group_types/group_types_model','group_types_model');
		$this->load->model('users/user_model');
        	$this->lang->load('groups');
		$this->lang->load('users/users');
	        $this->siteSettings = $this->settings_lib->find_all();
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');
 Assets::add_module_js('users', 'password_strength.js');
            Assets::add_module_js('users', 'jquery.strength.js');
                    $this->form_validation->set_error_delimiters("<span class='error'>", "</span>");

		Assets::add_module_js('groups', 'groups.js');
	}

	/**
	 * Display a list of Groups data.
	 *
	 * @return void
	 */
	public function index($offset = 0)
	{
        
        $pagerUriSegment = 3;
        $pagerBaseUrl = site_url('groups/index') . '/';
        
        $limit  = $this->settings_lib->item('site.list_limit') ?: 15;

        $this->load->library('pagination');
        $pager['base_url']    = $pagerBaseUrl;
        $pager['total_rows']  = $this->groups_model->count_all();
        $pager['per_page']    = $limit;
        $pager['uri_segment'] = $pagerUriSegment;

        $this->pagination->initialize($pager);
        $this->groups_model->limit($limit, $offset);
        

        // Don't display soft-deleted records
        $this->groups_model->where($this->groups_model->get_deleted_field(), 0);
		$records = $this->groups_model->find_all();

		Template::set('records', $records);
        

		Template::render();
	}
    
	/**
	 * Create a Groups object.
	 *
	 * @return void
	 */
	public function create()
	{
        
		$this->load->config('address');
		$this->load->helper('address');
		if (isset($_POST['save'])) {
			if ($insert_id = $this->save_groups()) {
				log_activity($this->auth->user_id(), lang('groups_act_create_record') . ': ' . $insert_id . ' : ' . $this->input->ip_address(), 'groups');
				Template::set_message(lang('groups_create_success'), 'success');

				redirect('/');
			}

            // Not validation error
			if ( ! empty($this->groups_model->error)) {
				Template::set_message(lang('groups_create_failure') . $this->groups_model->error, 'error');
            }
		}

	if ($this->siteSettings['auth.password_show_labels'] == 1) {
            Assets::add_js(
                $this->load->view('users_js', array('settings' => $this->siteSettings), true),
                'inline'
            );
        }

        // Generate password hint messages.
        $this->user_model->password_hints();

		$result = array();
		$group_type_options = $this->group_types_model->get_group_types_list();
		array_unshift($group_type_options,"Select");		

		Template::set('group_type_options', $group_type_options);
		Template::set('toolbar_title', lang('groups_action_create'));
		Template::set_view('content/create',$result);
		Template::render();
	}

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
		$extraUniqueRule = ',users.id';
		if ($type == 'update') {
			$_POST['id'] = $id;
		}

        	// Validate the data

        	$this->form_validation->set_rules($this->groups_model->get_validation_rules());
    	           $this->form_validation->set_rules('pass_confirm', 'lang:bf_password_confirm', "required|matches[password]");
        	$this->form_validation->set_rules('email', 'lang:bf_email', "required|trim|valid_email|max_length[254]|unique[users.email{$extraUniqueRule}]");
		if ($this->form_validation->run() === false) {
        	    return false;
        	}

		// Make sure we only pass in the fields we want
		
		$data = $this->groups_model->prep_data($this->input->post());

        	// Additional handling for default values should be added below,
        	// or in the model's prep_data() method
        
		$data['started_on']	= $this->input->post('started_on') ? $this->input->post('started_on') : '0000-00-00';

        	$return = false;
		$result = false;
		if ($type == 'insert') {
			// Compile our core user elements to save.
			$user_post_data['username'] = $this->input->post('email');
			$user_post_data['email'] = $this->input->post('email');
			$user_post_data['password'] = $this->input->post('password');
			$user_post_data['role_id'] = config_item('RAS_ADMIN_ROLE');
			$user_post_data['display_name'] = '';

		        $user_data = $this->user_model->prep_data($user_post_data);
			$activationMethod = $this->settings_lib->item('auth.user_activation_method');
			if ($activationMethod == 0) {
				// No activation method, so automatically activate the user.
				$user_data['active'] = 1;
			}
			$this->db->trans_begin();
			$uid = $this->user_model->insert($user_data);
			if (!$uid) {
				$this->db->trans_rollback();
			}

		    	if (is_numeric($uid)) {
				$result = $uid;
			}
			
			$gid = $this->groups_model->insert($data);

			if (!$gid) {
			    $this->db->trans_rollback();
			}			
			$member_group_data = array("group_id" => $gid,"user_id" => $uid);
			$mg_id = $this->groups_model->insert_member_group($member_group_data);
			if (!$mg_id) {
			    $this->db->trans_rollback();
			} else {
				$this->db->trans_commit();
				 Template::set_message(lang('groups_group_creation_success'), 'success');
			}			
			

		} elseif ($type == 'update') {
			$return = $this->groups_model->update($id, $data);
		}

		return $return;
	}
}
