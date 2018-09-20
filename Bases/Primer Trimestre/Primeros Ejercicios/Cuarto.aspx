<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cuarto.aspx.cs" Inherits="Cuarto" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:AccessDataSource ID="selCiudades" runat="server" 
            SelectCommand="Select * from locals"
            DataFile="~/App_Data/escuela_empresa.mdb" />       
        <%--La de arriba es para la consulta del primer desplegable--%>

        <asp:AccessDataSource ID="selAlumnos" runat="server" 
            SelectCommand="select * from alunos"  
            FilterExpression="cod_cidade = '{0}'"
              DataFile="~/App_Data/escuela_empresa.mdb">
            <FilterParameters>
                <asp:ControlParameter ControlID="desCiudades" PropertyName="SelectedValue" />
                <%--el contorlID hay que poner el id Del lugar que quieres coger los valores--%>
            </FilterParameters>
        </asp:AccessDataSource>

        <asp:DropDownList ID="desCiudades" runat="server"
            DataSourceID="selCiudades" 
            DataValueField="cod_local"  
            DataTextField="nom_local" AutoPostBack="true"/>
          <%--El auto postback recarga la pagina con el valor de DropDown--%>

        <asp:DropDownList ID="desAlumnos" runat="server" 
            DataSourceID="selAlumnos"
            DataValueField="cod_aluno"  
            DataTextField="nome"/>
    </div>
    </form>
</body>
</html>
