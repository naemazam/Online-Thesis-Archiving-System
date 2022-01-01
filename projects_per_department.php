<?php 
if(isset($_GET['id'])){

    $qry = $conn->query("SELECT * FROM department_list where `status` = 1 and id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            if(!is_numeric($k)){
                $department[$k] = $v;
            }
        }
    }else{
        echo "<script> alert('Unkown Department ID'); location.replace('./') </script>";
    }

}else{
    echo "<script> alert('Department ID is required'); location.replace('./') </script>";
}

?>
<div class="content py-2">
    <div class="col-12">
        <div class="card card-outline card-primary shadow rounded-0">
            <div class="card-body rounded-0">
                <h2>Archive List of <?= isset($department['name']) ? $department['name'] : "" ?> </h2>
                <p><small><?= isset($department['description']) ? $department['description'] : "" ?></small></p>
                <hr class="bg-navy">
                <?php 
                $id = isset($_GET['id']) ? $_GET['id'] : '';
                $limit = 10;
                $page = isset($_GET['p'])? $_GET['p'] : 1; 
                $offset = 10 * ($page - 1);
                $paginate = " limit {$limit} offset {$offset}";
                $wheredid = " where department_id = '{$id}' ";
                $students = $conn->query("SELECT * FROM `student_list` where id in (SELECT student_id FROM archive_list where `status` = 1 and curriculum_id in (SELECT id from curriculum_list {$wheredid} ))");
                $student_arr = array_column($students->fetch_all(MYSQLI_ASSOC),'email','id');
                $count_all = $conn->query("SELECT * FROM archive_list where `status` = 1 and curriculum_id in (SELECT id from curriculum_list {$wheredid} )")->num_rows;    
                $pages = ceil($count_all/$limit);
                $archives = $conn->query("SELECT * FROM archive_list where `status` = 1 and curriculum_id in (SELECT id from curriculum_list {$wheredid} ) order by unix_timestamp(date_created) desc {$paginate}");    
                ?>
                <div class="list-group">
                    <?php 
                    while($row = $archives->fetch_assoc()):
                        $row['abstract'] = strip_tags(html_entity_decode($row['abstract']));
                    ?>
                    <a href="./?page=view_archive&id=<?= $row['id'] ?>" class="text-decoration-none text-dark list-group-item list-group-item-action">
                        <div class="row">
                            <div class="col-lg-4 col-md-5 col-sm-12 text-center">
                                <img src="<?= validate_image($row['banner_path']) ?>" class="banner-img img-fluid bg-gradient-dark" alt="Banner Image">
                            </div>
                            <div class="col-lg-8 col-md-7 col-sm-12">
                                <h3 class="text-navy"><b><?php echo $row['title'] ?></b></h3>
                                <small class="text-muted">By <b class="text-info"><?= isset($student_arr[$row['student_id']]) ? $student_arr[$row['student_id']] : "N/A" ?></b></small>
                                <p class="truncate-5"><?= $row['abstract'] ?></p>
                            </div>
                        </div>
                    </a>
                    <?php endwhile; ?>
                </div>
            </div>
            <div class="card-footer clearfix rounded-0">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-6"><span class="text-muted">Display Items: <?= $archives->num_rows ?></span></div>
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm m-0 float-right">
                                <li class="page-item"><a class="page-link" href="./?page=projects_per_department&id=<?= $id ?>&p=<?= $page - 1 ?>" <?= $page == 1 ? 'disabled' : '' ?>>«</a></li>
                                <?php for($i = 1; $i<= $pages; $i++): ?>
                                <li class="page-item"><a class="page-link <?= $page == $i ? 'active' : '' ?>" href="./?page=projects_per_department&id=<?= $id ?>&p=<?= $i ?>"><?= $i ?></a></li>
                                <?php endfor; ?>
                                <li class="page-item"><a class="page-link" href="./?page=projects_per_department&id=<?= $id ?>&p=<?= $page + 1 ?>" <?= $page == $pages || $pages <= 1 ? 'disabled' : '' ?>>»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
