<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ProfileSetting.aspx.cs" Inherits="Shopwipez.User.ProfileSetting" %>
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
            <td runat="server" style=""> <asp:Image ID="Image1" ImageUrl='<%#"~/ProfilePicture/"+Eval("Profilrpic") %>' Width="150" Height="100"  runat="server" />
                <asp:Label Text='<%# Eval("UserProfileId") %>' Visible="false" runat="server" ID="UserProfileIdLabel" /><br />
                FirstName:
                <asp:TextBox Text='<%# Eval("FirstName") %>' CssClass="form-control" runat="server" ID="FirstNameLabel" /><br />
                Lastname:
                <asp:TextBox Text='<%# Eval("Lastname") %>' CssClass="form-control" runat="server" ID="LastnameLabel" /><br />
                Email:
                <asp:TextBox Text='<%# Eval("Email") %>' CssClass="form-control" runat="server" ID="EmailLabel" /><br />
                Phone:
                <asp:TextBox Text='<%# Eval("Phone") %>' CssClass="form-control" runat="server" ID="PhoneLabel" /><br />
               
                Profilrpic:
                
                <asp:Label Text='<%# Eval("Profilrpic") %>' runat="server" ID="ProfilrpicLabel" />
                   <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                   
                <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" runat="server" CssClass="btn btn-default" Text="Save Changes" />
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
