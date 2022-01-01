<?php
require_once('../../config.php');
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT * FROM `curriculum_list` where id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        $res = $qry->fetch_array();
        foreach($res as $k => $v){
            if(!is_numeric($k))
            $$k = $v;
        }
    }
}
?>

<div class="container-fluid">
    <form action="" id="curriculum-form">
        <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
        <div class="form-group">
            <label for="department_id" class="control-label">Department</label>
            <select name="department_id" id="department_id" class="form-control form-control-border" required data-placeholder="Select Deparment Here">
                <option <?= !isset($department_id) == 1 ? "selected" :"" ?>></option>
                <?php 
                $department = $conn->query("SELECT * FROM `department_list` where `status` = 1 ".(isset($department_id) ? "OR id = '{$department_id}'" : "")." order by `name` asc");
                while($row = $department->fetch_assoc()):
                ?>
                <option value="<?= $row['id'] ?>" <?= isset($department_id) && $department_id == $row['id'] ? "selected" : "" ?>><?= ucwords($row['name']) ?></option>
                <?php endwhile; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="name" class="control-label">Name</label>
            <input type="text" name="name" id="name" class="form-control form-control-border" placeholder="Curriculum Name" value ="<?php echo isset($name) ? $name : '' ?>" required>
        </div>
        <div class="form-group">
            <label for="description" class="control-label">Description</label>
            <textarea rows="3" name="description" id="description" class="form-control form-control-border" placeholder="Write the Curriculum description here." required><?php echo isset($description) ? $description : '' ?></textarea>
        </div>
        <div class="form-group">
            <label for="" class="control-label">Status</label>
            <select name="status" id="status" class="form-control form-control-border" required>
                <option value="1" <?= isset($status) && $status == 1 ? "selected" :"" ?>>Active</option>
                <option value="0" <?= isset($status) && $status == 0 ? "selected" :"" ?>>Inactive</option>
            </select>
        </div>
    </form>
</div>
<script>
    $(function(){
        $('#department_id').select2({
            width:"100%",
            dropdownParent: $("#uni_modal")
        })
        $('#uni_modal #curriculum-form').submit(function(e){
            e.preventDefault();
            var _this = $(this)
            $('.pop-msg').remove()
            var el = $('<div>')
                el.addClass("pop-msg alert")
                el.hide()
            start_loader();
            $.ajax({
                url:_base_url_+"classes/Master.php?f=save_curriculum",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
                success:function(resp){
                    if(resp.status == 'success'){
                        location.reload();
                    }else if(!!resp.msg){
                        el.addClass("alert-danger")
                        el.text(resp.msg)
                        _this.prepend(el)
                    }else{
                        el.addClass("alert-danger")
                        el.text("An error occurred due to unknown reason.")
                        _this.prepend(el)
                    }
                    el.show('slow')
                    end_loader();
                }
            })
        })
    })
</script>