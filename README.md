# CV Responsivo - Álvaro López García

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Stacked](https://img.shields.io/badge/Stacked-%231C2834.svg?style=for-the-badge)

Aplicación de Currículum Vitae interactiva y responsiva desarrollada con Flutter. Diseñada para mostrar información profesional de manera clara y atractiva en múltiples plataformas (web, móvil, escritorio).

## ✨ Características

* **Diseño Responsivo**: Se adapta a diferentes tamaños de pantalla (móvil, tablet, escritorio).
* **Multiplataforma**: Funciona en Android, iOS, Web, Windows, macOS y Linux gracias a Flutter.
* **Arquitectura Stacked**: Desarrollo limpio y mantenible utilizando el framework Stacked MVVM.
* **Internacionalización (i18n)**: Soporte inicial para Español e Inglés. Fácilmente extensible a otros idiomas.
* **Navegación por Pestañas**: Acceso rápido a las diferentes secciones:
    * ℹ️ **Sobre mí**: Una breve introducción personal y profesional.
    * 💼 **Experiencia**: Historial laboral detallado.
    * 🎓 **Educación**: Formación académica relevante.
    * 🛠️ **Habilidades**: Tecnologías y competencias destacadas.
* **Interactividad**: Enlaces directos a perfiles sociales (LinkedIn, GitHub), email y teléfono.
* **Actualizaciones en la App (Android)**: Implementación básica para comprobar y realizar actualizaciones dentro de la aplicación (`in_app_update`).

## 🚀 Tecnologías Utilizadas

* **Flutter**: Framework principal para el desarrollo de la interfaz de usuario multiplataforma.
* **Dart**: Lenguaje de programación.
* **Stacked**: Arquitectura MVVM para una estructura organizada (servicios, vistas, viewmodels).
* **stacked\_services**: Para navegación, diálogos y bottom sheets.
* **url\_launcher**: Para abrir enlaces externos (web, email, teléfono).
* **font\_awesome\_flutter**: Iconos adicionales.
* **simple\_animation\_progress\_bar**: Barras de progreso animadas para la sección de habilidades.
* **flutter\_svg**: Para mostrar iconos en formato SVG.
* **flutter\_localizations / intl**: Para el soporte multiidioma.
* **Provider**: Para la gestión del estado del idioma.

## ⚙️ Instalación y Ejecución

1.  **Clona el repositorio:**
    ```bash
    git clone [https://github.com/alvarolg2/cv_responsive.git](https://github.com/alvarolg2/cv_responsive.git)
    cd cv_responsive
    ```
2.  **Asegúrate de tener Flutter instalado.** Si no, sigue la [guía oficial de instalación de Flutter](https://flutter.dev/docs/get-started/install).
3.  **Obtén las dependencias:**
    ```bash
    flutter pub get
    ```
4.  **Genera los archivos de localización:**
    ```bash
    flutter gen-l10n
    ```
5.  **Ejecuta la aplicación** en el dispositivo o plataforma deseada:
    ```bash
    flutter run # Selecciona el dispositivo/plataforma
    ```
    O para una plataforma específica:
    ```bash
    flutter run -d chrome # Para web
    flutter run -d windows # Para Windows
    flutter run -d macos   # Para macOS
    flutter run -d linux   # Para Linux
    # Para Android/iOS, asegúrate de tener un emulador/simulador corriendo o un dispositivo conectado.
    ```

## 🌐 Internacionalización (i18n)

El proyecto utiliza `flutter_localizations` y el paquete `intl` para el soporte multiidioma.

* Los textos se encuentran en la carpeta `lib/l10n/` en archivos `.arb` (`en.arb` para inglés, `es.arb` para español).
* Para añadir o modificar textos, edita los archivos `.arb` correspondientes.
* Después de modificar los archivos `.arb`, ejecuta el siguiente comando para generar el código Dart necesario:
    ```bash
    flutter gen-l10n
    ```

## 🖼️ Vistas (Estructura)

La aplicación se organiza en las siguientes vistas principales dentro de `lib/ui/views/`:

* `startup/`: Vista inicial de carga.
* `home/`: Vista principal que contiene la estructura con pestañas.
* `about_me/`: Sección "Sobre mí".
* `experience/`: Sección "Experiencia".
* `education/`: Sección "Educación".
* `skill/`: Sección "Habilidades".

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún error o tienes alguna sugerencia, por favor abre un *issue* o envía un *pull request*.

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles (Nota: el archivo LICENSE no fue proporcionado, considera añadir uno).
