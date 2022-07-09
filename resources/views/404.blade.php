@include('header')
<link rel="stylesheet" href="css/redes.css">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Artículos</h1>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="etiqueta">
    @foreach($data as $cont=> $i)
    <div class="item-{{ ++$cont }}">
          <a href="{{route('service.showbyid', $i -> id)}}" class="tarjeta">
            <div class="thumb" style="background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/flex-1.jpg);"></div>
            <article>
              <h1>{{$i -> title}}</h1>
              <p></p>
              <?php
              $string = $i['description'];
              if (strlen($string) > 500) {
                //Cortamos a 350 caracteres
                $stringCut = substr($string, 0, 350);
                }
              echo '<p>'.$stringCut.' ...</p>';?>
              <span>Camila Soundy</span>
            </article>
          </a>
    </div>
    @endforeach
</div>


@include('footer')