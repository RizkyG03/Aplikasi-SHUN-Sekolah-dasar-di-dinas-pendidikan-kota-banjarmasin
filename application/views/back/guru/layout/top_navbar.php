<header class="main-header">
    <!-- Logo -->
    <a href="<?= site_url('guru')?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b>PN</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">Sistem Pendataan Nilai</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?= base_url('assets/dist/img/avatar.png')?>" class="user-image" alt="User Image">
              <span class="hidden-xs">Guru</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?= base_url('assets/dist/img/avatar.png')?>" class="img-circle" alt="User Image">

                <p>
                  Guru
                  <small>SDN Kelayan Dalam 1</small>
                </p>
              </li>
              <li class="user-footer">
                
                <div class="pull-right">
                  <a href="<?= site_url('logout')?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          
          <!-- Control Sidebar Toggle Button -->
          <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        
        </ul>
      </div>
    </nav>
  </header>