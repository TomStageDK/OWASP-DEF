<?xml version="1.0"?>
<!-- =========================================================================
            def.xsl stylesheet version 0.1a
            last change: 2014-04-27
            Tom Stage, http://www.dvos.dk
==============================================================================
    Copyright (c) 2004-2014 Tom Stage
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:
    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
    3. The name of the author may not be used to endorse or promote products
       derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
    IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
    OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
    IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
    NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
    DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
    THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
========================================================================== -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output
	method="html"
	indent="yes"
	encoding="UTF-8" 
	doctype-public="-//W3C//DTD HTML 4.01//EN"
	doctype-system="http://www.w3.org/TR/html4/strict.dtd"
	version="4.0"  
/>

<!-- global variables      -->
<!-- ............................................................ -->
<xsl:variable name="def_xsl_version">0.1a</xsl:variable>
<!-- ............................................................ -->
<xsl:variable name="sessionreference"><xsl:value-of select="/Vulnerabilities/Session/Session-reference" /></xsl:variable>
<xsl:variable name="toolname"><xsl:value-of select="/Vulnerabilities/Session/Tool-name" /></xsl:variable>
<xsl:variable name="toolversion"><xsl:value-of select="/Vulnerabilities/Session/Tool-version" /></xsl:variable>
<xsl:variable name="toolparameters"><xsl:value-of select="/Vulnerabilities/Session/Tool-parameters" /></xsl:variable>
<xsl:variable name="datetime"><xsl:value-of select="/Vulnerabilities/Session/Date-time" /></xsl:variable>
<xsl:variable name="summary"><xsl:value-of select="/Vulnerabilities/Session/Summary" /></xsl:variable>
<xsl:variable name="description"><xsl:value-of select="/Vulnerabilities/Session/Description" /></xsl:variable>
<!-- ............................................................ -->

<!-- root -->
<!-- ............................................................ -->
<xsl:template match="/Vulnerabilities/Session">
<html>
<head>


<xsl:comment>generated with def.xsl - version <xsl:value-of select="$def_xsl_version" /> by Tom Stage - http://www.dvos.dk</xsl:comment>

<style type="text/css">
/* stylesheet print */
@media print
{
  #menu {
    display:none;
  }

  body {
    font-family: Verdana, Helvetica, sans-serif;
  }
  
  h1 {
    font-size: 13pt;
    font-weight:bold;
    margin:4pt 0pt 0pt 0pt;
    padding:0;
  }

  h2 {
    font-size: 12pt;
    font-weight:bold;
    margin:3pt 0pt 0pt 0pt;
    padding:0;
  }

  h3, a:link, a:visited {
    font-size: 9pt;
    font-weight:bold;
    margin:1pt 0pt 0pt 20pt;
    padding:0;
    text-decoration: none;
    color: #000000;
  }

  p,ul {
    font-size: 9pt;
    margin:1pt 0pt 8pt 40pt;
    padding:0;
    text-align:left;
  }

  li {
    font-size: 9pt;
    margin:0;
    padding:0;
    text-align:left;
  }

  table {
    margin:1pt 0pt 8pt 40pt;
    border:0px;
    width:90%
  }

  td {
    border:0px;
    border-top:1px solid black;
    font-size: 9pt;
  }

  .head td {
    border:0px;
    font-weight:bold;
    font-size: 9pt;
  }
  .noprint { display: none; }
}

/* stylesheet screen */
@media screen
{
  body {
    font-family: Verdana, Helvetica, sans-serif;
    margin: 0px;
    background-color: #FFFFFF;
    color: #000000;
    text-align: center;
  }

  #container {
    text-align:left;
    margin: 10px auto;
    width: 90%;
  }

  h1 {
    font-family: Verdana, Helvetica, sans-serif;
    font-weight:bold;
    font-size: 14pt;
    color: #FFFFFF;
    background-color:#2A0D45;
    margin:10px 0px 0px 0px;
    padding:5px 4px 5px 4px;
    width: 100%;
    border:1px solid black;
    text-align: left;
  }

  h2 {
    font-family: Verdana, Helvetica, sans-serif;
    font-weight:bold;
    font-size: 11pt;
    color: #000000;
    margin:30px 0px 0px 0px;
    padding:4px;
    width: 100%;
    background-color:#F0F8FF;
    text-align: left;
  }

  h2.green {
    color: #000000;
    background-color:#CCFFCC;
    border-color:#006400;
  }

  h2.red {
    color: #000000;
    background-color:#FFCCCC;
    border-color:#8B0000;
  }
   
  h3 {
    font-family: Verdana, Helvetica, sans-serif;
    font-weight:bold;
    font-size: 10pt;
    color:#000000;
    background-color: #FFFFFF;
    width: 75%;
    text-align: left;
  }

  p {
    font-family: Verdana, Helvetica, sans-serif;
    font-size: 8pt;
    color:#000000;
    background-color: #FFFFFF;
    width: 75%;
    text-align: left;
  }

  p i {
    font-family: Verdana, Helvetica, sans-serif;
    font-size: 8pt;
    color:#000000;
    background-color: #CCCCCC;
  }

  ul {
    font-family: Verdana, Helvetica, sans-serif;
    font-size: 8pt;
    color:#000000;
    background-color: #FFFFFF;
    width: 75%;
    text-align: left;
  }

  a {
    font-family: Verdana, Helvetica, sans-serif;
    text-decoration: none;
    font-size: 8pt;
    color:#000000;
    font-weight:bold;
    background-color: #FFFFFF;
    color: #000000;
  }

  li a {
    font-family: Verdana, Helvetica, sans-serif;
    text-decoration: none;
    font-size: 10pt;
    color:#000000;
    font-weight:bold;
    background-color: #FFFFFF;
    color: #000000;
  }

  a:hover {
    text-decoration: underline;
  }

  a.up {
      color:#006400;
  }

  table {
    width: 80%;
    border:0px;
    color: #000000;
    background-color: #000000;
    margin:10px;
  }

  tr {
    vertical-align:top;
    font-family: Verdana, Helvetica, sans-serif;
    font-size: 8pt;
    color:#000000;
    background-color: #FFFFFF;
  }

  tr.head {
    background-color: #E1E1E1;
    color: #000000;
    font-weight:bold;
  }

  tr.open {
    background-color: #CCFFCC;
    color: #000000;
  }
	
  tr.script {
    background-color: #EFFFF7;
    color: #000000;
  }

  tr.filtered {
    background-color: #F2F2F2;
    color: #000000;
  }

  tr.closed {
    background-color: #F2F2F2;
    color: #000000;
  }
    
  td {
    padding:2px;
  }
        
  #menu li {
    display         : inline;
    margin          : 0;
    /*margin-right    : 10px;*/
    padding         : 0;
    list-style-type : none;
  }    
 
  #menubox {
    position: fixed;
    bottom: 0px;
    right: 0px;
    width: 120px;
  }
  
  
  <![CDATA[
  /* This section handle's IE's refusal to honor the fixed CSS attribute */
  
  * html div#menubox {
    position: absolute;
    top:expression(eval(
      document.compatMode && document.compatMode=='CSS1Compat') ?
      documentElement.scrollTop+(documentElement.clientHeight-this.clientHeight) 
      : document.body.scrollTop +(document.body.clientHeight-this.clientHeight));
  }
  /* This fixes the jerky effect when scrolling in IE*/
  * html,* html body {
    background: #fff url(nosuchfile) fixed;
  }

  ]]>
 
  .up {
    color: #000000;
    background-color:#CCFFCC;
  }
  
  .down {
    color:#626262;
    background-color: #F2F2F2;
  }

  .critical {
    color:#000000;
    background-color: #8b0000;
  }

  .high {
    color:#000000;
    background-color: #ff0000;
  }

  .medium {
    color:#000000;
    background-color: #ffa500;
  }

  .low {
    color:#000000;
    background-color: #00bfff;
  }

  .informational {
    color:#000000;
    background-color: #add8e6;
  }

  .bestpractice {
    color:#000000;
    background-color:#F0F8FF;
  }

  .print_only { display: none; }
  .hidden { display: none; }
  .unhidden { display: block; }

  canvas{
  }
}
</style>
<script src="Chart.js"></script>
<script src="legend.js"></script>
  <title><xsl:value-of select="$sessionreference" /></title>
</head>

<body>
  <a name="top" />
  <div id="container">

    <h1><xsl:value-of select="$sessionreference" /> - Was scanned at <xsl:value-of select="$datetime" /></h1>
    
    <xsl:element name="a">
      <xsl:attribute name="name">scansummary</xsl:attribute>
    </xsl:element>
    
    <hr class="print_only" />
    
    <h2>Scan Summary</h2>

    <p>
      <xsl:value-of select="$toolname" /> <xsl:value-of select="$toolversion" /> was initiated at <xsl:value-of select="$datetime" /> with these arguments:<br/>
      <i><xsl:value-of select="$toolparameters" /></i><br/>
    </p>
    <p>
    Summary: <xsl:value-of select="$summary" />
    </p>

    <p>
    Description: <xsl:value-of select="$description" />
    </p>

     <xsl:apply-templates select="Site/Host" />

     <xsl:apply-templates select="Site/Host/Port" />

     <xsl:apply-templates select="Site/Host/Port/Service" />
     
	<xsl:variable name="vuln_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability)" /></xsl:variable>
	<xsl:variable name="crit_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='CRITICAL'])" /></xsl:variable>
	<xsl:variable name="high_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='HIGH'])" /></xsl:variable>
	<xsl:variable name="medium_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='MEDIUM'])" /></xsl:variable>
	<xsl:variable name="low_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='LOW'])" /></xsl:variable>
	<xsl:variable name="info_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='INFORMATIONAL'])" /></xsl:variable>
	<xsl:variable name="best_count"><xsl:value-of select="count(Site/Host/Port/Vulnerability[@Severity='BESTPRACTIES'])" /></xsl:variable>
	<xsl:element name="div">
    <xsl:attribute name="id">vulnerabilities_summary</xsl:attribute>
		<xsl:if test="$vuln_count > 0">
			<xsl:if test="$vuln_count = 1">
				<h2>There is <xsl:value-of select="$vuln_count" /> Vulnerability</h2>
		    </xsl:if>
			<xsl:if test="$vuln_count > 1">
				<h2>There are <xsl:value-of select="$vuln_count" /> Vulnerabilities</h2>
		    </xsl:if>
		</xsl:if>
		    <xsl:element name="table">
		      <xsl:attribute name="id">vulnerability_count</xsl:attribute>
		      <xsl:attribute name="cellspacing">1</xsl:attribute>
			    <tr class="head">
			        <td>Critical</td>
			        <td>High</td>
			        <td>Medium</td>
			        <td>Low</td>
			        <td>Informational</td>
			        <td>Best Practice</td>
			      </tr>
			    <tr class="counts">
			        <td class="critical"><xsl:value-of select="$crit_count" /></td>
			        <td class="high"><xsl:value-of select="$high_count" /></td>
			        <td class="medium"><xsl:value-of select="$medium_count" /></td>
			        <td class="low"><xsl:value-of select="$low_count" /></td>
			        <td class="informational"><xsl:value-of select="$info_count" /></td>
			        <td class="bestpractice"><xsl:value-of select="$best_count" /></td>
				</tr>
		    </xsl:element>
	</xsl:element>

	<xsl:element name="canvas">
	<xsl:attribute name="id">pie</xsl:attribute>
	<xsl:attribute name="height">450</xsl:attribute>
	<xsl:attribute name="width">600</xsl:attribute>
	</xsl:element>

	<xsl:element name="canvas">
	<xsl:attribute name="id">bar</xsl:attribute>
	<xsl:attribute name="data-type">Bar</xsl:attribute>
	<xsl:attribute name="height">450</xsl:attribute>
	<xsl:attribute name="width">600</xsl:attribute>
	</xsl:element>
	<script>

 		var pieData = [
		{
		value: <xsl:value-of select="$crit_count" />,
		color:"#8b0000"
		},
		{
		value : <xsl:value-of select="$high_count" />,
		color : "#ff0000"
		},
		{
		value : <xsl:value-of select="$medium_count" />,
		color : "#ffa500"
		},
		{
		value: <xsl:value-of select="$low_count" />,
		color:"#00bfff"
		},
		{
		value : <xsl:value-of select="$info_count" />,
		color : "#add8e6"
		},
		{
		value : <xsl:value-of select="$best_count" />,
		color : "#F0F8FF"
		}
		];
		
		var myPie = new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);

		var barChartData = {
		scaleOverride : true,
		scaleStepWidth : 1,
		scaleStartValue : 1,
		labels : ["Critical","High","Medium","Low","Informational","Best Practies"],
		datasets : [
		{
		fillColor : "rgba(220,220,220,0.5)",
		strokeColor : "rgba(220,220,220,1)",
		data : [<xsl:value-of select="$crit_count" />,<xsl:value-of select="$high_count" />,<xsl:value-of select="$medium_count" />,<xsl:value-of select="$low_count" />,<xsl:value-of select="$info_count" />,<xsl:value-of select="$best_count" />]
		}
		]
		
		}
		
		var myLine = new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);


	</script>
	
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='CRITICAL']" />
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='HIGH']" />
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='MEDIUM']" />
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='LOW']" />
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='INFORMATIONAL']" />
     <xsl:apply-templates select="Site/Host/Port/Vulnerability[@Severity='BESTPRACTIES']" />

  </div>
    
</body>
</html>
</xsl:template>
<!-- ............................................................ -->

<!-- host -->
<!-- ............................................................ -->
<xsl:template match="Site/Host">

  <hr class="print_only" />
  
  <xsl:element name="div">
    <xsl:attribute name="id">hostblock_summary</xsl:attribute>

  	<h3>Hostname</h3>
      <ul>
          <li><xsl:value-of select="@name"/></li>
      </ul>

    <h3>IP Address</h3>
      <ul>
          <li><xsl:value-of select="@ip-address"/></li>
      </ul>
  
  </xsl:element>

</xsl:template>
<!-- ............................................................ -->

<!-- ports -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port">
  <xsl:element name="div">
    <xsl:attribute name="id">port_summary</xsl:attribute>
	  <h3>Port used in the scan</h3>
	      <ul>
	          <li>Protocol: <xsl:value-of select="@protocol"/></li>
	          <li>Port: <xsl:value-of select="@portid"/></li>
	      </ul>
  </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- service -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Service">
  <xsl:element name="div">
    <xsl:attribute name="id">service_summary</xsl:attribute>
	  <h3>Service</h3>
	      <ul>
	          <li>Service Name: <xsl:value-of select="@name"/></li>
	          <li>Product: <xsl:value-of select="@product"/></li>
	          <li>Version: <xsl:value-of select="@version"/></li>
	      </ul>
  </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- critical vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='CRITICAL']">
	 <xsl:element name="div">
	<xsl:attribute name="id">critical_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">critical</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				<b>Vulnerability description:</b><br /> <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				<b>Further info:</b><br /> <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				<b>The severity is:</b><br /> <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				<b>The Confidence is:</b><br /> <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				<b>The Background is:</b><br /> <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				<b>The Remediation is:</b><br /> <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					<b>The classification system is:</b><br /> <xsl:value-of select="@type"/><br /><br />
					<b>And the classification id is:</b><br /> <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					<b>The page reference is:</b><br /> <xsl:value-of select="Page-reference"/><br /><br />
					<b>The method was:</b><br /> <xsl:value-of select="Method"/><br /><br />
					<b>The URL was:</b><br /> <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					<b>The parameter used is:</b><br /> <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					<b>The Page reference is:</b><br /> <xsl:value-of select="Page-reference"/><br /><br />
					<b>The Request was:</b><br /> <xsl:value-of select="Request"/><br /><br />
					<b>The Response was:</b><br /> <xsl:value-of select="Response"/>
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- high vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='HIGH']">
	 <xsl:element name="div">
	<xsl:attribute name="id">high_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">high</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				Vulnerability description: <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				Further info: <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				The severity is: <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				The Confidence is: <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				The Background is: <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				The Remediation is: <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					The classification is: <xsl:value-of select="@type"/><br />
					And the id is: <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					The page reference is: <xsl:value-of select="Page-reference"/><br />
					The method is: <xsl:value-of select="Method"/><br />
					The URL is: <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					The parameter used is: <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					The Page reference is: <xsl:value-of select="Page-reference"/><br />
					The Request was: <xsl:value-of select="Request"/><br />
					The Response was: <xsl:value-of select="Response"/><br />
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- medium vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='MEDIUM']">
	 <xsl:element name="div">
	<xsl:attribute name="id">medium_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">medium</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				Vulnerability description: <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				Further info: <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				The severity is: <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				The Confidence is: <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				The Background is: <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				The Remediation is: <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					The classification is: <xsl:value-of select="@type"/><br />
					And the id is: <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					The page reference is: <xsl:value-of select="Page-reference"/><br />
					The method is: <xsl:value-of select="Method"/><br />
					The URL is: <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					The parameter used is: <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					The Page reference is: <xsl:value-of select="Page-reference"/><br />
					The Request was: <xsl:value-of select="Request"/><br />
					The Response was: <xsl:value-of select="Response"/><br />
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- low vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='LOW']">
	 <xsl:element name="div">
	<xsl:attribute name="id">low_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">low</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				Vulnerability description: <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				Further info: <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				The severity is: <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				The Confidence is: <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				The Background is: <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				The Remediation is: <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					The classification is: <xsl:value-of select="@type"/><br />
					And the id is: <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					The page reference is: <xsl:value-of select="Page-reference"/><br />
					The method is: <xsl:value-of select="Method"/><br />
					The URL is: <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					The parameter used is: <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					The Page reference is: <xsl:value-of select="Page-reference"/><br />
					The Request was: <xsl:value-of select="Request"/><br />
					The Response was: <xsl:value-of select="Response"/><br />
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- informational vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='INFORMATIONAL']">
	 <xsl:element name="div">
	<xsl:attribute name="id">informational_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">informational</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				Vulnerability description: <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				Further info: <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				The severity is: <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				The Confidence is: <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				The Background is: <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				The Remediation is: <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					The classification is: <xsl:value-of select="@type"/><br />
					And the id is: <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					The page reference is: <xsl:value-of select="Page-reference"/><br />
					The method is: <xsl:value-of select="Method"/><br />
					The URL is: <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					The parameter used is: <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					The Page reference is: <xsl:value-of select="Page-reference"/><br />
					The Request was: <xsl:value-of select="Request"/><br />
					The Response was: <xsl:value-of select="Response"/><br />
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

<!-- bestpracties vulnerabilities -->
<!-- ............................................................ -->
<xsl:template match="Site/Host/Port/Vulnerability[@Severity='BESTPRACTIES']">
	 <xsl:element name="div">
	<xsl:attribute name="id">bestpracties_vulnerabilities</xsl:attribute>
			<xsl:element name="h2">
			<xsl:attribute name="class">bestpractice</xsl:attribute>
			 		Vulnerability: <xsl:value-of select="Finding/Summary"/>
			</xsl:element>
			<xsl:element name="h3">
			 		This Vulnerability was found by ID: "<xsl:value-of select="Finding/@NativeID"/>" 
			 		and it was found on the <xsl:value-of select="Finding/@IdentifiedTimestamp"/> 
			</xsl:element>
			<xsl:element name="p">
				Vulnerability description: <xsl:value-of select="Finding/Description"/>
			</xsl:element>
			<xsl:element name="p">
				Further info: <xsl:value-of select="Finding/Further-info"/>
			</xsl:element>
			<xsl:element name="p">
				The severity is: <xsl:value-of select="Finding/Severity"/>
			</xsl:element>
			<xsl:element name="p">
				The Confidence is: <xsl:value-of select="Finding/Confidence"/>
			</xsl:element>
			<xsl:element name="p">
				The Background is: <xsl:value-of select="Finding/Background"/>
			</xsl:element>
			<xsl:element name="p">
				The Remediation is: <xsl:value-of select="Finding/Remediation"/>
			</xsl:element>
			<xsl:for-each select="Finding/classification" >
				<xsl:element name="p">
					The classification is: <xsl:value-of select="@type"/><br />
					And the id is: <xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page" >
				<xsl:element name="p">
					The page reference is: <xsl:value-of select="Page-reference"/><br />
					The method is: <xsl:value-of select="Method"/><br />
					The URL is: <xsl:value-of select="URL"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Parameters/Parameter" >
				<xsl:element name="p">
					The parameter used is: <xsl:value-of select="../Parameter"/><br />
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="Finding/Pages/Page/Request-response" >
				<xsl:element name="p">
					The Page reference is: <xsl:value-of select="Page-reference"/><br />
					The Request was: <xsl:value-of select="Request"/><br />
					The Response was: <xsl:value-of select="Response"/><br />
				</xsl:element>
			</xsl:for-each>
	 </xsl:element>
</xsl:template>
<!-- ............................................................ -->

</xsl:stylesheet>
