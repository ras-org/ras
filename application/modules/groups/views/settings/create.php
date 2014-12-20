<?php

$validation_errors = validation_errors();

if ($validation_errors) :
?>
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
<div class='admin-box'>
	<h3>Groups</h3>
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>
            

			<div class="control-group<?php echo form_error('group_name') ? ' error' : ''; ?>">
				<?php echo form_label('Group Name'. lang('bf_form_label_required'), 'group_name', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='group_name' type='text' required='required' name='group_name' maxlength='250' value="<?php echo set_value('group_name', isset($groups->group_name) ? $groups->group_name : ''); ?>" />
					<span class='help-inline'><?php echo form_error('group_name'); ?></span>
				</div>
			</div>

			<?php // Change the values in this array to populate your dropdown as required
				$options = array(
					3 => 3,
				);
				echo form_dropdown(array('name' => 'group_type', 'required' => 'required'), $options, set_value('group_type', isset($groups->group_type) ? $groups->group_type : ''), 'Group Type. lang('bf_form_label_required')');
			?>

			<?php // Change the values in this array to populate your dropdown as required
				$options = array(
					4 => 4,
				);
				echo form_dropdown(array('name' => 'group_mode'), $options, set_value('group_mode', isset($groups->group_mode) ? $groups->group_mode : ''), 'Group Mode');
			?>

			<div class="control-group<?php echo form_error('logo') ? ' error' : ''; ?>">
				<?php echo form_label('Logo', 'logo', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='logo' type='text' name='logo' maxlength='100' value="<?php echo set_value('logo', isset($groups->logo) ? $groups->logo : ''); ?>" />
					<span class='help-inline'><?php echo form_error('logo'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('mobile') ? ' error' : ''; ?>">
				<?php echo form_label('Mobile'. lang('bf_form_label_required'), 'mobile', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='mobile' type='text' required='required' name='mobile' maxlength='15' value="<?php echo set_value('mobile', isset($groups->mobile) ? $groups->mobile : ''); ?>" />
					<span class='help-inline'><?php echo form_error('mobile'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('land_line') ? ' error' : ''; ?>">
				<?php echo form_label('Land Line', 'land_line', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='land_line' type='text' name='land_line' maxlength='20' value="<?php echo set_value('land_line', isset($groups->land_line) ? $groups->land_line : ''); ?>" />
					<span class='help-inline'><?php echo form_error('land_line'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('mission') ? ' error' : ''; ?>">
				<?php echo form_label('Mission', 'mission', array('class' => 'control-label')); ?>
				<div class='controls'>
					<?php echo form_textarea(array('name' => 'mission', 'id' => 'mission', 'rows' => '5', 'cols' => '80', 'value' => set_value('mission', isset($groups->mission) ? $groups->mission : ''))); ?>
					<span class='help-inline'><?php echo form_error('mission'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('longitude') ? ' error' : ''; ?>">
				<?php echo form_label('Longitude', 'longitude', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='longitude' type='text' name='longitude' maxlength='10' value="<?php echo set_value('longitude', isset($groups->longitude) ? $groups->longitude : ''); ?>" />
					<span class='help-inline'><?php echo form_error('longitude'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('latitude') ? ' error' : ''; ?>">
				<?php echo form_label('Latitude', 'latitude', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='latitude' type='text' name='latitude' maxlength='10' value="<?php echo set_value('latitude', isset($groups->latitude) ? $groups->latitude : ''); ?>" />
					<span class='help-inline'><?php echo form_error('latitude'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('started_on') ? ' error' : ''; ?>">
				<?php echo form_label('Started On', 'started_on', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='started_on' type='text' name='started_on'  value="<?php echo set_value('started_on', isset($groups->started_on) ? $groups->started_on : ''); ?>" />
					<span class='help-inline'><?php echo form_error('started_on'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('address') ? ' error' : ''; ?>">
				<?php echo form_label('Address'. lang('bf_form_label_required'), 'address', array('class' => 'control-label')); ?>
				<div class='controls'>
					<?php echo form_textarea(array('name' => 'address', 'id' => 'address', 'rows' => '5', 'cols' => '80', 'value' => set_value('address', isset($groups->address) ? $groups->address : ''), 'required' => 'required')); ?>
					<span class='help-inline'><?php echo form_error('address'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('city') ? ' error' : ''; ?>">
				<?php echo form_label('City'. lang('bf_form_label_required'), 'city', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='city' type='text' required='required' name='city' maxlength='100' value="<?php echo set_value('city', isset($groups->city) ? $groups->city : ''); ?>" />
					<span class='help-inline'><?php echo form_error('city'); ?></span>
				</div>
			</div>

			<?php // Change the values in this array to populate your dropdown as required
				$options = array(
					11 => 11,
				);
				echo form_dropdown(array('name' => 'district', 'required' => 'required'), $options, set_value('district', isset($groups->district) ? $groups->district : ''), 'District. lang('bf_form_label_required')');
			?>

			<?php // Change the values in this array to populate your dropdown as required
				$options = array(
					11 => 11,
				);
				echo form_dropdown(array('name' => 'state', 'required' => 'required'), $options, set_value('state', isset($groups->state) ? $groups->state : ''), 'State. lang('bf_form_label_required')');
			?>

			<?php // Change the values in this array to populate your dropdown as required
				$options = array(
					11 => 11,
				);
				echo form_dropdown(array('name' => 'country', 'required' => 'required'), $options, set_value('country', isset($groups->country) ? $groups->country : ''), 'Country. lang('bf_form_label_required')');
			?>

			<div class="control-group<?php echo form_error('group_code') ? ' error' : ''; ?>">
				<?php echo form_label('Group Code', 'group_code', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='group_code' type='text' name='group_code' maxlength='100' value="<?php echo set_value('group_code', isset($groups->group_code) ? $groups->group_code : ''); ?>" />
					<span class='help-inline'><?php echo form_error('group_code'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('status') ? ' error' : ''; ?>">
				<div class='controls'>
					<label class='checkbox' for='status'>
						<input type='checkbox' id='status' name='status'  value='1' <?php echo set_checkbox('status', 1, isset($groups->status) && $groups->status == 1); ?> />
                        'Status'
					</label>
                    <span class='help-inline'><?php echo form_error('status'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('deleted') ? ' error' : ''; ?>">
				<div class='controls'>
					<label class='checkbox' for='deleted'>
						<input type='checkbox' id='deleted' name='deleted'  value='1' <?php echo set_checkbox('deleted', 1, isset($groups->deleted) && $groups->deleted == 1); ?> />
                        'Deleted'
					</label>
                    <span class='help-inline'><?php echo form_error('deleted'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('deleted_by') ? ' error' : ''; ?>">
				<?php echo form_label('Deleted By', 'deleted_by', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='deleted_by' type='text' name='deleted_by' maxlength='20' value="<?php echo set_value('deleted_by', isset($groups->deleted_by) ? $groups->deleted_by : ''); ?>" />
					<span class='help-inline'><?php echo form_error('deleted_by'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('banned') ? ' error' : ''; ?>">
				<div class='controls'>
					<label class='checkbox' for='banned'>
						<input type='checkbox' id='banned' name='banned'  value='1' <?php echo set_checkbox('banned', 1, isset($groups->banned) && $groups->banned == 1); ?> />
                        'Banned'
					</label>
                    <span class='help-inline'><?php echo form_error('banned'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('created_on') ? ' error' : ''; ?>">
				<?php echo form_label('Created On', 'created_on', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='created_on' type='text' name='created_on'  value="<?php echo set_value('created_on', isset($groups->created_on) ? $groups->created_on : ''); ?>" />
					<span class='help-inline'><?php echo form_error('created_on'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('created_by') ? ' error' : ''; ?>">
				<?php echo form_label('Created By', 'created_by', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='created_by' type='text' name='created_by' maxlength='20' value="<?php echo set_value('created_by', isset($groups->created_by) ? $groups->created_by : ''); ?>" />
					<span class='help-inline'><?php echo form_error('created_by'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('updated_on') ? ' error' : ''; ?>">
				<?php echo form_label('Updated On', 'updated_on', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='updated_on' type='text' name='updated_on'  value="<?php echo set_value('updated_on', isset($groups->updated_on) ? $groups->updated_on : ''); ?>" />
					<span class='help-inline'><?php echo form_error('updated_on'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('updated_by') ? ' error' : ''; ?>">
				<?php echo form_label('Updated By', 'updated_by', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='updated_by' type='text' name='updated_by' maxlength='10' value="<?php echo set_value('updated_by', isset($groups->updated_by) ? $groups->updated_by : ''); ?>" />
					<span class='help-inline'><?php echo form_error('updated_by'); ?></span>
				</div>
			</div>
        </fieldset>
		<fieldset class='form-actions'>
			<input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('groups_action_create'); ?>" />
			<?php echo lang('bf_or'); ?>
			<?php echo anchor(SITE_AREA . '/settings/groups', lang('groups_cancel'), 'class="btn btn-warning"'); ?>
			
		</fieldset>
    <?php echo form_close(); ?>
</div>