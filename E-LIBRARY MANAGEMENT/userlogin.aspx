<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.userlogin" %>
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
                                    <img width="150px" src="images/imgs/generaluser.png" />

                                </center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Member Login</h3>
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
                                    <label>Member ID</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Member ID cannot Empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                          placeholder="Member ID" runat="server"></asp:TextBox>
                                    </div>
                                    <label>Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Your Password!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                                    <div class="form-group">
                                        <input class="btn btn-info btn-block " 
                                            id="Button2" type="button" value="SignUp" onClick="usersignup.aspx"/>
                                    </div>
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
