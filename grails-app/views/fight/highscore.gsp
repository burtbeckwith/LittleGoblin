<!DOCTYPE HTML>
<html>
<head>
	<meta name="layout" content="main"/>
   	

	
</head>
<body class="main">


<h1><g:message code="fight.highscore.title"/></h1>

<g:if test="${flash.message}">
	<div class="message">${flash.message}</div>
</g:if>
<table>
	<tr>
		<th><g:message code="highscore.rank"/></th>
		<th><g:message code="highscore.name"/></th>	
		<th><g:message code="highscore.xp"/></th>
		<th><g:message code="highscore.death"/></th>
		<th><g:message code="highscore.cause_of_death"/></th>
	</tr>
	<g:set var="counter" value="1"/>
	<g:each in="${highscore}" var="entry"> 
	<tr>
		<td>${counter++}</td>
		<td>${entry.character.name}</td>		
		<td>${entry.xp}</td>
		<td>${entry.deaths}</td>
		<td>${entry.killer?.name}</td>
	</tr>
	</g:each>
</table>

<g:link action="highscore"><g:message code="fight.link.highscore"/></g:link>
&nbsp;|&nbsp;
<g:link action="index">	<g:message code="fight.link.index"/></g:link>



</body>
</html>