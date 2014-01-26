<%-- 
    Document   : validation
    Created on : 26.Oca.2014, 16:37:31
    Author     : Burak Kutbay
    Website    : http://blog.burakkutbay.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BURAKKUTBAY.COM</title>
</head>
<body>
    <h1>Email Kontrol</h1>
    <%!
        String Email;

        public boolean validasyonEmail(String kull_email) {
            int at;
            int nokta;

            boolean at_var = true;
            boolean nokta_var = true;
            boolean emailgirildi = true;

            if (kull_email.length() == 0) {
                emailgirildi = false;
            }

            at = kull_email.indexOf("@", 1);

            if (at == -1) {
                at_var = false;
            }

            nokta = kull_email.indexOf(".", 1);

            if (nokta == -1) {
                nokta_var = false;
            }

            if (emailgirildi & at_var & nokta_var) {
                return true;
            } else {
                return false;
            }
        }
    %>
    <%
        Email=request.getParameter("Email");
        if (validasyonEmail(Email))
            out.print("Geçerli bir email adresi yazdınız");
        else
           out.print("Email adresiniz istenen şartlara uymamaktadır");
    %>
</body>
</html>
