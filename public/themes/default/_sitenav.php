<!-- <div class="masthead">
    <ul class="nav nav-pills pull-right">
        <li <?php echo check_class('home'); ?>><a href="<?php echo site_url(); ?>"><?php e(lang('bf_home')); ?></a></li>
        <?php if (empty($current_user)) : ?>
        <li><a href="<?php echo site_url(LOGIN_URL); ?>">Sign In</a></li>
        <?php else : ?>
        <li <?php echo check_method('profile'); ?>><a href="<?php echo site_url('users/profile'); ?>"><?php e(lang('bf_user_settings')); ?></a></li>
        <li><a href="<?php echo site_url('logout'); ?>"><?php e(lang('bf_action_logout')); ?></a></li>
        <?php endif; ?>
    </ul>
    <h3 class="muted"><?php e(class_exists('Settings_lib') ? settings_item('site.title') : 'Bonfire'); ?></h3>
</div>
<hr />
-->

<div class="navbar-wrapper">
        <nav role="navigation" class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">Residents Association Portal<?php //settings_item('site.title'); ?></a>
                </div>
                <div class="navbar-collapse collapse" id="navbar">
                    <ul class="nav navbar-nav navbar-right">
			<li class="active" <?php echo check_class('home'); ?>><a href="<?php echo site_url(); ?>"><?php e(lang('bf_home')); ?></a></li>

			<?php if (isset($current_user->email)) : ?>
				<li class=""><a href="<?php echo site_url(SITE_AREA) ?>" >Go to the Admin area</a></li>
			<?php else :?>
				<li class=""><a href="<?php echo site_url('groups/create'); ?>" ><?php echo lang('ras_create_group'); ?></a></li>
			<?php endif;?>


			<?php if (empty($current_user)) : ?>
			<li class=""><a href="<?php echo site_url(LOGIN_URL); ?>">Sign In</a></li>
			<?php else : ?>
			<li class="" <?php echo check_method('profile'); ?>><a href="<?php echo site_url('users/profile'); ?>"><?php e(lang('bf_user_settings')); ?></a></li>
			<li class=""><a href="<?php echo site_url('logout'); ?>"><?php e(lang('bf_action_logout')); ?></a></li>
			<?php endif; ?>
                        <li><a class="page-scroll" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
</div>
