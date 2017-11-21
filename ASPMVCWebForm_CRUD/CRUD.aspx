<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="ASPMVCWebForm_CRUD.CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="224px" ShowFooter="True" Width="689px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="EmpID" InsertVisible="False" SortExpression="EmpID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmpID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmpID") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="BtnCreate" runat="server" ValidationGroup="CREATE" OnClick="BtnCreate_Click" Text="Create" />    
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditName" runat="server" Text="*" ErrorMessage="The Employee Name field is required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ValidationGroup="CREATE" Text="*" ErrorMessage="The Employee Name field is required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Position" SortExpression="Position">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Position") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPosition" runat="server" Text="*" ErrorMessage="The Position Field is required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Position") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPosition" runat="server" ValidationGroup="CREATE" Text="*" ErrorMessage="The Position field is required" ControlToValidate="txtPosition" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ValidationGroup="CREATE" ForeColor="Red"/>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebformsConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpID] = @EmpID" InsertCommand="INSERT INTO [Employee] ([Name], [Position]) VALUES (@Name, @Position)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [Position] = @Position WHERE [EmpID] = @EmpID">
            <DeleteParameters>
                <asp:Parameter Name="EmpID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="EmpID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
