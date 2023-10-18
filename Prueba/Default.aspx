<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container text-center">
            <div class="col">
                <div class="mb-3">
                    <label for="titulo" class="form-label">Titulo<br />
                    <asp:TextBox ID="TextBoxTitulo" runat="server"></asp:TextBox>
                    </label>
                    <br/>       
                </div>
                <div class="mb-3">
                    <label for="desglose" class="form-label">Desglose</label>
                    <br />              
                    <asp:RadioButton ID="RadioButtonTrue" runat="server" Text="True" OnCheckedChanged="RadioButtonTrue_CheckedChanged" />
                    <asp:RadioButton ID="RadioButtonFalse" runat="server" Text="False" OnCheckedChanged="RadioButtonFalse_CheckedChanged" />
                </div>
                <div class="mb-3">
                    <label for="vista" class="form-label">Vista</label>
                    <br />
                    <asp:TextBox ID="TextBoxVista" runat="server" ></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="prefijo" class="form-label">Prefijo</label>
                    <br />
                    <asp:TextBox ID="TextBoxPrefijo" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="idelemento" class="form-label">ID_Elemento</label>
                    <br />
                    <asp:TextBox ID="TextBoxIdelemento" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="titulo_h" class="form-label">Titulo_h</label>
                    <br />
                    <asp:TextBox ID="TextBoxTitulo_h" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="periodo" class="form-label">Periodo</label>
                    <br />
                    <asp:TextBox ID="TextBoxPeriodo" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="pestanas" class="form-label">Pestañas</label>
                    <br />
                    <asp:TextBox ID="TextBoxPestaña" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="nota" class="form-label">Nota</label>
                    <br />
                    <asp:TextBox ID="TextBoxNota" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="fuente" class="form-label">Fuente</label>
                    <br />
                    <asp:TextBox ID="TextBoxFunte" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="glosario" class="form-label">Glosario</label>
                    <br />
                    <asp:TextBox ID="TextBoxGlosario" runat="server"></asp:TextBox>
                </div>
                <label for="button" id="labelboton" name="etiqueta" label ID="etiqueta">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Crear JSON" Width="60px" OnClick="Button1_Click" />
                </label>
                </div>
            <div class="col"> 
            </div>
            </div>
    </main>
</asp:Content>
