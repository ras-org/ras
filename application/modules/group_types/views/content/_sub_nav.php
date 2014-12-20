<?php

$checkSegment = $this->uri->segment(4);
$areaUrl = SITE_AREA . '/content/group_types';

?>
<ul class='nav nav-pills'>
	<li<?php echo $checkSegment == '' ? ' class="active"' : ''; ?>>
		<a href="<?php echo site_url($areaUrl); ?>" id='list'>
            <?php echo lang('group_types_list'); ?>
        </a>
	</li>
	<?php if ($this->auth->has_permission('Group_Types.Content.Create')) : ?>
	<li<?php echo $checkSegment == 'create' ? ' class="active"' : ''; ?>>
		<a href="<?php echo site_url($areaUrl . '/create'); ?>" id='create_new'>
            <?php echo lang('group_types_new'); ?>
        </a>
	</li>
	<?php endif; ?>
</ul>