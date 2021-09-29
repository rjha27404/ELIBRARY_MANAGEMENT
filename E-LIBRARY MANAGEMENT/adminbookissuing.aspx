<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Book Issuing</h4>       
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/books.png" width="100px" />

                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            
      
                            <div class="row">
                                
                                 <div class="col-md-6">
                                   <label>Member ID</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                          placeholder="member id" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                   <label>Book ID</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                          placeholder="book id" runat="server"></asp:TextBox>
                                       <asp:Button CssClass="btn1 btn-dark " 
                                           ID="Button5" runat="server" Text="Go" OnClick="Button5_Click1" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                
                                 <div class="col-md-6">
                                   <label>Member Name</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                          placeholder="member name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                   <label>Book Name</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                          placeholder="book name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                
                                 <div class="col-md-6">
                                   <label>Start Date</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                          placeholder="start date" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                   <label>End Date</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox6" 
                                          placeholder="end date" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-primary btn-lg " 
                                           ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click1" />
                                        </center>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-success btn-lg " 
                                           ID="Button3" runat="server" Text="Return" OnClick="Button3_Click1" />
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
                                        <h4>Issued Books List</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                   <hr />
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>

                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id"></asp:BoundField>
                                            <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name"></asp:BoundField>
                                            <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id"></asp:BoundField>
                                            <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name"></asp:BoundField>
                                            <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date"></asp:BoundField>
                                            <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date"></asp:BoundField>
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
