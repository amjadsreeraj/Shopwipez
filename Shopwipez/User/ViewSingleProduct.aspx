<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewSingleProduct.aspx.cs" Inherits="Shopwipez.User.ViewSingleProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewSingleproduct" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="Pid" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
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
            <td runat="server" style="">ProductId:
                <asp:Label Text='<%# Eval("ProductId") %>' runat="server" ID="ProductIdLabel" /><br />
                ProductName:
                <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /><br />
                Description:
                <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                CategoryId:
                <asp:Label Text='<%# Eval("CategoryId") %>' runat="server" ID="CategoryIdLabel" /><br />
                Weight:
                <asp:Label Text='<%# Eval("Weight") %>' runat="server" ID="WeightLabel" /><br />
                Price:
                <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /><br />
                Dimentions:
                <asp:Label Text='<%# Eval("Dimentions") %>' runat="server" ID="DimentionsLabel" /><br />
                Composition:
                <asp:Label Text='<%# Eval("Composition") %>' runat="server" ID="CompositionLabel" /><br />
                SizeDfit:
                <asp:Label Text='<%# Eval("SizeDfit") %>' runat="server" ID="SizeDfitLabel" /><br />
                OtherInfo:
                <asp:Label Text='<%# Eval("OtherInfo") %>' runat="server" ID="OtherInfoLabel" /><br />
                Size:
                <asp:Label Text='<%# Eval("Size") %>' runat="server" ID="SizeLabel" /><br />
                Color:
                <asp:Label Text='<%# Eval("Color") %>' runat="server" ID="ColorLabel" /><br />
                Pimage1:
                <asp:Label Text='<%# Eval("Pimage1") %>' Visible="false" runat="server" ID="Pimage1Label" /><br />
                 <asp:Image ID="Image1" ImageUrl='<%#"~/Image/"+Eval("Pimage1") %>' Width="150" Height="100"  runat="server" /><br />
                Pimage2:
                <asp:Label Text='<%# Eval("Pimage2") %>' runat="server" ID="Pimage2Label" /><br />

                 <asp:Image ID="Image2" ImageUrl='<%#"~/Image/"+Eval("Pimage2") %>' Width="150" Height="100"  runat="server" /><br />
                Pimage3:
                <asp:Label Text='<%# Eval("Pimage3") %>' runat="server" ID="Pimage3Label" /><br />
                 <asp:Image ID="Image3" ImageUrl='<%#"~/Image/"+Eval("Pimage3") %>' Width="150" Height="100"  runat="server" /><br />
                Pimage4:
                <asp:Label Text='<%# Eval("Pimage4") %>' runat="server" ID="Pimage4Label" /><br />
                 <asp:Image ID="Image4" ImageUrl='<%#"~/Image/"+Eval("Pimage4") %>' Width="150" Height="100"  runat="server" /><br />
                <br />
                 Quantity:
                <asp:TextBox Text="1" runat="server" CssClass="form-control" ID="TxtQuantity" /><br />
                <br />
                <asp:Button ID="BtnCart" OnClick="BtnCart_Click" runat="server" CssClass="btn btn-success" Text="Add to Cart" />
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
