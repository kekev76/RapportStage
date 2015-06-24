<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output  method="text" encoding="UTF-8"/>
    <!-- Racine -->
    <xsl:template match="/">
<xsl:text>
\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesPackage{asi/vocabulairePICDyn}

%\RequirePackage{soul}

\newif\if@debug \@debugfalse

\DeclareOption{debug}{\@debugtrue}

\ProcessOptions

%\sethlcolor{green}
</xsl:text>
		<xsl:apply-templates select="/vocabulaires/categorie"/>
<xsl:text>
\endinput
</xsl:text>
	</xsl:template>
	
    <xsl:template match="/vocabulaires/categorie">
<xsl:text>%</xsl:text><xsl:value-of select="nom-categorie"/><xsl:text>
</xsl:text>
    	<xsl:apply-templates select="vocabulaire"/>
    </xsl:template>
 	
 	<xsl:template match="vocabulaire">
 <xsl:text>\newcommand{\</xsl:text><xsl:value-of select="commande-latex"/><xsl:text>}</xsl:text>
 <xsl:if test="commande-latex[@nbparam]">
 <xsl:text>[</xsl:text><xsl:value-of select="commande-latex/@nbparam"/><xsl:text>]</xsl:text>	
 </xsl:if>
 <xsl:text>{\vocabulaireDebug{</xsl:text><xsl:value-of select="rendu-latex"/><xsl:text>}}
 </xsl:text>
 	</xsl:template>

</xsl:stylesheet>
