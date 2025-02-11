# Esteban Work

## Descripción

Esteban Work es una plataforma diseñada para la gestión de ofertas de empleo dentro de una empresa. Solo el usuario **Esteban** puede crear nuevas ofertas de trabajo, mientras que los empleados registrados pueden postular a ellas y administrar su perfil profesional.

## Funcionalidades Principales

### Gestión de Usuarios
- Registro y autenticación de usuarios con **Devise**.
- Perfiles de usuario con información laboral:
  - Nombre de la empresa
  - Cargo actual
  - Años en el cargo
  - Años en la empresa
  - Foto de perfil (**imagen adjunta con Active Storage**)
  - CV (**archivo adjunto con Active Storage**)
- Edición del perfil con actualización de imagen de perfil y CV.

### Gestión de Ofertas de Empleo
- Creación de ofertas de empleo (**solo por Esteban**).
- Visualización de todas las ofertas disponibles.
- Detalles de cada oferta de empleo.

### Postulación a Ofertas
- Los usuarios pueden postular a una oferta de empleo disponible.
- Posibilidad de programar una fecha de postulación.
- Sección donde cada usuario puede ver sus postulaciones hechas.
- Control de postulaciones para evitar duplicaciones.

## Instalación y Configuración

### Clonar el repositorio:
```bash
git clone https://github.com/tuusuario/esteban-work.git
cd esteban-work
```

### Instalar dependencias:
```bash
bundle install
```

### Configurar la base de datos:
```bash
rails db:create db:migrate db:seed
```

### Ejecutar el servidor:
```bash
rails server
```

## Tecnologías Utilizadas
- **Ruby on Rails**: Framework principal.
- **Devise**: Autenticación de usuarios.
- **Active Storage**: Gestión de archivos adjuntos (imágenes de perfil y CVs).
- **Bootstrap**: Diseño responsivo.
- **PostgreSQL**: Base de datos.

## Contribución
Si deseas contribuir, por favor sigue estos pasos:
1. Haz un **fork** del repositorio.
2. Crea una nueva rama:
   ```bash
   git checkout -b feature-nueva-funcionalidad
   ```
3. Realiza los cambios y haz commit:
   ```bash
   git commit -m 'Agrega nueva funcionalidad'
   ```
4. Sube la rama:
   ```bash
   git push origin feature-nueva-funcionalidad
   ```
5. Abre un **Pull Request**.

## Contacto
Si tienes dudas o sugerencias, puedes contactar a **[Tu Nombre o Email]**.
