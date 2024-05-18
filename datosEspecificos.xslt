<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <Datos>
        <TotalEdificios><xsl:value-of select="count(/DatosEnergeticos/DatosEnergeticosDelEdificio)"/></TotalEdificios>
            <Demanda>
                <Global><xsl:value-of select="avg(//EdificioObjeto/Global[number(.) = .])"/></Global>
                <Calefaccion><xsl:value-of select="avg(//EdificioObjeto/Calefaccion[number(.) = .])"/></Calefaccion>
                <Refrigeracion><xsl:value-of select="avg(//EdificioObjeto/Refrigeracion[number(.) = .])"/></Refrigeracion>
                <ACS><xsl:value-of select="avg(//EdificioObjeto/ACS[number(.) = .])"/></ACS>
            </Demanda>
            <Consumo>
                <Vectores>
                    <GasNatural>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/GasNatural/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/GasNatural/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/GasNatural/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/GasNatural/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/GasNatural/Iluminacion[number(.) = .])"/></Iluminacion>
                    </GasNatural>
                    <GasoleoC>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/GasoleoC/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/GasoleoC/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/GasoleoC/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/GasoleoC/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/GasoleoC/Iluminacion[number(.) = .])"/></Iluminacion>
                    </GasoleoC>
                    <GLP>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/GLP/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/GLP/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/GLP/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/GLP/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/GLP/Iluminacion[number(.) = .])"/></Iluminacion>
                    </GLP>
                    <Carbon>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/Carbon/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/Carbon/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/Carbon/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/Carbon/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/Carbon/Iluminacion[number(.) = .])"/></Iluminacion>
                    </Carbon>
                    <BiomasaPellet>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaPellet/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaPellet/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaPellet/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaPellet/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaPellet/Iluminacion[number(.) = .])"/></Iluminacion>
                    </BiomasaPellet>
                    <BiomasaOtros>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaOtros/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaOtros/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaOtros/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaOtros/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/BiomasaOtros/Iluminacion[number(.) = .])"/></Iluminacion>
                    </BiomasaOtros>
                    <ElectricidadPeninsular>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/ElectricidadPeninsular/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/ElectricidadPeninsular/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/ElectricidadPeninsular/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/ElectricidadPeninsular/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/ElectricidadPeninsular/Iluminacion[number(.) = .])"/></Iluminacion>
                    </ElectricidadPeninsular>
                    <ElectricidadBaleares>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadBaleares/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadBaleares/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadBaleares/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadBaleares/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadBaleares/Iluminacion[number(.) = .])"/></Iluminacion>
                    </ElectricidadBaleares>
                    <ElectricidadCanarias>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCanarias/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCanarias/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCanarias/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCanarias/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCanarias/Iluminacion[number(.) = .])"/></Iluminacion>
                    </ElectricidadCanarias>
                    <ElectricidadCeutayMelilla>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCeutayMelilla/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCeutayMelilla/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCeutayMelilla/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCeutayMelilla/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/ElecctricidadCeutayMelilla/Iluminacion[number(.) = .])"/></Iluminacion>
                    </ElectricidadCeutayMelilla>
                    <Biocarburante>
                        <Global><xsl:value-of select="avg(//EnergiaFinalVectores/Biocarburante/Global[number(.) = .])"/></Global>
                        <Calefaccion><xsl:value-of select="avg(//EnergiaFinalVectores/Biocarburante/Calefaccion[number(.) = .])"/></Calefaccion>
                        <Refrigeracion><xsl:value-of select="avg(//EnergiaFinalVectores/Biocarburante/Refrigeracion[number(.) = .])"/></Refrigeracion>
                        <ACS><xsl:value-of select="avg(//EnergiaFinalVectores/Biocarburante/CS[number(.) = .])"/></ACS>
                        <Iluminacion><xsl:value-of select="avg(//EnergiaFinalVectores/Biocarburante/Iluminacion[number(.) = .])"/></Iluminacion>
                    </Biocarburante>
                </Vectores>
                <TotalConsumo><xsl:value-of select="avg(//EnergiaFinalVectores/*/Global[number(.) = .])"/></TotalConsumo>
                <TotalNoRenovable><xsl:value-of select="avg(//Consumo/EnergiaPrimariaNoRenovable/Global[number(.) = .])"/></TotalNoRenovable>
            </Consumo>
            <EmisionesCO2>
                <Global><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/Global[number(.) = .])"/></Global>
                <Calefaccion><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/Calefaccion[number(.) = .])"/></Calefaccion>
                <Refrigeracion><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/Refrigeracion[number(.) = .])"/></Refrigeracion>
                <ACS><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/ACS[number(.) = .])"/></ACS>
                <Iluminacion><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/Iluminacion[number(.) = .])"/></Iluminacion>
                <ConsumoElectrico><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/ConsumoElectrico[number(.) = .])"/></ConsumoElectrico>
                <ConsumoOtros><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/ConsumoOtros[number(.) = .])"/></ConsumoOtros>
                <TotalConsumoElectrico><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/TotalConsumoElectrico[number(.) = .])"/></TotalConsumoElectrico>
                <TotalConsumoOtros><xsl:value-of select="avg(/DatosEnergeticos/DatosEnergeticosDelEdificio/EmisionesCO2/TotalConsumoOtros[number(.) = .])"/></TotalConsumoOtros>
            </EmisionesCO2>
            <Calificaciones>
                <Demanda>
                    <Calefaccion>
                        <totalCalefaccionA><xsl:value-of select="count(//Demanda/Calefaccion[text()='A'])"/></totalCalefaccionA>
                        <totalCalefaccionB><xsl:value-of select="count(//Demanda/Calefaccion[text()='B'])"/></totalCalefaccionB>
                        <totalCalefaccionC><xsl:value-of select="count(//Demanda/Calefaccion[text()='C'])"/></totalCalefaccionC>
                        <totalCalefaccionD><xsl:value-of select="count(//Demanda/Calefaccion[text()='D'])"/></totalCalefaccionD>
                        <totalCalefaccionE><xsl:value-of select="count(//Demanda/Calefaccion[text()='E'])"/></totalCalefaccionE>
                        <totalCalefaccionF><xsl:value-of select="count(//Demanda/Calefaccion[text()='F'])"/></totalCalefaccionF>
                        <totalCalefaccionG><xsl:value-of select="count(//Demanda/Calefaccion[text()='G'])"/></totalCalefaccionG>
                    </Calefaccion>
                    <Refrigeracion>
                        <totalRefrigeracionA><xsl:value-of select="count(//Demanda/Refrigeracion[text()='A'])"/></totalRefrigeracionA>
                        <totalRefrigeracionB><xsl:value-of select="count(//Demanda/Refrigeracion[text()='B'])"/></totalRefrigeracionB>
                        <totalRefrigeracionC><xsl:value-of select="count(//Demanda/Refrigeracion[text()='C'])"/></totalRefrigeracionC>
                        <totalRefrigeracionD><xsl:value-of select="count(//Demanda/Refrigeracion[text()='D'])"/></totalRefrigeracionD>
                        <totalRefrigeracionE><xsl:value-of select="count(//Demanda/Refrigeracion[text()='E'])"/></totalRefrigeracionE>
                        <totalRefrigeracionF><xsl:value-of select="count(//Demanda/Refrigeracion[text()='F'])"/></totalRefrigeracionF>
                        <totalRefrigeracionG><xsl:value-of select="count(//Demanda/Refrigeracion[text()='G'])"/></totalRefrigeracionG>
                    </Refrigeracion>
                </Demanda>
                <EnergiaPrimariaNoRenovable>
                    <Global>
                        <totalGlobalA><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='A'])"/></totalGlobalA>
                        <totalGlobalB><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='B'])"/></totalGlobalB>
                        <totalGlobalC><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='C'])"/></totalGlobalC>
                        <totalGlobalD><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='D'])"/></totalGlobalD>
                        <totalGlobalE><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='E'])"/></totalGlobalE>
                        <totalGlobalF><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='F'])"/></totalGlobalF>
                        <totalGlobalG><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Global[text()='G'])"/></totalGlobalG>
                    </Global>
                    <Calefaccion>
                        <totalCalefaccionA><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='A'])"/></totalCalefaccionA>
                        <totalCalefaccionB><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='B'])"/></totalCalefaccionB>
                        <totalCalefaccionC><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='C'])"/></totalCalefaccionC>
                        <totalCalefaccionD><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='D'])"/></totalCalefaccionD>
                        <totalCalefaccionE><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='E'])"/></totalCalefaccionE>
                        <totalCalefaccionF><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='F'])"/></totalCalefaccionF>
                        <totalCalefaccionG><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Calefaccion[text()='G'])"/></totalCalefaccionG>
                    </Calefaccion>
                    <Refrigeracion>
                        <totalRefrigeracionA><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='A'])"/></totalRefrigeracionA>
                        <totalRefrigeracionB><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='B'])"/></totalRefrigeracionB>
                        <totalRefrigeracionC><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='C'])"/></totalRefrigeracionC>
                        <totalRefrigeracionD><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='D'])"/></totalRefrigeracionD>
                        <totalRefrigeracionE><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='E'])"/></totalRefrigeracionE>
                        <totalRefrigeracionF><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='F'])"/></totalRefrigeracionF>
                        <totalRefrigeracionG><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Refrigeracion[text()='G'])"/></totalRefrigeracionG>
                    </Refrigeracion>
                    <ACS>
                        <totalACSA><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='A'])"/></totalACSA>
                        <totalACSB><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='B'])"/></totalACSB>
                        <totalACSC><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='C'])"/></totalACSC>
                        <totalACSD><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='D'])"/></totalACSD>
                        <totalACSE><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='E'])"/></totalACSE>
                        <totalACSF><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='F'])"/></totalACSF>
                        <totalACSG><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/ACS[text()='G'])"/></totalACSG>
                    </ACS>
                    <Iluminacion>
                        <totalIluminacionA><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='A'])"/></totalIluminacionA>
                        <totalIluminacionB><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='B'])"/></totalIluminacionB>
                        <totalIluminacionC><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='C'])"/></totalIluminacionC>
                        <totalIluminacionD><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='D'])"/></totalIluminacionD>
                        <totalIluminacionE><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='E'])"/></totalIluminacionE>
                        <totalIluminacionF><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='F'])"/></totalIluminacionF>
                        <totalIluminacionG><xsl:value-of select="count(//EnergiaPrimariaNoRenovable/Iluminacion[text()='G'])"/></totalIluminacionG>
                    </Iluminacion>
                </EnergiaPrimariaNoRenovable>
                <EmisionesCO2>
                    <Global>
                        <totalGlobalA><xsl:value-of select="count(//EmisionesCO2/Global[text()='A'])"/></totalGlobalA>
                        <totalGlobalB><xsl:value-of select="count(//EmisionesCO2/Global[text()='B'])"/></totalGlobalB>
                        <totalGlobalC><xsl:value-of select="count(//EmisionesCO2/Global[text()='C'])"/></totalGlobalC>
                        <totalGlobalD><xsl:value-of select="count(//EmisionesCO2/Global[text()='D'])"/></totalGlobalD>
                        <totalGlobalE><xsl:value-of select="count(//EmisionesCO2/Global[text()='E'])"/></totalGlobalE>
                        <totalGlobalF><xsl:value-of select="count(//EmisionesCO2/Global[text()='F'])"/></totalGlobalF>
                        <totalGlobalG><xsl:value-of select="count(//EmisionesCO2/Global[text()='G'])"/></totalGlobalG>
                    </Global>
                    <Calefaccion>
                        <totalCalefaccionA><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='A'])"/></totalCalefaccionA>
                        <totalCalefaccionB><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='B'])"/></totalCalefaccionB>
                        <totalCalefaccionC><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='C'])"/></totalCalefaccionC>
                        <totalCalefaccionD><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='D'])"/></totalCalefaccionD>
                        <totalCalefaccionE><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='E'])"/></totalCalefaccionE>
                        <totalCalefaccionF><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='F'])"/></totalCalefaccionF>
                        <totalCalefaccionG><xsl:value-of select="count(//EmisionesCO2/Calefaccion[text()='G'])"/></totalCalefaccionG>
                    </Calefaccion>
                    <Refrigeracion>
                        <totalRefrigeracionA><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='A'])"/></totalRefrigeracionA>
                        <totalRefrigeracionB><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='B'])"/></totalRefrigeracionB>
                        <totalRefrigeracionC><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='C'])"/></totalRefrigeracionC>
                        <totalRefrigeracionD><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='D'])"/></totalRefrigeracionD>
                        <totalRefrigeracionE><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='E'])"/></totalRefrigeracionE>
                        <totalRefrigeracionF><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='F'])"/></totalRefrigeracionF>
                        <totalRefrigeracionG><xsl:value-of select="count(//EmisionesCO2/Refrigeracion[text()='G'])"/></totalRefrigeracionG>
                    </Refrigeracion>
                    <ACS>
                        <totalACSA><xsl:value-of select="count(//EmisionesCO2/ACS[text()='A'])"/></totalACSA>
                        <totalACSB><xsl:value-of select="count(//EmisionesCO2/ACS[text()='B'])"/></totalACSB>
                        <totalACSC><xsl:value-of select="count(//EmisionesCO2/ACS[text()='C'])"/></totalACSC>
                        <totalACSD><xsl:value-of select="count(//EmisionesCO2/ACS[text()='D'])"/></totalACSD>
                        <totalACSE><xsl:value-of select="count(//EmisionesCO2/ACS[text()='E'])"/></totalACSE>
                        <totalACSF><xsl:value-of select="count(//EmisionesCO2/ACS[text()='F'])"/></totalACSF>
                        <totalACSG><xsl:value-of select="count(//EmisionesCO2/ACS[text()='G'])"/></totalACSG>
                    </ACS>
                    <Iluminacion>
                        <totalIluminacionA><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='A'])"/></totalIluminacionA>
                        <totalIluminacionB><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='B'])"/></totalIluminacionB>
                        <totalIluminacionC><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='C'])"/></totalIluminacionC>
                        <totalIluminacionD><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='D'])"/></totalIluminacionD>
                        <totalIluminacionE><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='E'])"/></totalIluminacionE>
                        <totalIluminacionF><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='F'])"/></totalIluminacionF>
                        <totalIluminacionG><xsl:value-of select="count(//EmisionesCO2/Iluminacion[text()='G'])"/></totalIluminacionG>
                    </Iluminacion>
                </EmisionesCO2>
            </Calificaciones>
        </Datos>
    </xsl:template>
</xsl:stylesheet>
