<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Currículum de <xsl:value-of select="curriculum/datosPersonales/nombre" /> <xsl:value-of
                        select="curriculum/datosPersonales/apellidos" /></title>
                <link rel="stylesheet" type="text/css" href="estilo.css" />
            </head>
            <body>
                <div class="container">
                    <div class="header">
                        <img src="foto.png" alt="Foto" class="foto" />
                        <h1>
                            <xsl:value-of select="curriculum/datosPersonales/nombre" />
                            <xsl:value-of select="curriculum/datosPersonales/apellidos" />
                        </h1>

                    </div>
                    <div class="content">
                        <div class="left-column">
                            <div class="contact-info">
                                <h2>Contacto</h2>
                                <p>Tel: <xsl:value-of
                                        select="curriculum/datosContacto/telefonoMovil" /></p>
                                <p>Email: <xsl:value-of select="curriculum/datosContacto/email" /></p>
                                <p>Website: <xsl:value-of
                                        select="curriculum/datosContactoAdicionales/sitioWeb" /></p>
                                <p>LinkedIn: <a
                                        href="{curriculum/datosContactoAdicionales/redesSociales/url}">
                                        <xsl:value-of
                                            select="curriculum/datosContactoAdicionales/redesSociales/nombre" />
                                    </a></p>
                            </div>
                            <div class="skills">
                                <h2>Habilidades</h2>
                                <ul>
                                    <xsl:for-each select="curriculum/competencias/competencia">
                                        <li>
                                            <xsl:value-of select="nombre" />
                                            <p>Nivel: <xsl:value-of select="nivel"/></p>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="education">
                                <h2>Educación</h2>
                                <xsl:for-each select="curriculum/formacionAcademica/estudios">
                                    <p>
                                        <strong>
                                            <xsl:value-of select="nombre" />
                                        </strong><br />
                                        <xsl:value-of
                                            select="lugar" /> (<xsl:value-of select="fechaInicio" />
        - <xsl:value-of select="fechaFin" />) </p>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="right-column">

                            <div class="work-experience">
                                <h2>Experiencia Laboral</h2>
                                <xsl:for-each select="curriculum/experienciaLaboral/experiencia">
                                    <div class="job">
                                        <h3>
                                            <xsl:value-of select="puesto" />
                                        </h3>
                                        <p><xsl:value-of select="lugar" /> (<xsl:value-of
                                                select="fechaInicio" /> - <xsl:value-of
                                                select="fechaFin" />)</p>
                                        <p>
                                            <xsl:value-of select="descripcion" />
                                        </p>
                                    </div>
                                </xsl:for-each>
                            </div>
                            <div class="languages">
                                <h2>Idiomas</h2>
                                <xsl:for-each select="curriculum/idiomas/idioma">
                                    <p>
                                        <strong><xsl:value-of select="nombre" />:</strong> Expresión
        Oral: <xsl:value-of select="nivelExpresionOral" />, Comprensión Oral: <xsl:value-of
                                            select="nivelComprensionOral" />, Expresión Escrita: <xsl:value-of
                                            select="nivelExpresionEscrita" />, Comprensión Escrita: <xsl:value-of
                                            select="nivelComprensionEscrita" />, Título: <xsl:value-of
                                            select="tituloAcreditativo" /> (<xsl:value-of
                                            select="nivelTitulo" />) </p>
                                </xsl:for-each>
                            </div>
                            <div class="additional-info">
                                <h2>Datos Adicionales</h2>
                                <p>
                                    <strong>Aficiones:</strong>
                                    <xsl:value-of select="curriculum/datosAdicionales/aficiones" />
                                </p>
                                <p>
                                    <strong>Disponibilidad para viajar:</strong>
                                    <xsl:value-of
                                        select="curriculum/datosAdicionales/disponibilidadViajar" />
                                </p>
                                <p>
                                    <strong>Vehículo Propio:</strong>
                                    <xsl:value-of
                                        select="curriculum/datosAdicionales/vehiculoPropio" />
                                </p>
                                <p>
                                    <strong>Licencias de Conducción:</strong>
                                    <xsl:for-each
                                        select="curriculum/datosAdicionales/licencias_conduccion">
                                        <xsl:value-of select="." /><xsl:if
                                            test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>