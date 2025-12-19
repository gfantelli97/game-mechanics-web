<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <head>
                <title>Visitas a mi web</title>
            </head>

            <body>
                <h1>Visitas a mi web</h1>

                <table border="1">
                    <tr>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>Navegador</th>
                        <th>Duracion (s)</th>
                    </tr>

                    <xsl:for-each select="visitas/visita[pagina='Index']">
                        <xsl:sort select="fecha" order="ascending"/>

                        <tr>
                            <xsl:attribute name="style">
                                <xsl:choose>
                                    <xsl:when test="navegador='Chrome'">
                                        background-color: yellow;
                                    </xsl:when>
                                    <xsl:when test="navegador='Firefox'">
                                        background-color: orange;
                                    </xsl:when>
                                    <xsl:when test="navegador='Safari'">
                                        background-color: lightblue;
                                    </xsl:when>
                                    <xsl:when test="navegador='Edge'">
                                        background-color: red;
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:attribute>

                            <td><xsl:value-of select="fecha"/></td>
                            <td><xsl:value-of select="hora"/></td>
                            <td><xsl:value-of select="navegador"/></td>
                            <td><xsl:value-of select="duracion"/></td>
                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>