<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Shopwipez.Admin.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="ViewSingleproduct" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Pid" Type="Int32"></asp:Parameter>
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
            <div class="col-md-4">
            <td runat="server" style="">ProductId:
                <asp:Label Text='<%# Eval("ProductId") %>' runat="server" ID="ProductIdLabel" /><br />
                ProductName:
                <asp:textBox Text='<%# Eval("ProductName") %>' CssClass="form-control" runat="server" ID="ProductNameLabel" /><br />
                Description:
                <asp:textBox Text='<%# Eval("Description") %>' CssClass="form-control" runat="server" ID="DescriptionLabel" /><br />
                CategoryId:
                <asp:textBox Text='<%# Eval("CategoryId") %>' CssClass="form-control" runat="server" ID="CategoryIdLabel" /><br />
                Weight:
                <asp:textBox Text='<%# Eval("Weight") %>' CssClass="form-control" runat="server" ID="WeightLabel" /><br />
                Price:
                <asp:textBox Text='<%# Eval("Price") %>' CssClass="form-control" runat="server" ID="PriceLabel" /><br />
                Dimentions:
                <asp:textBox Text='<%# Eval("Dimentions") %>' CssClass="form-control" runat="server" ID="DimentionsLabel" /><br />
                Composition:
                <asp:textBox Text='<%# Eval("Composition") %>' CssClass="form-control" runat="server" ID="CompositionLabel" /><br />
                SizeDfit:
                <asp:textBox Text='<%# Eval("SizeDfit") %>' CssClass="form-control" runat="server" ID="SizeDfitLabel" /><br />
                OtherInfo:
                <asp:textBox Text='<%# Eval("OtherInfo") %>' CssClass="form-control" runat="server" ID="OtherInfoLabel" /><br />
                Size:
                <asp:textBox Text='<%# Eval("Size") %>' CssClass="form-control" runat="server" ID="SizeLabel" /><br />
                Color:
                <asp:textBox Text='<%# Eval("Color") %>' CssClass="form-control" runat="server" ID="ColorLabel" /><br />
                Pimage1:
                                <asp:Image ID="Image1" ImageUrl='<%#"~/Image/"+Eval("Pimage1") %>' Width="150" Height="100"  runat="server" />
                <asp:Label Text='<%# Eval("Pimage1") %>' runat="server" ID="Pimage1Label" /><br />
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                  
                Pimage2:
                                <asp:Image ID="Image2" ImageUrl='<%#"~/Image/"+Eval("Pimage2") %>' Width="150" Height="100"  runat="server" />
                <asp:Label Text='<%# Eval("Pimage2") %>' runat="server" ID="Pimage2Label" /><br />
                <asp:FileUpload ID="FileUpload2" runat="server" />
                  
                Pimage3:
                                <asp:Image ID="Image3" ImageUrl='<%#"~/Image/"+Eval("Pimage3") %>' Width="150" Height="100"  runat="server" />
                <asp:Label Text='<%# Eval("Pimage3") %>' runat="server" ID="Pimage3Label" /><br />
                <asp:FileUpload ID="FileUpload3" runat="server" />
                
                Pimage4:
                                <asp:Image ID="Image4" ImageUrl='<%#"~/Image/"+Eval("Pimage4") %>' Width="150" Height="100"  runat="server" />
                <asp:Label Text='<%# Eval("Pimage4") %>' runat="server" ID="Pimage4Label" /><br />
                  <asp:FileUpload ID="FileUpload4" runat="server" /><br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-default" Text="Update" />
            </td>
                </div>
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
