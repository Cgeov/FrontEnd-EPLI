@include('header')
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Publicaciones</h1>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="text-primary">Echales un vistazo!</h6>
                <h1 class="mb-44">Nuestras publicaciones</h1>
            </div>
            <div class="row g-4">
                @foreach($data as $i)
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item rounded overflow-hidden">
                        <img class="img-fluidpublicaciones" src="img/{{$i-> main_picture }}" alt="">
                        <div class="position-relative p-4 pt-0">
                            <div class="service-icon">
                                <i class="fas fa-bell fa-3x"></i>
                            </div>
                            <h4 class="mb-44">{{$i -> title}}</h4>
                            <a href="{{route('service.showbyid', $i -> id)}}" class="small fw-medium">Leer más<i class="fa fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Service End -->
@include('footer')