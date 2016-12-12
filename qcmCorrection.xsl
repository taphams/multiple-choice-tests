<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	<head>
	  <title><xsl:value-of select="qcm/titre"/></title>
	  <link rel="stylesheet" type="text/css" href="qcm.css" />
	  <script type="text/javascript" src="qcmCorrection.js" />
	</head>
	<body>
	<div id="wrpper">
 <div id="aside">
	  <span class="libelle"> Infos supplementaires</span>
	Module: <xsl:value-of select="qcm/module"/><br />
	Auteur: <xsl:value-of select="qcm/auteur"/><br />
	Aide: <xsl:value-of select="qcm/aide"/><br />
	Correction: <xsl:value-of select="qcm/correction"/><br/>
	 
	
  </div>
   <div id="content">
	 <p> <span class="libelle"><xsl:value-of select="qcm/titre"/></span></p>
	<p class="instructions">
	  <span class="libelle">Instructions</span>
	 <xsl:value-of select="qcm/instructions"/>
		</p>
		<p class="infosetudiant"> <span class="libelle"> Infos sur l'etudiant</span>
	Etudiant: MOUSTAPHA OUSMAN M.<br />
	Filiere: MIAGE<br />
	Niveau: Master 1
  </p>
	<div id="correction"> 
		<span class="libelle">Correction</span>
	  <div id="notes">
		</div>
	  <dl>
	<xsl:for-each select="qcm/questions/question" >
	 
		<dt><xsl:value-of select="position()"/>-<xsl:value-of select="libelle" /></dt>
		<xsl:for-each select="libelle/following-sibling::reponseok">
		  <xsl:variable name="reponse" select="current()" />
		  <dd> <xsl:value-of select='$reponse' /></dd>
		</xsl:for-each>	
	</xsl:for-each>
  </dl>
  <a href="qcm.xml">Retour aux questionnaires</a>
  </div>
  </div>
  </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>