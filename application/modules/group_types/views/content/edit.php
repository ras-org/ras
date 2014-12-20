<?php

$validation_errors = validation_errors();

if ($validation_errors) :
?>
<div class='alert alert-block alert-error fade in'>
	<a class='close' data-dismiss='alert'>&times;</a>
	<h4 class='alert-heading'>
		<?php echo lang('group_types_errors_message'); ?>
	</h4>
	<?php echo $validation_errors; ?>
</div>
<?php
endif;

$id = isset($group_types->id) ? $group_types->id : '';

?>
<div class='admin-box'>
	<h3>Group Types</h3>
	<?php echo form_open($this->uri->uri_string(), 'class="form-horizontal"'); ?>
		<fieldset>
            

			<div class="control-group<?php echo form_error('type_title') ? ' error' : ''; ?>">
				<?php echo form_label('Title'. lang('bf_form_label_required'), 'type_title', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='type_title' type='text' required='required' name='type_title' maxlength='200' value="<?php echo set_value('type_title', isset($group_types->type_title) ? $group_types->type_title : ''); ?>" />
					<span class='help-inline'><?php echo form_error('type_title'); ?></span>
				</div>
			</div>

			<div class="control-group<?php echo form_error('descriiption') ? ' error' : ''; ?>">
				<?php echo form_label('Descriiption'. lang('bf_form_label_required'), 'descriiption', array('class' => 'control-label')); ?>
				<div class='controls'>
					<input id='descriiption' type='text' required='required' name='descriiption' maxlength='200' value="<?php echo set_value('descriiption', isset($group_types->descriiption) ? $group_types->descriiption : ''); ?>" />
					<span class='help-inline'><?php echo form_error('descriiption'); ?></span>
				</div>
			</div>
        </fieldset>
		<fieldset class='form-actions'>
			<input type='submit' name='save' class='btn btn-primary' value="<?php echo lang('group_types_action_edit'); ?>" />
			<?php echo lang('bf_or'); ?>
			<?php echo anchor(SITE_AREA . '/content/group_types', lang('group_types_cancel'), 'class="btn btn-warning"'); ?>
			
			<?php if ($this->auth->has_permission('Group_Types.Content.Delete')) : ?>
				<?php echo lang('bf_or'); ?>
				<button type='submit' name='delete' formnovalidate class='btn btn-danger' id='delete-me' onclick="return confirm('<?php e(js_escape(lang('group_types_delete_confirm'))); ?>');">
					<span class='icon-trash icon-white'></span>&nbsp;<?php echo lang('group_types_delete_record'); ?>
				</button>
			<?php endif; ?>
		</fieldset>
    <?php echo form_close(); ?>
</div>