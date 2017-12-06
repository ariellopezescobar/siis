<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<html>
<head>
  <meta content="text/html; charset=iso8859-15" http-equiv="Content-Type" />
  <META HTTP-EQUIV="Cache-Control" CONTENT="max-age=0">
  <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
  <META HTTP-EQUIV="expires" CONTENT="0">
  <META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
  <META HTTP-EQUIV="Pragma"  CONTENT="no-cache">
</head>

<body onLoad="document.forma.submit();">
  <form name="forma" method="post" action='<c:url value="${url}"/>' />
</body>

</html>