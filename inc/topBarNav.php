<style>
  .user-img{
        position: absolute;
        height: 27px;
        width: 27px;
        object-fit: cover;
        left: -7%;
        top: -12%;
  }
  .btn-rounded{
        border-radius: 50px;
  }
</style>
<!-- Navbar -->
      <style>
        #login-nav{
          position:fixed !important;
          top: 0 !important;
          z-index: 1037;
          padding: 1em 1.5em !important;
        }
        #top-Nav{
          top: 4em;
        }
        .text-sm .layout-navbar-fixed .wrapper .main-header ~ .content-wrapper, .layout-navbar-fixed .wrapper .main-header.text-sm ~ .content-wrapper {
          margin-top: calc(3.6) !important;
          padding-top: calc(5em) !important;
      }
      </style>
      <nav class="bg-navy w-100 px-2 py-1 position-fixed top-0" id="login-nav">
        <div class="d-flex justify-content-between w-100">
          <div>
            <span class="mr-2  text-white"><i class="fa fa-phone mr-1"></i> <?= $_settings->info('contact') ?></span>
          </div>
          <div>
            <?php if($_settings->userdata('id') > 0): ?>
              <span class="mx-2"><img src="<?= validate_image($_settings->userdata('avatar')) ?>" alt="User Avatar" id="student-img-avatar"></span>
              <span class="mx-2">Howdy, <?= !empty($_settings->userdata('email')) ? $_settings->userdata('email') : $_settings->userdata('username') ?></span>
              <span class="mx-1"><a href="<?= base_url.'classes/Login.php?f=student_logout' ?>"><i class="fa fa-power-off"></i></a></span>
            <?php else: ?>
              <a href="./register.php" class="mx-2 text-light me-2">Register</a>
              <a href="./login.php" class="mx-2 text-light me-2">Student Login</a>
              <a href="./admin" class="mx-2 text-light">Admin login</a>
            <?php endif; ?>
          </div>
        </div>
      </nav>
      <nav class="main-header navbar navbar-expand navbar-light border-0 navbar-light text-sm" id='top-Nav'>
        
        <div class="container">
          <a href="./" class="navbar-brand">
            <img src="<?php echo validate_image($_settings->info('logo'))?>" alt="Site Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span><?= $_settings->info('short_name') ?></span>
          </a>

          <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse order-3" id="navbarCollapse">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
              <li class="nav-item">
                <a href="./" class="nav-link <?= isset($page) && $page =='home' ? "active" : "" ?>">Home</a>
              </li>
              <li class="nav-item">
                <a href="./?page=projects" class="nav-link <?= isset($page) && $page =='projects' ? "active" : "" ?>">Projects</a>
              </li>
              <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle  <?= isset($page) && $page =='projects_per_department' ? "active" : "" ?>">Department</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow" style="left: 0px; right: inherit;">
                  <?php 
                    $departments = $conn->query("SELECT * FROM department_list where status = 1 order by `name` asc");
                    $dI =  $departments->num_rows;
                    while($row = $departments->fetch_assoc()):
                      $dI--;
                  ?>
                  <li>
                    <a href="./?page=projects_per_department&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['name']) ?></a>
                    <?php if($dI != 0): ?>
                    <li class="dropdown-divider"></li>
                    <?php endif; ?>
                  </li>
                  <?php endwhile; ?>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle  <?= isset($page) && $page =='projects_per_curriculum' ? "active" : "" ?>">Courses</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow" style="left: 0px; right: inherit;">
                  <?php 
                    $curriculums = $conn->query("SELECT * FROM curriculum_list where status = 1 order by `name` asc");
                    $cI =  $curriculums->num_rows;
                    while($row = $curriculums->fetch_assoc()):
                      $cI--;
                  ?>
                  <li>
                    <a href="./?page=projects_per_curriculum&id=<?= $row['id'] ?>" class="dropdown-item"><?= ucwords($row['name']) ?></a>
                    <?php if($cI != 0): ?>
                    <li class="dropdown-divider"></li>
                    <?php endif; ?>
                  </li>
                  <?php endwhile; ?>
                </ul>
              </li>
              <li class="nav-item">
                <a href="./?page=about" class="nav-link <?= isset($page) && $page =='about' ? "active" : "" ?>">About Us</a>
              </li>
              <!-- <li class="nav-item">
                <a href="#" class="nav-link">Contact</a>
              </li> -->
              <?php if($_settings->userdata('id') > 0): ?>
              <li class="nav-item">
                <a href="./?page=profile" class="nav-link <?= isset($page) && $page =='profile' ? "active" : "" ?>">Profile</a>
              </li>
              <li class="nav-item">
                <a href="./?page=submit-archive" class="nav-link <?= isset($page) && $page =='submit-archive' ? "active" : "" ?>">Submit Thesis/Capstone</a>
              </li>
              <?php endif; ?>
            </ul>

            
          </div>
          <!-- Right navbar links -->
          <div class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
                <a href="javascript:void(0)" class="text-navy" id="search_icon"><i class="fa fa-search"></i></a>
                <div class="position-relative">
                  <div id="search-field" class="position-absolute">
                    <input type="search" id="search-input" class="form-control rounded-0" required placeholder="Search..." value="<?= isset($_GET['q']) ? $_GET['q'] : '' ?>">
                  </div>
                </div>
          </div>
        </div>
      </nav>
      <!-- /.navbar -->
      <script>
        $(function(){
          $('#search-form').submit(function(e){
            e.preventDefault()
            if($('[name="q"]').val().length == 0)
            location.href = './';
            else
            location.href = './?'+$(this).serialize();
          })
          $('#search_icon').click(function(){
              $('#search-field').addClass('show')
              $('#search-input').focus();
              
          })
          $('#search-input').focusout(function(e){
            $('#search-field').removeClass('show')
          })
          $('#search-input').keydown(function(e){
            if(e.which == 13){
              location.href = "./?page=projects&q="+encodeURI($(this).val());
            }
          })
          
        })
      </script>