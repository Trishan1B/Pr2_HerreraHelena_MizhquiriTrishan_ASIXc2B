<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Llibre de Receptes</title>
                <style>
                    /* Estilos CSS para la página */
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 20px;
                        color: #333;
                    }
                    .recepta {
                        background: #fff;
                        border: 1px solid #ddd;
                        padding: 15px;
                        margin: 10px 0;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    }
                    .nom {
                        font-size: 24px;
                        font-weight: bold;
                        color: #333;
                    }
                    .temps {
                        font-size: 14px;
                        color: #666;
                        margin-top: 10px;
                    }
                    .ingredients, .passos {
                        margin-top: 20px;
                    }
                    .ingredients ul, .passos ol {
                        padding-left: 20px;
                    }
                    .ingredients li, .passos li {
                        margin-bottom: 5px;
                    }
                </style>
            </head>
            <body>
                <h1>Llibre de Receptes</h1>
                <!-- Iterar sobre cada recepta -->
                <xsl:for-each select="receptes/recepta">
                    <div class="recepta">
                        <!-- Nombre de la recepta -->
                        <div class="nom">
                            <xsl:value-of select="nom" />
                        </div>
                        
                        <!-- Información de tiempos y dificultad -->
                        <div class="temps">
                            Temps de preparació: <xsl:value-of select="temps/preparació" /> | 
                            Temps de cocció: <xsl:value-of select="temps/coccio" /> | 
                            Dificultat: <xsl:value-of select="temps/dificultat" />
                        </div>
                        
                        <!-- Lista de ingredientes -->
                        <div class="ingredients">
                            <b>Ingredients:</b>
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
                            <b>Passos:</b>
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
