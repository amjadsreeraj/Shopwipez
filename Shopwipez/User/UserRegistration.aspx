<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Shopwipez.User.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="form-horizontal">
        <h4>New Complete Registration.</h4>
        <hr />
     
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtFname" CssClass="col-md-2 control-label"> First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtFname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtFname"
                    CssClass="text-danger" ErrorMessage="The First name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtLname" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtLname"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtLname"
                    CssClass="text-danger" ErrorMessage="The Last Name field is required." />
            </div>
        </div>
         
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtEmail" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtEmail"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtEmail"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtPhone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtPhone"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPhone"
                    CssClass="text-danger" ErrorMessage="The Phone number field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtHouseName" CssClass="col-md-2 control-label">House Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtHouseName"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtHouseName"
                    CssClass="text-danger" ErrorMessage="The House name field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtStreet" CssClass="col-md-2 control-label">Street</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtStreet"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtStreet"
                    CssClass="text-danger" ErrorMessage="The Street field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtCity" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtCity"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtCity"
                    CssClass="text-danger" ErrorMessage="The City and fit field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtState" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtState"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtState"
                    CssClass="text-danger" ErrorMessage="The State field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtCountry" CssClass="col-md-2 control-label">Country</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtCountry"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtCountry"
                    CssClass="text-danger" ErrorMessage="The Country field is required." />
            </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TxtZip" CssClass="col-md-2 control-label">Zip</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtZip"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtZip"
                    CssClass="text-danger" ErrorMessage="The Zip field is required." />
            </div>
        </div>

       
       <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-2 control-label">Picture</asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                  

            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" id="BtnSave" OnClick="BtnSave_Click" Text="Save" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
