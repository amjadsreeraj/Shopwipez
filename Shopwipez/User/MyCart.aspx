<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="Shopwipez.User.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewMyCart" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="UprofileId" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="CartId">
        
        
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
                      <asp:Image ID="Image1" ImageUrl='<%#"~/Image/"+Eval("Pimage1") %>' Width="80" Height="80"  runat="server" />
                    <asp:Label Text='<%# Eval("Pimage1") %>' Visible="false" runat="server" ID="Pimage1Label" /></td>
                <td>
                    <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                <td>
                    <asp:TextBox Text='<%# Eval("Quantity") %>' CssClass="form-control" runat="server" ID="QuantityLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("CartId") %>' runat="server" ID="CartIdLabel" /></td>
                <td>
                   <%-- <asp:Button ID="BtnDelete" OnClick="BtnDelete_Click"  CssClass="btn btn-success" runat="server" Text="Delete" />--%>
                    <asp:ImageButton ID="ImageButton1" OnClick="BtnDelete_Click" ImageUrl="~/Icons/Delete.png" Width="50" Height="50" runat="server" />
                     </td>
                <td>
                    <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" CssClass="btn btn-success" runat="server" Text="Save Changes" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server">Pimage1</th>
                                <th runat="server">ProductName</th>
                                <th runat="server">Quantity</th>
                                <th runat="server">Price</th>
                                <th runat="server">CartId</th>
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
