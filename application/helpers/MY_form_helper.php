<?php defined('BASEPATH') || exit('No direct script access allowed');

if (! function_exists('ras_form_dropdown')) {
    /**
     * Returns a properly templated dropdown field.
     *
     * @param string $data    The element name or an array of key/value pairs of
     * all attributes.
     * @param array  $options  Array of options for the drop down list.
     * @param string $selected The selected item or an array of selected items.
     * @param string $label   The label of the element.
     * @param string $extra   Any additional items to include, like Javascript.
     * @param string $tooltip A string for inline help or a tooltip icon.
     *
     * @return string The formatted input element, label tag and wrapping divs.
     */
    function ras_form_dropdown($data, $options = array(), $selected = array(), $label = '', $extra = '', $tooltip = '')
    {
        if (! is_array($data)) {
            $data = array('name' => $data);
        }

        if (! isset($data['id'])) {
            $data['id'] = $data['name'];
        }

        $output = _parse_form_attributes($data, array());

        if (! is_array($selected)) {
            $selected = array($selected);
        }

        // If no selected option was submitted, attempt to set it automatically
        if (count($selected) === 0) {
            // If the name appears in the $_POST array, grab the value
            if (isset($_POST[$data['name']])) {
                $selected = array($_POST[$data['name']]);
            }
        }

        $options_vals = '';
        foreach ($options as $key => $val) {
            $key = (string) $key;
            if (is_array($val) && ! empty($val)) {
                $options_vals .= "<optgroup label='{$key}'>" . PHP_EOL;

                foreach ($val as $optgroup_key => $optgroup_val) {
                    $sel = in_array($optgroup_key, $selected) ? ' selected="selected"' : '';
                    $options_vals .= "<option value='{$optgroup_key}'{$sel}>{$optgroup_val}</option>" . PHP_EOL;
                }
                $options_vals .= '</optgroup>'.PHP_EOL;
            } else {
                $sel = in_array($key, $selected) ? ' selected="selected"' : '';
                $options_vals .= "<option value='{$key}'{$sel}>{$val}</option>" . PHP_EOL;
            }
        }

        $error = '';
        if (function_exists('form_error') && form_error($data['name'])) {
            $error   = ' error';
            $tooltip = '<span class="help-inline">' . form_error($data['name']) . '</span>';
        }

        return "
<div class='form-group{$error}'>
    <label class='col-sm-2 control-label' for='{$data['id']}'>{$label}</label>
    <div class='col-sm-10'>
         <select {$output} {$extra}>
            {$options_vals}
        </select>
        {$tooltip}
    </div>
</div>";
    }
}

/* end /application/helpers/My_form_helper.php */
