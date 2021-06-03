<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href={{url("/")}} class="brand-link" style="text-align: center;">
        <span class="brand-text font-weight-light">Lawyer Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src={{url("/public/assets/dist/img/avatar5.png")}} class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Hi Admin,</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href={{url("/")}} class="nav-link {{ Request::routeIs('home') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('customer.list')}}"
                        class="nav-link {{ Request::routeIs('customer.list') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>Customers</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('customer.lawyer-list')}}" 
                        class="nav-link {{ Request::routeIs('customer.lawyer-list') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>Lawyers</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('content.list')}}" 
                        class="nav-link {{ Request::routeIs('content.list') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-file"></i>
                        <p>Contents</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('primary_practice.list')}}" 
                        class="nav-link {{ Request::routeIs('primary_practice.list') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-file"></i>
                        <p>Primary Practice</p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->

</aside>