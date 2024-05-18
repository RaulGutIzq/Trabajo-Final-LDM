<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:text>DatosDelCertificador/Fecha;IdentificacionEdificio/Direccion;IdentificacionEdificio/Municipio;IdentificacionEdificio/CodigoPostal;IdentificacionEdificio/Provincia;IdentificacionEdificio/ComunidadAutonoma;IdentificacionEdificio/ZonaClimatica;IdentificacionEdificio/AnoConstruccion;IdentificacionEdificio/NormativaVigente;IdentificacionEdificio/ReferenciaCatastral;IdentificacionEdificio/TipoDeEdificio;IdentificacionEdificio/Procedimiento;IdentificacionEdificio/AlcanceInformacionXML;DatosGeneralesyGeometria/SuperficieHabitable;DatosGeneralesyGeometria/Compacidad;DatosGeneralesyGeometria/PorcentajeSuperficieHabitableCalefactada;DatosGeneralesyGeometria/PorcentajeSuperficieHabitableRefrigerada;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/N;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/NE;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/E;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/SE;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/S;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/SO;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/O;DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/NO;DatosGeneralesyGeometria/DemandaDiariaACS;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/Nombre;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/Tipo;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/PotenciaNominal;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/RendimientoEstacional;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/VectorEnergetico;InstalacionesTermicas/GeneradoresDeCalefaccion/Generador/0/ModoDeObtencion;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/Nombre;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/Tipo;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/PotenciaNominal;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/RendimientoEstacional;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/VectorEnergetico;InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador/0/ModoDeObtencion;InstalacionesTermicas/InstalacionesACS/Instalacion/Nombre;InstalacionesTermicas/InstalacionesACS/Instalacion/Tipo;InstalacionesTermicas/InstalacionesACS/Instalacion/PotenciaNominal;InstalacionesTermicas/InstalacionesACS/Instalacion/RendimientoEstacional;InstalacionesTermicas/InstalacionesACS/Instalacion/VectorEnergetico;InstalacionesTermicas/InstalacionesACS/Instalacion/ModoDeObtencion;InstalacionesIluminacion/PotenciaTotalInstalada;EnergiasRenovables/Termica/Sistema/Nombre;EnergiasRenovables/Termica/Sistema/ConsumoFinalCalefaccion;EnergiasRenovables/Termica/Sistema/ConsumoFinalRefrigeracion;EnergiasRenovables/Termica/Sistema/ConsumoFinalACS;EnergiasRenovables/Termica/Sistema/DemandaACS;EnergiasRenovables/Electrica/Sistema/Nombre;EnergiasRenovables/Electrica/Sistema/EnergiaGeneradaAutoconsumida;EnergiasRenovables/ReduccionGlobalEmisionesCO2;Demanda/EdificioObjeto/Global;Demanda/EdificioObjeto/Calefaccion;Demanda/EdificioObjeto/Refrigeracion;Demanda/EdificioObjeto/ACS;Consumo/EnergiaFinalVectores/GasNatural/Global;Consumo/EnergiaFinalVectores/GasNatural/Calefaccion;Consumo/EnergiaFinalVectores/GasNatural/Refrigeracion;Consumo/EnergiaFinalVectores/GasNatural/CS;Consumo/EnergiaFinalVectores/GasNatural/Iluminacion;Consumo/EnergiaFinalVectores/GasoleoC/Global;Consumo/EnergiaFinalVectores/GasoleoC/Calefaccion;Consumo/EnergiaFinalVectores/GasoleoC/Refrigeracion;Consumo/EnergiaFinalVectores/GasoleoC/CS;Consumo/EnergiaFinalVectores/GasoleoC/Iluminacion;Consumo/EnergiaFinalVectores/GLP/Global;Consumo/EnergiaFinalVectores/GLP/Calefaccion;Consumo/EnergiaFinalVectores/GLP/Refrigeracion;Consumo/EnergiaFinalVectores/GLP/CS;Consumo/EnergiaFinalVectores/GLP/Iluminacion;Consumo/EnergiaFinalVectores/Carbon/Global;Consumo/EnergiaFinalVectores/Carbon/Calefaccion;Consumo/EnergiaFinalVectores/Carbon/Refrigeracion;Consumo/EnergiaFinalVectores/Carbon/CS;Consumo/EnergiaFinalVectores/Carbon/Iluminacion;Consumo/EnergiaFinalVectores/BiomasaPellet/Global;Consumo/EnergiaFinalVectores/BiomasaPellet/Calefaccion;Consumo/EnergiaFinalVectores/BiomasaPellet/Refrigeracion;Consumo/EnergiaFinalVectores/BiomasaPellet/CS;Consumo/EnergiaFinalVectores/BiomasaPellet/Iluminacion;Consumo/EnergiaFinalVectores/BiomasaOtros/Global;Consumo/EnergiaFinalVectores/BiomasaOtros/Calefaccion;Consumo/EnergiaFinalVectores/BiomasaOtros/Refrigeracion;Consumo/EnergiaFinalVectores/BiomasaOtros/CS;Consumo/EnergiaFinalVectores/BiomasaOtros/Iluminacion;Consumo/EnergiaFinalVectores/ElectricidadPeninsular/Global;Consumo/EnergiaFinalVectores/ElectricidadPeninsular/Calefaccion;Consumo/EnergiaFinalVectores/ElectricidadPeninsular/Refrigeracion;Consumo/EnergiaFinalVectores/ElectricidadPeninsular/CS;Consumo/EnergiaFinalVectores/ElectricidadPeninsular/Iluminacion;Consumo/EnergiaFinalVectores/ElecctricidadBaleares/Global;Consumo/EnergiaFinalVectores/ElecctricidadBaleares/Calefaccion;Consumo/EnergiaFinalVectores/ElecctricidadBaleares/Refrigeracion;Consumo/EnergiaFinalVectores/ElecctricidadBaleares/CS;Consumo/EnergiaFinalVectores/ElecctricidadBaleares/Iluminacion;Consumo/EnergiaFinalVectores/ElecctricidadCanarias/Global;Consumo/EnergiaFinalVectores/ElecctricidadCanarias/Calefaccion;Consumo/EnergiaFinalVectores/ElecctricidadCanarias/Refrigeracion;Consumo/EnergiaFinalVectores/ElecctricidadCanarias/CS;Consumo/EnergiaFinalVectores/ElecctricidadCanarias/Iluminacion;Consumo/EnergiaFinalVectores/ElecctricidadCeutayMelilla/Global;Consumo/EnergiaFinalVectores/ElecctricidadCeutayMelilla/Calefaccion;Consumo/EnergiaFinalVectores/ElecctricidadCeutayMelilla/Refrigeracion;Consumo/EnergiaFinalVectores/ElecctricidadCeutayMelilla/CS;Consumo/EnergiaFinalVectores/ElecctricidadCeutayMelilla/Iluminacion;Consumo/EnergiaFinalVectores/Biocarburante/Global;Consumo/EnergiaFinalVectores/Biocarburante/Calefaccion;Consumo/EnergiaFinalVectores/Biocarburante/Refrigeracion;Consumo/EnergiaFinalVectores/Biocarburante/CS;Consumo/EnergiaFinalVectores/Biocarburante/Iluminacion;Consumo/EnergiaPrimariaNoRenovable/Global;Consumo/EnergiaPrimariaNoRenovable/Calefaccion;Consumo/EnergiaPrimariaNoRenovable/Refrigeracion;Consumo/EnergiaPrimariaNoRenovable/CS;Consumo/EnergiaPrimariaNoRenovable/Iluminacion;EmisionesCO2/Global;EmisionesCO2/Calefaccion;EmisionesCO2/Refrigeracion;EmisionesCO2/CS;EmisionesCO2/Iluminacion&#10;</xsl:text>
        <xsl:apply-templates select="//DatosEnergeticosDelEdificio"/>
    </xsl:template>

    <xsl:template match="DatosEnergeticosDelEdificio">
        <xsl:value-of select="DatosDelCertificador/Fecha"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/Direccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/Municipio"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/CodigoPostal"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/Provincia"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/ComunidadAutonoma"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/ZonaClimatica"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/AnoConstruccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/NormativaVigente"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/ReferenciaCatastral"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/TipoDeEdificio"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/Procedimiento"/><xsl:text>;</xsl:text>
        <xsl:value-of select="IdentificacionEdificio/AlcanceInformacionXML"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/SuperficieHabitable"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/Compacidad"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieHabitableCalefactada"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieHabitableRefrigerada"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/N"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/NE"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/E"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/SE"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/S"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/SO"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/O"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/PorcentajeSuperficieAcristalada/NO"/><xsl:text>;</xsl:text>
        <xsl:value-of select="DatosGeneralesyGeometria/DemandaDiariaACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/Nombre"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/Tipo"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/PotenciaNominal"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/RendimientoEstacional"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/VectorEnergetico"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeCalefaccion/Generador[1]/ModoDeObtencion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/Nombre"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/Tipo"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/PotenciaNominal"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/RendimientoEstacional"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/VectorEnergetico"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/GeneradoresDeRefrigeracion/Generador[1]/ModoDeObtencion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/Nombre"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/Tipo"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/PotenciaNominal"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/RendimientoEstacional"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/VectorEnergetico"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesTermicas/InstalacionesACS/Instalacion/ModoDeObtencion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="InstalacionesIluminacion/PotenciaTotalInstalada"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Termica/Sistema/Nombre"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Termica/Sistema/ConsumoFinalCalefaccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Termica/Sistema/ConsumoFinalRefrigeracion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Termica/Sistema/ConsumoFinalACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Termica/Sistema/DemandaACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Electrica/Sistema/Nombre"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/Electrica/Sistema/EnergiaGeneradaAutoconsumida"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EnergiasRenovables/ReduccionGlobalEmisionesCO2"/><xsl:text>;</xsl:text>
        <xsl:value-of select="Demanda/EdificioObjeto/Global"/><xsl:text>;</xsl:text>
        <xsl:value-of select="Demanda/EdificioObjeto/Calefaccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="Demanda/EdificioObjeto/Refrigeracion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="Demanda/EdificioObjeto/ACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Global"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Calefaccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Refrigeracion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/ACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/CS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasNoRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Iluminacion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Global"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Calefaccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Refrigeracion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/ACS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/CS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="ConsumoEnergetico/EnergiasRenovables/ConsumoFinalEnergiaPrimaria/EdificioObjeto/Iluminacion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EmisionesCO2/Global"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EmisionesCO2/Calefaccion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EmisionesCO2/Refrigeracion"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EmisionesCO2/CS"/><xsl:text>;</xsl:text>
        <xsl:value-of select="EmisionesCO2/Iluminacion"/>
    </xsl:template>
</xsl:stylesheet>
