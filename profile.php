<?php 
$user = $conn->query("SELECT s.*,d.name as department, c.name as curriculum,CONCAT(lastname,', ',firstname,' ',middlename) as fullname FROM student_list s inner join department_list d on s.department_id = d.id inner join curriculum_list c on s.curriculum_id = c.id where s.id ='{$_settings->userdata('id')}'");
foreach($user->fetch_array() as $k =>$v){
    $$k = $v;
}
?>
<style>
    .student-img{
		object-fit:scale-down;
		object-position:center center;
        height:200px;
        width:200px;
	}
</style>
<div class="content py-4">
    <div class="card card-outline card-primary shadow rounded-0">
        <div class="card-header rounded-0">
            <h5 class="card-title">Your Information:</h5>
            <div class="card-tools">
                <a href="./?page=my_archives" class="btn btn-default bg-primary btn-flat"><i class="fa fa-archive"></i> My Archives</a>
                <a href="./?page=manage_account" class="btn btn-default bg-navy btn-flat"><i class="fa fa-edit"></i> Update Account</a>
            </div>
        </div>
        <div class="card-body rounded-0">
            <div class="container-fluid">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-lg-4 col-sm-12">
                            <center>
                                <img src="<?= validate_image($avatar) ?>" alt="Student Image" class="img-fluid student-img bg-gradient-dark border">
                            </center>
                        </div>
                        <div class="col-lg-8 col-sm-12">
                            <dl>
                                <dt class="text-navy">Student Name:</dt>
                                <dd class="pl-4"><?= ucwords($fullname) ?></dd>
                                <dt class="text-navy">Gender:</dt>
                                <dd class="pl-4"><?= ucwords($gender) ?></dd>
                                <dt class="text-navy">Email:</dt>
                                <dd class="pl-4"><?= $email ?></dd>
                                <dt class="text-navy">Department:</dt>
                                <dd class="pl-4"><?= ucwords($department) ?></dd>
                                <dt class="text-navy">Curriculum:</dt>
                                <dd class="pl-4"><?= ucwords($curriculum) ?></dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>