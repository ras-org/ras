<?php if (validation_errors()) : ?>
	<div class="alert alert-error fade in">
		<?php echo validation_errors(); ?>
	</div>
<?php endif; ?>

<div>
 <div>
	<h1 class="logo-name">LOGO+</h1>
	<h2><?php echo lang('us_reset_password'); ?></h2>
<div class="alert alert-info fade in">
	<?php echo lang('us_reset_note'); ?>
</div>
	<?php echo Template::message(); ?>
 </div>

<?php echo form_open($this->uri->uri_string(), array('class' => "form-horizontal", 'autocomplete' => 'off')); ?>

	<div class="form-group <?php echo iif( form_error('email') , 'error'); ?>">
		<label class="col-sm-2 control-label required" for="email"><?php echo lang('bf_email'); ?></label>
		<div class="col-sm-10">
			<input class="form-control6" type="text" name="email" id="email" value="<?php echo set_value('email') ?>" />
		</div>
	</div>

	<div class="control-group">
		<div class="controls">
			<input class="btn btn-primary" type="submit" name="send" value="<?php e(lang('us_send_password')); ?>" />
		</div>
	</div>

<?php echo form_close(); ?>

</div>
