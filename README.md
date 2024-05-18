# Trabajo Final LDM - Raúl Gutiérrez Izquierdo

En este trabajo he analizado los datos proporcionados por las distintas competencias de la Junta de Andalucía.
El objetivo de este trabajo es visualizar los datos proporcionado de una manera clara y sencilla, y de una  forma accesible para todo el mundo.
# Primer Paso - Copia de Seguridad
Para garantizar que los datos que tengo no serán cambiados, es de suma importancia hacer una copia de seguridad de los datos, para ello, decidí hacer tanto copias de seguridad tradicionales, como una exportación a CSV para que se puedan visualizar en Excel y poder corroborar los datos.
Para ello, he transformado los datos, el código está guardado en el archivo `XMLaCSV.xslt`, y en él se recorren los elementos con los elementos `value-of` y se le añade el carácter separador **`;`**, esto es imprescindible, pues los datos tienen la el carácter `,`, por lo que nos arriesgaríamos a perder los datos. Además, si queremos transformar de vuelta los datos desde el CSV a el XML, podemos validar que la transformación fue correcta usando el XSD `validacion.xsd`, donde se usa regex donde es necesario para validar que los datos no están corruptos.
# Segundo Paso - Procesar los Datos
Debido al gran volumen de datos (150.000+ edificios), los datos han tenido que ser preprocesados y exportados a un XML intermedio, pues si no sería imposible su correcta visualización. La transformación guarda la media de los valores numéricos y cuenta las calificaciones energéticas que ha tenido cada edificio.

> Nota: Los datos originales iban a ser de toda Andalucía, pero los valores numéricos eran tan grandes, que los números se volvían negativos.


Para esta transformación he usado el archivo `datosEspecificos.xslt` y el procesador [Saxon HE 10.8](https://sourceforge.net/projects/saxon/)
El proceso tardó unos 15 minutos y ocupó aproximadamente 12G de RAM.
# Tercer Paso - Visualizar los Datos
Con unos datos con un tamaño mucho menor (10KB frente a 1,5GB), me dedico a visualizar los datos transformando este último XML en un documento HTML.
Este documento usará [Bootstrap 5.0](https://getbootstrap.com/docs/5.0/getting-started/introduction/) para el estilo de la página y [Chart.js](https://www.chartjs.org/) para hacer los gráficos.
En este documento se han usado los elementos XSLT `if`, `for-each`, `variable` y por supuesto `value-of`.
# Cuarto Paso - Usabilidad y Accesibilidad
Comprometido con la accesibilidad de los datos, la página tiene un fondo claro y agradable, mientras que los datos tienen un alto contraste. La página es responsive por lo que puede ser visualizada en diferentes dispositivos.
Ayudándome de las herramientas [WAVE](https://chromewebstore.google.com/detail/wave-evaluation-tool/jbbplnpkjmmeebjpijfedlgcdilocofh) y [Usability Hike](https://chromewebstore.google.com/detail/usability-hike-find-usabi/ndlpokknholbnmpamepplidpkfnmplgf), he adaptado mi proyecto:

![WAVE - Resumen](https://github.com/RaulGutIzq/Trabajo-Final-LDM/blob/main/imagenes/wave.png?raw=true)![Usability Hike - Resumen](https://github.com/RaulGutIzq/Trabajo-Final-LDM/blob/main/imagenes/usabhike.png?raw=true)

Además, con la herramienta [Skimmet](https://chromewebstore.google.com/detail/skimmet/dffeegodhdokhgllonnnbgglbadcpkfd), puedo comprobar que personas con problemas visuales puedan ver bien mi página:
![Visualizacion en escala de grises y desenfocado con Skimmet](https://github.com/RaulGutIzq/Trabajo-Final-LDM/blob/main/imagenes/skimmet.png?raw=true)
