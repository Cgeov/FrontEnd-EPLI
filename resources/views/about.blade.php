@include('header')
<link href="css/redes.css" rel="stylesheet">
<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <!-- Feature Start -->
    <div class="cuerpo">
    <div class="slider__warpper">
      <div class="flex__container flex--pikachu flex--active" data-slide="1">
        <div class="flex__item flex__item--left">
          <div class="flex__content">
            <p class="text--sub">Nuestras Redes Sociales</p>
            <h1 class="text--big">Facebook</h1>
            <p class="text--normal">Quieres obtener mayor información sobre temas de este interes? Visita nuestra Red Social de Facebook y enterate de nuestras novedades</p>
          </div>
          <p class="text__background">Facebook</p>
        </div>
        <div class="flex__item flex__item--right"></div>
        <a href="https://www.facebook.com/CamilaSoundyEPLI/"><img class="pokemon__img" src="img/facebook.png" /></a>
      </div>
      <div class="flex__container flex--piplup animate--start" data-slide="2">
        <div class="flex__item flex__item--left">
          <div class="flex__content">
            <p class="text--sub">Nuestras Redes Sociales</p>
            <h1 class="text--big">Twitter</h1>
            <p class="text--normal">Quieres obtener mayor información sobre temas de este interes? Visita nuestra Red Social de Twitter y enterate de nuestras novedades</p>
          </div>
          <p class="text__background">Twitter</p>
        </div>
        <div class="flex__item flex__item--right"></div>
        <a href="https://twitter.com/CamilaSoundy?s=09"><img class="pokemon__img" src="img/twitter1.png" /></a>
      </div>
      <div class="flex__container flex--blaziken animate--start" data-slide="3">
        <div class="flex__item flex__item--left">
          <div class="flex__content">
            <p class="text--sub">Nuestras Redes Sociales</p>
            <h1 class="text--big">Youtube</h1>
            <p class="text--normal">Deseas visualizar el contenido? Visita nuestra canal de Youtube y obten mayor información sobre nuestras novedades</p>
          </div>
          <p class="text__background">Youtube</p>
        </div>
        <div class="flex__item flex__item--right"></div>
        <a href="https://www.youtube.com/channel/UCDTYeBzUtdLBUmT1XBGzweA"><img class="pokemon__img" src="img/youtube.png" /></a>
      </div>
      <div class="flex__container flex--dialga animate--start" data-slide="4">
        <div class="flex__item flex__item--left">
          <div class="flex__content">
            <p class="text--sub">Nuestras Redes Sociales</p>
            <h1 class="text--big">Linkedin</h1>
            <p class="text--normal">Quieres obtener mayor información sobre Camila Soundy? Visita mi perfil de linkedin</p>
          </div>
          <p class="text__background">Linkedin</p>
        </div>
        <div class="flex__item flex__item--right"></div>
        <a href="https://www.linkedin.com/in/camila-soundy-212a9022/?trk=profile-badge"><img class="pokemon__img" src="img/linkedin.png" /></a>
      </div>
      <div class="flex__container flex--zekrom animate--start" data-slide="5">
        <div class="flex__item flex__item--left">
          <div class="flex__content">
            <p class="text--sub">Nuestras Redes Sociales</p>
            <h1 class="text--big">Instagram</h1>
            <p class="text--normal">Quieres obtener mayor información sobre temas de este interes? Visita nuestra Red Social de Instagram y enterate de nuestras novedades</p>
          </div>
          <p class="text__background">Instagram</p>
        </div>
        <div class="flex__item flex__item--right"></div>
        <a href="https://instagram.com/camilasoundy?igshid=1ebgrvbqf0y3j"><img class="pokemon__img" src="img/instagram.png" /></a>
  </div>
</div>

<div class="slider__navi">
  <a href="" class="slide-nav active" data-slide="1">pikachu</a>
  <a href="" class="slide-nav" data-slide="2" style="color:black">piplup</a>
  <a href="" class="slide-nav" data-slide="3">blaziken</a>
  <a href="" class="slide-nav" data-slide="4">dialga</a>
  <a href="" class="slide-nav" data-slide="5">zekrom</a>
</div>
</div>
<script>
$('.slide-nav').on('click', function(e) {
    e.preventDefault();
    // get current slide
    var current = $('.flex--active').data('slide'),
      // get button data-slide
      next = $(this).data('slide');
  
    $('.slide-nav').removeClass('active');
    $(this).addClass('active');
  
    if (current === next) {
      return false;
    } else {
      $('.slider__warpper').find('.flex__container[data-slide=' + next + ']').addClass('flex--preStart');
      $('.flex--active').addClass('animate--end');
      setTimeout(function() {
        $('.flex--preStart').removeClass('animate--start flex--preStart').addClass('flex--active');
        $('.animate--end').addClass('animate--start').removeClass('animate--end flex--active');
      }, 800);
    }
  });

</script>

    <!-- Feature Start -->


    