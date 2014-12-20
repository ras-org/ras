<?php

$num_columns	= 24;
$can_delete	= $this->auth->has_permission('Groups.Content.Delete');
$can_edit		= $this->auth->has_permission('Groups.Content.Edit');
$has_records	= isset($records) && is_array($records) && count($records);

if ($can_delete) {
    $num_columns++;
}
?>
<div class='admin-box'>
	<h3>
		<?php echo lang('groups_area_title'); ?>
	</h3>
	<?php echo form_open($this->uri->uri_string()); ?>
		<table class='table table-striped'>
			<thead>
				<tr>
					<?php if ($can_delete && $has_records) : ?>
					<th class='column-check'><input class='check-all' type='checkbox' /></th>
					<?php endif;?>
					
					<th><?php echo lang('groups_field_group_name'); ?></th>
					<th><?php echo lang('groups_field_group_type'); ?></th>
					<th><?php echo lang('groups_field_group_mode'); ?></th>
					<th><?php echo lang('groups_field_logo'); ?></th>
					<th><?php echo lang('groups_field_mobile'); ?></th>
					<th><?php echo lang('groups_field_land_line'); ?></th>
					<th><?php echo lang('groups_field_mission'); ?></th>
					<th><?php echo lang('groups_field_longitude'); ?></th>
					<th><?php echo lang('groups_field_latitude'); ?></th>
					<th><?php echo lang('groups_field_started_on'); ?></th>
					<th><?php echo lang('groups_field_address'); ?></th>
					<th><?php echo lang('groups_field_city'); ?></th>
					<th><?php echo lang('groups_field_district'); ?></th>
					<th><?php echo lang('groups_field_state'); ?></th>
					<th><?php echo lang('groups_field_country'); ?></th>
					<th><?php echo lang('groups_field_group_code'); ?></th>
					<th><?php echo lang('groups_field_status'); ?></th>
					<th><?php echo lang('groups_field_deleted'); ?></th>
					<th><?php echo lang('groups_field_deleted_by'); ?></th>
					<th><?php echo lang('groups_field_banned'); ?></th>
					<th><?php echo lang('groups_field_created_on'); ?></th>
					<th><?php echo lang('groups_field_created_by'); ?></th>
					<th><?php echo lang('groups_field_updated_on'); ?></th>
					<th><?php echo lang('groups_field_updated_by'); ?></th>
				</tr>
			</thead>
			<?php if ($has_records) : ?>
			<tfoot>
				<?php if ($can_delete) : ?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'>
						<?php echo lang('bf_with_selected'); ?>
						<input type='submit' name='delete' id='delete-me' class='btn btn-danger' value="<?php echo lang('bf_action_delete'); ?>" onclick="return confirm('<?php e(js_escape(lang('groups_delete_confirm'))); ?>')" />
					</td>
				</tr>
				<?php endif; ?>
			</tfoot>
			<?php endif; ?>
			<tbody>
				<?php
				if ($has_records) :
					foreach ($records as $record) :
				?>
				<tr>
					<?php if ($can_delete) : ?>
					<td class='column-check'><input type='checkbox' name='checked[]' value='<?php echo $record->id; ?>' /></td>
					<?php endif;?>
					
				<?php if ($can_edit) : ?>
					<td><?php echo anchor(SITE_AREA . '/content/groups/edit/' . $record->id, '<span class="icon-pencil"></span> ' .  $record->group_name); ?></td>
				<?php else : ?>
					<td><?php e($record->group_name); ?></td>
				<?php endif; ?>
					<td><?php e($record->group_type); ?></td>
					<td><?php e($record->group_mode); ?></td>
					<td><?php e($record->logo); ?></td>
					<td><?php e($record->mobile); ?></td>
					<td><?php e($record->land_line); ?></td>
					<td><?php e($record->mission); ?></td>
					<td><?php e($record->longitude); ?></td>
					<td><?php e($record->latitude); ?></td>
					<td><?php e($record->started_on); ?></td>
					<td><?php e($record->address); ?></td>
					<td><?php e($record->city); ?></td>
					<td><?php e($record->district); ?></td>
					<td><?php e($record->state); ?></td>
					<td><?php e($record->country); ?></td>
					<td><?php e($record->group_code); ?></td>
					<td><?php e($record->status); ?></td>
					<td><?php echo $record->deleted > 0 ? lang('groups_true') : lang('groups_false'); ?></td>
					<td><?php e($record->deleted_by); ?></td>
					<td><?php e($record->banned); ?></td>
					<td><?php e($record->created_on); ?></td>
					<td><?php e($record->created_by); ?></td>
					<td><?php e($record->updated_on); ?></td>
					<td><?php e($record->updated_by); ?></td>
				</tr>
				<?php
					endforeach;
				else:
				?>
				<tr>
					<td colspan='<?php echo $num_columns; ?>'><?php echo lang('groups_records_empty'); ?></td>
				</tr>
				<?php endif; ?>
			</tbody>
		</table>
	<?php
    echo form_close();
    
    echo $this->pagination->create_links();
    ?>
</div>