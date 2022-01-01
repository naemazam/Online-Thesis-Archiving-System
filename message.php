<style>
    #uni_modal .modal-footer{
        display:none;
    }
</style>
<div class="container">
    <p>Your Driving School Enrollment has successfully submitted and will confirm you as soon as we sees your application. 
    <?php if(isset($_GET['reg_no'])): ?>
        Your registration # is <b><?= $_GET['reg_no'] ?></b>.
    <?php endif; ?>
    Thank you!</p>
    <div class="text-right">
        <button class="btn btn-sm btn-flat btn-dark" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
    </div>
</div>