# Bangtang

Bangtang es una aplicación Flutter diseñada para explorar información visual y de perfil de artistas K-pop, con una experiencia moderna centrada en el descubrimiento de idols y grupos como BTS, TWICE y NEW JEANS. La interfaz combina un diseño con gradientes animados, tarjetas tipo stack en carrusel y una vista de detalle con galería de imágenes.

## Descripción general

La app presenta una pantalla principal con:
- selector para elegir un grupo
- fondo animado con degradados dinámicos
- tarjetas de personajes en formato carrusel
- acceso a una sección de discografía
- detalle individual del artista con descripción e imágenes

El proyecto está estructurado como una app multiplataforma Flutter con soporte para Android, iOS, web y desktop, y usa recursos locales en `assets/` para iconos e imágenes de cada integrante.

## Funcionalidades principales

- Menú de grupos con opciones `BTS`, `TWICE` y `NEW JEANS`
- Cambio dinámico de paleta y estilo según el grupo seleccionado
- Carrusel empilado con `flutter_swiper_plus`
- Navegación entre pantallas mediante `Navigator.push`
- Vista detallada por artista con:
  - nombre
  - grupo
  - descripción
  - galería horizontal
- Animaciones de entrada y fondo con `AnimationController`
- Diseño visual con Material Design, sombras y gradientes

## Arquitectura del proyecto

La estructura del proyecto es simple y clara, siguiendo una organización por capas funcionales:

```text
bangtang/
├── lib/
│   ├── main.dart                    # Punto de entrada de la app
│   ├── model/
│   │   ├── button_glow.dart         # Botón con efecto de brillo e interacción
│   │   ├── card_global.dart         # Carrusel principal de tarjetas
│   │   ├── constants.dart           # Colores y paletas de cada grupo
│   │   ├── datas.dart               # Modelo y datos de los artistas
│   │   └── ...
│   └── views/
│       ├── homepage.dart            # Pantalla principal
│       ├── detaislview.dart         # Vista de detalle del artista
│       └── discoview.dart           # Vista de discografía / paginación
├── assets/                          # Iconos y recursos visuales
├── android/                         # Configuración Android
├── ios/                             # Configuración iOS
├── web/                             # Soporte web
├── windows/                         # Soporte desktop
├── pubspec.yaml                     # Dependencias y configuración Flutter
├── analysis_options.yaml            # Reglas de linting
├── README.md                        # Documentación del proyecto
└── test/                            # Pruebas (si se añaden más adelante)
```

### Flujo principal de la app

1. `main.dart` crea la app y define el tema global.
2. `HomePage` es la pantalla inicial.
3. El usuario selecciona un grupo mediante un `DropdownButton`.
4. `CardWidget_` renderiza un `Swiper` con datos de cada integrante.
5. Al tocar una tarjeta, se abre `DetailsView`.
6. `DetailsView` muestra descripción y una galería horizontal de imágenes.
7. El botón `ButtonGlow` lleva a `Discoview`, una vista de tipo discografía/descubrimiento.

## Modelo de datos

El archivo `lib/model/datas.dart` contiene la lógica de información principal del proyecto. Define la clase `DataInfo`, que encapsula:

- `group`: nombre del grupo
- `position`: índice dentro del listado
- `name`: nombre del integrante
- `iconImage`: asset del ícono
- `description`: descripción de la persona
- `images`: lista de imágenes de su galería

Además, se definen listas globales como:
- `data_bts`
- `data_twice`
- `data_nj`

Estas listas alimentan el carrusel y las pantallas de detalle.

## Dependencias principales

Revisando `pubspec.yaml`, la aplicación usa principalmente:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_swiper_plus: 2.0.4
  cupertino_icons: ^1.0.2
```

### Paquetes relevantes

- `flutter_swiper_plus`
  - permite crear el carrusel tipo stack con páginas deslizables y paginación.
- `cupertino_icons`
  - aporta iconografía del estilo iOS para la interfaz.
- `flutter_lints`
  - activa recomendaciones de calidad y estilo de código.

## Configuración de Flutter

El proyecto usa:

```yaml
environment:
  sdk: '>=3.1.0 <4.0.0'
```

Esto indica que está pensado para SDKs de Flutter 3.1 o superiores y compatible con la versión 4.0 del Dart como límite máximo.

## Requisitos previos

Antes de ejecutar la app, asegúrate de tener instalado:

- Flutter SDK 3.1+
- Dart SDK
- Android Studio o Xcode según el sistema operativo
- Un dispositivo emulado o físico

## Cómo ejecutar la aplicación

Desde la raíz del proyecto, ejecuta:

```bash
flutter pub get
flutter run
```

Si deseas correrla en un dispositivo específico:

```bash
flutter devices
flutter run -d <device_id>
```

Para compilar una versión de release:

```bash
flutter build apk
# o
flutter build ios
```

## Ejecutar en un entorno local

1. Clona el repositorio.
2. Accede a la carpeta del proyecto.
3. Instala las dependencias con `flutter pub get`.
4. Selecciona un simulador o dispositivo.
5. Ejecuta `flutter run`.

## Observaciones del proyecto

Este repositorio refleja un prototipo visual y de UI de una app temática K-pop, con foco en diseño gráfico, animación y navegación. El código está bien segmentado para ser ampliado con:

- más grupos y artistas
- más información por miembro
- integración con backend o API
- almacenamiento persistente
- soporte a autenticación o favoritos

## Estado del proyecto

El proyecto está en una etapa funcional de prototipo de interfaz, con diseño estilizado y navegación básica implementada. Es una base sólida para continuar con un desarrollo más completo de contenido, lógica empresarial y experiencia de usuario.

## Licencia

El proyecto no define una licencia específica en `pubspec.yaml` ni en el repositorio actual, por lo que se recomienda revisar si se requiere un tipo de licencia antes de distribuirlo o reutilizarlo en producción.

---

Bangtang demuestra cómo combinar Flutter, diseño visual atractivo y navegación de pantalla simple para crear una experiencia de descubrimiento de contenido K-pop con un enfoque premium y moderno.
