-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2022 a las 21:48:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_name` text DEFAULT NULL,
  `type_image` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image_type`
--

CREATE TABLE `image_type` (
  `id` int(11) NOT NULL,
  `image_type` text NOT NULL,
  `image_type_code` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `image_type`
--

INSERT INTO `image_type` (`id`, `image_type`, `image_type_code`, `created_at`, `updated_at`) VALUES
(1, 'Capacitaciones y \r\nsensibilizaciones', 'capacitaciones_y_sensibilizaciones', '2021-10-27 05:27:30', '2021-10-27 05:27:30'),
(2, 'Charlas y Talleres', 'charlas_y_talleres', '2021-10-27 05:27:30', '2021-10-27 05:27:30'),
(3, 'Gira de medios', 'gira_de_medios', '2021-10-27 05:27:30', '2021-10-27 05:27:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_code` varchar(50) NOT NULL,
  `service_icon` varchar(50) NOT NULL,
  `slider` tinyint(1) NOT NULL,
  `link` tinyint(1) NOT NULL,
  `document` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `details` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_code`, `service_icon`, `slider`, `link`, `document`, `created_at`, `updated_at`, `details`) VALUES
(1, 'Publicaciones', 'publicaciones', 'fas fa-bell', 0, 0, 0, '2021-10-05 00:02:30', '2021-10-05 00:02:30', 0),
(2, 'Articulos', 'articulos', 'fas fa-book', 0, 0, 0, '2021-10-05 00:02:30', '2021-10-05 00:02:30', 0),
(5, 'Cursos en linea', 'cursos_en_linea', 'fas fa-laptop', 0, 1, 0, '2021-10-05 00:02:30', '2021-10-05 00:02:30', 1),
(6, 'Talleres', 'talleres', 'fas fa-fw fa-folder', 0, 0, 1, '2021-10-05 00:02:30', '2021-10-05 00:02:30', 1),
(7, 'Asesorías', 'asesorias', 'fas fa-hands-helping', 0, 1, 0, '2021-10-05 00:02:30', '2021-10-28 04:29:54', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_images`
--

CREATE TABLE `service_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_number` varchar(2) DEFAULT NULL,
  `service_information_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_informations`
--

CREATE TABLE `service_informations` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `main_picture` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `principal` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `service_informations`
--

INSERT INTO `service_informations` (`id`, `title`, `description`, `main_picture`, `link`, `document_name`, `service_id`, `principal`, `created_at`, `updated_at`) VALUES
(1, 'Carta de la baja visión a la nueva Asamblea Legislativa', 'Señores diputados: Hace un par de meses presentamos el “Proyecto de ley Día Nacional de las personas con Baja Visión (no es lo mismo ceguera que Baja Visión)” a la Asamblea Legislativa con el deseo que ustedes, los nuevos diputados electos, puedan darle iniciativa de ley.\r\n\r\nEl día 1 de marzo se decretó como el Día Nacional de la Persona con Discapacidad Visual pero me surgen las siguientes preguntas: ¿ustedes sabían que la “discapacidad visual” no se refiere únicamente a ceguera? ¿conocen cuales son las necesidades específicas de las personas con discapacidad visual que no son ciegas?\r\n\r\nEn nuestro país, y en varios al rededor del mundo, no reconocen que existe una gran diferencia entre las personas ciegas y las personas con baja visión, a pesar de tener necesidades y características distintas las clasifican en una misma categoría. Dándole más apoyo y visibilidad a la ceguera total e invisibilizando al sector de baja visión. Pueden comprobar esto observando que existe la Escuela de Ciegos Eugenia Dueñas, donde la rehabilitación está dedicada a personas ciegas y un pequeño espacio que casi nadie conoce que dan rehabilitación a personas con baja visión. A parte de esa pequeña área no hay más ayuda ni atención integral para la niñez, adolescentes, hombres, mujeres y tercera edad que tienen baja visión en el sector público. Por temporadas es El Club de Leones quienes tienen a la venta algunas ayudas ópticas como las lupas que son necesarias para este sector.\r\n\r\nLa baja visión la pueden desarrollar a cualquier edad. En algunos casos puede prevenirse si se tiene los cuidados oportunos, se puede realizar seguimiento médico y tener una baja visión estable y también se encuentran casos que desarrollan una baja visión profunda y llegan a tener ceguera total.\r\n\r\nSegún la Organización Mundial de la Salud, 300 millones de personas tienen discapacidad visual, de estas, 246 millones tienen baja visión y el resto ceguera, y sin embargo en nuestro país todavía se realizan políticas de inclusión, programas de apoyo, etc, únicamente pensando en ceguera. A pesar de no tener un censo nacional de personas con discapacidadEn nuestro país no contamos con un censo que nos indique cuántas personas con discapacidad viven en El Salvador, basta con preguntarle a optometristas y a oftalmólogos cuántos pacientes reciben al mes que tienen patologías diversas que causan reducción de la visión, son una gran cantidad de pacientes sin reconocer su discapacidad y que ni el CONAIPD, ni el ISRI ni ningún ente de gobierno los ha registrado como personas con discapacidad visual y tampoco se ha creado programas especiales públicos para darles atención médica especializada y rescatar el resto visual que poseen y evitar perder la vista por completo.\r\n\r\nNo les puedo dar una cifra de cuántas personas con baja visión hay en nuestro país, pero si puede decirles que son muchas más de las que se puede censar, pues la baja visión no es conocida, los padres de familia o maestros no logran identificarla a tiempo en la niñez ya que la confunden con miopía o con hipermetropía y al ir creciendo desarrollan la baja visión sin saberlo y ya adolescentes o adultos buscan a un especialista.\r\n\r\nPor estas razones es que declarar un día específicamente para sensibilizar sobre “Baja Visión” tiene mucha importancia. De esta manera los esfuerzos estarán enfocados en conocer la baja visión, cómo o por qué se desarrolla, sus necesidades propias, cómo podemos ayudar a una persona con baja visión, las adecuaciones de accesibilidad en cada área de la sociedad como las comunicaciones o el diseño gráfico, etc. El día ya decretado, 1 de marzo, puede verse un enfoque muy específico a las necesidades de las personas ciegas, las cuales son totalmente distintas a las que tienen las personas con baja visión. No todas las personas con baja visión saben el método de lectoescritura Braile, ni usan bastón, por lo tanto no se identifican con este sector.\r\n\r\nEs importante declarar este día para unir a las personas con baja visión en grupos de rehabilitación, generar lóderes y proyectos o programas que apoyen al desarrollo y calidad de vida.\r\n\r\nEsta nueva Asamblea Legislativa tiene la oportunidad de impulsar y dar iniciativa de ley a proyectos como este, crear una verdadera inclusión social e involucrar a los sectores que han permanecido invisibles durante décadas. Los animo a darle iniciativa de ley, a apoyar a las personas con baja visión con sus emprendimientos, a darle seguimiento a las políticas y leyes de inclusión social e involucrar el término “baja visión” y a crear una mayor sensibilización en la sociedad e incluso poder prevenir más casos de ceguera causados por poca o nula atención médica cuando se tenía baja visión.', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:33:25', '2022-07-09 05:33:25'),
(2, 'La violencia contra la mujer con discapacidad en tiempos del COVID-19', 'Es de conocimiento público que la violencia contra la mujer se ha incrementado desde el 14 de marzo que empezó la cuarentena domiciliar como medida de protección del COVID-19. Es alarmante la vulnerabilidad que viven niñas, adolescentes y mujeres, sobre todo si ellas poseen una discapacidad. a encuesta realizada por el CONAIPD en el 2015 nos revela que arriba del 50% de la población con discapacidad es mujer.\r\n\r\nLamentablemente los agresores forman parte de la vida cotidiana y familiar de las víctimas, y el sistema judicial no está preparado para atender casos de violencia contra las mujeres con discapacidad, siendo así difícil para ellas denunciar los abusos y no seguir recibiéndolos en el futuro. Se agrega el factor económico, donde la mayoría de mujeres son personas desempleadas, en familias con escasos o limitados recursos, y al depender del cuidado, atención y provisión económica de su agresor, se involucra el miedo a la denuncia por quedar desprotegidas o sin nadie quien les ayude, es por ello la falta de denuncias o el arrepentimiento ante alguna acusación contra su agresor.\r\n\r\nComo Estado es necesario que se den cuenta sobre la necesidad de coordinar empoderamientos de las personas con discapacidad, en especial las mujeres, con la creación de modelos inclusivos de servicios sociales, policiales, judiciales y de salud para la atención efectiva a las personas con discapacidad, no solo en el ámbito de denuncias de violencia, también en cada servicio que cualquier ciudadano solicita, incluyendo acceso a la educación inclusiva, independencia en acceder a espacios o plataformas digitales, atención correcta en el sistema de salud,  entre otros.\r\n\r\nLa Convención sobre los Derechos de las Personas con Discapacidad hace la referencia de la inaccesibilidad como resultado de dos factores: el personal y el entorno. A nivel personal se encuentran esas barreras de falta de educación, liderazgo, empoderamiento, oportunidades y denuncias que poseen las personas con discapacidad. Mujeres y familiares de mujeres con discapacidad, luchemos por nuestros derechos, no permitamos la violencia y agresiones físicas, económicas ni psicológicas, es difícil pensar en denunciar a un compañero de vida, papá, tio o hermano, y es duro que en las instituciones competentes no nos puedan atender o darle seguimiento a nuestros casos por barreras de accesibilidad y comunicación, pero es importante no dejarnos vencer y permitir la ayuda de personas que nos quieren apoyar.\r\n\r\nEn el factor del entorno se involucra al Estado e instituciones a realizar sus servicios inclusivos y accesibles.  Esta relación de doble vía nos da la pauta para empoderar al sector con discapacidad, en especial a las mujeres, y sensibilizar y educar al entorno, logrando una mejor inclusión social. Las instituciones que ofrecen servicios necesitan tener apertura al conocimiento de la atención a personas con discapacidad, accesibilidad e inclusión social, para llegar de manera más eficaz a cada ciudadano y ciudadana. Permitir que exista una activa participación de involucramiento y liderazgo de las personas con discapacidad en cada área y construir juntos políticas públicas, protocolos y demás lineamientos que, con la inclusión de las personas con discapacidad, tendrán una visión más inclusiva y accesible, cumpliendo con los derechos establecidos en la Constitución de la República y en la Convención sobre los Derechos de las Personas con Discapacidad.\r\n\r\nNo permitamos más abusos y atropellos a los derechos de la niña, adolescente y  mujer con discapacidad, apoyemos la inclusión social, promovamos la accesibilidad y la protección de este sector de la población.  ', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:36:58', '2022-07-09 05:36:58'),
(4, 'La accesibilidad en las comunicaciones', '“Todo comunica” es una de las frases que marcó mi licenciatura, más tarde me di cuenta que va mucho más allá del mensaje que se transmite. \r\n\r\nTenemos dos opciones: comunicamos que somos personas inclusivas o que somos personas discapacitantes o excluyentes.  En nuestra comunicación, solo el 7% es comunicación verbal, el resto es corporal, gestual, actitudinal, visual, etc. Y si ese 7% es una comunicación verbal con términos incorrectos, puede reflejar desconocimiento de la temática. \r\n\r\nExisten términos adecuados que se deben de utilizar para referirse a las personas con diversidad. En caso de discapacidad, el término correcto es “Persona con discapacidad” (no persona discapacitada, persona con capacidades especiales, personas minusválidas, etc.) y cada discapacidad tiene su concepto:  “Persona sorda o sordo” o en su caso legal “persona con discapacidad auditiva” (jamás sordomudos, sorditos, muditos, etc.) o “persona con discapacidad visual” “persona con baja visión” “persona ciega” (no cieguito, choco, etc.) y así corresponde a cada tipo de discapacidad. \r\n\r\nNuestro lenguaje refleja el poder de conocimiento que tenemos, debemos comunicar y transmitir términos inclusivos. Ser una persona o una sociedad discapacitante se refiere a tener desconocimiento parcial o total del tema de discapacidad, provocando exclusiones voluntaria e involuntariamente, lo que no abona a ser una ciudad inclusiva. “Todo comunica”.\r\n\r\nDentro de la comunicación visual encontramos otros factores de exclusión cuando intentamos comunicar a través de anuncios, dibujos, presentaciones, carteles, etc. Cuando el diseño se apega más a las tendencias de moda y no a la necesidad de la audiencia, cometemos el error de excluir a miles de personas que necesitan o desean recibir ese mensaje. Más de 250,000 personas están registradas en el CONNAIPD con discapacidad visual, incluyendo ciegos y baja visión (leve, media y profunda), pero en realidad cualquier persona que tiene la necesidad de usar apoyos ópticos tiene una discapacidad visual. Hay muchas enfermedades como el Glaucoma, Retinosis, Cataratas, Diabetes y otras que causan baja visión a cualquier edad y sin que la persona lo detecte a tiempo.  Es decir, que en realidad son muchos más ciudadanos con baja visión de lo que se refleja en los datos.\r\n\r\nUna de varias bases teóricas del diseño, mercadeo y publicidad para tener un mensaje exitoso, es “conocer a su público meta”. ¿Qué tanto los conocemos en realidad? Podemos saber sus gustos, nivel socioeconómico, demográfico, etc., pero, ¿Qué hay más allá?. Las respuestas a esta pregunta y a otras surgen al conocer las necesidades que cada discapacidad requiere al recibir un mensaje. Por ejemplo, si conocemos que para las personas sordas el español es su segundo o tercer idioma y la mayoría no saben leerlo ni escribirlo en su totalidad, podemos deducir que un anuncio con letras no le comunica nada. O al saber cuáles colores y qué tipo de combinaciones pueden percibir mejor las personas con baja visión, podremos diseñar anuncios con la garantía que llegará a todo el público posible.\r\n\r\nUna comunicación inclusiva empieza por esos detalles, que a veces, son insignificantes a la hora de hablar, diseñar o comunicar, pero afecta al objetivo de la inclusión social.', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:37:27', '2022-07-09 05:37:27'),
(5, 'Equidad para la inclusión', 'La inclusión social se puede visualizar desde varias aristas, entre estas, el área de discapacidad con un énfasis o implementación de ajustes menor a las demás áreas de inclusión.\r\n\r\nDentro de la inclusión, se impulsa mucho la igualdad entre personas, sin importar sexo, raza, religión o condición física y/o social, sin embargo, no es la igualdad lo que hace tener una sociedad inclusiva. La igualdad es dar o tener lo mismo todos, y no se considera la variante que todos somos distintos y, quizás, necesitamos algo más o algo distinto a lo que los demás.. En discapacidad, no es funcional tener una igualdad cuando cada uno tiene una necesidad distinta.\r\n\r\nLo que este proyecto busca es promover la equidad, como un camino hacia la inclusión social. Equidad es ajustar la igualdad a cada necesidad individual, para tener acceso a productos, servicios o atención inclusivos logrando una autonomía plena de cada persona. Por ejemplo, a un bebé, a un niño y a un adulto se le da una manzana a cada uno, eso es igualdad; cuando al bebé se la damos en puré, al niño en rodajas pequeñas y al adulto entera, es equidad. Sin equidad no hay acceso a las necesidades del ser humano, y por lo tanto no existe una inclusión.\r\n\r\nEstos conceptos y otros los desarrollo en capacitaciones, talleres y conferencias magistrales enfocadas a temáticas específicas como diseño, comunicaciones, desarrollo de tecnología, arquitectura, entre otros. El fin es concientizar a cada persona estudiante, profesional y a tomadores de decisiones sobre la importancia de la equidad, por medio de la accesibilidad, en la sociedad.\r\n\r\nSi queremos hacer un cambio real en nuestra sociedad, donde cada espacio sea accesible y se aplique la equidad social, es necesario atender a este sector y poner manos a la obra para la accesibilidad. ', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:38:00', '2022-07-09 05:38:00'),
(6, '¿Dónde empieza la inclusión social?', 'Existen realidades que no se pueden cambiar, como los edificios ya construidos y paredes elaboradas formando barreras para una inclusión social plena. Sin embargo, está en nuestras manos quitar esos muros y darle el espacio suficiente a la mente para edificar nuevos horizontes, permitiendo avanzar socialmente a una verdadera “Ciudad Inteligente”.\r\n\r\nAntes de la revolución industrial, la ciudad se centraba en el bienestar de las personas y sus necesidades individuales y colectivas. Posteriormente se enfocó en el capitalismo y desarrollo económico, provocando distanciamientos entre los ciudadanos y la desintegración de valores humanos. \r\n\r\nEl escenario de cambio nos revela consecuencias demográficas, culturales, económicas y tecnológicas. La transformación urbana se deriva del cambio en las estructuras de hogares y familias donde la demanda de servicios y movilidad se incrementan, llegando a tener vulnerabilidad y falta de atención.\r\n\r\nEl uso de las nuevas tecnologías y comunicaciones – como el internet, telefonía móvil, redes sociales – y el cambio de sistemas tradicionales a digitales – como el periódico, la banca y correo – han modificado las relaciones humanas en tiempo y espacio, permitiendo que el ser humano tenga un desarrollo integral, sin depender de la movilidad, localidad, del tiempo o de intermediarios para poder lograrlo. \r\n\r\nEn El Salvador, se incrementa cada vez más el acceso a internet en comparación a cinco años atrás. A pesar de este crecimiento, el diseño que es desarrollado para esta herramienta aplicada en distintas plataformas, aún está a muchos años más de ser accesible para todos.\r\n\r\nUno de los retos que se encuentran para lograr una Ciudad Inclusiva en el área de comunicaciones es la progresiva concentración de la población en un solo lugar. Se realizan diseños o maneras de comunicación según las tendencias del momento, enfocada para un cierto grupo de personas sin discapacidad y al querer incluirlos se debe realizar doble trabajo e inversión para que lo inaccesible sea accesible para todos.\r\n\r\nDentro de la publicidad en nuestro país, por ejemplo, existe una barrera visual grande, tanto en sus versiones de televisión, digitales, impresos y vallas, que afectan la transmisión correcta del mensaje a todo el público disponible y dispuesto a recibirlo, y que, por falta de un pequeño ajuste de diseño del anuncio, no logran ser clientes de esa marca o disfrutar de ese servicio. \r\n\r\nPara lograr una “Ciudad Inteligente” se necesita más que conexión a internet gratis, se trata de utilizar esta herramienta como un vehículo para el desarrollo de una sociedad inclusiva, donde cada persona pueda satisfacer sus necesidades de manera autónoma y eficiente. La verdadera inclusión social empieza en trabajo en equipo, mentes abiertas y voluntad para reconstruir una ciudad donde no existan muros que excluyan y se logre una mejor calidad de vida.', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:38:33', '2022-07-09 05:38:33'),
(7, 'La violencia contra la mujer con discapacidad en tiempos del COVID-19', 'Es de conocimiento público que la violencia contra la mujer se ha incrementado desde el 14 de marzo que empezó la cuarentena domiciliar como medida de protección del COVID-19. Es alarmante la vulnerabilidad que viven niñas, adolescentes y mujeres, sobre todo si ellas poseen una discapacidad. Una encuesta realizada por el CONAIPD en el 2015 nos revela que arriba del 50% de la población con discapacidad es mujer.\r\n\r\nLamentablemente los agresores forman parte de la vida cotidiana y familiar de las víctimas, y el sistema judicial no está preparado para atender casos de violencia contra las mujeres con discapacidad, siendo así difícil para ellas denunciar los abusos y no seguir recibiéndolos en el\r\nfuturo. Se agrega el factor económico, donde la mayoría de mujeres son personas desempleadas, en familias con escasos o limitados recursos, y al depender del cuidado, atención y provisión económica de su agresor, se involucra el miedo a la denuncia por quedar desprotegidas o sin nadie quien les ayude, es por ello la falta de denuncias o el arrepentimiento\r\nante alguna acusación contra su agresor.\r\n\r\nComo Estado es necesario que se den cuenta sobre la necesidad de coordinar empoderamientos de las personas con discapacidad, en especial las mujeres, con la creación de modelos inclusivos de\r\nservicios sociales, policiales, judiciales y de salud para la atención efectiva a las personas con discapacidad, no solo en el ámbito de denuncias de violencia, también en cada servicio que cualquier ciudadano solicita, incluyendo acceso a la educación inclusiva, independencia en acceder a espacios o plataformas digitales, atención correcta en el sistema de salud, entre otros.\r\n\r\nLa Convención sobre los Derechos de las Personas con Discapacidad hace la referencia de la inaccesibilidad como resultado de dos factores: el personal y el entorno. A nivel personal se encuentran esas barreras de falta de educación, liderazgo, empoderamiento, oportunidades y denuncias que poseen las personas con discapacidad. Mujeres y familiares de mujeres con\r\ndiscapacidad, luchemos por nuestros derechos, no permitamos la violencia y agresiones físicas, económicas ni psicológicas, es difícil pensar en denunciar a un compañero de vida, papá, tío o hermano, y es duro que en las instituciones competentes no nos puedan atender o darle seguimiento a nuestros casos por barreras de accesibilidad y comunicación, pero es importante no dejarnos vencer y permitir la ayuda de personas que nos quieren apoyar.\r\n\r\nEn el factor del entorno se involucra al Estado e instituciones a realizar sus servicios inclusivos y accesibles. Esta relación de doble vía nos da la pauta para empoderar al sector con discapacidad, en especial a las mujeres, y sensibilizar y educar al entorno, logrando una mejor inclusión social. Las instituciones que ofrecen servicios necesitan tener apertura al conocimiento de la atención a personas con discapacidad, accesibilidad e inclusión social, para llegar de manera más eficaz a cada ciudadano y ciudadana. Permitir que exista una activa participación de involucramiento y liderazgo de las personas con discapacidad en cada área y construir juntos políticas públicas, protocolos y demás lineamientos que, con la inclusión de las personas con discapacidad, tendrán una visión más inclusiva y accesible, cumpliendo con los derechos establecidos en la Constitución de la República y en la Convención sobre los Derechos de las\r\nPersonas con Discapacidad.\r\n\r\nNo permitamos más abusos y atropellos a los derechos de la niña, adolescente y mujer con discapacidad, apoyemos la inclusión social, promovamos la accesibilidad y la protección de este sector de la población.', 'nohay.png', NULL, NULL, 2, 0, '2022-07-09 05:38:54', '2022-07-09 05:38:54'),
(18, 'prueba sub tema prueba modificacion', 'kadnkaosndjkloasbndjasbdakjsbdajksbdajkbdkajsbdnljasd', 'x2nf6_1.png', 'ad asd asd asdasdad', NULL, 5, 0, '2021-10-22 03:18:30', '2021-10-22 03:18:30'),
(19, 'Camisas de sensibilización', 'El proyecto Equidad para la Inclusión EPLI junto a Fundación Manos Mágicas y sus voluntarios, sacaron a la venta unas camisas con temática de inclusión social para las personas con discapacidad.\nLos colores son azul, verde, anaranjado y negro, de todas las tallas y con lemas inspiradores a la accesibilidad e inclusión.\n\nPara pedir la tuya puedes escribir a las redes sociales Camila Soundy o al correo camilasoundy.capacitaciones@gmail.com\n\nMientras más sensibilicemos a la sociedad con nuestros actos, más rápido tendremos un mundo accesible e inclusivo para todos y todas.', 'camisas.png', NULL, NULL, 1, 1, '2021-10-30 15:51:52', '2021-10-30 15:51:52'),
(20, 'asl', 'prueba asl', '5r0l8_WhatsApp Image 2021-04-07 at 12.34.31 AM.jpeg', NULL, NULL, 5, 1, '2021-10-30 15:59:20', '2021-10-30 15:59:20'),
(21, 'prueba', 'jfnvnthtjmdffffff', '8khzw_Ej02YMqXkAIRxOV.jpg', NULL, NULL, 2, 1, '2021-10-30 16:16:42', '2021-10-30 16:16:42'),
(22, 'La misión es ser profesionales inclusivos', 'En este 2022 se abre un nuevo curso que propone un contenido extenso sobre ciudad iteligente, accesibilidad e inclusión social para personas con discapacidad, dirigido a cualquier área profesional que desee abrir la perspectiva y dejar atrás lo convencional, dándole paso a la novedad de la inclusión y accesibilidad. Con este curso muchos profesionales podrán estar capacitados en el tema de discapacidad y podrán ofrecer productos, espacios, servicios y materiales accesibles para el sector con discapacidad.\r\nLa inscripción está abierta para empresas, grupos o individual en las distintas áreas y se comprenderá que la accesibilidad y discapacidad es un eje transversal que debe ser tomado en cuenta en cualquier trabajo o proyecto.\r\n¿Cómo puedes inscribirte? Es fácil, llena el formulario  https://bit.ly/3neDODT o escribe al correo camilasoundy.capacitaciones@gmail.com para recibir el pdf con el contenido del curso y método de pago.\r\nEsta es una inversión que ayudará a tener una sociedad más inclusiva.', 'inclusion.jpg', NULL, NULL, 1, 1, '2022-01-10 22:20:54', '2022-01-10 22:20:54'),
(23, 'Mercadito a mi manera', 'En octubre se conmemora el día de la salud visual, y junto con compañeros von baja visión realizamos un Mercadito con los productos de cada emprendedor. Se realizó en el Centro Comercial Galerías, y se expuso una variedad de productos durante toda la segunda quincena del mes.\r\nPinturas, jabones, miel, filtros de agua, billeteras, bisuteria, shampú y aceites naturales fueron algunos de los productos que estuvieron a la venta. Lo importante de este espacio, además de apoyas a cada emprendedor con baja visión a vender sus productos, fue la sensibilización que se realizaba a cada persona que se acercaba al stand sobre la baja visión y la importancia del cuidado de la salud visual.\r\nFundación Manos Mágicas apoyó a el proyecto Equidad para la Inclusión EPLI a gestionar el espacio con el centro comercial y con propaganda en las redes sociales.  Esta actividad también contribuyó a compartir experiencia sobre baja visión, superación, barreras y estilos de vida de los emprendedores con baja visión, uniendo más a este sector.', 'mercadito.jpg', NULL, NULL, 1, 1, '2022-01-11 17:20:57', '2022-01-11 17:20:57'),
(24, 'Invitados a la ExpoInclusivaSv 2021', 'En marco del Día Internacional de las Personas con Discapacidad, Iniciativas Sociales 503 junto con el Ministerio de Cultura y la Alcaldía Municipal de Santa Tecla realizaron una Expo Feria Inclusiva donde participaron muchos emprendedores con discapacidad, y nuestro proyecto Equidad para la Iclusión estuvo presente vendiendo los productos del Mercadito a mi Manera.\r\nFui requerida para estar en la mesa de honor y dar unas palabras de inicio, enfatizando el trabajo que realizamos junto a Fundación Manos Mágicas, viibilizando a la baja visión y la discapacidad auditiva, las barreras con las que nos enfrentamos día a día y la importancia de que el sector público y privado unan esfuerzos para realizar espacios que sean inclusivos y garantizar la participación del sector con discapacidad.\r\nFue una actividad llena de participaciones artísticas,  convivencia y entrevistas en medios de comunicación. Sin duda la unión entre el sector público y el privado puede lograr éxitos más grandes para una inclusión social para la discapacidad en nuestro país El Salvador.', 'expo.jpg', NULL, NULL, 1, 1, '2022-01-11 17:44:17', '2022-01-11 17:44:17'),
(25, 'Campaña del Día Internacional de las Personas con Discapacidad', 'El 3 de diciembre del 2021 fue el Día Internacional de las Personas con Discapaidad, y el proyecto Equidad para la Inclusión EPLI con apoyo de Fundación Manos Mágicas y sus voluntarios, publicamos la campaña “Hablemos de discapacidad” con el objetivo desensibilizar y visualizar los derechos de las personas con discapacidad, por medio de una serie de videos cortos en donde varias personas del sector emitieron sus mensajes. \r\nParticiparon personas con baja visión, sordoceguera, personas con discapacidad física y sordas. Fue una experiencia muy enriquecedora para el proyecto EPLI y los participantes.\r\nPuedes ver la campaña completa en la lista de reproducción del canal de youtube  https://bit.ly/3qcQfSx y en las redes sociales', 'discapacidad.png', NULL, NULL, 1, 1, '2022-01-11 21:51:34', '2022-01-11 21:51:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_options`
--

CREATE TABLE `service_options` (
  `id` int(11) NOT NULL,
  `service_option_name` varchar(50) NOT NULL,
  `service_option_code` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `service_options`
--

INSERT INTO `service_options` (`id`, `service_option_name`, `service_option_code`, `service_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Agregar publicación', 'agregar_publicacion', 1, 'add', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(2, 'Publicaciones agregadas', 'publicaciones_agregadas', 1, 'list', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(3, 'Agregar articulo', 'agregar_articulo', 2, 'add', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(4, 'Articulos agregados', 'articulos_agregados', 2, 'list', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(9, 'Agregar curso', 'agregar_curso', 5, 'add', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(10, 'Cursos agregados', 'cursos_agregados', 5, 'list', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(11, 'Agregar taller', 'agregar_taller', 6, 'add', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(12, 'Talleres agregados', 'talleres_agregados', 6, 'list', '2021-10-05 00:02:30', '2021-10-05 00:02:30'),
(13, 'Agregar asesoría', 'agregar_asesoria', 7, 'add', '2021-10-05 00:02:30', '2021-10-28 04:29:54'),
(14, 'Asesoría agregadas', 'Asesoría agregadas', 7, 'list', '2021-10-05 00:02:30', '2021-10-28 04:29:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Christian', 'Giovanni', 'cristobar2018@gmail.com', NULL, '$2y$10$Ypet0L91WO9E3XzP0ix.I.enh2n5IxTGwhpaACufYC6SbEWHrkaEu', 'BLyYXLmtw64JkNePwAkdXQJx7dhPAIaFOqfhdHrLTJKW2QSwCoGm9gH85PHh', '2021-10-05 06:02:44', '2022-05-19 04:09:06'),
(2, 'Camila', 'Camila', 'camilasoundy@gmail.com', NULL, '$2y$10$qtZEZELJiY3naYmLPuXrfuCY5n5r6ZVmS69UiQHa/N0lEz501dzAW', 'JuDf4bHuxu49lwSpq3F0rW5uof2INw6vAWaIyT0n0Y3XDp5jpmhTG87xYtSJ', '2021-10-28 10:57:38', '2022-04-05 23:03:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workshop_course_detail`
--

CREATE TABLE `workshop_course_detail` (
  `id` int(11) NOT NULL,
  `workshop_course` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_ibfk_1` (`type_image`);

--
-- Indices de la tabla `image_type`
--
ALTER TABLE `image_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `service_images`
--
ALTER TABLE `service_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_images_ibfk_1` (`service_information_id`);

--
-- Indices de la tabla `service_informations`
--
ALTER TABLE `service_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_informations_ibfk_1` (`service_id`);

--
-- Indices de la tabla `service_options`
--
ALTER TABLE `service_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_options_ibfk_1` (`service_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `workshop_course_detail`
--
ALTER TABLE `workshop_course_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workshop_course` (`workshop_course`),
  ADD KEY `detail` (`detail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `image_type`
--
ALTER TABLE `image_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `service_images`
--
ALTER TABLE `service_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `service_informations`
--
ALTER TABLE `service_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `service_options`
--
ALTER TABLE `service_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `workshop_course_detail`
--
ALTER TABLE `workshop_course_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`type_image`) REFERENCES `image_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `service_images`
--
ALTER TABLE `service_images`
  ADD CONSTRAINT `service_images_ibfk_1` FOREIGN KEY (`service_information_id`) REFERENCES `service_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `service_informations`
--
ALTER TABLE `service_informations`
  ADD CONSTRAINT `service_informations_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `service_options`
--
ALTER TABLE `service_options`
  ADD CONSTRAINT `service_options_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `workshop_course_detail`
--
ALTER TABLE `workshop_course_detail`
  ADD CONSTRAINT `workshop_course_detail_ibfk_1` FOREIGN KEY (`workshop_course`) REFERENCES `service_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `workshop_course_detail_ibfk_2` FOREIGN KEY (`detail`) REFERENCES `service_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
