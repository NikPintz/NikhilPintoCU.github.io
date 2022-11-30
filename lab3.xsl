<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
        <h2>Cars for service(sorted year wise)</h2>
        <table border="1">
            <tr bgcolor="#06CCF9">
                <th>carID</th>
                <th>ownerID</th>
                <th>serviceID</th>
                <th>model</th>
                <th>year</th>
                <th>lastservice</th>
                <th>nextservice</th>
            </tr>
            <xsl:for-each select="carservice/car"> 
            <xsl:sort select="year">
            <xsl:if test="year &gt; 2002">
            <tr>
                <xsl:choose>
                    <xsl:when test="year &gt; 2010">
                        <td bgcolor="#009933"><xsl:value-of select="carID"/></td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td bgcolor="#0000ff"><xsl:value-of select="carID"/></td>
                    </xsl:otherwise>
                </xsl:choose>
                <td><xsl:value-of select="ownerID"/></td>
                <td><xsl:value-of select="serviceID"/></td>
                <td><xsl:value-of select="model"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="lastservice"/></td>
                <td><xsl:value-of select="nextservice"/></td>
            </tr>
            </xsl:if>
            </xsl:sort>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>