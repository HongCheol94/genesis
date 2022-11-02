<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%-- <%@include file="../common/xdmin/includeV1/head.jsp"%> --%>

</head>
<body>
publicCorona1List

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(items) }"/>

<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.time }"/>
	<br><c:out value="${item.arrFlight }"/>	
	<br><c:out value="${item.depFlight }"/>	
	<br><c:out value="${item.flight }"/>	
</c:forEach>

<%--  
 <br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${items }"/>

<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.time }"/>
	<br><c:out value="${item.arrFlight }"/>	
	<br><c:out value="${item.depFlight }"/>	
	<br><c:out value="${item.flight }"/>	
</c:forEach>
 --%>
</body>
</html>