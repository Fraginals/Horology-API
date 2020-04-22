<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
<xsl:template match="/">
                <html>
                    <body>
                        <h1>Sophisticated Simplicity</h1>
                <table border="1" id="menuTable" class="indent">
                    <thead>
                        <tr bgcolor="#efffba">
                            <th colspan="7"><h2 align="center"> CATALOG</h2></th><!--Implementing 6 columns for the table -->
                        <hr></hr>
                        </tr>
                        <tr><!--all the watch's features that the user will use to input the info into the form!! -->
                            <th class="select">Select</th>
                            <th class="brand">Brand</th>
                            <th class="price">Price</th>
                            <th class="precision">Certified Precision</th>
                            <th class="discount">Discount</th>
                            <th class="stock">Stock</th>
                        </tr>
                    </thead>
                    <tbody>    <!--goes back to the catalogue and section to take the info from the XML file -->
                        <xsl:for-each select="/catalogue/section">
                            <tr>
                                <td colspan="6">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="watch">
                            <tr id="{position()}">
                                <xsl:attribute name="original">
                                    <xsl:value-of select="boolean(./@original)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="item0" type="checkbox" />  <!--setting up the checkbox -->
                                </td>
                                <td align="center">
                                    <xsl:value-of select="brand" /><!--setting up the brand title -->
                                </td>
                                <td align="center">
                                    <xsl:value-of select="price" /><!--setting up the price title -->
                                </td>
                                 <td align="right">
                                        <xsl:value-of select="precision" /><!--setting up the precision title -->
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="discount" /><!--setting up the discount title -->
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="stock" /><!--setting up the stock title -->
                                    </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
                </body>
             </html>
    </xsl:template>
</xsl:stylesheet>

<!-- The above code belongs to the github account: https://github.com/mikhail-cct/CA1-In-class-Demo.git, -->
<!-- which was adjusted and mofidied in order to create the "Timepieces" Web App -->