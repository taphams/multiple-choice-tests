<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	<head>
	  <title><xsl:value-of select="qcm/titre"/></title>
	  <link rel="stylesheet" type="text/css" href="qcm.css" />
	  <script type="text/javascript" src="qcm.js" />
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
	<div id="qcm"> 
	
	<form method="get" onsubmit="return afficher()" action="qcmCorrection.xml" >
	  <fieldset>
	  <legend>Infos sur le QCM</legend>
	  <label> IdQcm: <xsl:value-of select="qcm/idfqcm"/></label><br />
		<label>Date: <xsl:value-of select="qcm/date"/></label>
		</fieldset>
	<xsl:for-each select="qcm/questions/question" >
		<fieldset>
		<legend>Q<xsl:value-of select="position()"/></legend>
		<label for="libelle"><xsl:value-of select="libelle" /></label><br/>
	    <xsl:variable name="question" select="position()" />
		<xsl:for-each select="libelle/following-sibling::*">
		  <xsl:variable name="reponse" select="current()" />
		  <input type="radio"   name="question{$question}" value="{$reponse}" /><xsl:value-of select='$reponse' />
		</xsl:for-each>	
	  </fieldset>
	</xsl:for-each>
	<input type="submit"  value="valider les reponses" />
  </form>
  </div>
  </div>
  </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>