<?php

$hiddenFields = array('id', 'deleted', 'deleted_by', 'created_by', 'updated_by',);
?>
<h1 class='page-header'>
    <?php echo lang('groups_area_title'); ?>
</h1>
<?php if (isset($records) && is_array($records) && count($records)) : ?>
<table class='table table-striped table-bordered'>
    <thead>
        <tr>
            
            <th>Group Name</th>
            <th>Group Type</th>
            <th>Group Mode</th>
            <th>Logo</th>
            <th>Mobile</th>
            <th>Land Line</th>
            <th>Mission</th>
            <th>Longitude</th>
            <th>Latitude</th>
            <th>Started On</th>
            <th>Address</th>
            <th>City</th>
            <th>District</th>
            <th>State</th>
            <th>Country</th>
            <th>Group Code</th>
            <th>Status</th>
            <th>Deleted</th>
            <th>Deleted By</th>
            <th>Banned</th>
            <th>Created On</th>
            <th>Created By</th>
            <th>Updated On</th>
            <th>Updated By</th>
            <th><?php echo lang('groups_column_created'); ?></th>
            <th><?php echo lang('groups_column_modified'); ?></th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($records as $record) :
        ?>
        <tr>
            <?php
            foreach($record as $field => $value) :
                if ( ! in_array($field, $hiddenFields)) :
            ?>
            <td>
                <?php
                if ($field == 'deleted') {
                    e(($value > 0) ? lang('groups_true') : lang('groups_false'));
                } else {
                    e($value);
                }
                ?>
            </td>
            <?php
                endif;
            endforeach;
            ?>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php

    echo $this->pagination->create_links();
endif; ?>