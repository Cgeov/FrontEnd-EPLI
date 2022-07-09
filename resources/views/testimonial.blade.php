@include('header')
<link href="css/redes.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Servicios</h1>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Testimonial Start -->
    <div class="container-xxl">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h6 class="text-primary">Adquiere uno de nuestros servicios :)</h6>
                <h1 class="mb-44">Servicios</h1>
            </div>
        </div>       
    </div>
    <section class="page">
	<section>
		<ul class="tabs-controls">
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link tabs-controls__link--active" data-id="1">
                    Charlas
				</a>
			</li>
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link" data-id="2">
                    Conferencias
			  </a>
			</li>
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link" data-id="3">
                    Talleres
				</a>
			</li>
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link" data-id="4">
                    Capacitaciones
				</a>
			</li>
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link" data-id="5">
                    Asesorías
				</a>
			</li>
			<li class="tabs-controls__item">
				<a href="#" class="tabs-controls__link" data-id="6">
                    Consultorías
				</a>
			</li>
		</ul>
	</section>
	<section class="cards-container">
		<div class="card card--current" id="1">
			<h1>Charlas</h1>
			<p>
            <ul>
            <li>Son dirigidas a un grupo pequeño de personas enfocado en sensibilizar sobre discapacidad y accesibilidad.</li> 
            <li>Se destaca la importancia de educarse sobre el tema y delimitado al área de interés del grupo.</li> 
            </ul>
		</div>
		<div class="card" id="2">
			<h1>Conferencias</h1>
			<ul>
            <li>Se desarrolla de manera más general a un grupo grande de personas con diversidad de profesiones o intereses. </li>
            <li>El fin es sensibilizar cobre discapacidad y accesibilidad.</li>
            </ul>
		</div>
		<div class="card" id="3">
			<h1>Talleres</h1>
			<ul>
                <li>Se realiza a un grupo específico de personas.</li>
                <li>Su duración es entre 2 a 4 horas y se tocan temas específicos de accesibilidad e inclusión social para personas con discapacidad aplicado a su área de interés</li>
            </ul>
		</div>
		<div class="card" id="4">
			<h1>Capacitaciones</h1>
            <ul>
            <li>Diversidad de temas a disposición según el área de interés. </li>
            <li>La duración depende del tema y disponibilidad de tiempo del grupo, empresa, universidad, institución, etc.</li> 
            </ul>
		</div>
		<div class="card" id="5">
			<h1>Asesorías</h1>
            <ul>
            <li>Se ofrecen guías, consejería y opiniones sobre la implementación de la accesibilidad, políticas de inclusión, aplicación de ajustes o cualquier consulta sobre el tema a empresas, instituciones o quien lo necesite.</li>
            </ul>
		</div>
		<div class="card" id="6">
			<h1>Consultorías</h1>
			<ul>
            <li>Se desarrollan diagnósticos de accesibilidad, políticas de inclusión social, documentos de guías de accesibilidad para áreas específicas y apoyo en la implementación de las mimas. </li>
            </ul>
		</div>
	</section>
</section>      
<div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <a class="btn btn-primary rounded-pill py-3 px-5" href="">Obtener Mayor información</a>
                </div>
            </div>
        </div> 
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script>
$(document).ready(function() {
	var oldId = null;

	$('.tabs-controls__link').click(function(e) {
		e.preventDefault();

		if ($(this).hasClass('tabs-controls__link--active')) {
			return false;
		}

		var currentId = parseInt($(this).data('id'), 10);
		$('.tabs-controls__link--active').removeClass('tabs-controls__link--active');
		$(this).addClass('tabs-controls__link--active');

		if (currentId < oldId) { // item is hidden
			var timing = $('.card.hidden').length * 100;
			$('.card').each(function(index) {
				if (index > (currentId - 1 ) || index == (currentId - 1)) {
					window.setTimeout(function() {
						$('.card').eq(index).removeClass('hidden');
					}, timing - (index * 100));
				}
			});
		} else {
			$('.card').each(function(index) {
				if (index < (currentId - 1)) {
					window.setTimeout(function() {
						$('.card').eq(index).addClass('hidden');
					}, index * 100);
				}
			});
		}

		oldId = currentId;
	});
});

</script>
    <!-- Testimonial End -->
@include('footer')