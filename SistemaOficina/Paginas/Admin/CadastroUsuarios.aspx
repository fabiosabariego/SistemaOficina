<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="CadastroUsuarios.aspx.cs" Inherits="SistemaOficina.Paginas.Admin.CadastroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    #Select1 {
        width: 128px;
    }
    </style>
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <asp:Label ID="TxtCadastroUser" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" Text="Cadastrar Novo Usuario"></asp:Label>
    <br />
    <asp:Label ID="txtNome" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nome"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxNome" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="20px" Width="425px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="txtUsuario" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Usuáro"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxUser" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="20px" Width="425px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="txtTelefone" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Telefone"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxTelefone" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="20px" TextMode="Phone" Width="425px"></asp:TextBox>
    &nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="txtCargo" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Cargo"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxCargo" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="20px" TextMode="Phone" Width="425px"></asp:TextBox>
    &nbsp;&nbsp;
        <br />
        <br />
    <asp:Label ID="txtSenha" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Senha"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtBoxSenha" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="20px" TextMode="Phone" Width="425px"></asp:TextBox>
    &nbsp;&nbsp;
    <br />
        <br />
    <asp:Label ID="txtAcesso" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nível Acesso"></asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:DropDownList ID="ddlSelAcesso" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="30px" Width="250px">
        <asp:ListItem Value="0">-</asp:ListItem>
        <asp:ListItem Value="1">Operador</asp:ListItem>
        <asp:ListItem Value="2">Gerente</asp:ListItem>
        <asp:ListItem Value="3">Administrador</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
&nbsp;<asp:Button ID="btnCadastrar" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Height="38px" OnClick="btnCadastrar_Click" Text="Cadastrar" Width="100px" />
&nbsp;<br />
<br />
<asp:Label ID="TxtListaUsers" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" Text="Lista de Usuários"></asp:Label>
<asp:GridView ID="GridViewUser" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="usuario" DataSourceID="SqlDataSource" Width="662px">
    <Columns>
        <asp:CommandField CancelText="Cancelar" DeleteText="Deletar" EditText="Editar" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Salvar" />
        <asp:BoundField DataField="usuario" HeaderText="usuario" ReadOnly="True" SortExpression="usuario"></asp:BoundField>
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone"></asp:BoundField>
        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo"></asp:BoundField>
        <asp:BoundField DataField="acesso" HeaderText="acesso" SortExpression="acesso" />
        <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:OldRepairDBConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]" DeleteCommand="DELETE FROM [Usuarios] WHERE [usuario] = @usuario" InsertCommand="INSERT INTO [Usuarios] ([usuario], [nome], [telefone], [cargo], [acesso], [senha]) VALUES (@usuario, @nome, @telefone, @cargo, @acesso, @senha)" UpdateCommand="UPDATE [Usuarios] SET [nome] = @nome, [telefone] = @telefone, [cargo] = @cargo, [acesso] = @acesso, [senha] = @senha WHERE [usuario] = @usuario">
    <DeleteParameters>
        <asp:Parameter Name="usuario" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="usuario" Type="String" />
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="cargo" Type="String" />
        <asp:Parameter Name="acesso" Type="Int32" />
        <asp:Parameter Name="senha" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="cargo" Type="String" />
        <asp:Parameter Name="acesso" Type="Int32" />
        <asp:Parameter Name="senha" Type="String" />
        <asp:Parameter Name="usuario" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
</asp:Content>
