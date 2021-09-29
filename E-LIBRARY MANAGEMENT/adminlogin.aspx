﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/imgs/adminuser.png" />

                                </center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                <div class="col">
                                   <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Admin ID</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Hello Admin! Enter Your ID!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                          placeholder="Admin ID" runat="server" ></asp:TextBox>
                                    </div>
                                    <label>Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Your Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </label>
                                   &nbsp;<div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                          placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <br />
                                   <div class="form-group">
                                       <asp:Button CssClass="btn btn-success btn-block" 
                                           ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                    <br />
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
