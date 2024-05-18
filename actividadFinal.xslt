<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
	<xsl:template match="/">
        <html lang="es">
            <head>
                <title>Datos Energéticos 2022-2024</title>
                <meta charset="utf-8" />
                <meta name="viewport"
                    content="width=device-width, initial-scale=1" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                    crossorigin="anonymous" />
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
                <style>
                    .carousel-control-prev-icon,
                    .carousel-control-next-icon {
                    background-color: black;
                    border-radius: 50%;
                    padding: 10px;
                    }
                </style>
            </head>
            <body style="background-color: #d8e4dc">
                <header>
                    <div class="container-fluid pt-5 text-black">
                        <div class="row">
                            <div class="col text-center">
                                <h1>Datos Energéticos 2022-2024</h1>
                            </div>
                        </div>
                    </div>
                    <hr />
                </header>
                <main>
                    <div class="container pt-5">
                        <h2>Total edificios: <xsl:value-of select="/Datos/TotalEdificios" />
    analizados en Sevilla </h2>
                    </div>
                    <div class="container mt-5">
                        <div id="vectores" class="carousel slide" data-bs-ride="carousel"
                            style="padding: 120px;">
                            <ol class="carousel-indicators">
                                <li data-bs-target="#vectores" data-bs-slide-to="0" class="active"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="1"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="2"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="3"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="4"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="5"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="6"></li>
                                <li data-bs-target="#vectores" data-bs-slide-to="7"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <canvas id="vGasNatural" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vGasoleoC" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vGLP" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vCarbon" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vBiomasaPellet" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vBiomasaOtros" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vElectricidadPeninsular" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vBiocarburante" style="width:70%"></canvas>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#vectores" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Anterior</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#vectores" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Siguiente</span>
                            </button>
                        </div>
                        <h2>Total Energia No Renovable Usada: <xsl:value-of
                                select="round(//TotalNoRenovable)" /> KWh/(m^2 · año) </h2>
                        <hr />
                    </div>
                    <div class="container pt-5 ">
                        <canvas id="EmisionesCO2" style="width:70%"></canvas>
                    </div>
                    <div class="container mt-5">
                        <div id="caliDemandas" class="carousel slide" data-bs-ride="carousel"
                            style="padding: 120px;">
                            <ol class="carousel-indicators">
                                <li data-bs-target="#caliDemandas" data-bs-slide-to="0"
                                    class="active"></li>
                                <li data-bs-target="#caliDemandas" data-bs-slide-to="1"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <canvas id="vCalefaccionDem"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vRefrigeracionDem"></canvas>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#caliDemandas" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Anterior</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#caliDemandas" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Siguiente</span>
                            </button>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div id="caliEPNR" class="carousel slide" data-bs-ride="carousel"
                            style="padding: 120px;">
                            <ol class="carousel-indicators">
                                <li data-bs-target="#caliEPNR" data-bs-slide-to="0" class="active"></li>
                                <li data-bs-target="#caliEPNR" data-bs-slide-to="1"></li>
                                <li data-bs-target="#caliEPNR" data-bs-slide-to="2"></li>
                                <li data-bs-target="#caliEPNR" data-bs-slide-to="3"></li>
                                <li data-bs-target="#caliEPNR" data-bs-slide-to="4"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <canvas id="vGlobalEPNR" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vCalefaccionEPNR" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vRefrigeracionEPNR" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vACSEPNR" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vIluminacionEPNR" style="width:70%"></canvas>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#caliEPNR" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Anterior</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#caliEPNR" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Siguiente</span>
                            </button>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div id="caliCO2" class="carousel slide" data-bs-ride="carousel"
                            style="padding: 120px;">
                            <ol class="carousel-indicators">
                                <li data-bs-target="#caliCO2" data-bs-slide-to="0" class="active"></li>
                                <li data-bs-target="#caliCO2" data-bs-slide-to="1"></li>
                                <li data-bs-target="#caliCO2" data-bs-slide-to="2"></li>
                                <li data-bs-target="#caliCO2" data-bs-slide-to="3"></li>
                                <li data-bs-target="#caliCO2" data-bs-slide-to="4"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <canvas id="vGlobalCO2" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vCalefaccionCO2" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vRefrigeracionCO2" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vACSCO2" style="width:70%"></canvas>
                                </div>
                                <div class="carousel-item">
                                    <canvas id="vIluminacionCO2" style="width:70%"></canvas>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#caliCO2" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Anterior</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#caliCO2" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden" style="color: black;">Siguiente</span>
                            </button>
                        </div>
                    </div>
                </main>
                <script> new Chart("demanda", { type: "bar", data: { labels: ["Global",
    "Calefaccion", "Refrigeracion", "ACS"], datasets: [{ backgroundColor: ["brown", "red", "blue",
    "orange"], data: [ <xsl:value-of select="/Datos/Demanda/Global" />, <xsl:value-of
                        select="/Datos/Demanda/Calefaccion" />, <xsl:value-of
                        select="/Datos/Demanda/Refrigeracion" />, <xsl:value-of
                        select="/Datos/Demanda/ACS" />] }] }, options: { legend: { display: false },
    title: { display: true, text: "Demanda Media en KWh/(m^2 · año)" } } }); <xsl:for-each
                        select="//Vectores/*">
                        <xsl:variable name="energia" select="name()" /> new Chart("v<xsl:value-of
                            select="$energia" />", { type: "bar", data: { labels: ["Global",
    "Calefaccion", "Refrigeracion", "ACS", "Iluminacion"], datasets: [{ backgroundColor: ["brown",
    "red", "blue", "orange", "yellow"], data: [ <xsl:value-of select="Global" />, <xsl:value-of
                            select="Calefaccion" />, <xsl:value-of select="Refrigeracion" />, <xsl:value-of
                            select="ACS" />, <xsl:value-of select="Iluminacion" /> ] }] }, options:
    { legend: { display: false }, title: { display: true, text: "Gasto Medio en<xsl:value-of
                            select='$energia' /> en KWh/(m^2 · año)" } } }); </xsl:for-each> new
    Chart("EmisionesCO2", { type: "bar", data: { labels: [ <xsl:for-each
                        select="/Datos/EmisionesCO2/*[position() &lt; last() - 1]"> "<xsl:value-of
                            select='name()' />"<xsl:if test="position() != last()">, </xsl:if>
                    </xsl:for-each>
    ], datasets: [{ backgroundColor: ["brown", "red", "blue", "orange", "yellow", "green",
    "purple"], data: [ <xsl:for-each select="/Datos/EmisionesCO2/*[position() &lt; last() - 1]">
                        <xsl:value-of select="." /><xsl:if test="position() != last()">, </xsl:if>
                    </xsl:for-each>
    ] }] }, options: { legend: { display: false }, title: { display: true, text: "Emisiones de CO2 en KWh/(m^2 · año)" } } }); <xsl:for-each select="//Calificaciones/Demanda/*">
                        <xsl:variable name="tipoDemanda" select="name()" /> new Chart("v<xsl:value-of
                            select='$tipoDemanda' />Dem", { type: "bar", data: { labels: [ <xsl:for-each
                            select="*"> "<xsl:value-of select='name()' />"<xsl:if
                                test="position() != last()">, </xsl:if>
                        </xsl:for-each>
    ], datasets: [{ backgroundColor: ["brown", "red", "blue", "orange", "yellow", "green",
    "purple"], data: [ <xsl:for-each select="*">
                            <xsl:value-of select="." /><xsl:if test="position() != last()">, </xsl:if>
                        </xsl:for-each>
    ] }] }, options: { legend: { display: false }, title: { display: true, text: "Calificaciones Demanda totales de <xsl:value-of select='$tipoDemanda' />" } } }); </xsl:for-each>
    <xsl:for-each select="//Calificaciones/EnergiaPrimariaNoRenovable/*">
    <xsl:variable name="tipoEPNR" select="name()" /> new Chart("v<xsl:value-of
    select='$tipoEPNR' />EPNR", { type: "bar", data: { labels: [ <xsl:for-each
    select="*"> "<xsl:value-of select='name()' />"<xsl:if
        test="position() != last()">, </xsl:if>
</xsl:for-each>
], datasets: [{ backgroundColor: ["brown", "red", "blue", "orange", "yellow", "green",
"purple"], data: [ <xsl:for-each select="*">
    <xsl:value-of select="." /><xsl:if test="position() != last()">, </xsl:if>
</xsl:for-each>
] }] }, options: { legend: { display: false }, title: { display: true, text: "Calificaciones Energia Primaria No Renovables totales de <xsl:value-of select='$tipoEPNR' />" } } }); </xsl:for-each>
<xsl:for-each select="//Calificaciones/EmisionesCO2/*">
    <xsl:variable name="tipoCO2" select="name()" /> new Chart("v<xsl:value-of
    select='$tipoCO2' />CO2", { type: "bar", data: { labels: [ <xsl:for-each
    select="*"> "<xsl:value-of select='name()' />"<xsl:if
        test="position() != last()">, </xsl:if>
</xsl:for-each>
], datasets: [{ backgroundColor: ["brown", "red", "blue", "orange", "yellow", "green",
"purple"], data: [ <xsl:for-each select="*">
    <xsl:value-of select="." /><xsl:if test="position() != last()">, </xsl:if>
</xsl:for-each>
] }] }, options: { legend: { display: false }, title: { display: true, text: "Calificaciones por Emisiones CO2 totales de <xsl:value-of select='$tipoCO2' />" } } }); </xsl:for-each>
                </script>
                <script
                    src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                    crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>