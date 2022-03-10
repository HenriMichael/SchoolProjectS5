<%@ include file="navbar.jsp" %>
<div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>

    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">

        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">

                    <a class="navbar-brand" href="">

                        <b class="logo-icon">

                            <img src="../../asset/static/plugins/images/back.png" style="height:25px"alt="homepage" />
                        </b>

                    </a>

                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>

                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav d-none d-md-block d-lg-none">
                        <li class="nav-item">
                            <a class="nav-toggler nav-link waves-effect waves-light text-white"
                                href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        </li>
                    </ul>

                    <ul class="navbar-nav ms-auto d-flex align-items-center">


                        <li class=" in">
                            <form role="search" class="app-search d-none d-md-block me-3">
                                <input type="text" placeholder="Recherche" class="form-control mt-0">
                                <a href="" class="active">
                                    <i class="fa fa-search"></i>
                                </a>
                            </form>
                        </li>

                    </ul>
                </div>
            </nav>
        </header>

        <aside class="left-sidebar" data-sidebarbg="skin6">

            <div class="scroll-sidebar">

                <nav class="sidebar-nav">
                    <ul id="sidebarnav">

                        <li class="sidebar-item pt-2">

                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/NouveauxSignalements"
                            aria-expanded="false">
                                <i class="fas fa-bug" aria-hidden="true"></i>
                                <span class="hide-menu">Nouveaux Signalements</span>
                            </a>

                            <li class="sidebar-item">
                            <form action="/Tables?region=1" method="post">
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Tables?region=1"
                                    aria-expanded="false">
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                    <span class="hide-menu">Regions</span>
                                </a>
                            </form>
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Tables?utilisateur=1"
                                    aria-expanded="false">
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                    <span class="hide-menu">Utilisateur</span>
                                </a>
                                <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/Tables?typeSignalement=1"
                                    aria-expanded="false">
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                    <span class="hide-menu">Type de signalement</span>
                                </a>
                            </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/stat"
                            aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">Statistiques</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                             <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/listeSignalement"
                             aria-expanded="false">
                                <i class="fa fa-table" aria-hidden="true"></i>
                                <span class="hide-menu">Liste des signalements</span>
                             </a>
                        </li>

                    </ul>

                </nav>

            </div>

        </aside>
<div class="card text-center">
  <div class="card-header">Notes</div>
  <div class="card-body">
    <h5 class="card-title">Critere de recherche</h5>
    
  </div>
</div>
<%@ include file="foot.jsp" %>

