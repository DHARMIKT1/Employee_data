<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee_data.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 421px">
            <h1>Employee Registration</h1>
            <asp:TextBox ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" />
            &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" Visible="false" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:ButtonField CommandName="EditRow" Text="Edit" ButtonType="Button" />
                    <asp:ButtonField CommandName="DeleteRow" Text="Delete" ButtonType="Button" />
                </Columns>
            </asp:GridView>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        </div>
    </form>
</body>
</html>
