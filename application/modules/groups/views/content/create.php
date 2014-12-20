<?php
$defaultCountry = 'US';
$errorClass = ' error';
$defaultState   = '';
$controlClass   = empty($controlClass) ? 'span4' : $controlClass;
$registerClass  = ' required';
$validation_errors = validation_errors();
?>

<div id='page-wrapper' class="gray-bg" style="margin-top:50px;">
	<div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Create new Group</h2>
                </div>
                <div class="col-lg-2">

                </div>
        </div>
<?php
if ($validation_errors) :

echo Template::message(); ?>
<div class='alert alert-block alert-error fade in'>
	<a class='close' data-dismiss='alert'>&times;</a>
	<h4 class='alert-heading'>
		<?php echo lang('groups_errors_message'); ?>
	</h4>
	<?php echo $validation_errors; ?>
</div>
<?php
endif;

$id = isset($groups->id) ? $groups->id : '';

?>
<div class="alert alert-info fade in">
        <h4 class="alert-heading"><?php echo lang('groups_required_note'); ?></h4>
        <?php if (isset($password_hints)) { echo $password_hints; } ?>
    </div>


<div class="wrapper wrapper-content animated fadeInRight" >
	
        <div class="row">
            <div class="col-lg-12">
		<div class="ibox float-e-margins">
			<!-- <div class="ibox-title">
                            <h5>Create New Group</h5>
                        </div> -->
			<div class="ibox-content">
		<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>

			<div class="form-group<?php echo form_error('group_name') ? ' error' : ''; ?>">
				<?php echo form_label('Group Name'. lang('bf_form_label_required'), 'group_name', array('class' => 'col-sm-2 control-label')); ?>

                                    <div class="col-sm-10">
					<input class="form-control <?php echo $controlClass; ?>" id='group_name' type='text' required='required' name='group_name' maxlength='250' value="<?php echo set_value('group_name', isset($groups->group_name) ? $groups->group_name : ''); ?>" />
					<span class='help-inline'><?php echo form_error('group_name'); ?></span>
				</div>
                         </div>

			<?php // Change the values in this array to populate your dropdown as required
				
				echo ras_form_dropdown(array('name' => 'group_type', 'required' => 'required'), $group_type_options, set_value('group_type', isset($groups->group_type) ? $groups->group_type : ''), 'Group Type'. lang('bf_form_label_required'), 'class="span4 chzn-select"');
			?>

			<div class="form-group<?php echo form_error('email') ? ' error' : ''; ?>">
				<?php echo form_label('Email'. lang('bf_form_label_required'), 'email', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" email="true" id='email' type='text' required='required' name='email' maxlength='250' value="<?php echo set_value('email', isset($groups->email) ? $groups->email : ''); ?>" />
					<span class='help-inline'><?php echo form_error('email'); ?></span>
				</div>
			</div>
			<div class="form-group<?php echo form_error('password') ? $errorClass : ''; ?>">
			    <label class="col-sm-2 control-label<?php echo $registerClass; ?>" for="password"><?php echo lang('bf_password'). lang('bf_form_label_required'); ?></label>
			    <div class="col-sm-10">
				<input required='required'  class="<?php echo $controlClass; ?>" type="password" id="password" name="password" value="" />
				<span class="help-inline"><?php echo form_error('password'); ?></span>
				<p class="help-block"><?php if (isset($password_hints)) { echo $password_hints; } ?></p>
			    </div>
			</div>
			<div class="form-group<?php echo form_error('pass_confirm') ? $errorClass : ''; ?>">
			    <label class="col-sm-2 control-label<?php echo $registerClass; ?>" for="pass_confirm"><?php echo lang('bf_password_confirm'). lang('bf_form_label_required'); ?></label>
			    <div class="col-sm-10">
				<input required='required'  class="<?php echo $controlClass; ?>" type="password" id="pass_confirm" name="pass_confirm" value="" />
				<span class="help-inline"><?php echo form_error('pass_confirm'); ?></span>
			    </div>
			</div>


			<div class="form-group<?php echo form_error('mobile') ? ' error' : ''; ?>">
				<?php echo form_label('Mobile'. lang('bf_form_label_required'), 'mobile', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='mobile' type='text' required='required' name='mobile' maxlength='15' value="<?php echo set_value('mobile', isset($groups->mobile) ? $groups->mobile : ''); ?>" />
					<span class='help-inline'><?php echo form_error('mobile'); ?></span>
				</div>
			</div>

			<!--<div class="form-group<?php echo form_error('land_line') ? ' error' : ''; ?>">
				<?php echo form_label('Land Line', 'land_line', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='land_line' type='text' name='land_line' maxlength='20' value="<?php echo set_value('land_line', isset($groups->land_line) ? $groups->land_line : ''); ?>" />
					<span class='help-inline'><?php echo form_error('land_line'); ?></span>
				</div>
			</div>

			<div class="form-group<?php echo form_error('mission') ? ' error' : ''; ?>">
				<?php echo form_label('Mission', 'mission', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<?php echo form_textarea(array('name' => 'mission', 'id' => 'mission', 'rows' => '5', 'cols' => '140', 'value' => set_value('mission', isset($groups->mission) ? $groups->mission : ''))); ?>
					<span class='help-inline'><?php echo form_error('mission'); ?></span>
				</div>
			</div>

			<div class="form-group<?php echo form_error('started_on') ? ' error' : ''; ?>">
				<?php echo form_label('Started On', 'started_on', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='started_on' type='text' name='started_on'  value="<?php echo set_value('started_on', isset($groups->started_on) ? $groups->started_on : ''); ?>" />
					<span class='help-inline'><?php echo form_error('started_on'); ?></span>
				</div>
			</div> -->

			<div class="form-group<?php echo form_error('address') ? ' error' : ''; ?>">
				<?php echo form_label('Address'. lang('bf_form_label_required'), 'address', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<?php echo form_textarea(array('name' => 'address', 'id' => 'address', 'rows' => '5', 'cols' => '80', 'value' => set_value('address', isset($groups->address) ? $groups->address : ''), 'required' => 'required')); ?>
					<span class='help-inline'><?php echo form_error('address'); ?></span>
				</div>
			</div>

			<div class="form-group<?php echo form_error('city') ? ' error' : ''; ?>">
				<?php echo form_label('City'. lang('bf_form_label_required'), 'city', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='city' type='text' required='required' name='city' maxlength='100' value="<?php echo set_value('city', isset($groups->city) ? $groups->city : ''); ?>" />
					<span class='help-inline'><?php echo form_error('city'); ?></span>
				</div>
			</div>

			<?php // Change the values in this array to populate your dropdown as required
				/*$options = array(
					11 => 11,
				);
				echo form_dropdown(array('name' => 'district', 'required' => 'required'), $options, set_value('district', isset($groups->district) ? $groups->district : ''), 'District'. lang('bf_form_label_required'));*/
			?>
			<div class="form-group<?php echo form_error('city') ? ' error' : ''; ?>">

				<?php echo form_label('District'. lang('bf_form_label_required'), 'district', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='district' type='text' required='required' maxlength='100' name='district'  value="<?php echo set_value('district', isset($groups->district) ? $groups->district : ''); ?>" />
					<span class='help-inline'><?php echo form_error('district'); ?></span>
				</div>
			</div>
			<div class="form-group<?php echo form_error('state') ?  ' error' : ''; ?>">
				    <label class='col-sm-2 control-label' for="state">State</label>
				    <div class="col-sm-10">
					<?php echo state_select(set_value('state', isset($groups->state) ? $groups->state : ''), $defaultState,$defaultCountry,  'state', 'span4 chzn-select'); ?>
				    </div>
			</div>

			<?php // Change the values in this array to populate your dropdown as required				
				//echo form_dropdown(array('name' => 'state', 'required' => 'required'), $options, set_value('state', isset($groups->state) ? $groups->state : ''), 'State'. lang('bf_form_label_required'));
				
			?>

			<div class="form-group<?php echo form_error('country') ? ' error' : ''; ?>">
			    <label class='col-sm-2 control-label' for="country">Country</label>
			    <div class="col-sm-10">
				<?php echo country_select(set_value('country', isset($groups->country) ? $groups->country : $defaultCountry), $defaultCountry, 'country', 'span4 chzn-select'); ?>
			    </div>
			</div>
			<!--
			<div class="form-group<?php echo form_error('group_code') ? ' error' : ''; ?>">
				<?php echo form_label('Group Code', 'group_code', array('class' => 'col-sm-2 control-label')); ?>
				<div class="col-sm-10">
					<input class="<?php echo $controlClass; ?>" id='group_code' type='text' name='group_code' maxlength='100' value="<?php echo set_value('group_code', isset($groups->group_code) ? $groups->group_code : ''); ?>" />
					<span class='help-inline'><?php echo form_error('group_code'); ?></span>
				</div>
			</div>
			-->
		<div class='form-group'>
			<div class="col-sm-4 col-sm-offset-2">
				<input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('groups_action_create'); ?>" />	
				<?php echo lang('bf_or'); ?>
				<?php echo anchor(SITE_AREA , lang('groups_cancel'), 'class="btn btn-warning"'); ?>
			</div>
			
		</div>
    <?php echo form_close(); ?>
</div>
<?php echo
        Assets::add_js($this->load->view('country_state_js', array('country_name' => 'country', 'state_name' => 'state', 'state_value' => (isset($groups->state) ? $groups->state : '')	, 'country_value' => (isset($groups->country) ? $groups->country : $defaultCountry)), true), 'inline');

?>

<script>
	$(document).ready(function(){$(".navbar-wrapper .navbar-default").addClass("navbar-scroll");});
</script>
