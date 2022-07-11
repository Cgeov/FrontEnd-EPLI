@include('header')
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Galería</h1>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Projects Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="text-primary">Nuestros proyectos</h6>
                <h1 class="mb-4">Parte de nustros esfuerzos para alcanzar la equidad</h1>
            </div>
            <div class="row mt-n2 wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-12 text-center">
                    <ul class="list-inline mb-5" id="portfolio-flters">
                        <li class="mx-2 active" data-filter="*">All</li>
                        <li class="mx-2" data-filter=".1">Capacitaciones y sensibilizaciones</li>
                        <li class="mx-2" data-filter=".2">Charlas y Talleres</li>
                        <li class="mx-2" data-filter=".3">Gira de medios</li>
                    </ul>
                </div>
            </div>
            <div class="row g-4 portfolio-container wow fadeInUp" data-wow-delay="0.5s">
                @foreach($fotos as $foto)
                    <div class="col-lg-4 col-md-6 portfolio-item {{$foto -> type_image}}">
                        <div class="portfolio-img rounded overflow-hidden">
                            <img class="img-fluidgaleria" src="img/{{$foto -> image_name}}" width="600px" height="400px" alt="">
                            <div class="portfolio-btn">
                                <a class="btn btn-lg-square btn-outline-light rounded-circle mx-1" href="img/{{$foto -> image_name}}" data-lightbox="portfolio" width="600px" height="400px"><i class="fa fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="pt-3">
                            <hr class="text-primary w-25 my-2">
                            @switch($foto -> type_image)
                                @case(1)
                                    <h5 class="lh-base">Capacitaciones y sensibilizaciones</h5>
                                    @break
                                @case(2)
                                    <h5 class="lh-base">Charlas y Talleres</h5>
                                    @break
                                @case(3)
                                    <h5 class="lh-base">Gira de medios</h5>
                                    @break
                            @endswitch
                        </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Projects End -->
</body>
@include('footer')