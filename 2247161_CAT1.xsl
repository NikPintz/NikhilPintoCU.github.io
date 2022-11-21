<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>La Classica #123 abc road</title></head>
    <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
        <h1>La Classica<br>#123 abc road</h1>
        <h2>La Classic Menu</h2>
        <table border="1">
            <tr bgcolor="#06CCF9">
                <th>Item ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Qty.</th>
                <th>Unit Price</th>
            </tr>
            <xsl:for-each select="menu/item">
            <xsl:sort select="type"/>
            <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="type"/></td>
                <td><xsl:value-of select="qty"/></td>
                <td><xsl:value-of select="unitprice"/></td>
                <td><xsl:value-of select="unitprice" * select="qty"/>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>