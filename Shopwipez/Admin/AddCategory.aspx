<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Shopwipez.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="form-horizontal">
        <h4>Add a new Product.</h4>
        <hr />
  
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtCat" CssClass="col-md-2 control-label">Category Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtCat" CssClass="form-control" />
              
            </div>
        </div>

             <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" id="BtnSave" OnClick="BtnSave_Click" Text="Save" CssClass="btn btn-default" />
            </div>
        </div>
          </div>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewAllCategoery" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="CategoryId">
     
      
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("CategoryId") %>' runat="server" ID="CategoryIdLabel" /></td>
                <td>
                    <asp:Textbox Text='<%# Eval("CategoryName") %>' runat="server" ID="CategoryNameLabel" /></td>
                <td>
                    <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" CssClass="btn btn-default" runat="server" Text="Update" /> </td>
                <td>  <asp:Button ID="BtnDelete" OnClick="BtnDelete_Click" CssClass="btn btn-default" runat="server" Text="Delete" /> </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server">CategoryId</th>
                                <th runat="server">CategoryName</th>
                                 <th runat="server">Update</th>
                                 <th runat="server">Delete</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
       
    </asp:ListView>
</asp:Content>

