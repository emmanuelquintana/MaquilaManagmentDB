
# Proyecto de Gestión de Producción y Logística

Este repositorio contiene los scripts SQL necesarios para la creación y gestión de las tablas y datos para un sistema de producción y logística. A continuación, se detallan las instrucciones para desplegar la base de datos y una descripción de cada script incluido.

## Tabla de Contenidos

1. [Requisitos](#requisitos)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Instrucciones de Despliegue](#instrucciones-de-despliegue)
4. [Descripción de los Scripts](#descripci%C3%B3n-de-los-scripts)
5. [Contribuir](#contribuir)
6. [Licencia](#licencia)

## Requisitos

* PostgreSQL 13 o superior
* Un entorno de línea de comandos

## Estructura del Proyecto

<pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copiar código</button></span></div></div><div class="overflow-y-auto p-4 text-left undefined" dir="ltr"><code class="!whitespace-pre hljs">├── README.md
├── ddl.sql
└── dml.sql
</code></div></div></pre>

* `README.md`: Este archivo de documentación.
* `ddl.sql`: Contiene los scripts SQL para la creación de tablas y la definición de llaves foráneas.
* `dml.sql`: Contiene los scripts SQL para la inserción de datos en las tablas de catálogos.

## Instrucciones de Despliegue

Sigue estos pasos para desplegar la base de datos:

1. Clona este repositorio en tu máquina local:
   <pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>bash</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copiar código</button></span></div></div><div class="overflow-y-auto p-4 text-left undefined" dir="ltr"><code class="!whitespace-pre hljs language-bash">git clone https://github.com/tu-usuario/nombre-repositorio.git
   cd nombre-repositorio
   </code></div></div></pre>
2. Conéctate a tu base de datos PostgreSQL:
   <pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>bash</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copiar código</button></span></div></div><div class="overflow-y-auto p-4 text-left undefined" dir="ltr"><code class="!whitespace-pre hljs language-bash">psql -U tu-usuario -d tu-base-datos
   </code></div></div></pre>
3. Ejecuta el script `ddl.sql` para crear las tablas y definir las llaves foráneas:
   <pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>sql</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copiar código</button></span></div></div><div class="overflow-y-auto p-4 text-left undefined" dir="ltr"><code class="!whitespace-pre hljs language-sql">\i ddl.sql
   </code></div></div></pre>
4. Ejecuta el script `dml.sql` para insertar los datos iniciales en las tablas de catálogos:
   <pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>sql</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copiar código</button></span></div></div><div class="overflow-y-auto p-4 text-left undefined" dir="ltr"><code class="!whitespace-pre hljs language-sql">\i dml.sql
   </code></div></div></pre>

## Descripción de los Scripts

### ddl.sql

Este script contiene las definiciones de las tablas necesarias para el sistema, así como las llaves foráneas para mantener la integridad referencial. Las tablas incluidas son:

* `Clientes`: Almacena la información de los clientes.
* `OrdenesCompra`: Almacena las órdenes de compra realizadas por los clientes.
* `Cortes`: Almacena información sobre los cortes de tela.
* `Inventario`: Almacena el inventario de productos.
* `OrdenesEntradaSalida`: Almacena las órdenes de entrada y salida de productos.
* `Usuarios`: Almacena la información de los usuarios del sistema.
* `Maquiladores`: Almacena la información de los maquiladores.
* `Productos`: Almacena la información de los productos.
* `CatalogoEstatusCliente`, `CatalogoEstatusOrdenCompra`, `CatalogoEstatusCorte`, `CatalogoEstatusInventario`, `CatalogoEstatusOrdenEntradaSalida`, `CatalogoEstatusUsuario`, `CatalogoEstatusMaquilador`, `CatalogoEstatusProducto`, `CatalogoTiposUsuario`, `CatalogoTallas`, `CatalogoColores`: Tablas de catálogos para los diferentes estados y tipos utilizados en el sistema.

### dml.sql

Este script inserta datos iniciales en las tablas de catálogos creadas en el script `ddl.sql`. Estos datos incluyen descripciones para los estados de clientes, órdenes de compra, cortes, inventarios, usuarios, maquiladores, productos, tipos de usuario, tallas y colores.

## Contribuir

¡Gracias por tu interés en contribuir! Aquí tienes algunas formas de hacerlo:

1. **Reportar Errores** : Si encuentras un error, por favor crea un issue.
2. **Solicitudes de Extracción** : Si deseas añadir o mejorar algo, por favor envía una solicitud de extracción.
3. **Comentarios y Sugerencias** : Siempre estamos abiertos a comentarios y sugerencias para mejorar el proyecto.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE]() para más detalles.

---

¡Gracias por utilizar nuestro sistema de gestión de producción y logística! Si tienes alguna pregunta o problema, no dudes en abrir un issue o contactarnos directamente.
