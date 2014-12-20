<?php echo theme_view('header_login');?>
<div class="middle-box text-center loginscreen  animated fadeInDown">
<?php

    echo isset($content) ? $content : Template::content();
?>
</div>
<?php
    echo theme_view('footer', array('show' => false));
?>
