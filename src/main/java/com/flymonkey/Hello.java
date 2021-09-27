package com.flymonkey;


import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC)
public class Hello {
    /*
    请求案例：
    <?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
        <soap:Body>
            <method:greeting xmlns:method="http://flymonkey.com/">
                <name>张三</name>
            </method:greeting>
        </soap:Body>
    </soap:Envelope>
     */
    @WebMethod
    public String greeting(@WebParam(name = "name") String name) {
        return String.format("hello %s", name);
    }
}