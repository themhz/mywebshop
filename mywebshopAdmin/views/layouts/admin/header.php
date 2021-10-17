<!-- Top bar Start -->
<div class="top-bar">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
                <i class="fa fa-envelope"></i>
                info@kipodomi-tools.gr
            </div>
            <div class="col-sm-6">
                <i class="fa fa-phone-alt"></i>
                210-4651518
            </div>
        </div>
    </div>
</div>
<!-- Top bar End -->
<!-- Nav Bar Start -->
<div class="nav">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a href="#" class="navbar-brand">MENU</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto">
                    <a href="/" class="nav-item nav-link active">Home</a>
                    <a href="products" class="nav-item nav-link active">Products</a>
                    <a href="basket" class="nav-item nav-link">Cart</a>
                    <a href="basket" class="nav-item nav-link">Checkout</a>
                    <a href="profile" class="nav-item nav-link">My Account</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">More Pages</a>
                        <div class="dropdown-menu">
                            <a href="wishlist.html" class="dropdown-item">Wishlist</a>
                            <a href="login" class="dropdown-item">Login & Register</a>
                            
                        </div>
                    </div>
                </div>
                <?php
                if($user->id==-1){ ?>

                    <div class="navbar-nav ml-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">User Account</a>
                            <div class="dropdown-menu">


                                <a href="login" class="dropdown-item">Login</a>
                                <a href="register" class="dropdown-item">Register</a>
                            </div>
                        </div>
                    </div>

                <?php } else {?>
                    <div class="navbar-nav ml-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Hello <?php echo $user->firstname ?></a>
                            <div class="dropdown-menu">


                                <a href="/profile" class="dropdown-item">Profile</a>
                                <a href="login?logout=1" class="dropdown-item">Logout</a>
                            </div>
                        </div>
                    </div>
                <?php }?>
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->

<!-- Bottom Bar Start -->
<div class="bottom-bar">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-md-3">
                <div class="logo">
                    <a href="/">
                        <img src="img/logo.png" alt="Logo">
                    </a>
                </div>
            </div>
          
        </div>
    </div>
</div>
<!-- Bottom Bar End -->