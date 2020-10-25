<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Shopwipez.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <h4>Add a new Product.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtPname" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtPname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPname"
                    CssClass="text-danger" ErrorMessage="The product name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtDescription" CssClass="col-md-2 control-label">Description</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtDescription"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDescription"
                    CssClass="text-danger" ErrorMessage="The Description field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Category</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtWeight" CssClass="col-md-2 control-label">Weight</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtWeight"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtWeight"
                    CssClass="text-danger" ErrorMessage="The Weight field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtPrice" CssClass="col-md-2 control-label">Price</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtPrice"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPrice"
                    CssClass="text-danger" ErrorMessage="The Price field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtDiamentions" CssClass="col-md-2 control-label">Diamentions</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtDiamentions"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDiamentions"
                    CssClass="text-danger" ErrorMessage="The Diamentions field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtCompositions" CssClass="col-md-2 control-label">Compositions</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtCompositions"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtCompositions"
                    CssClass="text-danger" ErrorMessage="The Description field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtSizeDfit" CssClass="col-md-2 control-label">Size and fit</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtSizeDfit"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtSizeDfit"
                    CssClass="text-danger" ErrorMessage="The Size and fit field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtOtherInfo" CssClass="col-md-2 control-label">OtherInfo</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtOtherInfo"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtOtherInfo"
                    CssClass="text-danger" ErrorMessage="The OtherInfo field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtSize" CssClass="col-md-2 control-label">Size</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtSize"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtSize"
                    CssClass="text-danger" ErrorMessage="The Size field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtColor" CssClass="col-md-2 control-label">Color</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtColor"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtColor"
                    CssClass="text-danger" ErrorMessage="The Color field is required." />
            </div>
        </div>
       
       <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-2 control-label">Image 1,2,3,4</asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                  <asp:FileUpload ID="FileUpload2" runat="server" />
                  <asp:FileUpload ID="FileUpload3" runat="server" />
                  <asp:FileUpload ID="FileUpload4" runat="server" />

            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" id="BtnSave" OnClick="BtnSave_Click" Text="Save" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
