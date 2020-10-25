<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Shopwipez.Admin.ManageProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewAllProducts" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="ProductId" GroupItemCount="3">
        
        
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
                <asp:Image ID="Image1" ImageUrl='<%#"~/Image/"+Eval("Pimage1") %>' Width="150" Height="100"  runat="server" />
               <br />
            
                <asp:Label Text='<%# Eval("ProductId") %>' Visible="false" runat="server" ID="ProductIdLabel" /><br />
                ProductName:
                <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /><br />
                Description:
                <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                 Price:
                <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /><br />
                <asp:Button ID="BtnEdit" OnClick="BtnEdit_Click" CssClass="btn btn-default" runat="server" Text="Edit" />
                <asp:Button ID="BtnDelete" OnClick="BtnDelete_Click" CssClass="btn btn-default" runat="server" Text="Delete" />
                <br />
               
                <asp:Label Text='<%# Eval("CategoryId") %>' Visible="false" runat="server" ID="CategoryIdLabel" /><br />
               
                <asp:Label Text='<%# Eval("Weight") %>' Visible="false" runat="server" ID="WeightLabel" /><br />
               
          
                <asp:Label Text='<%# Eval("Dimentions") %>' Visible="false" runat="server" ID="DimentionsLabel" /><br />
              
                <asp:Label Text='<%# Eval("Composition") %>' Visible="false" runat="server" ID="CompositionLabel" /><br />
          
                <asp:Label Text='<%# Eval("SizeDfit") %>' Visible="false" runat="server" ID="SizeDfitLabel" /><br />
         
                <asp:Label Text='<%# Eval("OtherInfo") %>' Visible="false" runat="server" ID="OtherInfoLabel" /><br />
          
                <asp:Label Text='<%# Eval("Size") %>' Visible="false" runat="server" ID="SizeLabel" /><br />
             
                <asp:Label Text='<%# Eval("Color") %>' Visible="false" runat="server" ID="ColorLabel" /><br />
           
                <asp:Label Text='<%# Eval("Pimage1") %>' Visible="false" runat="server" ID="Pimage1Label" /><br />
            
                <asp:Label Text='<%# Eval("Pimage2") %>' Visible="false" runat="server" ID="Pimage2Label" /><br />
          
                <asp:Label Text='<%# Eval("Pimage3") %>' Visible="false" runat="server" ID="Pimage3Label" /><br />
              
                <asp:Label Text='<%# Eval("Pimage4") %>' Visible="false" runat="server" ID="Pimage4Label" /><br />
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
