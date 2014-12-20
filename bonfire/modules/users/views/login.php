<?php
	$site_open = $this->settings_lib->item('auth.allow_register');
?>
<!-- <p><br/><a href="<?php echo site_url(); ?>">&larr; <?php echo lang('us_back_to') . $this->settings_lib->item('site.title'); ?></a></p> -->

<div>
<div>
	<h1 class="logo-name">LOGO+</h1>
	<h2><?php echo lang('us_login'); ?></h2>

	<?php echo Template::message(); ?>
</div>
	<?php
		if (validation_errors()) :
	?>
	<div class="form-group">
		<div class="span12">
			<div class="alert alert-error fade in">
			  <a data-dismiss="alert" class="close">&times;</a>
				<?php echo validation_errors(); ?>
			</div>
		</div>
	</div>
	<?php endif; ?>

	<?php echo form_open(LOGIN_URL, array('autocomplete' => 'off',"class" => "m-t")); ?>

		<div class="form-group <?php echo iif( form_error('login') , 'error') ;?>">
				<input class="form-control"  style="width: 95%" type="text" name="login" id="login_value" value="<?php echo set_value('login'); ?>" tabindex="1" placeholder="<?php echo $this->settings_lib->item('auth.login_type') == 'both' ? lang('bf_username') .'/'. lang('bf_email') : ucwords($this->settings_lib->item('auth.login_type')) ?>" />
		</div>

		<div class="form-group <?php echo iif( form_error('password') , 'error') ;?>">
				<input style="width: 95%" class="form-control" type="password" name="password" id="password" value="" tabindex="2" placeholder="<?php echo lang('bf_password'); ?>" />
		</div>

		<?php if ($this->settings_lib->item('auth.allow_remember')) : ?>
			<div class="form-group">
				<div class="controls">
					<label class="checkbox" for="remember_me">
						<input type="checkbox" name="remember_me" id="remember_me" value="1" tabindex="3" />
						<span class="inline-help"><?php echo lang('us_remember_note'); ?></span>
					</label>
				</div>
			</div>
		<?php endif; ?>

		<div class="form-group">
				<button class="btn btn-primary block full-width m-b" type="submit" name="log-me-in" id="submit"  tabindex="5" ><?php e(lang('us_let_me_in')); ?></button>
		</div>
	<?php echo form_close(); ?>

	<?php // show for Email Activation (1) only
		if ($this->settings_lib->item('auth.user_activation_method') == 1) : ?>
	<!-- Activation Block -->
			<p style="text-align: left" class="well">
				<?php echo lang('bf_login_activate_title'); ?><br />
				<?php
				$activate_str = str_replace('[ACCOUNT_ACTIVATE_URL]',anchor('/activate', lang('bf_activate')),lang('bf_login_activate_email'));
				$activate_str = str_replace('[ACTIVATE_RESEND_URL]',anchor('/resend_activation', lang('bf_activate_resend')),$activate_str);
				echo $activate_str; ?>
			</p>
	<?php endif; ?>

	<p style="text-align: center">
		<?php if ( $site_open ) : ?>
			<?php echo anchor(REGISTER_URL, lang('us_sign_up')); ?>
		<?php endif; ?>

		<br/><?php echo anchor('/forgot_password', lang('us_forgot_your_password')); ?>
	</p>

</div>

