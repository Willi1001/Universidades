<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Universidad._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist" style="margin-top:2%">
        <li id="liAlumnos" runat="server" class="nav-item">
            <a class="nav-link" id="pills-Alumnos-tab" data-toggle="pill" href="#pills-Alumnos" role="tab" aria-controls="pills-Alumnos" aria-selected="true">Alumnos</a>
        </li>
        <li id="liMaterias" runat="server" class="nav-item">
            <a class="nav-link" id="pills-Materias-tab" data-toggle="pill" href="#pills-Materias" role="tab" aria-controls="pills-Materias" aria-selected="false">Materias</a>
        </li>
        <li id="liProfesores" runat="server"  class="nav-item">
            <a class="nav-link" id="pills-Profesores-tab" data-toggle="pill" href="#pills-Profesores" role="tab" aria-controls="pills-Profesores" aria-selected="false">Profesores</a>
        </li>
         <li id="liSalones" runat="server" class="nav-item">
            <a class="nav-link" id="pills-Salones-tab" data-toggle="pill" href="#pills-Salones" role="tab" aria-controls="pills-Salones" aria-selected="false">Salones</a>
        </li>        
    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade" id="pills-Alumnos" role="tabpanel" aria-labelledby="pills-Alumnos-tab">
            <div class="row">
                <div class="col-md-12">
                    <h1>Ingresar alumno</h1>
                    <div class="form-row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNombreAlumno" CssClass="form-control" runat="server" placeholder="Nombres"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtIdentificacionAlumno" CssClass="form-control" runat="server" placeholder="Identificación"></asp:TextBox>                           
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnAgregarAlumnno" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregarAlumnno_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="margin-top:5%">
                    <asp:GridView ID="dgvAlumnos" runat="server" AllowPaging="true"
                        DataKeyNames="IdAlumno" CssClass="table table-sm Borde" AutoGenerateColumns="false"
                        PageSize="10">
                        <Columns>
                            <asp:TemplateField HeaderText="Id alumno" ItemStyle-CssClass="BorderLeft" HeaderStyle-CssClass="BorderLeftHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("IdAlumno")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Nombre")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Identificación" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Identificacion")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-Materias" role="tabpanel" aria-labelledby="pills-Materias-tab">
              <div class="row">
                <div class="col-md-12">
                    <h1>Ingresar materias</h1>
                    <div class="form-row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMateria" CssClass="form-control" runat="server" placeholder="materia"></asp:TextBox>
                        </div>     
                         <div class="col-md-3">
                            <asp:DropDownList ID="ddlProfesores" CssClass="form-control" runat="server" ></asp:DropDownList>
                        </div>    
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlSalones" CssClass="form-control" runat="server" ></asp:DropDownList>
                        </div>   
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btn_AgregarMateria" Text="Agregar" CssClass="btn btn-success" OnClick="btn_AgregarMateria_Click" />
                        </div>
                    </div>
                </div>
              </div>
            <div class="row">
                <div class="col-md-12" style="margin-top: 5%">
                    <asp:GridView ID="dgvMaterias" runat="server" AllowPaging="true"
                        DataKeyNames="IdMateria" CssClass="table table-sm Borde" AutoGenerateColumns="false"
                        PageSize="10">
                        <Columns>
                            <asp:TemplateField HeaderText="Id materia" ItemStyle-CssClass="BorderLeft" HeaderStyle-CssClass="BorderLeftHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("IdMateria")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre materia" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Descripcion")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Profesor" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Profesores.Nombres")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Identificación profesor" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Profesores.Nombres")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Salon" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Salon.Descripcion")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>            
        </div>
        <div class="tab-pane fade" id="pills-Profesores" role="tabpanel" aria-labelledby="pills-Profesores-tab">
            <div class="row">
                <div class="col-md-12">
                    <h1>Ingresar profesores</h1>
                    <div class="form-row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNombresProfesor" CssClass="form-control" runat="server" placeholder="Nombres"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtIdentifiacionProfesor" CssClass="form-control" runat="server" placeholder="Identificación"></asp:TextBox>                           
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnAgregarProfesor" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregarProfesor_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="margin-top: 5%">
                    <asp:GridView ID="dgvProfesores" runat="server" AllowPaging="true"
                        DataKeyNames="IdProfesor" CssClass="table table-sm Borde" AutoGenerateColumns="false"
                        PageSize="10">
                        <Columns>
                            <asp:TemplateField HeaderText="Id profesore" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("IdProfesor")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="nombre" ItemStyle-CssClass="BorderLeft" HeaderStyle-CssClass="BorderLeftHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Nombres")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="identificación" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Identificacion")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-Salones" role="tabpanel" aria-labelledby="pills-Salones-tab">
            <div class="row">
                <div class="col-md-12">
                    <h1>Ingresar salones</h1>
                    <div class="form-row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSalon" CssClass="form-control" runat="server" placeholder="salon"></asp:TextBox>
                        </div>                        
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnAgregarSalones" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregarSalones_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="margin-top: 5%">
                    <asp:GridView ID="dgvSalones" runat="server" AllowPaging="true"
                        DataKeyNames="IdSalon" CssClass="table table-sm Borde" AutoGenerateColumns="false"
                        PageSize="10">
                        <Columns>
                            <asp:TemplateField HeaderText="Id salon" ItemStyle-CssClass="BorderLeft" HeaderStyle-CssClass="BorderLeftHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("IdSalon")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Salon" ItemStyle-CssClass="BorderCenter" HeaderStyle-CssClass="BorderCenterHeader">
                                <ItemTemplate>
                                    <asp:Label runat="server"><%# Eval("Descripcion")%></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
