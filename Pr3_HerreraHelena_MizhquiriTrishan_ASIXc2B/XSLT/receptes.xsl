<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Llibre de Receptes</title>
                <link rel="stylesheet" type="text/css" href="/Pr3_HerreraHelena_MizhquiriTrishan_ASIXc2B/XSLT/estil.css" />
            </head>
            <body>
                <h1>Llibre de Receptes</h1>
                <!-- Iterar sobre cada recepta -->
                <xsl:for-each select="receptes/recepta">
                    <div class="recepta">
                        <!-- Nombre de la recepta -->
                        <div class="nom">
                            <h2><xsl:value-of select="nom" /></h2>
                        </div>
                        
                        <!-- Información de tiempos y dificultad -->
                        <div class="temps">
                            Temps de preparació: <xsl:value-of select="temps/preparació" /> | 
                            Temps de cocció: <xsl:value-of select="temps/coccio" /> | 
                            Dificultat: <xsl:value-of select="temps/dificultat" />
                        </div>
                        
                        <!-- Lista de ingredientes -->
                        <div class="ingredients">
                            <h3><b>Ingredients:</b></h3>
                            <ul>
                                <xsl:for-each select="ingredients/ingredient">
                                    <li>
                                        <xsl:value-of select="nom" /> - 
                                        <xsl:value-of select="quantitat" /> 
                                        <xsl:value-of select="mesura" />
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                        
                        <!-- Pasos para la preparación -->
                        <div class="passos">
                            <h3><b>Passos:</b></h3>
                            <ol>
                                <xsl:for-each select="passos/pas">
                                    <li><xsl:value-of select="." /></li>
                                </xsl:for-each>
                            </ol>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>