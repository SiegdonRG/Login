<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos\CSS\Estilos.css" rel="stylesheet"/>
    <title>Login</title>
</head>
<body class="bg-light">
    <div class="wrapper">
        <div class="formcontent">
            <form id="formulario_login" runat="server">
                <div class="form-control" >
                    <div class="text-center">
                        <asp:Label class="h1" ID="lblBienvenida" runat="server" Text="Bienvenido/a al Sistema"></asp:Label>
                    </div>
                    <hr />
                    <div >
                       <%-- <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>--%>
                        <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                    </div>
                    <hr />
                    <div>
                        <%--<asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>--%>
                        <asp:TextBox ID="tbPassword" CssClass="form-control" Textmode="Password" runat="server" placeholder="Contraseña"></asp:TextBox>
                    </div>
                    <hr />
                    
                    <div class="">
                        <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark container-lg" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                    </div>
                    <br />
                    <div class="">
                        <asp:Label runat="server" CssClass="alert alert-danger d-none" ID="lblError"></asp:Label>
                    </div>
                    
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
