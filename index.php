<?php
require_once('./private/header.php');
?>

<div class="content-wrapper">
    <h1 class="header bg-success center">WELCOME TO GROUP S COVID-19 HEALTH DECLARATION WEB APP</h1>
    <!-- content goes here.. -->
    <div></div>
</div>

<?php
require_once('./private/footer.php');
?>

<script>
    
    $(function() {
        $("#dashboard").click(function() {
            $(".content-wrapper").load("./pages/dashboard.html");
        });
        $("#crudform").click(function() {
            $(".content-wrapper").load("./pages/crud.html");
        });
    });
</script>