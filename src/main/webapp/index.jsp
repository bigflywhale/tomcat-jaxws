<%--
  Created by IntelliJ IDEA.
  User: flymonkey
  Date: 2021/9/27
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  1、webservice地址：http://192.168.2.13/psum/UserModuleService.asmx；
  2、上传方式选择POST方式；
  3、header中设置：Content-Type:text/xml;charset=utf-8
  4、参数：（xml格式）

  <?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
      <LoginByNameAndPwd xmlns="http://tempuri.org/">
        <username>psadmin</username>
        <password>00000</password>
      </LoginByNameAndPwd>
    </soap:Body>
  </soap:Envelope>
  </body>
</html>
