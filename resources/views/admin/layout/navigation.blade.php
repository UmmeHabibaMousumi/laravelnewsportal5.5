
        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="{{ url('/back') }}"><img src="{{ asset('others') }}/{{ $shareData['admin_logo'] }}" alt="Logo"></a>
       
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="{{url('/back')}}"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                  @permission(['Permission Update','all'])
                     <li class="active">
                        <a href="{{url('/back/permission')}}"> <i class="menu-icon fa fa-laptop"></i>Permission </a>
                    </li>
                     @endpermission

                     @permission(['Permission Update','all'])
                    <li class="active">
                        <a href="{{url('/back/roles')}}"> <i class="menu-icon fa fa-bars"></i>Role </a>
                    </li>
                      @endpermission

                      @permission(['Permission Update','all'])
                    <li class="active">
                        <a href="{{url('/back/author')}}"> <i class="menu-icon fa fa-bars"></i>Author </a>
                    </li>
                     @endpermission
                      @permission(['Category List','all'])
                    <li>
                        <a href=" {{ url('/back/categroies') }} "> <i class=" menu-icon fa fa-bars"></i>Categories </a>
                    </li>
                     @endpermission
   
                    @permission(['Post List','all','Permission'])
                    <li>
                        <a href=" {{ url('/back/posts') }} "> <i class="menu-icon fa fa-bars"></i>Posts </a>
                    </li>
                     @endpermission
                     @permission(['system settings','all'])
                    <li>
                        <a href=" {{ url('/back/settings') }} "> <i class="menu-icon fa fa-bars"></i>Settings </a>
                    </li>
                     @endpermission
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel --