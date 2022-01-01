<h1>Welcome to <?php echo $_settings->info('name') ?></h1>
<hr class="border-info">
<div class="row">
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-th-list"></i></span>

            <div class="info-box-content">
            <span class="info-box-text">Department List</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `department_list` where status = 1")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-gradient-dark elevation-1"><i class="fas fa-scroll"></i></span>
            <div class="info-box-content">
            <span class="info-box-text">Curriculum List</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `curriculum_list` where `status` = 1")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-users"></i></span>

            <div class="info-box-content">
            <span class="info-box-text">Verified Students</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `student_list` where `status` = 1")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

            <div class="info-box-content">
            <span class="info-box-text">Not Verified Students</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `student_list` where `status` = 0")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-success elevation-1"><i class="fas fa-archive"></i></span>

            <div class="info-box-content">
            <span class="info-box-text">Verified Archives</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `archive_list` where `status` = 1")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
        <div class="info-box bg-light shadow">
            <span class="info-box-icon bg-dark elevation-1"><i class="fas fa-archive"></i></span>

            <div class="info-box-content">
            <span class="info-box-text">Not Verified Archives</span>
            <span class="info-box-number text-right">
                <?php 
                    echo $conn->query("SELECT * FROM `archive_list` where `status` = 0")->num_rows;
                ?>
            </span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
</div>