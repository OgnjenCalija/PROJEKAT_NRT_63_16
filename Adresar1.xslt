<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <!--Ognjen Čalija NRT-63/16-->

    <xsl:template match="/">
      <html>
        <head >
          <title> Tabela </title>
        </head>
        <body>
          <p>Podaci o osobama i kompanijama koje imaju vise od dva emaila.</p>
          <xsl:apply-templates/>
        </body>
      </html>
    </xsl:template>
  <xsl:template match="Adresar">
    <table border="1" align="center">
      <tr align="center">
        <td>
          <bold>Ime, Srednje Ime, Prezime</bold>
        </td>
        <td>
          <bold>Datum Rodjenja</bold>
        </td>
        <td>
          <bold>Adresa</bold>
        </td>
        <td>
          <bold>Telefon</bold>
        </td>
        <td>
          <bold>Email</bold>
        </td>
      </tr>
      <xsl:for-each select="Osoba">
        <xsl:if test="(count(Email))>2">
          <tr>
            <td>
              
              <xsl:value-of select ="PunoIme"/>
            </td>
            <td>
              <xsl:value-of select ="DatumRodjenja"/>
            </td>
            <td>
              <xsl:value-of select ="Adresa"/>
            </td>
            <td>
              <xsl:value-of select ="Telefon"/>
            </td>
            <td>
              <xsl:value-of select ="Email"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </table>

    <table border="1" align="center">
      <tr align="center">
        <td>
          <bold>Naziv</bold>
        </td>
        <td>
          <bold>Adresa</bold>
        </td>
        <td>
          <bold>Telefon</bold>
        </td>
        <td>
          <bold>Email</bold>
        </td>
      </tr>
      <xsl:for-each select="Kompanija">
        <xsl:if test="(count(Email))>2">
          <tr>
            <td>
              <xsl:value-of select ="Naziv"/>
            </td>
            <td>
              <xsl:value-of select ="Adresa"/>
            </td>
            <td>
              <xsl:value-of select ="Telefon"/>
            </td>
            <td>
              <xsl:value-of select ="Email"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
    
    
  </xsl:template>
</xsl:stylesheet>
