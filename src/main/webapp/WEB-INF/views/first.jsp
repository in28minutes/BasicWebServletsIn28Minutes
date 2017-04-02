<%@ page import="java.util.Date,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

SUCCESS - ${email} : ${password}

<BR/> <BR/> Scriptlet
<BR/>~~~~~~~~~~~~~~~~~<BR/>
<%


	out.println(new Date().toString());
	out.println(request.getAttribute("email"));
%>
<BR/> <BR/> Scripting Expression
<BR/>~~~~~~~~~~~~~~~~~~~~~~<BR/>
<%=new Date().toString()%>
<%=request.getAttribute("name")%>

<BR/> <BR/> Comments
<BR/>~~~~~~~~~~~~~~~~~~~~~~<BR/>

<!--Comment 1  -->

<%-- Comment 2--%>

<BR/> <BR/> Expression Language (EL)
<BR/>~~~~~~~~~~~~~~~~~~~~~~<BR/>

MY First JSP : ${requestScope.name}
<BR />
MY Session Scope Variable : ${sessionScope.sessionAttributeName}
<BR />

<BR/>Reading from List
<BR/>Complete List : ${requestScope.bestBatsmanList}
<BR/>Second Player : ${requestScope.bestBatsmanList[1]}

<BR/>Reading from Map

<BR/>Complete Map : ${requestScope.bestBatsmanCenturiesMap}
<BR/>Sachin's Centuries : ${requestScope.bestBatsmanCenturiesMap["Sachin"]}
<BR />

<BR/> <BR/> JSTL Core Library
<BR/>~~~~~~~~~~~~~~~~~~~~~~<BR/>

<c:set var="dummyName" value="dummyValue2" />
<c:out value="${dummyName}">No name</c:out>
<BR/>C IF : 
<c:if test="${dummyName==null}">
Empty
</c:if>
<BR/> <BR/> C CHOOSE : 
<c:choose>
	<c:when test="${dummyName==null}">
       Empty.
    </c:when>
	<c:when test="${dummyName=='dummyValue'}">
        dummyValue.
    </c:when>
	<c:otherwise>
        Something else...
    </c:otherwise>
</c:choose>

<BR/>For Each Headers: 
<c:forEach var="headerValue" items="${header}">
	${headerValue.key},${headerValue.value}<BR />
</c:forEach>

<BR/> <BR/> JSTL Formatting Library
<BR/>~~~~~~~~~~~~~~~~~~~~~~<BR/>

<c:set var="amountToBeFormatted" value="12345688.89123" />
<BR /> Amount being Formatted : ${amountToBeFormatted} 
<BR />Default:<fmt:formatNumber value="${amountToBeFormatted}" type="currency" />
<BR />maxIntegerDigits="3": <fmt:formatNumber type="number" maxIntegerDigits="3"
		value="${amountToBeFormatted}" />
<BR />maxFractionDigits="3" :<fmt:formatNumber type="number" maxFractionDigits="3"
		value="${amountToBeFormatted}" />
<BR />groupingUsed="false":	<fmt:formatNumber type="number" groupingUsed="false"
		value="${amountToBeFormatted}" />
<BR />pattern="###.###E0" : <fmt:formatNumber type="number" pattern="###.###E0"
		value="${amountToBeFormatted}" />

<c:set var="percentageToBeFormatted" value="0.99" />
<BR />Percentage &amp; minFractionDigits="2" : <fmt:formatNumber type="percent" minFractionDigits="2"
		value="${percentageToBeFormatted}" />


<BR/> <BR/> From here on Locale is NL
<BR/>~~~~~~~~~~~~~~~~~~~~~~~~~~<BR/>

<fmt:setLocale value="nl_NL"/>

<BR/> <BR/> Formatting Today's Date
<BR/>~~~~~~~~~~~~~~~~~~~~~~~~~~<BR/>

<c:set var="today" value="<%=new java.util.Date()%>" />
<BR />type="time" => <fmt:formatDate type="time" value="${today}" />
<BR />type="date" => <fmt:formatDate type="date" value="${today}" />
<BR /> type="both" => <fmt:formatDate type="both" value="${today}" />