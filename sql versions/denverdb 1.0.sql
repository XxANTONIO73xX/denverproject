-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2021 a las 05:19:54
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `denverdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `idTopico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `nombre`, `descripcion`, `idTopico`) VALUES
(1, 'Localiza los sonidos girándose hacia la fuente', 'Demuestra consciencia del sonido girando los ojos y la cabeza', 1),
(2, 'Mira hacia sonidos vocales de juego (silbidos, chisteos)', 'Demuestra consciencia del sonido volviéndose más activo, girando ojos y cabeza y mirando a la persona', 1),
(3, 'Responde a la voz girándose hacia la persona ', 'Demuestra consciencia de la voz girando ojos y cabeza y mirando a la persona', 1),
(4, 'Mira hacia imágenes que se le indican cuando el adulto las señala en un libro', 'Sigue el señalamiento del adulto a una imagen con la mirada y/o gesto (ej. tocando la imagen)', 1),
(5, 'Sigue un señalamiento próximo para colocar objetos en contenedores, piezas de puzle, etc.', 'Responde a un señalamiento próximo mirando y colocando objetos en el lugar indicado', 1),
(6, 'Mira cuando se le muestra un objeto y se le dice “Pepito, mira” ', 'Gira los ojos y la cabeza en dirección al objeto ', 1),
(7, 'Mira al interlocutor cuando se dice su nombre ', 'Gira ojos y cabeza hacia el cuerpo del interlocutor ', 1),
(8, 'Sigue un señalamiento próximo a un objeto o localización', 'Responde a un señalamiento próximo girando la cabeza en dirección al objeto o lugar', 1),
(9, 'Sigue un señalamiento distante dirigido a un objeto', 'Responde a un señalamiento distante aproximándose y cogiendo el juguete u objeto', 1),
(10, 'Mira, extiende el brazo o sonríe en respuesta a los gestos y voz del adulto en juegos sociales', 'Atiende y responde a uno o más sonidos. Juegos sociales incluyen “cucu-tras”, “cosquillas” y “currín currín”', 1),
(11, 'Mira, extiende el brazo, sonríe y/o gesticula enrespuesta a los gestos/lenguaje del adulto en canciones ', 'Igual que arriba. Atiende y responde durante canciones a una o más vocalizaciones ', 1),
(12, 'Responde deteniendo acciones momentáneamente en respuesta a palabras de inhibición (“no”, “para”, etc.)', 'Para una actividad en curso cuando se le dice “no, para” o demuestra consciencia pausando temporalmente, girando los ojos y la cabeza hacia el adulto o mostrando molestia (ej. llorando) ', 1),
(13, 'Da objetos cuando se le pide verbalmente acompañado de la mano extendida del adulto', 'Responde al gesto del adulto o a sus palabras colocando o intentando colocar el objeto en la mano', 1),
(14, 'Ejecuta una instrucción rutinizada de un paso que implique acciones con el cuerpo acompañada de pista verbal/gestual (ej', 'Ejecuta una acción con ayuda verbal/gestual. Se da como positivo con al menos 5 acciones ejecutadas a la primera. Ejemplos incluyen: dar un golpecito en la silla queriendo significar “siéntate”, levantar la caja de los juguetes queriendo significar “a recoger” ', 1),
(15, 'Ejecuta una instrucción rutinizada de un paso que implique acciones con el cuerpo sin gesto que acompañe (ej. “siéntate”', 'Completa instrucciones ejecutando una acción sin gesto del adulto ni guía física. El adulto puede repetir la instrucción una segunda vez pero  sin la pista del gesto', 1),
(31, 'Utiliza el gesto de alcanzar con el brazo como petición', 'Extiende el brazo hacia el objeto deseado en la mano del adulto para indicar petición. No es necesario que el gesto se acompañe de contacto ocular ni vocalización/palabra. No incluye extender el brazo sólo para agarrar el objeto', 2),
(32, 'Vocaliza con intención ', 'Vocaliza en conjunción con el contacto ocular y/o gesto (ej. extender el brazo) para pedir un objeto deseado', 2),
(33, 'Pide ayuda dando el objeto al adulto ', 'Indica ayuda colocando el objeto en la mano del adulto, ofreciéndole el objeto al adulto, verbalizando o mirando al adulto. No necesario que el gesto se acompañe de contacto ocular ni vocalización/palabra', 2),
(34, 'Toma turnos vocalizando con un interlocutor ', 'Vocaliza y/o balbucea con contacto ocular al menos en dos turnos', 2),
(35, 'Expresa rechazo empujando un objeto o entregando de vuelta el objeto', 'El gesto que pueda usar no es necesario que se acompañe de contacto ocular ni vocalización/palabra. Se valora positivamente otros gestos convencionales (ej. sacudir la cabeza para “no”, signar “se acabó”) o palabras (“no”)', 2),
(36, 'Señala de cerca para pedir un objeto deseado', 'Oca o señala un objeto que está entre 15 y 30 cms con el dedo índice u otro dedo (no con la mano abierta) para indicar petición. El objeto puede estar en la mano del adulto o al alcance del niño o niña', 2),
(37, 'Realiza contacto visual para obtener un objeto deseado cuando el adulto bloquea/retiene el acceso al objeto', 'Gira la cabeza y la mirada al adulto y hace contacto ocular durante 1-2 segundos con o sin gesto (ej. extender brazo, agarrar) para pedir objeto. El contacto ocular o el gesto no es necesario que se acompañe de vocalización/palabra', 2),
(38, 'Señala para indicar una elección entre dos objetos', 'El adulto sostiene dos objetos, uno en cada mano. Toca o señala hacia el objeto deseado con dedo índice u otro dedo (no mano abierta) El gesto no es necesario que se acompañe de vocalización/palabra', 2),
(39, 'Combina vocalización y mirada para una petición intencional', 'Gira la cabeza y la mirada hacia el adulto y realiza contacto ocular mientras vocaliza para pedir un objeto deseado. La vocalización puede ser una aproximación a palabra. Ejemplos: “ota” para “pelota” o “aao” para “se acabó”', 2),
(40, 'Señala a distancia para pedir un objeto deseado', 'Usa dedo índice y otro (no mano abierta) para señalar hacia un objeto deseado que está a 1 metro del niño o niña', 2),
(41, 'Señala a distancia para indicar la elección entre dos objetos', 'El adulto sostiene dos objetos, uno en cada mano pero fuera del alcance del niño y muestra y nombra cada objeto al niño. El niño señala el objeto deseado que está fuera del alcance  con dedo índice u otro (no mano abierta) El gesto no es necesario que se acompañe de vocalización/palabra', 2),
(42, 'Vocaliza con balbuceo reduplicativo de CVCV (no es necesaria aproximación a palabra)', 'Ejemplos incluyen “ba-ba”, “ma-ma” La vocalización no es necesario que se acompañe de contacto ocular ni gesto ', 2),
(43, 'Pronuncia 5 o más consonantes en vocalizaciones espontáneas ', 'Las vocalizaciones ocurren con o sin el modelo verbal del adulto. El juego vocal cuenta.', 2),
(44, 'Pronuncia CVCV con diferentes secuencias de CV (balbuceos variados) ', 'Ejemplos incluyen “ba-bu”, “ma-wa” o jerga', 2),
(45, 'Acepta actividades y contactos sensoriales breves', 'El niño no muestra evitación, rechazo ni afecto negativo', 3),
(46, 'Utiliza conducta motriz para iniciar o continuar una juego social', 'Ejemplos de conductas motrices son extender brazo, imitar el movimiento del adulto, alcanzar un objeto al adulto. Las conductas motrices no es necesario que se acompañen de contacto ocular', 3),
(47, 'Atiende brevemente a otra persona con contacto ocular', 'Atiende mirando y manteniendo el contacto ocular con otra persona durante 2 segundos', 3),
(48, 'Se mantiene implicado en rutinas sociales sensoriales durante 2 minutos', 'Muestra interés en juegos sociales aproximándose, observando o activamente participando, y pide que continúe la actividad a través del contacto ocular, gestos (ej. extender brazo, imitar movimiento del adulto) o vocalización', 3),
(49, 'Responde a objetos/actividades preferidos con la mirada, el gesto de alcanzar con el brazo, sonrisas o movimientos', 'La respuesta no es necesario que se acompañe de contacto ocular', 3),
(50, 'Mira y se implica con un adulto que le imita durante actividades de juego paralelo', 'Muestra interés en la actividad observando e imitando las acciones de juego del adulto y continua el esquema de juego que está siendo imitado ', 3),
(51, 'Tiene un repertorio de entre 5 y 10 juegos sociales', 'Participa 2 ó más veces con alguna conducta activa en el juego (extender brazo, imitar, vocalizar) El contacto ocular y la sonrisa por sí solos no son suficientes. Ejemplos incluyen “cucu-tras”, canciones de rimas, juegos como el corro de la patata, palmas palmitas o juegos con inflar y soltar un globo, pompas, cuentos o jugar al avión.', 3),
(52, 'Responde a saludos mirando, girándose, etc.', 'Demuestra consciencia del saludo girando la cabeza y el cuerpo y mirando al adulto durante 2 ó 3 seg. No necesario que la respuesta se acompañe de gesto o vocalización', 3),
(53, 'Responde a saludos con gesto o vocalización ', 'Demuestra consciencia del saludo girando la cabeza y el cuerpo y, además, haciendo gesto de saludo/despedida con la mano o vocalizando “hola/adiós”, con contacto ocular durante 2-3 segs. ', 3),
(54, 'Comparte sonrisa con el compañero juego durante juego coordinado', 'Comparte la sonrisa con contacto ocular durante 2-3 seg durante una actividad lúdica con el adulto', 3),
(55, 'Imita entre 8 y 10 acciones de un solo paso con objetos', 'Imita 8 o más acciones sobre objetos en los 5 seg siguientes al modelado del adulto. Ejemplos incluyen golpear dos objetos entre sí, colocar un objeto en su caja/contenedor o rodar un objeto', 4),
(56, 'Imita 10 acciones motrices visibles dentro de unacanción o juego de rutina (cinco lobitos, etc.)', 'Imita 10 acciones motrices distintas dentro de los 5 seg siguientes al modelado del adulto. Imita dos acciones distintas por canción y 4-5 rutinas diferentes para darlo por válido. Ejemplos incluyen gestos de canciones (“cinco lobitos”), juegos motores (“corro de la patata”) u otros juegos circulares (“cucu-tras”)', 4),
(57, 'Imita 6 acciones no visibles para él con la cabeza o la cara en canciones o juegos de rutina ', 'Imita 6 acciones diferentes que el niño no puede verse haciendo a sí mismo. Ejemplos son ponerse las manos en la cabeza, las orejas o acariciarse las mejillas', 4),
(58, 'Imita 6 movimientos oro-faciales', 'Imita movimientos orofaciales en los 5 seg siguientes al modelado del adulto. Ejemplos: mover la lengua, hinchar los mofletes.', 4),
(59, 'Empareja/clasifica objetos idénticos ', 'Puede ser en respuesta a verbalización del adulto (“pon aquí”) o ayuda física (mano sobre mano para ayudarle) en los primeros ensayos, pero debe hacerlo por sí solo con, al menos, 5 objetos distintos ejemplos incluyen emparejar/clasificar tren-vía, pintura-papel, o palitos y bolitas en contenedores separados', 5),
(60, 'Empareja/identifica imágenes idénticas ', 'Puede ser en respuesta a verbalización del adulto (“pon aquí”) o ayuda física (mano sobre mano para ayudarle) en los primeros ensayos, pero debe hacerlo por sí solo, al menos, con 5 imágenes distintas', 5),
(61, 'Empareja/identifica imágenes con objetos ', 'Puede ser en respuesta a verbalización del adulto (“pon aquí”) o ayuda física (mano sobre mano para ayudarle) en los primeros ensayos, pero debe hacerlo por sí solo, al menos, con 5 pares de objeto/imagen', 5),
(62, 'Empareja/identifica objetos por el color ', 'Puede ser en respuesta a verbalización del adulto (“pon aquí”) o ayuda física (mano sobre mano para ayudarle) en los primeros ensayos, pero debe hacerlo por sí solo después. Ej: emparejar/clasificar bloques rojos Vs. azules, pinchos naranjas Vs. verdes, o bolas moradas Vs. amarillas en contenedores separados ', 5),
(63, 'Come la comida o un aperitivo en la mesa', 'Se sienta en la mesa durante la comida (Ejemplo: no se levanta ni deambula durante la hora de la comida). \r\n', 10),
(64, 'Come en la comida de manera independiente cuando toca hacerlo', 'El adulto dispone la comida pero no existe ningún otro tipo de ayuda.\r\n', 10),
(65, 'Utiliza una taza/vaso', 'Sostiene y se lleva la cuchara a la boca sin ayuda. Se puede derramar algo cuando se bebe.', 10),
(66, 'Utiliza la cuchara', 'Sostiene y se lleva la cuchara a la boca sin ayuda en la mayoría de las cucharadas que toma. Ocasionalmente se le puede derramar algo.', 10),
(67, 'Utiliza el tenedor', 'Sostiene y se lleva el tenedor a la boca sin ayuda la mayoría de pinchadas de coge. Ocasionalmente de le puede caer algo.', 10),
(68, 'Come comidas con variedad de texturas, tipos y grupos de alimentos', 'La información de la familia es suficiente', 10),
(69, 'Torera nuevos alimentos en el plato', 'Permite que haya comida nueva en el plato y puede intentar comerla (Ejemplo: la toca, huele o la coloca en la boca sin tragarla) No es necesario que se la coma.', 10),
(70, 'Bebe con pajita', 'El adulto puede colocar la pajita en su boca si nunca la ha usado.', 10),
(71, 'Se quita cada prenda con ayuda', 'No es necesario que se desabroche botones ni cremalleras pero sí que pueda quitarse prendas (Ejemplo: camisa, pantalón, calcetines, zapatos) sin ayuda. Ejemplos incluyen la ayuda del adulto para tirar de las mangas de la camisa y el niño se la quita de la cabeza, el adulto desata el zapato y el niño se lo quita o el adulto desabrocha el pantalón y el niño se lo baja a los pies.', 11),
(72, 'Se pone cada prenda con ayuda', 'No es necesario que se desabroche botones ni cremalleras pero sí que pueda quitarse prendas (Ejemplo: camisa, pantalón, calcetines, zapatos) sin ayuda. Ejemplos incluyen el adulto le coloca la camiseta en la cabeza y el niño mete la cabeza por el cuello, adulto sostiene el zapato y el pie juntos y el niño lo mete dentro o el adulto le ayuda a meter los pies en los pantalones y el niño tira de ellos hacia arriba.', 11),
(73, 'Coloca las manos bajo el agua', 'Puede ser ayudado si es necesario pero es capaz de colocar las manos bajo el agua al menos 5 segs. La información de los padres es suficiente.', 12),
(74, 'Se seca las manos con la toalla', 'Puede ser ayudado si es necesario pero utiliza la toalla para secarse ambas manos. La información de los padres es suficiente.', 12),
(75, 'Se frota con una toallita o con una toalla', 'Puede ser ayudado si es necesario pero se pasa la toalla por la mayoría de las partes del cuerpo (cara, manos, estómago, piernas). La información de los padres es suficiente.', 12),
(76, 'Tolera peinarse, sonarse la nariz y cepillarse los dientes', 'Puede protestar y quejarse pero el adulto puede terminar la rutina sin agresividad, autoagresión o problemas de conducta severos.', 12),
(77, 'Ayuda con el peinado/cepillado', 'Ejemplos incluyen sostener el cepillo/peine, tomar turnos para peinarse/cepillarse con el adulto que le ayuda.', 12),
(78, 'Se pone el cepillo de dientes en la boca', 'Coloca el cepillo de dientes en la boca, prueba la pasta de dientes. No es necesario que se cepille los dientes.', 12),
(79, 'Pone la ropa sucia en el cesto', 'Se admite que se le recuerde o que se le ayude físicamente (Ejemplo: el adulto coge la ropa y señala el cesto) si es necesario, pero es capaz de echarla en el cesto él solo.', 13),
(80, 'Tira el clínex a la basura', 'Se admite que se le recuerde o se le ayude físicamente (el adulto sostiene el pañuelo y señala la basura) si es necesario, pero es capaz de tirarlo a la basura él solo.', 13),
(81, 'Ajusta su conducta de juego a las cualidades de 5 objetos diferentes.', 'Es necesario que la acción sea iniciada por el niño y no en respuesta al adulto. La conducta debe ser adecuada al objeto (no uso extraño del objeto) Ejemplo: sacudir una maraca, golpear un martillo, rodar o botar una pelota o apilar bloques.', 6),
(82, 'Juega independientemente y apropiadamente con 10 objetos cuyo uso sólo implica una acción.', 'El juego es apropiado a su edad de desarrollo (no repetitivo ni estereotipado), está relacionado con la actividad/objeto e implica acciones de un solo paso con el objeto. Ejemplo: colocar un bloque en su clasificar un bloque en su clasificador de formas, poner un pinchito en su agujero o ensartar cuenta en una cuerda.', 6),
(83, 'Juega independientemente con juguetes que requiere la repetición de la misma acción en varios objetos (anillas apilables, cuencos encajables, etc.)', 'El juego implica completar de la manera independiente el juego/actividad. Se da como positivo con 5 ó mas juguetes/actividades diferentes. Ejemplo: colocar los anillos en su palo/apilador, encajar o desencajar piezas, apilar bloques o colocar pinchos en sus agujeros.', 6),
(84, 'Demuestra conductas de juego apropiadas en una variedad de juguetes de preescolar de una sol acción: lanza la pelota, cubos apilables, pinchos encajables en sus agujeros, rueda el coche.', 'El juego está relacionado con el objeto/ actividad e implica acciones de un solo paso. Positivo con 8-10 juguetes de preescolar. Ejemplo: lanzar pelota, rodar coches o golpear un tambor.', 6),
(85, 'Juega independientemente con juguetes que requieren 2 acciones motrices distintas (quitar, poner).', 'El juego implica que complete la actividad independientemente. Positivo con 8-10 juguetes. Ejemplo: meter/sacar bloques de su contenedor, rodar y aplastar plastilina, encajar y desencajar piezas de tipo Lego.', 6),
(86, 'Juega independientemente con juguetes que requieren varias acciones motrices distintas (meter, abrir, sacar, cerrar, etc.).', 'El juego implica que complete la actividad independientemente. Positivo con 6-8 juguetes. Ejemplo: abrir/cerrar contenedores, sacar y meter objetos, ejecutar diferentes acciones con objetos.', 6),
(87, 'Demuestra acciones convencionales en sí mismo en una variedad de objetos (peinarse, comer, etc.).', 'Las acciones son socialmente convencibles y dirigidas hacia sí mismo. Puede ser en respuesta al modelado del adulto pero independientemente; es necesario que al menos una acción sea espontánea. Ejemplo: ponerse teléfono en la oreja, cepillarse el pelo con peine/cepillo, llevarse tenedor/cuchara a la boca, taza a los labios, etc.', 6),
(88, 'Termina el juego y guarda\r\n', 'Termina apropiadamente la actividad y muestra algún intento de recoger (Ejemplo: pone un objeto en la caja donde se guardan, da un objeto al adulto) Puede ser necesario incitar con una pista verbal o gestual del adulto, pero es necesario que ejecute la acción sin ayudas físicas.', 6),
(89, 'Coloca una o dos formas en una plantilla de formas.', 'Puede ser en respuesta a una pista del adulto para empezar pero es necesario colocar una de dos formas independientemente.', 7),
(90, 'Coloca anillos en un apilador de anillos.', 'Puede ser en respuesta a una pista del adulto para empezar pero coloca 3 ó más anillos independientemente. ', 7),
(91, 'Completa un puzzle en 3 piezas.', 'Puede ser en respuesta a una pista del adulto para empezar pero coloca 3 ó más anillos independientemente.', 7),
(92, 'Encaja los \"pinchos\" en el tablero.', 'Puede ser en respuesta a una pista del adulto para empezar pero debe colocar 3 ó más pinchos independientemente.', 7),
(93, 'Aprieta los botones de 5 juegos diferentes de causa-efecto.', 'Puede ser en respuesta a una pista del adulto para empezar pero debe apretar los botones independientemente. ', 7),
(94, 'Separa piezas de juegos tipo Lego o Duplo.', 'Puede ser en respuesta a una pista del adulto para empezar pero debe separar 3 ó más piezas independientemente.', 7),
(95, 'Utiliza la pinza de un dedo y de 3 dedos apropiadamente con los juguetes.', 'El adulto puede colocar los juguetes al alcance del niño o niña pero no puede dar ninguna otra ayuda. ', 7),
(96, 'Apila 3 bloques en una torre.', 'Puede ser en respuesta a una pista del adulto para empezar pero apilar 3 ó más bloques independientemente. ', 7),
(97, 'Pinta líneas, puntos, garabatea con rotuladores o con pinturas.', 'Puede ser en respuesta a una pista del adulto para empezar pero debe sostener y pintar independientemente. No es necesario que lo que pinte sea reconocible.', 7),
(98, 'Golpea un martillo de juguete contra objetos', 'Puede ser en respuesta a una pista del adulto para empezar pero debe sostener y golpear el juguete independientemente.', 7),
(99, 'Rastrilla, usa la pala y derrama la arena, agua, etc.', 'Puede ser en respuesta a una pista del adulto para empezar pero ces necesario que sostenga el objeto y haga la acción independientemente.', 7),
(100, 'Apila piezas de Lego grandes.', 'Puede ser en respuesta a una pista del adulto para debe apilar al menos 3 Legos independientemente. ', 7),
(101, 'Da una patada a una pelota grande.', 'No puede estar agarrado a un objeto (silla, mesa) ni al adulto para dar patada. Puede hacerlo torpemente, pero debe mantener el equilibrio y no caerse. ', 8),
(102, 'Sube y baja escalerones con ayuda, sin alternar pies.', 'Puede estar sujeto a la barandilla o la mano del adulto, poniendo ambos pies sobre cada escalón. No puede poner las manos en el escalón ni las rodillas.', 8),
(103, 'Escala uno o dos escalones en la escalera el tobógan.', 'Debe hacerlo sin ayuda. ', 8),
(104, 'Se sube y baja de juegos del patio.', 'Debe hacerlo sin ayuda. Ejemplo: montar en un caballo/balancín o en escaleras para subir a los juegos del patio.', 8),
(105, 'Se protege cunado se desequilibra.', 'Demuestra acciones de protección o reacciones de equilibrio (Ejemplo: pone las manos previendo que se va a caer, extiende los brazos, se protege la cabeza).', 8),
(106, 'Rodea objetos en el suelo en lugar de pasar por encima de ellos pisándolos.', 'Muestra consciencia del cuerpo con relación a los objetos pasando por encima de ellos o rodeándolos.', 8),
(107, 'Lanza la pelota en cualquier dirección.', 'Debe hacerlo sin ayuda y lo lanza con decisión hacia donde quiere.', 8),
(108, 'Rueda una pelota adelante y atrás intercambiándola con otra persona.', 'El adulto puede empezar la actividad pero el niño o niña muestra interés en rodas la pelota en dirección a la persona.', 8),
(109, 'Exhibe mínimas dificultades de conducta importantes.', 'Ejemplos incluyen auto-agresión, agresión a otros o rabietas frecuentes y/o severas. ', 9),
(110, 'Se sienta en una sillas o permanece frente al adulto en actividades agradables entre 1 y 2 minutos sin dificultad.', 'Se siente calmadamente/feliz por al menos 60 segs. mientras interactúan con adulto.', 9),
(111, 'Se implica con voluntad en juegos simples, en una silla o en el suelo, durante 5 minutos.', 'Los juegos pueden incluir \"cucu-tras\", una canción o un juego circular físico (cosquillas, o trotar en las rodillas del adulto). ', 9),
(112, 'Torela la proximidad del adulto y sus interacciones (con demandas mínimas por parte de éste) sin problemas con conductas durante un tiempo de unos 20 minutos.', 'Las peticiones que el adulto pueda hacer están dentro del conjunto actual de habilidades del niño. Se puede quejar pero no tener una conducta agresiva.', 9),
(113, 'Interactúan apropiadamente con miembros de la familia (Ejemplo: Sin agresiones ni otras acciones inapropiadas).', 'No se observan agresiones ni otras interacciones inapropiadas ni la familia informar de ello.', 9),
(114, 'Sigue las instrucciones “para” o “espera” sin ayudas ni gestos.', 'El niño responde a instrucción verbal por sí sola, detiene la actividad, mira al adulto y espera a la instrucción del adulto.', 14),
(115, 'Sigue entre 8 y 10 instrucciones verbales de un solo paso que implican acciones del cuerpo y acciones sobre objetos.', 'El niño responde a instrucciones verbales que implican verbos (sacudir una maraca, golpear dos palos, abrazar a un bebé, aplastar plastilina, cortar, ponerse de pie, aplaudir, tocarse la nariz –debe ser capaz de seguir instrucciones que impliquen un objeto e instrucciones que sólo impliquen su cuerpo). ', 14),
(116, 'Identifica señalando o mostrando varias partes del cuerpo en sí mismo y otra persona.', 'Requiere identificar 5 ó más partes del cuerpo.', 14),
(117, 'Responde a instrucciones verbales para dar/señalar/mostrar relacionadas con 8-10 objetos específicos en rutinas naturales de juego, vestido,comida (ej. bebé, silla, bloque, copa, osito, etc.).', 'El ítem se explica por sí mismo.', 14),
(118, 'Identifica por el señalamiento y atiende hacia 3 imágenes nombradas en un libro (incluyendo taza, coche, perro, gato y bebé).', 'Responde a “¿dónde está...?” o “enséñame...” sin con señalamiento del dedo índice y mirada.', 14),
(119, 'Entiende conceptos espaciales simples (ej. dentro, fuera).', 'Requiere que el niño demuestres comprensión generalizada de 3 ó más preposiciones siguiendo instrucciones verbales utilizando objetos.', 14),
(120, 'Mira a las personas y a fotos de personas cuando éstas son nombradas (familiares, mascotas, profesores).', 'Requiere respuesta a 4 ó más nombres distintos. Si la persona/mascota nombrada está presente, el niño claramente mira a la persona cuando se la nombra (también puede señalar) Si es en una imagen, el niño toca la imagen o la señala cuando se dice el nombre.', 14),
(121, 'Coge o localiza 8-10 objetos, que no están directamente a la vista, en una habitación cuando se le piden verbalmente, siendo necesario alguna búsqueda de esos objetos.', 'En respuesta a la dirección verbal “coge el...”, el niño coge objetos en una habitación que están fuera de su línea de visión directa. La tarea implica recordar la petición el tiempo suficiente para dirigir una búsqueda visual por la habitación y recuperar el objeto del suelo, una mesa, una silla o estantería.', 14),
(122, 'En base a peticiones verbales (con ayuda de gesto), completa dos acciones con un objeto.', 'El niño secuencia dos acciones juntas sobre un objeto en respuesta a instrucción verbal con gesto. Debe demostrar  3 ó más secuencias distintas para pasar el ítem (“coge tus zapatos y tráemelos”).', 14),
(123, 'Señala en una imagen partes del cuerpo que se le nombran.', 'Identifica 5 ó más partes del cuerpo en una foto grande o dibujo cuando se le pide.', 14),
(124, 'Utiliza signos “clave” con vocalización para expresarse (pedir, terminado, compartir, ayuda, rechazar). ', 'El niño combina gestos específicos y vocalizaciones o aproximaciones a palabras para comunicar cuatro de las funciones que se detallan en el ítem.', 15),
(125, 'Produce entre 6-10 palabras sencillas o aproximaciones dentro del contexto de rutinas familiares, rutinas de juego social o canciones.', 'Produce 5 ó más aproximaciones a palabras diferenciadas en rutinas sociales familiares. Pueden ser espontáneas o espontáneamente imitadas pero no ayudadas.', 15),
(126, 'Espontáneamente produce múltiples palabras asociadas con rutinas de juego.', 'Produce 3 ó más aproximaciones a palabras diferenciadas para verbos que implican acciones en sí mismo o en objetos (espontáneas o imitadas, pero no ayudadas).', 15),
(127, 'Uso funcional de 20 o más aproximaciones a sustantivos (objetos, animales, personas) y no sustantivos (acciones u otras: “se fue”, “arriba”, etc.).', 'Implican aproximaciones a palabras usadas espontáneamente para pedir acciones u objetos. Debe usar sustantivos y no sustantivos para darse por conseguido el ítem.', 15),
(128, 'Espontáneamente denomina objetos e imágenes.', 'Se da por conseguido si el niño denomina 5 ó más objetos y 5 ó más imágenes espontáneamente.', 15),
(129, 'Vocaliza con entonación variada durante canciones.', 'El niño varía la entonación según produce algunas palabras en canciones o cantinelas, demuestra consciencia de los patrones de entonación.', 15),
(130, 'Pide y rechaza utilizando palabra sencilla con mirada.', 'El niño utiliza de forma habitual palabras sencillas con mirada para transmitir petición y protesta, rechazo o negación.', 15),
(131, 'Denomina acciones en contextos (ej. durante acciones del cuerpo o realiza acciones sobre los objetos).', 'El niño produce 10 ó más verbos imitativamente y espontáneamente para denominar acciones en sí mismo, otros y sobre objetos. ', 15),
(132, 'Dice el nombre aproximado de 3 personas importantes (incluido sí mismo).', 'El niño usa nombres para denominar personas en imágenes, el espejo y en la vida real o para obtener su atención. Puede ser en respuesta a la pregunta “¿quién es éste?”.', 15),
(133, 'Mueve la cabeza y dice “no” para rechazar.', 'El niño espontáneamente combina el movimiento de cabeza con la palabra NO para rechazar.', 15),
(134, 'Asiente con la cabeza y dice “sí” para afirmar.', 'Combina espontáneamente el movimiento de la cabeza con la palabra SÍ para afirmar.', 15),
(135, 'Pregunta (aproximadamente) “¿qué es eso?” cuando encuentra algo no familiar.', 'Espontáneamente mira al adulto y gesticula hacia el objeto, con gesto de la mano o cambio de mirada, mientras pregunta “¿qué es eso?” en varios contextos distintos.', 15),
(136, 'Responde a “mira” y al objeto ofrecido con cambio en la mirada, giro del cuerpo y mirada al objeto ofrecido.', 'El ítem se explica por sí mismo.', 16),
(137, 'Responde a “mira” y señalamiento orientándose hacia el objeto o persona indicada.', 'El ítem se explica por sí mismo.', 16),
(138, 'Entrega o toma objetos de otra persona con contacto visual coordinado con la acción.', 'Implica que entregue o tome espontáneamente. Si lo toma, el adulto no debería ser porque el adulto le haya ofrecido el objeto. Puede comunicar la petición con la mirada.', 16),
(139, 'Responde a “enséñame” acercando el objeto al adulto ', 'El ítem se explica por sí mismo.', 16),
(140, 'Espontáneamente muestra objetos.', 'Implica actos habituales de mostrar: posicionando el objeto delante y hacia la cara del adulto, mirando al adulto y esperando un comentario. Se da por bueno si esto se ve en varias ocasiones en una hora de juego aprox. ', 16),
(141, 'Espontáneamente sigue el señalamiento o el cambio de la mirada del adulto (en este caso sin ayuda del gesto) para mirar hacia algo.', 'Se debe obtener la mirada del niño en una interacción cara a cara, entonces el adulto desvía su mirada hacia un objeto. Se da por bueno si el niño muestra un giro de cabeza y algún tipo de búsqueda. No es necesario que encuentre el objeto.', 16),
(142, 'Espontáneamente señala objetos que le interesan.', 'Implica actos habituales, varios en una hora de interacción aprox. Para darlo por bueno, el niño debe señalar a un objeto y mirar al adulto y esperar un comentario.', 16),
(143, 'Comparte la sonrisa con el adulto con mirada alternada durante actividades placenteras con objetos.', 'Implica un cambio claro en la mirada desde el objeto a los ojos del adulto y de vuelta al objeto para comunicar y compartir el placer en la interacción. Para darlo por bueno se debe ver varias veces en un período de juego social de 10 minutos.', 16),
(144, 'Inicia y mantiene el contacto ocular en la comunicación.', 'El niño habitualmente comienza intercambios comunicativos (de cualquier tipo) con mirada y mantenimiento de la mirada de una manera natural durante el intercambio.', 17),
(145, 'Pide verbalmente o físicamente inicia juegos sociales familiares.', 'El niño inicia y da señales de mirada social con movimientos del cuerpo, gestos o patrones de vocalización que son específicos para dar comienzo a ciertos juegos. Debe hacerlo con 3 ó más juegos para ser dado por bueno el ítem.', 17),
(146, 'Devuelve conductas afectivas: abrazos, besos a personas familiares.', 'Espontáneamente y consistentemente devuelve un abrazo a un adulto familiar con los brazos y el cuerpo, devuelve besos con la mejilla o los labios.', 17),
(147, 'Utiliza gesto o palabras para atraer la atención del adulto.', 'Busca el contacto visual del adulto usando palabras  o gestos claros de algún tipo (agitar la mano, mostrar, girar la cara, dar un golpe en el cuerpo del adulto, etc.).', 17),
(148, 'Responde a saludos sociales con “hola” o “adiós” y agita la mano imitando.', 'Responde a saludos con palabras y gestos, sin ayuda.', 17),
(149, 'Pide ayuda verbalmente o con gestos.', 'Inicia peticiones de ayuda usando signos convencionales o aproximaciones a palabras combinadas con mirada. Manipular las manos o el cuerpo del otro no cuenta a menos que se acompañe por la mirada y también palabras apropiadas.', 17),
(150, 'Consistentemente coordina el contacto ocular con la vocalización y/o gesto en el acto comunicativo.', 'Consistentemente acompaña actos comunicativos espontáneos con el contacto ocular.', 17),
(151, '“Baila” con otros en juegos circulares al ritmo de la música.', 'El niño juega a varios juegos circulares distintos e imita movimientos de baile con la música (corro de la patata, al pasar la barca...).', 17),
(152, 'Corre con otros en juegos de “pillar”.', 'El niño persigue a otra persona y la coge jugando a “pillar”, y además adopta el rol de correr para ser cogido.', 17),
(153, 'Consigue la atención del interlocutor utilizando el nombre de la persona o del juego e inicia el juego social o la actividad.', 'Espontáneamente inicia juegos sociales familiares estableciendo contacto ocular y usando un gesto asociado y su nombre (bien el nombre de la persona, bien el nombre del juego) o una palabra de acción relacionada (ej: “cosquillas”, “pillar/píllame”).', 17),
(154, 'Entrega objetos a iguales cuando ellos se lo piden.', 'Consistentemente responde a peticiones verbales de sus iguales para un objeto y lo entrega.', 18),
(155, 'Permanece jugando a juegos de canciones en grupo de iguales.', 'Participar en canciones familiares y en juegos sociales con movimientos apropiados en pequeño grupo (con uno o dos compañeros), sin necesitar una ayuda importante. ', 18),
(156, 'Continúa con la actividad cuando los iguales de unen en juego paralelo.', 'Continúa la actividad cuando los iguales se le unen, reconociendo y aceptando la aproximación del compañero. No “protege” sus materiales o rechaza la aproximación.', 18),
(157, 'Responde apropiadamente cuando le saludan los iguales.', 'Espontáneamente responde a “hola” y “adiós” de un compañer@ con mirada, gesto y palabras apropiadas.', 18),
(158, 'Toma turnos con iguales en acciones simples con juguetes cuando el otro niño se lo pide, da y toma de vuelta.', 'En situación de juego paralelo, habitualmente responde a las iniciativas de sus compañeros de tomar turnos entregando objetos cuando se lo piden y pidiendo su turno, verbalmente o no verbalmente, pero acompañando de mirada al compañero esa petición de turno.', 18),
(159, 'Se siente en grupo con iguales y atiende a instrucciones familiares del adulto.', 'El niño se sienta en pequeño grupo sin ayuda del adulto, atiende al adulto y sigue instrucciones verbales que ya están en el repertorio del niño. El adulto puede usa el nombre del niño para darle la instrucción pero no otra ayuda.', 18),
(160, 'Toma objetos de otro niños cuando el otro se lo ofrece.', 'Habitualmente toma objetos con contacto ocular cuando un niño se lo ofrece.', 18),
(161, 'Pasa los objetos a los iguales cuando están en la mesa o en grupo cuando le piden el objeto.', 'Consistentemente responde apropiadamente cuando le piden un objeto en situaciones de pequeño grupo (en el corro, en la mesa de desayuno, en el trabajo de mesa con pocos compañeros, en el rincón de juego).', 18),
(162, 'Imita la conducta de los iguales ocasionalmente en actividades lúdicas.', 'Durante actividades de juego paralelo, imita unas cuantas acciones de sus compañeros espontáneamente.', 18),
(163, 'Juega a juegos de emparejar imágenes (del tipo Memory) solo y con iguales.', 'Se da por bueno si el niño puede tomar turnos con un compañero de juego e implicarse en la finalización del juego. Estas son las únicas habilidades requeridas para dar por bueno el ítem.', 18),
(164, 'Imita acciones motoras gruesas en una variedad de\r\nposiciones (sentado, de pie, en movimiento)', 'Consistentemente y espontáneamente imita \r\nacciones motoras gruesas (puede ser enseñado \r\nantes) Pueden ser aproximaciones; es la \r\nconsistencia, no la precisión, lo que es \r\nimportante.', 24),
(165, 'Salta sobre obstáculos en el suelo', 'El niño salta hacia delante en el espacio, de un banco escalón al suelo, así como desde el propio suelo.', 24),
(166, 'Utiliza algún tipo de equipamiento en la zona de juego (sala de psicomotricidad, patio, etc.): tobogán, columpios, etc.', 'Consistentemente inicia múltiples acciones \r\napropiadas en varios tipos de equipamiento de juego de baja altura.', 24),
(167, 'Se sienta en un triciclo y empuja con los pies o empieza a pedalear ', 'Independientemente se coloca en un triciclo en posición correcta para montar e intenta pedalear pero puede necesitar ayuda para hacerlo', 24),
(168, 'Tira de una carretilla/carro o la empuja', 'Independientemente opera un carro o carretilla para mover cosas por la zona de juego', 24),
(169, 'Da una patada a la pelota dirigida hacia algo', 'Patea una pelota grande con direccionalidad', 24),
(170, 'Excava con una pala ', 'Excava con una pala, rastrilla un material y lo deposita en un contenedor independientemente, debe dar múltiples paladas/pasadas de rastrillo', 24),
(171, 'Utiliza la servilleta con ayuda ', 'Cuando se le enseña pero sin ayudas posteriores, el niño coge la servilleta y se limpia apropiadamente partes del cuerpo al decírselo. No es necesario que sea a fondo, pero sí más que superficial.', 25),
(172, 'Se sirve algo de comida de un bowl con un utensilio ', 'Cuando el adulto sostiene o coloca el bowl o el plato al niño, éste debe usar el utensilio de servir para echar algo de comida en su plato independientemente. Puede ser torpemente. El adulto puede decirle cuanta cantidad', 25),
(173, 'Pasa un recipiente cuando se le pide ', 'En la mesa, cuando otra persona le pide que le pase algo, el niño mira lo que le han pedido, lo coge y lo pasa a esa persona. El niño debe responder a la petición buscando el objeto e intentando cogerlo independientemente. Si alguien le pasa un recipiente al niño y dice al niño que lo pase a otra persona, el niño sigue la \r\ninstrucción sin ayudas ', 25),
(174, 'Lleva el plato, la taza y cubiertos al fregadero o la bandeja/mostrador cuando termina de comer', 'Cuando deja la mesa, sigue instrucciones del adulto para coger algo específico y llevarlo a un sitio concreto sin ayuda', 25),
(175, 'Se queda en la mesa con compañía mientras comen los otros niños', 'El niño se siente durante la comida y permanece en el sitio sin ayudas hasta que termina y el adulto le indica que puede irse', 25),
(176, 'Come y se comporta apropiadamente en restaurantes de comida rápida/restaurante ', 'Participa en todos los pasos de la comida –\r\nesperar, pedir, llevarlo, sentarse, comer, \r\nrecoger la comida y salir del lugar sin ayudas físicas totales. El niño se sienta hasta que termina y hasta que el adulto termina su comida. El niño camina con voluntad con el adulto hacia la puerta y hacia la mesa. No es necesario cogerle de la mano para que permanezca con el adulto. ', 25),
(177, 'Probará o tocará una comida nueva que ha sido presentada varias veces antes ', 'Responderá a la instrucción de probar la comida o bebida de una comida o bebida familiar (pero que antes no había probado)', 25),
(178, 'Come de todos los grupos de comida', 'Come algunas frutas/verduras diariamente, \r\ncereales y carnes (a menos que haya restricciones familiares/sanitarias) espontáneamente.', 25),
(179, 'Bebe agua independientemente ', 'Espontáneamente coge el vaso y agua del \r\nfregadero, estantería o frigorífico sin \r\ninstrucciones ni ayuda del adulto. Si se usa el fregadero, el niño puede girar el grifo espontáneamente. ', 25),
(180, 'Se quita toda la ropa independientemente y la pone en un cesto o similar (los cierres o broches no) ', 'Cuando se le dice, el niño se quita la camisa, pantalón, ropa interior, calcetines y zapatos sin ayuda salvo para cierres/cremalleras y coloca las prendas en el contenedor apropiado. Se le puede recordar física o verbalmente una o dos \r\nveces durante el proceso pero sin ayudas \r\nfísicas, ni parciales ni totales para ningún paso. ', 26),
(181, 'Completa algunos pasos de ponerse cada prenda de ropa independientemente (necesita ayuda con los broches o cierres)', 'El ítem se explica por sí solo', 26),
(182, 'Se quita la chaqueta, el gorro y lo pone en la percha ', 'Se quita la chaqueta suelta y el gorro \r\nindependientemente; puede ser ayudado para \r\ncolocarlo en la percha', 26),
(183, 'Se limpia la cara cuando se le da la instrucción ', 'Después de que el adulto le dé la toallita/toalla húmeda y le dé la instrucción “lávate la cara”, \r\nel niño se frota la superficie entera de la cara sin más ayuda y le da la toallita de vuelta o la deja al terminar', 27),
(184, 'Se limpia la nariz cuando se le dice', 'Cuando se le dice que se limpie/suene la nariz, habitualmente va a la caja de pañuelos, coge un pañuelo, se limpia la nariz y tira el pañuelo sin más de una ayuda verbal y sin ayudas físicas/manuales', 27),
(185, 'Participa en todos los pasos del lavado de manos', 'Habitualmente ejecuta acciones manuales para cada paso del lavado de manos sin ayuda física. Puede ayudar en algún paso con gesto o ayuda física parcial. ', 27),
(186, 'Coopera con el lavado y corte de pelo', 'El niño no pelea, llora ni protesta de otro modo durante el lavado del pelo o el corte. Participa ayudando a frotarse el champú y la toalla. Pueden usarse refuerzos potentes durante la rutina.', 27),
(187, 'Juega con 5 juguetes distintos de baño \r\napropiadamente ', 'El ítem se explica por sí solo –se trata de \r\njuguetes habituales de baño ', 27),
(188, 'Guarda los juguetes al terminar el baño cuando se le dice', 'Debe, habitualmente, poner todos los juguetes del baño en el contenedor apropiado sin más ayuda después de la instrucción inicia.', 27),
(189, 'Ayuda a echarse colonia', 'Ayuda al padre/madre en frotarse la loción en manos, brazos, piernas, vientre. ', 27),
(190, 'Se cepilla los dientes sobre los dientes ', 'El niño se frota el cepillo de dientes sobre los dientes de arriba y de abajo, los delanteros y traseros, cuando se le dice. Se puede usar cualquier ayuda que no sea una ayuda física.', 27),
(191, 'Va a la cama por sí solo después de la rutina de acostarse', 'El niño habitualmente duerme en su propia \r\ncama y va a dormir sin la presencia de un \r\nadulto en la habitación después de la rutina de acostarse y de que se apaguen las luces. Raramente se levanta de la cama y sale de la habitación después de haberse acostado. ', 27),
(192, 'Muestra conocimiento de la rutina o ritual de irse a la cama ', 'Demuestra consciencia de la rutina de \r\nacostarse iniciando una o más actividades, y participando en varios pasos de la rutina sin necesitar ayudas totales', 27),
(193, 'Clasifica los cubiertos desde el lavaplatos a la bandeja/recipiente donde se coloquen los cubiertos ', 'El adulto puede establecer la situación, pero después de esto y de una instrucción inicial, el niño toma 20 utensilios del lavaplatos y los coloca en su lugar sin ninguna ayuda del adulto.', 28),
(194, 'Saca la ropa de la secadora y la pone en la cesta ', 'Cuando los padres abren la secadora y traen el cesto, el niño tirará de las prendas y las pondrá en el cesto sin ayudas. Puede necesitar alguna ayuda con alguna prenda difícil de sacar.', 28),
(195, 'Empareja calcetines', 'En un grupo de 10 ó más calcetines en un cesto o montón, el niño coloca los calcetines por pares, los dobla y los apila en su sitio correspondiente. ', 28),
(196, 'Echa agua o comida en el plato de la mascota', 'El adulto puede dar los materiales y una \r\ninstrucción directa, pero el niño lleva a cabo el acto sin más ayuda.', 28),
(197, 'Imita una variedad de vocales y consonantes durante intercambios verbales en situaciones de comunicación significativas', 'Incluye 4-5 sonidos vocálicos distintos y 4-5 sonidos consonánticos distintos', 19),
(198, 'Imita sonidos de animales y otros sonidos ', 'Imita al menos 5 sonidos diferentes', 19),
(199, 'Imita palabras sencillas reconocibles espontáneamente y frecuentemente en interacciones con otros ', 'Produce 10 ó más aproximaciones a palabras ', 19),
(200, 'Imita movimientos de 5 canciones; imita al menos 10 acciones distintas', 'Se trata de acciones familiares; no puede haber ayudas', 19),
(201, 'Imita/se aproxima acciones nuevas en canciones ', 'Se aproxima al menos a 5 acciones nuevas con el primer modelado que hace el adulto', 19),
(202, 'Imita acciones sobre objetos (de varios pasos, acciones de juego con los objetos)', 'Implica imitar una secuencia de 3 ó más acciones relacionadas (ej.: quitar la tapa de la caja de los pinchos, dejar la tapa, sacar los pinchos y usarlos apropiadamente)', 19),
(203, 'Imita acciones de  juego simulado/funcional hacia sí mismo y con otro compañero de juego usando miniaturas de objetos (tacitas, cepillo de juguete, etc.)', 'Consistentemente imita 4 ó más acciones naturales con miniaturas, en sí mismo y también ofrecidas al compañero de juego', 19),
(204, 'Imita dos secuencias de movimiento en canciones ojuegos circulares ', 'Espontáneamente imita 2 ó más acciones en una canción sin ayuda ', 19),
(205, 'Imita frases de dos palabras ', 'Habitualmente imita una variedad de producciones de dos palabras ', 19),
(206, 'Empareja/clasifica por formas ', 'Empareja y clasifica al menos 5 formas distintas', 20),
(207, 'Empareja/clasifica por tamaño ', 'Empareja y clasifica al menos 3 tamaños distintos de objetos idénticos', 20),
(208, 'Empareja/clasifica diseños, dibujos lineales ', 'Empareja y clasifica dibujos y patrones gráficos', 20),
(209, 'Clasifica objetos similares agrupándolos en conjuntos iguales', 'Empareja y clasifica objetos no idénticos por su identidad (ej. coches, caballos, pelotas, calcetines, zapatos, tazas)', 20),
(210, 'Clasifica objetos comunes relacionados en grupos por criterio de funcionalidad', 'Agrupa objetos por función: para comer, ropa, juguetes, etc. ', 20),
(211, 'Busca/pide un objeto desaparecido ', 'Reconoce cuando un objeto de un conjunto no está o no aparece, y pregunta por él o lo busca (ej. una pieza del puzle perdida, un zapato perdido, una taza que no está)', 20),
(212, 'Empareja/clasifica en base a dos criterios ', 'Empareja y clasifica objetos por color y forma, o forma y tamaño, etc.', 20),
(213, 'Empareja por cantidades de uno a 3 ', 'Empareja una variedad de objetos en grupos de cantidad implicando las cantidades de 1 a 3 (ej. piezas de dominó, galletas en un plato, etc.)', 20),
(214, 'Combina objetos relacionados en el juego (copa enel platito, cuchara en el plato)', 'Demuestra consciencia de relaciones funcionales de múltiples conjuntos de objetos en su juego y cuando los guarda ', 21),
(215, 'Imita/produce efectos de sonido en el juego (vocaliza el sonido del teléfono, hace el ruido delcoche, sonidos de animales...)', 'Se da por bueno si el niño hace 5 ó más sonidos de ese tipo en el juego ', 21),
(216, 'Lleva a cabo acciones sencillas que implican una propiedad sobre una muñeca o un animal ', 'Requiere acción espontánea; no se da por bueno si sólo imita', 21),
(217, 'Combina funcionalmente acciones relacionadas en un tema de juego (alimenta y da de beber, pone en la cama y tapa con la mantita)', 'Requiere acciones espontáneas que impliquen al menos 2 actos relacionados y apropiados. No se da por bueno si sólo imita', 21),
(218, 'Demuestra que intenta solucionar problemas mediante ensayo-error con juguetes de construcción; deben ser esquemas de solución flexibles, no repetitivos ', 'Se da por bueno si habitualmente demuestra soluciones ensayo-error en problemas en juegos con objetos ', 21),
(219, 'Juega apropiadamente y flexiblemente durante 10 minutos con la atención ocasional del adulto (con cualquier tipo de material de juego)', 'El adulto puede sacar varios sets de materiales de construcción o similar, pero el niño debe jugar solo con actos de juego apropiados, sin más de dos interacciones verbales, para dar por bueno el ítem. No penaliza si ocurren algunos actos repetitivos o estereotipados dentro o durante el tiempo de juego apropiado ', 22),
(220, 'Puede permanecer ocupado apropiadamente con materiales de “uso abierto” durante al menos 10 minutos con guía ocasional del adulto', 'El adulto puede sacar el material (plastilina, juego artístico, cuentos, objetos de juego simbólico o funcional), pero el niño debe jugar solo con actos de juego apropiados, sin más de dos interacciones verbales, para dar por bueno el ítem. No penaliza si ocurren algunos actos repetitivos o estereotipados dentro o durante el tiempo de juego apropiado ', 22),
(221, 'Coge el material de juego, lo lleva a la mesa, termina el juego y lo guarda ', 'El niño juega independientemente incluyendo el hecho de que sea él quien saque el material, vaya al espacio de juego y guarde luego el material al finalizar. Puede implicar juegos de final abierto (el niño decide cuando termina) o de final cerrado (el juego marca su propio final)', 22),
(222, 'Coloca 3 o más formas en el clasificador de formas de manera precisa', 'El niño completa la actividad independientemente; puede usar ensayo y error pero sin ayudas de ningún tipo por parte del adulto', 23),
(223, 'Apila 8-10 bloques de unos 2-3 cms ', 'El niño construye independientemente torres de bloques de 8-10 torres equilibradas', 23),
(224, 'Copia 3 o más diseños de bloques sencillos ', 'El niño copia varias disposiciones que impliquen al menos 3 vloques (ej. torre vertical, línea horizontal, puente)', 23),
(225, 'Pone juntas 5 o más piezas encajables tipo Lego, Duplo de diversas maneras', 'Usa múltiples tipos de objetos encajables y ensambla 5 ó más piezas de varias maneras ', 23),
(226, 'Imita 5 o más acciones simples con plastilina (amasa, enrolla, aprieta, aplasta, golpea, etc.) ', 'El ítem se explica por sí solo ', 23),
(227, 'Pone múltiples pegatinas o gomets en plantillas ', 'El adulto puede tener que despegar la pegatina por una esquina para que el niño pueda agarrar el papel de abajo, pero el niño debe despegarla y colocarla en la plantilla independientemente', 23),
(228, 'Abre y cierra una variedad de recipientes, incluyendo tapones de rosca ', 'No es una prueba de fuerza, las tapas deben ser fáciles de abrir', 23),
(229, 'Abre y cierra cremalleras grandes ', 'El niño puede cerrar o abrir todo el recorrido de la cremallera, aunque el adulto tenga que unir las dos partes de la cremallera al principio', 23),
(230, 'Ensarta objetos grandes con una cuerda gruesa ', 'El niño ensarta 5 ó más cuentas, macarrones, anillos, etc., en una cuerda gorda sin ayuda ', 23),
(231, 'Imita trazos, garabateos y puntos con pinturas orotuladores', 'El niño imita al menos 3 tipos diferentes de acciones con útiles de pintura ', 23),
(232, 'Corta papeles con tijeras ', 'El corte no es necesario que recorte una pieza de papel como tal. Puede usar las tijeras del adulto o de niño. El adulto puede mostrar cómo cogerlas pero el niño corta independientemente. No es necesario que coja perfectamente las tijeras. Debe ser capaz de dar 3 cortes al menos', 23),
(233, 'Mete monedas o tarjetas por ranuras ', 'Independientemente coge 5 ó más piezas de una mesa y las coloca en una ranura, horizontalmente y verticalmente, sin ayudas ', 23);
INSERT INTO `actividad` (`id`, `nombre`, `descripcion`, `idTopico`) VALUES
(234, 'Ensarta una variedad de bolitas o similares en distintos tipos de cuerda', 'El niño puede ensartar múltiples objetos en varios tipos de cuerdas y cordones', 23),
(235, 'Completa 4-6 puzzles sencillos automodelados, con plantilla interna ', 'El niño completa el puzle independientemente; puede usar ensayo error pero no puede recibir ayudas del adulto', 23),
(236, 'Atiende y se une con interés durante 5-10 minutos cuando un adulto le lee un cuentos familiares utilizando frases sencillas.', '.', 29),
(237, 'Sigue órdenes de un solo paso que implican acciones u objetos familiares.', '.', 29),
(238, 'Identifica muchos objetos comunes y sus imágenes:artículos de vestido, objetos relacionados con la comida, higiene, juego y alimentos.', '.', 29),
(239, 'Responde apropiadamente a preguntas de “sí/no” respecto a sus preferencias o intereses.', '.', 29),
(240, 'Identifica 5 o más acciones en libros e imágenes.', '.', 29),
(241, 'Sigue 2 o más instrucciones dadas en situaciones rutinizadas (momento de acostarse: “coger un libro y metete en la cama”; limpiarse los dientes: “coge el cepillo y la pasta de dientes”). ', '.', 29),
(242, 'Entiende relaciones espaciales que implican objetos (ej. Debajo, al lado, etc.).', '.', 29),
(243, 'Diferencia conceptos básicos de tamaño: grande/pequeño.', '.', 29),
(244, 'Diferencia al menos 4 colores distintos ante una petición.', '.', 29),
(245, 'Identifica 20 items por el sonido (ej: animales,teléfono; “¿qué animal dice MIAU, MIAU?”).', '.', 29),
(246, 'Comprende la función de objetos comunes relacionados con acciones comunes (comer, dormir, beber, ponerse (referido a ropa), etc.).', '.', 29),
(247, 'Entiende pronombres posesivos “mío” y “tuyo”.', '.', 29),
(248, 'Identifica 10 acciones a través de imágenes, eligiendo o representando la acción.', '.', 29),
(249, 'Sigue 2 o más instrucciones no relacionadas en contextos nuevos.', '.', 29),
(250, 'Produce combinaciones de 2 ó 3 palabras para una variedad de intenciones comunicativas (ej. Pedir, saludar, conseguir la atención de alguien, rechazar, etc.).', '.', 30),
(251, 'Produce verbalizaciones de 2 o más palabras para hacer un comentario sobre algo a con otra persona.', '.', 30),
(252, 'Denomina acciones en imágenes y libros.', '.', 30),
(253, 'Comenta y pide en relación a una localización espacial (arriba, abajo, dentro, encima, etc.).', '.', 30),
(254, 'Comenta y pide utilizando formas posesivas sencillas (mío, tuyo).', '.', 30),
(255, 'Gesticula o vocaliza “no sé” en el contexto adecuado.', '.', 30),
(256, 'Consistentemente usa el nombre de otras personas para conseguir su atención.', '.', 30),
(257, 'Entrega un mensaje simple a otra persona (alguien le dice: “di hola a mamá”).', '.', 30),
(258, 'Dice “hola” y “adiós” apropiadamente, en ambos casos espontáneamente tanto iniciando como respondiendo a alguien.', '.', 30),
(259, 'Usa pronombres de sí mismo y de otros (variaciones del “yo” y del “tú/vosotros”).', '.', 30),
(260, 'Usa palabras simples y gestos para describir experiencias personales.', '.', 30),
(261, 'Nombra 1-2 colores.', '.', 30),
(262, 'Responde apropiadamente a preguntas con “¿qué...?”.', '.', 30),
(263, 'Responde apropiadamente a preguntas con “¿dónde...?”.', '.', 30),
(264, 'Responde apropiadamente a preguntas con “¿quién...?”.', '.', 30),
(265, 'Hace preguntas simples de tipo “sí/no” utilizando entonación (pueden ser producciones de una palabra con entonación).', '.', 30),
(266, 'Pregunta utilizando “¿qué...?” y “¿dónde...?”.', '.', 30),
(267, 'Contesta a preguntas de información simple: nombre, edad, color de la camiseta, etc.', '.', 30),
(268, 'Juega a juegos motores simples (ej. Pelota, escondite, corro de la patata).', '.', 46),
(269, 'Comparte y muestra objetos cuando el interlocutor de lo pide. ', '.', 46),
(270, 'Imita y ejecuta acciones nuevas en canciones/juegos de imitación social en situaciones grupales.', '.', 46),
(271, 'Responde apropiadamente a peticiones/instrucciones simples de sus iguales.', '.', 46),
(272, 'Inicia interacciones e imitaciones con sus iguales.', '.', 46),
(273, 'Juega a juegos rutinizados de dramatización con iguales en juego paralelo (no interactivo).', '.', 46),
(274, 'Toma turnos en juegos de tablero simples.', '.', 46),
(275, 'Usa términos y palabras educadas: “por favor”, “gracias”, “perdón”.', '.', 46),
(276, 'Imita una variedad de acciones motoras gruesas nuevas en situación estática y en movimiento, como las que se puedan hacer en juegos como “Sigue al líder” o “Simón hace.', '.', 46),
(277, 'Participar en actividades de juego que implican guiones verbales.', '.', 46),
(278, 'Frecuentemente dirige la atención de otros verbalmente o con gestos para comentar, mostrar, compartir y pedir. ', '.', 46),
(279, 'Responde a otros cuando ellos dirigen su atención hacia algo, lo hace mirando y comentando.', '.', 46),
(280, 'Receptivamente identifica afectos (feliz, triste, enfadado, asustado) en fotos, en otros y/o en dibujos.', '.', 46),
(281, 'Expresivamente identifica afectos en fotos, en otros y/o en dibujos.', '.', 46),
(282, 'Refleja afectos en su rostro (feliz, triste, enfadado y asustado).', '.', 46),
(283, 'Empareja letras de su nombre.', '.', 31),
(284, 'Empareja letras.', '.', 31),
(285, 'Empareja palabras.', '.', 31),
(286, 'Empareja números.', '.', 31),
(287, 'Receptivamente y expresivamente identifica algunas letras, números, formas y colores.', '.', 31),
(288, 'Juega a juegos que implican memoria para esconder objetos.', '.', 31),
(289, 'Categoriza objetos/imágenes en 8 clases.', '.', 31),
(290, 'Entiende la relación entre cantidades y símbolos numéricos hasta el 5.', '.', 31),
(291, 'Cuenta correctamente hasta el 5.', '.', 31),
(292, 'Secuencia 3 ó más imágenes en orden correcto y narra la secuencia usando términos como “primero, después”.', '.', 31),
(293, 'Juegos constructivos que implican secuenciar esquemas complejos con múltiples objetos coordinados (ej. Camiones en una carretera, bloqueshaciendo un edificio, etc.).', '.', 32),
(294, 'Une 3 ó más acciones relacionadas en una secuencia de juego.', '.', 32),
(295, 'Ejecuta 2 ó más acciones unidas sobre un animal o muñeco enseñadas.', '.', 32),
(296, 'Físicamente coloca figuras en muebles de miniatura, vehículos, etc., apropiadamente.', '.', 32),
(297, 'Lleva a cabo acciones en animales o muñecos espontáneamente.', '.', 32),
(298, 'Organiza los accesorios necesarios para el tema de juego.', '.', 32),
(299, 'Completa puzzles de 5 ó 6 piezas. ', '.', 33),
(300, 'Imita el dibujo de un círculo, una cruz, cuadrado, línea diagonal.', '.', 33),
(301, 'Imita y construye distintas estructuras de bloques usando una variedad amplia de materiales (bloques, Legos, etc.).', '.', 33),
(302, 'Anuda un cordón.', '.', 33),
(303, 'Traza líneas curvas y rectas con el dedo y una pintura o similar.', '.', 33),
(304, 'Usa una variedad de herramientas para recoger o lanzar objetos: un tenedor, unas pinzas, etc. ', '.', 33),
(305, 'Traza una variedad de formas.', '.', 33),
(306, 'Usa las tijeras con el gesto apropiado y usa la mano opuesta para mover o fijar el papel.', '.', 33),
(307, 'Corta una línea (líneas curvas y rectas).', '.', 33),
(308, 'Ejecuta actividades artísticas de dos pasos (cortar y pegar, dobla el papel y lo corta por la línea, etc.).', '.', 33),
(309, 'Lleva a cabo varios esquemas diferentes con plastilina (utiliza una variedad de herramientas).', '.', 33),
(310, 'Monta adecuadamente en triciclo (pedalea y dirige el manillar, sigue una ruta, etc.). ', '.', 34),
(311, 'Da una patada con buena ejecución y equilibrio.', '.', 34),
(312, 'Usa todo el equipamiento del patio o zona de juego con ayudas.', '.', 34),
(313, 'Juega a juegos de “pillar” con adultos e iguales,corriendo, cambiando de dirección, con buen equilibrio.', '.', 34),
(314, 'Imita acciones motrices gruesas con movimientos de canciones y música.', '.', 34),
(315, 'Lanza algo a dar a un objeto.', '.', 34),
(316, 'Salta hacia delante con dos pies a la vez.', '.', 34),
(317, 'Salta a la pata coja.', '.', 34),
(318, 'Utiliza la cuchara, el tenedor y la taza de formapulcra y sin derramar ni tirar nada.', '.', 35),
(319, 'Se comporta adecuadamente en su asiento en un restaurante.', '.', 35),
(320, 'Usa iconos u otros símbolos para hacer elecciones, planificar, etc. independientemente, si es que lo necesita, en casa y en la escuela.', '.', 35),
(321, 'Lleva su propio material desde el coche y al coche, casa o escuela ', '.', 35),
(322, 'Abre y cierra la mochila independientemente; mete y saca objetos cuando se le pide. ', '.', 35),
(323, 'Se viste y desviste cuando es apropiado (incluidos cierres/cremalleras o similares).', '.', 35),
(324, 'Usa el baño independientemente, todos los pasos.', '.', 36),
(325, 'Se las arregla con la vestimenta en el baño, excepto para las cremalleras.', '.', 36),
(326, 'Completa todos los pasos del lavado de manos independientemente.', '.', 36),
(327, 'Se lava la cara con una toallita cuando se le da.', '.', 36),
(328, 'Se pasa el cepillo o el peine por el pelo.', '.', 36),
(329, 'Se cubre la boca cuando estornuda o tose.', '.', 36),
(330, 'Ayuda activamente en el baño y el secarse después del baño. ', '.', 36),
(331, 'Se cepilla los dientes con varios movimientos.', '.', 36),
(332, 'Da de comer y beber a la mascota.', '.', 37),
(333, 'Ayuda a limpiar al mesa.', '.', 37),
(334, 'Ayuda a vaciar el lavaplatos.', '.', 37),
(335, 'Pone la ropa limpia en el cajón', '.', 37),
(336, 'Coge sus pertenencia cuando se le pide.', '.', 37),
(337, 'Comprende una variedad de conceptos que \r\ndescriben relación física', '', 38),
(338, 'Recupera o coge 10-15 objetos utilizando 2 ó 3 pistas múltiples (ej. tamaño, cantidad, color y denominación del objeto) ', '', 38),
(339, 'Comprende los pronombres de género', '', 38),
(340, 'Comprende comparativos: más grande que, más pequeño que, más corto que, más, menos, muchos, etc. ', '', 38),
(341, 'Comprende relaciones espaciales que implican objetos y preposiciones: detrás, enfrente de, etc.', '', 38),
(342, 'Comprende negativas: la caja que no tiene pelotas, el niño que no está sentado… ', '', 38),
(343, 'Comprende posesivos y relaciones entre el todo y las partes ', '', 38),
(344, 'Demuestra atención a historias cortas y \r\ncomprensión de partes de la historia respondiendo a preguntas simples tipo “Q”: (qué y quién)', '', 38),
(345, 'Responde a preguntas de identidad de SÍ/NO', '', 38),
(346, 'Responde preguntas sobre estados físicos ', '', 38),
(347, 'Responde a preguntas sobre información personal', '', 38),
(348, 'Comprende “igual” y “diferente” ', '', 38),
(349, 'Comprende conceptos de cantidad ', '', 38),
(350, 'Identifica características de objetos', '', 38),
(351, 'Responde a preguntas relacionadas con la \r\npertenencia a categorías de objetos/imágenes ', '', 38),
(352, 'Comprende el pasado y el futuro', '', 38),
(353, 'Comprende voz pasiva', '', 38),
(354, 'Comprende relaciones temporales', '', 38),
(355, 'Sigue instrucciones de 3 partes no relacionadas', '', 38),
(356, 'Responde a preguntas complejas tipo “Q”: ¿por qué?, ¿cómo?', '', 39),
(357, 'Describe funciones de objetos en respuesta a preguntas (¿qué se hace con una cuchara?)', '', 39),
(358, 'Consistentemente habla con producciones de 3-4 palabras', '', 39),
(359, 'Usa una variedad de frases nominales ', '', 39),
(360, 'Usa frases preposiciones (debajo, cerca de, detrás, enfrente de)', '', 39),
(361, 'Usa una variedad de frases con verbos (él llora, a ella le gusta esto, estaba contento, etc.)', '', 39),
(362, 'Realiza producciones precisas de al menos el 80% de las consonantes y unión de consonantes al hablar', '', 39),
(363, 'Describe experiencias recientes usando frases de 3-4 palabras ', '', 39),
(364, 'Pide permiso para …… una actividad ', '', 39),
(365, 'Usa formas plurales', '', 39),
(366, 'Usa posesivos (su, mi, de mamá, etc.) ', '', 39),
(367, 'Usa el tiempo pasado simple', '', 39),
(368, 'Usa artículos como “un”, “una”, “el”…', '', 39),
(369, 'Usa comparativos/superlativos', '', 39),
(370, 'Usa negación con verbos auxiliares', '', 39),
(371, 'Usa la forma de presente continuo (estoy jugando, estoy corriendo, etc.) ', '', 39),
(372, 'Usa palabras para describir estados físicos ', '', 39),
(373, 'Responde a preguntas sobre estados físicos: “¿qué haces cuando…?”', '', 39),
(374, 'Usa nombres de categorías para objetos familiares', '', 39),
(375, 'Describe características de objetos', '', 39),
(376, 'Usa pronombres reflexivos', '', 39),
(377, 'Contesta al teléfono apropiadamente, incluyendo dar el teléfono a quien el interlocutor le pide', '', 39),
(378, 'Participa en una conversación que es iniciada por un adulto en 2 ó 3 turnos consecutivos implicando una variedad de funciones (comentarios recíprocos, \r\nresponder a y preguntar por información) ', '', 39),
(379, 'Inicia y mantiene una conversación sobre un temagenerado por él con un adulto ', '', 39),
(380, 'Describe una secuencia de 2-3 actividades (ej. cuando va a visitar a la abuela)', '', 39),
(381, 'Expresa “no sé” acompañado de gesto', '', 39),
(382, 'Pide clarificación si no entiende que se ha dicho ', '', 39),
(383, 'Se implica en una variedad de temas al conversar ', '', 39),
(384, 'Rectifica su propia comunicación cuando el \r\ninterlocutor no le entiende', '', 39),
(385, 'Responde a preguntas sobre sí mismo y otros', '', 39),
(386, 'Invita a sus iguales a jugar con él', '', 40),
(387, 'Usa formas educadas como “perdón”, “lo siento”', '', 40),
(388, 'Busca a personas concretas en un grupo con las que está cómodo', '', 40),
(389, 'Expresa sentimientos propios apropiadamente', '', 40),
(390, 'Toma turnos en juego de manera \r\nindependientemente, sin ayuda', '', 40),
(391, 'Describe un evento o una experiencia a un igual', '', 40),
(392, 'Identifica qué le hace feliz, triste, asustarse o ponerse nervioso', '', 40),
(393, 'Identifica las emociones de otros basándose en factores de la situación ', '', 40),
(394, 'Comienza a desarrollar estrategias de adaptación cuando se siente molesto o asustado ', '', 40),
(395, 'Cuenta del 1 al 20 como rutina', '', 41),
(396, 'Cuenta objetos haciendo correspondencia 1:1 hasta el 10', '', 41),
(397, 'Da “uno”, “algunos”, “muchos”, “un poco”, “todos”, “más” y “la mayoría” ', '', 41),
(398, 'Da cantidades hasta 10', '', 41),
(399, 'Conoce términos para conceptos de cantidad', '', 41),
(400, 'Conoce términos para conceptos espaciales ', '', 41),
(401, 'Empareja y comprende 5-10 asociaciones de \r\npalabra/objeto ', '', 41),
(402, 'Puede leer algunas palabras', '', 41),
(403, 'Puede identificar un nombre escrito entre un grupo de 5 ', '', 41),
(404, '“Lee” signos y símbolos ', '', 41),
(405, 'Identifica números y letras', '', 41),
(406, 'Establece opuestos y análogos ', '', 41),
(407, 'Demuestra acciones con figuras en el juego ', '', 42),
(408, 'Utiliza objetos neutros en el juego para simbolizar ', '', 42),
(409, 'Etiqueta acciones y objetos fingidos en el juego', '', 42),
(410, 'Espontáneamente une 3 ó más comportamientos relacionados en un tema/guion de juego', '', 42),
(411, 'Dirige al compañero de juego', '', 42),
(412, 'Representa varias experiencias de la vida en el juego (fiesta de cumpleaños, ir a la hamburguesería, ir al médico), incluyendo guiones verbales típicos de lo que suele suceder ahí', '', 42),
(413, 'Representa varias historias en un juego', '', 42),
(414, 'Toma un personaje y lo representa', '', 42),
(415, 'Sigue el liderazgo de otro en el juego', '', 42),
(416, 'Colorea una imagen con precisión usando distintos colores ', '', 43),
(417, 'Imita formas y letras usando distintos utensilios de pintura', '', 43),
(418, 'Dibuja líneas y formas, algunas letras y números de memoria ', '', 43),
(419, 'Imita y copia una variedad de letras, números y formas ', '', 43),
(420, 'Escribe su nombre sin un modelo ', '', 43),
(421, 'Traza formas y letras', '', 43),
(422, 'Colorea formas que están pre-dibujadas', '', 43),
(423, 'Conecta puntos dibujando líneas', '', 43),
(424, 'Dibuja líneas desde y hacia las imágenes \r\ncorrespondientes, palabras o formas', '', 43),
(425, 'Copia una variedad de dibujos representacionales simples (una cara, un árbol, una casa, una flor) ', '', 43),
(426, 'Dobla papel por la mitad y lo mete en un sobre', '', 43),
(427, 'Recorta ángulos, líneas curvas y rectas', '', 43),
(428, 'Recorta formas simples', '', 43),
(429, 'Completa una tarea artística/manipulativa de 3 pasos (cortar, colorear y pegar)', '', 43),
(430, 'Puede usar un pincel, rotuladores, lápices, borradores… para las actividades', '', 43),
(431, 'Usa un agarre adecuado con los utensilios de dibujar ', '', 43),
(432, 'Construye una variedad de materiales de \r\nconstrucción con su propio diseño y copia modelos simples de imágenes o modelos en tres dimensiones', '', 43),
(433, 'Pone juntos puzles ”auto-guiados” (con la imagen dejado u otra guía/ayuda) y otras variedades más complejas de puzles ', '', 43),
(434, 'Usa cinta adhesiva, clips y llaves apropiadamente ', '', 43),
(435, 'Juega a lanzarse la pelota con un niño de su edad', '', 44),
(436, 'Tira una pelota de tenis a otra persona con direccionalidad', '', 44),
(437, 'Usa todos los juguetes/equipamiento del patio independientemente, incluyendo el balancín, y “tío vivo” o carrusel ', '', 44),
(438, 'Da una patada a una pelota en movimiento', '', 44),
(439, 'Juega a varios juegos con pelotas, lanza a una canasta, golpea una pelota con un utensilio (una raqueta o un bate), bota la pelota, etc. ', '', 44),
(440, 'Monta en bici con seguridad con “ruedines” auxiliares, es capaz de controlar la velocidad, maniobrar y frenar ', '', 44),
(441, 'Corre y salta ', '', 44),
(442, 'Camina sin caerse de una barra o banco de equilibrio o por el bordillo de una acera', '', 44),
(443, 'Juega a juegos motores típicos como “el congelado” o similares', '', 44),
(444, 'Maneja todos los pasos implicados en ir al baño independientemente al nivel esperable para sus iguales', '', 45),
(445, 'Va al baño cuando es necesario', '', 45),
(446, 'Se lava las manos independientemente al nivel de sus iguales ', '', 45),
(447, 'Se lava la cara con una toalla independientemente', '', 45),
(448, 'Independientemente se cepilla o peina el palo ', '', 45),
(449, 'Activamente ayuda en el baño, se seca después del baño ', '', 45),
(450, 'Lleva a cabo todos los pasos del lavado de dientes independientemente, aunque el adulto tenga que terminar de hacerlo con más precisión', '', 45),
(451, 'Se abrocha la ropa (botones, cremalleras, etc.) ', '', 45),
(452, 'Se suena la nariz cuando se le dice, usa el pañuelo, se tapa al toser y estornudar', '', 45),
(453, 'Se para en la calle, cruza después de mirar a ambos lados cuando es acompañado ', '', 45),
(454, 'Camina de manera segura al lado del adulto \r\nindependientemente en el supermercado, el \r\naparcamiento, etc. ', '', 45),
(455, 'Ayuda a poner la mesa ', '', 45),
(456, 'Usa el cuchillo', '', 45),
(457, 'Limpia cuando se le derrama algo', '', 45),
(458, 'Se sirve líquido él solo de un recipiente pequeño', '', 45),
(459, 'Coloca los platos en el fregadero o en el lavavajillas ', '', 45),
(460, 'Se hace un aperitivo que implique dos pasos o acciones', '', 45),
(461, 'Ayuda con las actividades de la cocina: remueve algo, echa algo en un recipiente… ', '', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `numero`) VALUES
(2, 1),
(3, 2),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `profesion` varchar(100) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`id`, `nombre`, `apellido`, `edad`, `profesion`, `direccion`, `telefono`, `idUsuario`) VALUES
(9, 'Jose Manuel', 'Navarro Lopez', 30, 'Ingeniero en software', 'Calle felicidad', '6221731444', 62),
(11, 'Jesús', 'López', 28, 'Maestro', 'calle 23 av constitución ', '6221731444', 72);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idActividad` int(11) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `respuestaUsuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `idUsuario`, `idActividad`, `idNivel`, `respuestaUsuario`) VALUES
(38, 58, 1, 2, 'Lo hace bien'),
(39, 58, 114, 3, 'Lo hace bien'),
(40, 62, 1, 2, 'Lo hace con ayuda'),
(41, 62, 2, 2, 'Lo hace con ayuda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topico`
--

CREATE TABLE `topico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `idNivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `topico`
--

INSERT INTO `topico` (`id`, `nombre`, `idNivel`) VALUES
(1, 'COMUNICACIÓN RECEPTIVA ', 2),
(2, 'COMUNICACIÓN EXPRESIVA', 2),
(3, 'HABILIDADES SOCIALES ', 2),
(4, 'IMITACIÓN', 2),
(5, 'COGNICIÓN', 2),
(6, 'JUEGO', 2),
(7, 'MOTRICIDAD FINA ', 2),
(8, 'MOTRICIDAD GRUESA', 2),
(9, 'COMPORTAMIENTO', 2),
(10, 'INDEPENDENCIA PERSONAL: ALIMENTACIÓN', 2),
(11, 'INDEPENDENCIA PERSONAL: VESTIMENTA', 2),
(12, 'INDEPENDENCIA PERSONAL: ASEO ', 2),
(13, 'INDEPENDENCIA PERSONAL: TAREAS', 2),
(14, 'COMUNICACIÓN RECEPTIVA ', 3),
(15, 'COMUNICACIÓN EXPRESIVA ', 3),
(16, 'CONDUCTAS DE ATENCIÓN CONJUNTA ', 3),
(17, 'HABILIDADES SOCIALES: ADULTOS O IGUALES ', 3),
(18, 'HABILIDADES SOCIALES CON IGUALES ', 3),
(19, 'IMITACIÓN ', 3),
(20, 'COGNICIÓN ', 3),
(21, 'JUEGO: REPRESENTACIONAL ', 3),
(22, 'JUEGO: JUEGO INDEPENDIENTE ', 3),
(23, 'MOTRICIDAD FINA ', 3),
(24, 'MOTRICIDAD GRUESA ', 3),
(25, 'INDEPENDENCIA PERSONAL: ALIMENTACIÓN ', 3),
(26, 'INDEPENDENCIA PERSONAL: VESTIDO ', 3),
(27, 'INDEPENDENCIA PERSONAL: HIGIENE ', 3),
(28, 'INDEPENDENCIA PERSONAL: TAREAS ', 3),
(29, 'COMUNICACION RECEPTIVA', 4),
(30, 'COMUNICACION EXPRESIVA', 4),
(31, 'COGNICIÓN', 4),
(32, 'JUEGO', 4),
(33, 'MOTRICIDAD FINA', 4),
(34, 'MOTRICIDAD GRUESA', 4),
(35, 'INDEPENDENCIA PERSONAL ', 4),
(36, 'INDEPENDENDIA PERSONAL: HIGIENE', 4),
(37, 'INDEPENDENCIA PERSONAL: TAREAS', 4),
(38, 'COMUNICACIÓN RECEPTIVA', 5),
(39, 'COMUNICACIÓN EXPRESIVA ', 5),
(40, 'HABILIDADES SOCIALES', 5),
(41, 'COGNICIÓN', 5),
(42, 'JUEGO', 5),
(43, 'MOTRICIDAD FINA', 5),
(44, 'MOTRICIDAD GRUESA', 5),
(45, 'INDEPENDENCIA PERSONAL', 5),
(46, 'HABILIDADES SOCIALES: ADULTOS O IGUALES', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `pass` text NOT NULL,
  `nivel` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `tipo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `curp`, `pass`, `nivel`, `edad`, `diagnostico`, `tipo`) VALUES
(57, 'Jesus Antonio', 'Navarrete Lopez', 'sp00nm3', '$2y$10$MU4c4b334QegSEcCC.FP..aFABBJ7ZuamjoghS0VaxmpX6QgCjPBW', NULL, NULL, NULL, 'root'),
(58, 'Jose Miguel', 'Navarrete Lopez', 'NALJ011125HSRVPSA6', '$2y$10$MU4c4b334QegSEcCC.FP..aFABBJ7ZuamjoghS0VaxmpX6QgCjPBW', 5, 19, 'SOY EL PROVADOR', 'comun'),
(62, 'Jose Miguel', 'Navarro Higuera', 'NAHJ242325HSRVPSA8', '$2y$10$muR26fQcJJe2TXEj4I.Gke/GqKE7cIB70tSZSMEr.nMpvHdHifrmi', 5, 10, 'Espectro autista', 'comun'),
(68, 'Ana', 'Higuera', 'ANA HIGUERA', '$2y$10$s.wCMCYRyUXoPoTwX4lIu.SgHq9hfwO7d1kt2DUfQpOAvUZcRqGqq', NULL, NULL, NULL, 'root'),
(69, 'Jesús ', 'Navarrete', 'JESUS ANTONIO', '$2y$10$LeOE2vdUWquNuznt1heU1OJwCoKkZ9mJBplv7OWAO0sJ7OElMmzUy', NULL, NULL, NULL, 'root'),
(70, 'Jesús', 'Navarrete', 'EL PEPE', '$2y$10$AVgV6yBPnp2fIZxKUJp4Eu0DnsKW2YlV9zFfdR6QG5WDixhsajNYq', NULL, NULL, NULL, 'root'),
(71, 'Jesús ', 'Higuera', 'JESUS HIGUERA', '$2y$10$8ZIkYHxO5QjifsBI/bKkFOytAXuwA78W9fI61NKGXCvmI6joye35q', NULL, NULL, NULL, 'root'),
(72, 'Miguel', 'Ayala', '888888888888888888', '$2y$10$yxqp4LZBrREMTaSlDLrKEOfpx6pbPhzzNM32HCcylgOk3YxU7Wg/6', 2, 9, 'Autismo', 'comun');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_actividad_topico` (`idTopico`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_padre_usuario` (`idUsuario`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_respuestas_usuario` (`idUsuario`),
  ADD KEY `fk_respuestas_actividad` (`idActividad`),
  ADD KEY `fk_respuestas_nivel` (`idNivel`);

--
-- Indices de la tabla `topico`
--
ALTER TABLE `topico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_topico_nivel` (`idNivel`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `topico`
--
ALTER TABLE `topico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_actividad_topico` FOREIGN KEY (`idTopico`) REFERENCES `topico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `fk_padre_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `fk_respuestas_actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_respuestas_nivel` FOREIGN KEY (`idNivel`) REFERENCES `nivel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_respuestas_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `topico`
--
ALTER TABLE `topico`
  ADD CONSTRAINT `fk_topico_nivel` FOREIGN KEY (`idNivel`) REFERENCES `nivel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;