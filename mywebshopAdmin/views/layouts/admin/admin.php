<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>E Store - eCommerce HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="eCommerce HTML Template Free Download" name="keywords">
    <meta content="eCommerce HTML Template Free Download" name="description">
    <base href="../views/layouts/admin" />
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

    <!-- CSS Libraries -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="lib/slick/slick.css" rel="stylesheet">
    <link href="lib/slick/slick-theme.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
{{HEADER}}


<!-- My Account Start -->
<div class="my-account">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="nav flex-column nav-pills" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="dashboard-nav" data-toggle="pill" href="#dashboard-tab" role="tab"><i class="fa fa-tachometer-alt"></i>Dashboard</a>
                    <a class="nav-link" id="orders-nav" data-toggle="pill" href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>Orders</a>
                    <a class="nav-link" id="users-nav" data-toggle="pill" href="#users-tab" role="tab"><i class="fa fa-users"></i>Users</a>
                    <a class="nav-link" id="address-nav" data-toggle="pill" href="#address-tab" role="tab"><i class="fa fa-map-marker-alt"></i>address</a>
                    <a class="nav-link" id="account-nav" data-toggle="pill" href="#account-tab" role="tab"><i class="fa fa-user"></i>Account Details</a>
                    <a class="nav-link" href="index.html"><i class="fa fa-sign-out-alt"></i>Logout</a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                        <h4>Dashboard</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque.
                        </p>
                    </div>
                    <div class="tab-pane fade" id="orders-tab" role="tabpanel" aria-labelledby="orders-nav">
                        <div class="row">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>Κωδ</th>
                                        <th>Διεύθυνση</th>
                                        <th>Τρόπος πληρωμής</th>
                                        <th>Τρόπος αποστολής</th>
                                        <th>Ποσό</th>
                                        <th>Ποσό με ΦΠΑ</th>
                                        <th>Ημερομηνία παραγγελίας</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($orders as $order){ ?>
                                        <tr>
                                            <td><?php echo $order->id ?></td>
                                            <td><?php echo $order->shipping_location_id ?> <?php echo $order->shipping_address ?> <?php echo $order->shipping_postcode ?></td>
                                            <td><?php echo $order->payment_method_id ?></td>
                                            <td><?php echo $order->shipping_method_id ?></td>
                                            <td><?php echo $order->amount ?></td>
                                            <td><?php echo $order->amount_with_tax ?></td>
                                            <td><?php echo $order->regdate ?></td>
                                            <td><button class="btn" id="order-items<?php echo $order->id ?>-nav" data-toggle="pill" onclick="showOrderItems(<?php echo $order->id ?>)">View</button></td>
                                        </tr>
                                    <?php } ?>

                                    </tbody>
                                </table>
                                <br>
                                <table id="order_items" class="table table-bordered" style="display: none">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>Κωδ</th>
                                        <th>Κωδ Προϊόντος</th>
                                        <th>Ποσότητα</th>
                                        <th>Ποσό</th>
                                        <th>Ποσό με ΦΠΑ</th>
                                        <th>Ημερομηνία παραγγελίας</th>
                                    </tr>
                                    </thead>
                                    <tbody id="order_items_tbody">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="users-tab" role="tabpanel" aria-labelledby="users-nav">
                        <h4>Users</h4>
                        <div class="row">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>Κωδ</th>
                                        <th>Ονοματεπώνυμο</th>
                                        <th>e-mail</th>
                                        <th>Τηλέφωνο</th>
                                        <th>Ημερομηνία Εγγραφής</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($users as $user){ ?>
                                        <tr>
                                            <td><?php echo $user->id ?></td>
                                            <td><?php echo $user->firstname ?> <?php echo $user->lastname ?></td>
                                            <td><?php echo $user->email ?></td>
                                            <td><?php echo $user->phone ?></td>
                                            <td><?php echo $user->regdate ?></td>
                                            <td><button class="btn" id="order-items<?php echo $user->id ?>-nav" data-toggle="pill" onclick="showOrderItems(<?php echo $user->id ?>)">View</button></td>
                                        </tr>
                                    <?php } ?>

                                    </tbody>
                                </table>
                                <br>
                                <table id="order_items" class="table table-bordered" style="display: none">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>Κωδ</th>
                                        <th>Κωδ Προϊόντος</th>
                                        <th>Ποσότητα</th>
                                        <th>Ποσό</th>
                                        <th>Ποσό με ΦΠΑ</th>
                                        <th>Ημερομηνία παραγγελίας</th>
                                    </tr>
                                    </thead>
                                    <tbody id="order_items_tbody">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="address-tab" role="tabpanel" aria-labelledby="address-nav">
                        <h4>Address</h4>
                        <div class="row">
                            <div class="col-md-6">
                                <h5>Payment Address</h5>
                                <p>123 Payment Street, Los Angeles, CA</p>
                                <p>Mobile: 012-345-6789</p>
                                <button class="btn">Edit Address</button>
                            </div>
                            <div class="col-md-6">
                                <h5>Shipping Address</h5>
                                <p>123 Shipping Street, Los Angeles, CA</p>
                                <p>Mobile: 012-345-6789</p>
                                <button class="btn">Edit Address</button>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="account-tab" role="tabpanel" aria-labelledby="account-nav">
                        <h4>Account Details</h4>
                        <div class="row">
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="First Name">
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="Last Name">
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="Mobile">
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="Email">
                            </div>
                            <div class="col-md-12">
                                <input class="form-control" type="text" placeholder="Address">
                            </div>
                            <div class="col-md-12">
                                <button class="btn">Update Account</button>
                                <br><br>
                            </div>
                        </div>
                        <h4>Password change</h4>
                        <div class="row">
                            <div class="col-md-12">
                                <input class="form-control" type="password" placeholder="Current Password">
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="New Password">
                            </div>
                            <div class="col-md-6">
                                <input class="form-control" type="text" placeholder="Confirm Password">
                            </div>
                            <div class="col-md-12">
                                <button class="btn">Save Changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- My Account End -->

<!-- Footer Start -->
<div class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h2>Get in Touch</h2>
                    <div class="contact-info">
                        <p><i class="fa fa-map-marker"></i>123 E Store, Los Angeles, USA</p>
                        <p><i class="fa fa-envelope"></i>email@example.com</p>
                        <p><i class="fa fa-phone"></i>+123-456-7890</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h2>Follow Us</h2>
                    <div class="contact-info">
                        <div class="social">
                            <a href=""><i class="fab fa-twitter"></i></a>
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-linkedin-in"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h2>Company Info</h2>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms & Condition</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h2>Purchase Info</h2>
                    <ul>
                        <li><a href="#">Pyament Policy</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Return Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row payment align-items-center">
            <div class="col-md-6">
                <div class="payment-method">
                    <h2>We Accept:</h2>
                    <img src="img/payment-method.png" alt="Payment Method" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="payment-security">
                    <h2>Secured By:</h2>
                    <img src="img/godaddy.svg" alt="Payment Security" />
                    <img src="img/norton.svg" alt="Payment Security" />
                    <img src="img/ssl.svg" alt="Payment Security" />
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

<!-- Footer Bottom Start -->
<div class="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-6 copyright">
                <p>Copyright &copy; <a href="https://htmlcodex.com">HTML Codex</a>. All Rights Reserved</p>
            </div>

            <div class="col-md-6 template-by">
                <p>Template By <a href="https://htmlcodex.com">HTML Codex</a></p>
            </div>
        </div>
    </div>
</div>
<!-- Footer Bottom End -->

<!-- Back to Top -->
<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/slick/slick.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>
</html>
