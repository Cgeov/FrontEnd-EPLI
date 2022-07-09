@include('header')
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-1">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Contactanos</h1>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Quote Start -->
    <div class="container-fluid bg-light overflow-hidden px-lg-0">
        <div class="container quote px-lg-0">
            <div class="row g-0 mx-lg-0">
                <div class="col-lg-6 ps-lg-0 wow fadeIn" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute img-fluid w-100 h-100" src="img/contactanos.jpg" style="object-fit: cover;" alt="">
                    </div>
                </div>
                <form action="{{ route('send.email') }}" class="col-lg-6 quote-text py-5 wow fadeIn" data-wow-delay="0.5s" method="post">
                    <div class="p-lg-5 pe-lg-0">
                        <h6 class="text-primary">¿Consultas?</h6>
                        <h1 class="mb-4">Envianos un mensaje!</h1>
                        <p class="mb-4 pb-2">Estas interesado el alguno de nuestros servicios o simplemente quieres dejarnos un mensaje? Rellena los siguientes campos a continuación: </p>
                        <form>
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control border-0" placeholder="Tu Nombre" style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input type="email" class="form-control border-0" placeholder="Tu Correo Electrónico" style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input type="text" class="form-control border-0" placeholder="Asunto" style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <select class="form-select border-0" style="height: 55px;">
                                        <option selected>Seleccione un servicio</option>
                                        <option value="1">Ninguno</option>
                                        <option value="2">Charlas</option>
                                        <option value="3">Conferencias</option>
                                        <option value="4">Talleres</option>
                                        <option value="5">Capacitaciones</option>
                                        <option value="6">Asesorías</option>
                                        <option value="7">Consultorías</option>
                                    </select>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control border-0" placeholder="Mensaje :)"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">Enviar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Quote End -->
@include('footer')