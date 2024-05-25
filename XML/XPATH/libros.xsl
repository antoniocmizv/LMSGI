<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
 <head>
 <title>Tabla ordenada de libros</title>
 <style>
  body {background-color:#FAFAFA}
  h1 {text-align:center}
  table {align:center; border:2px solid black}
  tr#cabecera {background-color:#FFFF00}
  td.centro {text-align:center}
</style >
 </head>
 <xsl:apply-templates select="biblioteca" />
 </html>
</xsl:template>
<xsl:template match="biblioteca">
 <body>
 <h1>Listado de libros ordenados por número de páginas.</h1>
 <table>
 <tr id ="cabecera">
 <th>Titulo</th>
 <th>Autor</th>
 <th>Editorial</th>
 <th>Paginas</th>
 <th>Precio</th>
 <th>Prestado</th>
 </tr>
 <xsl:for-each select="libro">
<xsl:sort select="paginas" order="ascending"></xsl:sort>
 <tr>
 <td><xsl:value-of select="titulo"/></td>
 <td><xsl:value-of select="editorial"/></td>
 <td><xsl:value-of select="paginas"/></td>
 <td><xsl:value-of select="precio"/></td>
 <td class ="centro">
 <xsl:if test="@prestado='SI'">
 <strong style="color:#00FF00;"> <xsl:value-of select="@prestado"/></strong>
 </xsl:if>
 <xsl:if test="@prestado='NO'">
 <strong style="color:#FF0000;"><xsl:value-of select="@prestado"/></strong >
 </xsl:if>
 </td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
</xsl:template>
</xsl:stylesheet>
