<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quinto.aspx.cs" Inherits="Quinto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="selAlumnos" runat="server"
             SelectCommand="Select * From alunos" 
            DataFile="~/App_Data/escuela_empresa.mdb" >
            <FilterParameters>
                <asp:ControlParameter ControlID="desAlumnos" PropertyName="SelectedValue" />
                <%--el contorlID hay que poner el id Del lugar que quieres coger los valores--%>
            </FilterParameters>
            </asp:AccessDataSource>

        <asp:AccessDataSource ID="selImagenes" runat="server" 
            SelectCommand="select * from alunos"  
            FilterExpression="cod_aluno = '{0}'"
              DataFile="~/App_Data/escuela_empresa.mdb">
            <FilterParameters>
                <asp:ControlParameter ControlID="desAlumnos" PropertyName="SelectedValue" />
                <%--el contorlID hay que poner el id Del lugar que quieres coger los valores--%>
            </FilterParameters>
        </asp:AccessDataSource>
        
        <asp:DropDownList ID="desAlumnos" runat="server"
             DataSourceID="selAlumnos" 
            DataValueField="cod_aluno"  
            DataTextField="nome" AutoPostBack="true"/>

               <asp:GridView ID="GridView1" runat="server" 
            DataSourceID="selImagenes"
            AutoGenerateColumns="false">

            <Columns>
                <asp:BoundField DataField="nome" HeaderText="Nombre" />
                <asp:ImageField DataImageUrlField="Foto" HeaderText="Fotos" DataImageUrlFormatString="Fotos/{0}" />
            </Columns>
          </asp:GridView>
    </div>
    </form>
</body>
</html>
