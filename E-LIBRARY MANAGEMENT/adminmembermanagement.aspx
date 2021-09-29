<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
   </script>
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
                                        <h4>Member Details</h4>       
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/imgs/generaluser.png" width="100px" />

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
                                   <label>Member ID</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                          placeholder="member id" runat="server"></asp:TextBox>
                                       <asp:LinkButton CssClass="btn1 btn-success "  ID="LinkButton4" runat="server" OnClick="LinkButton4_click" Text="A"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                   <label>Full Name</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                          placeholder="full name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                   <label>Account Status</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" 
                                          placeholder="status" runat="server" ReadOnly="True"></asp:TextBox>
                                           <asp:LinkButton CssClass="btn1 btn-success mr-1"  ID="LinkButton1" runat="server" Text="A" OnClick="LinkButton1_click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                           <asp:LinkButton CssClass="btn1 btn-warning mr-1"  ID="LinkButton2" runat="server" Text="P" OnClick="LinkButton2_click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                           <asp:LinkButton CssClass="btn1 btn-danger  mr-1"  ID="LinkButton3" runat="server" Text="D" OnClick="LinkButton3_click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                       
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                   <label>DOB</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                          placeholder="dob" runat="server" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                       
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                   <label>Contact No</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox9" 
                                          placeholder="contact no" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                   <label>Email ID</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox10" 
                                          placeholder="email id" runat="server" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                       
                                        </div>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col-md-4">
                                   <label>State</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox11" 
                                          placeholder="state" runat="server"  ReadOnly="True"></asp:TextBox>
                                       
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                   <label>City</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox12" 
                                          placeholder="city" runat="server"  ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                   <label>PinCode</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox13" 
                                          placeholder="pincode" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                       
                                        </div>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col-12">
                                   <label>Full Postal Address</label>
                                   <div class="form-group">
                                       <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox14" 
                                          placeholder="full postal address" runat="server"  ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                       
                                        </div>
                                    </div>
                                </div>
                                </div>
                            <br />
                            <div class="row">
                                <div class="col-md-8 mx-auto">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-danger btn-lg " 
                                           ID="Button1" runat="server" Text="Delete Member Permanently" OnClick="Button1_click" />
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
                                        <h4>Members List</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                   <hr />
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                            <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                            <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                            <asp:BoundField DataField="email" HeaderText="E-Mail ID" SortExpression="email" />
                                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
