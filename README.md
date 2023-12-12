# cinemapedia

# Dev

1. Copiar el .env.template y renombrarlo a .env
2. Cambiar lasvariables de entorno (The MovieDB)
3. Cambios en la entidad, hay que ejecutar el comando
```
flutter pub run build_runner build
```


# Prod

Para cambiar el nombre de la aplicacion
```
flutter pub run change_app_package_name:main com.wilmerallende.cinemapedia
```

Para cambiar el icono de la app
```
flutter pub run flutter_launcher_icons
```

Para cambiar el splash screen
```
dart run flutter_native_splash:create
```

Android AAB

```
flutter build appbundle
```