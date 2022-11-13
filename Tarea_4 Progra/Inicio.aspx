<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea_4_Progra.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
        background-color:darksalmon;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 81px;
        }
        .auto-style3 {
            height: 71px;
        }
        .auto-style4 {
            height: 71px;
            width: 515px;
        }
        .auto-style5 {
            height: 81px;
            width: 515px;
            text-align: left;
        }
        .auto-style6 {
            color: #0066FF;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style7 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6" colspan="2">HOSPITAL</td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre: <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Cedula:
                    <asp:TextBox ID="Tcedula" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Edad:
                    <asp:TextBox ID="Tedad" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Genero:
                    <asp:TextBox ID="Tgenero" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Telefono:
                    <asp:TextBox ID="Ttelefono" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Seguro:
                    <asp:TextBox ID="Tseguro" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cedula" DataSourceID="SqlHospital" GridLines="Vertical" Height="195px" Width="453px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                            <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                            <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlHospital" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT * FROM [paciente]" DeleteCommand="delete paciente where cedula = @cedula" InsertCommand="insert into paciente values (@Cedula, @Nombre, @Edad, @Genero, @Telefono, @calle, @ciudad, @numero, @Seguro)" UpdateCommand="update paciente values (@nombre, @cedula, @edad, @genero, @telefono, @seguro, @calle, @numero, @ciudad) where cedula = @cedula">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="Tcedula" Name="cedula" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Tcedula" Name="Cedula" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tnombre" Name="Nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tedad" Name="Edad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tgenero" Name="Genero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Ttelefono" Name="Telefono" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tcalle" Name="calle" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tciudad" Name="ciudad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tnumero" Name="numero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tseguro" Name="Seguro" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Tnombre" Name="nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tcedula" Name="cedula" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tedad" Name="edad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tgenero" Name="genero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Ttelefono" Name="telefono" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tseguro" Name="seguro" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tcalle" Name="calle" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tnumero" Name="numero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Tciudad" Name="ciudad" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Domicilio<br />
                    <br />
                    Calle:
                    <asp:TextBox ID="Tcalle" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Numero:
                    <asp:TextBox ID="Tnumero" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Ciudad:
                    <asp:TextBox ID="Tciudad" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BAgregar" runat="server" Height="52px" OnClick="BAgregar_Click" Text="Agregar" Width="101px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Bborrar" runat="server" Height="52px" OnClick="Bborrar_Click" Text="Borrar" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Bmodificar" runat="server" CssClass="auto-style7" Height="51px" OnClick="Button3_Click" Text="Modificar" Width="99px" />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BPedades" runat="server" Height="50px" OnClick="BPedades_Click" Text="% Edades" Width="106px" />
&nbsp;&nbsp;
                    <asp:Button ID="BPgenero" runat="server" Height="49px" OnClick="BPgenero_Click" Text="% Genero" Width="113px" />
&nbsp;&nbsp;
                    <asp:Button ID="BPseguro" runat="server" Height="49px" OnClick="BPseguro_Click" Text="% Seguro" Width="109px" />
&nbsp;&nbsp;
                    <asp:Button ID="Bbuscar" runat="server" Height="49px" OnClick="Bbuscar_Click" Text="Buscar por nombre" Width="144px" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cedula" DataSourceID="SqlBuscar" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="Gainsboro" />
                        <Columns>
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                            <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                            <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                            <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlBuscar" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString3 %>" InsertCommand="select * from paciente where nombre = @nombre" SelectCommand="SELECT * FROM [paciente]">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Tnombre" Name="nombre" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
