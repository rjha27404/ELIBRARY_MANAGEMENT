<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Author Details</h4>       
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/writer.png" width="100px" />

                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                   <label>Author ID<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Author ID required!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </label>
                                   &nbsp;<div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                          placeholder="author id" runat="server"></asp:TextBox>
                                       <asp:Button CssClass="btn1 btn-primary " 
                                           ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-8">
                                   <label>Author Name</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                          placeholder="author name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-success " 
                                           ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                                        </center>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-warning " 
                                           ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                                        </center>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-danger " 
                                           ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                        </center>
                                    </div>
                                </div>
                             </div>
                       </div>
                 </div>
              <a href="homepage.aspx"><< Back to Home</a><br /><br />
                 </div>
        
            <div class="col-md-7">
            <div class="card">
                    <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Author List</h4>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                            <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                     </div>
                </div>
            </div>
         </div>
      
    </div>
</asp:Content>
