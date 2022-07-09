<html>
<head>
    <meta charset="utf-8">
    <title>EPLI</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>
<!-- Topbar Start -->
<div class="container-fluid bg-black p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href="https://www.facebook.com/CamilaSoundyEPLI/"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href="https://twitter.com/CamilaSoundy?s=09"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href="https://www.linkedin.com/in/camila-soundy-212a9022/?trk=profile-badge"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-square btn-link rounded-0" href="https://instagram.com/camilasoundy?igshid=1ebgrvbqf0y3j"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="../index" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0 text-primary">EPLI</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="../index" class="nav-item nav-link active">Inicio</a>
                <a href="../publicaciones" class="nav-item nav-link">Publicaciones</a>
                <a href="../social" class="nav-item nav-link">Social media</a>
                <a href="../galeria" class="nav-item nav-link">Galeria</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Contenido</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="../team" class="dropdown-item">Our Team</a>
                        <a href="../testimonial" class="dropdown-item">Testimonial</a>
                        <a href="../404" class="dropdown-item">404 Page</a>
                    </div>
                </div>
            </div>
            <a href="../contact" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Contactanos<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
<div class="container-fluid bg-light overflow-hidden px-lg-0">
    <div class="container feature px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 feature-text py-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="p-lg-5 ps-lg-0">
                    <h6 class="text-primary">Nuestras Publicaciones</h6>
                    <h1 class="mb-4">{{ $detail -> title }}</h1>
                    <p class="mb-4 pb-2">{{ $detail -> description}}</p>
                </div>
             </div>
             <div class="col-lg-6 pe-lg-0 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="{{asset('img/'. $detail -> main_picture)}}" style="object-fit: cover;" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

@include('footer')
