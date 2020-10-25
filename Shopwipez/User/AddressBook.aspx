<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="AddressBook.aspx.cs" Inherits="Shopwipez.User.AddressBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewMyprofileDetails" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="UserId" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="UserProfileId" GroupItemCount="3">
        
        
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
        
        <ItemTemplate>
            <td runat="server" style="">
                <asp:Label Text='<%# Eval("UserProfileId") %>' Visible="false" runat="server" ID="UserProfileIdLabel" />
             
                <asp:Label Text='<%# Eval("FirstName") %>' Visible="false" runat="server" ID="FirstNameLabel" />
              
                <asp:Label Text='<%# Eval("Lastname") %>' Visible="false" runat="server" ID="LastnameLabel" />
              
                <asp:Label Text='<%# Eval("Email") %>' Visible="false" runat="server" ID="EmailLabel" />
               
                <asp:Label Text='<%# Eval("Phone") %>' Visible="false" runat="server" ID="PhoneLabel" />
                HouseName:
                <asp:Textbox Text='<%# Eval("HouseName") %>' CssClass="form-control" runat="server" ID="HouseNameLabel" /><br />
                Street:
                <asp:Textbox Text='<%# Eval("Street") %>' CssClass="form-control"  runat="server" ID="StreetLabel" /><br />
                City:
                <asp:Textbox Text='<%# Eval("City") %>' CssClass="form-control"  runat="server" ID="CityLabel" /><br />
                State:
                <asp:Textbox Text='<%# Eval("State") %>' CssClass="form-control"  runat="server" ID="StateLabel" /><br />
                Country:
                <asp:Textbox Text='<%# Eval("Country") %>' CssClass="form-control"  runat="server" ID="CountryLabel" /><br />
                Zip:
                <asp:Textbox Text='<%# Eval("Zip") %>' CssClass="form-control"  runat="server" ID="ZipLabel" /><br />
                <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" runat="server" CssClass="btn btn-default" Text="Save Changes" />
                <asp:Label Text='<%# Eval("Profilrpic") %>' Visible="false" runat="server" ID="ProfilrpicLabel" /><br />
            
                <asp:Label Text='<%# Eval("UserId") %>' Visible="false" runat="server" ID="UserIdLabel" /><br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                            <tr runat="server" id="groupPlaceholder"></tr>
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
