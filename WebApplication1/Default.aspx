<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 dir="rtl" draggable="auto" itemscope="itemscope" property="og:site_name" role="search">Search Database here</h1>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="AccountKey" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" AllowPaging="True" ViewStateMode="Enabled">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="AccountKey" HeaderText="AccountKey" ReadOnly="True" SortExpression="AccountKey" />
                    <asp:BoundField DataField="ParentAccountKey" HeaderText="ParentAccountKey" SortExpression="ParentAccountKey" />
                    <asp:BoundField DataField="AccountCodeAlternateKey" HeaderText="AccountCodeAlternateKey" SortExpression="AccountCodeAlternateKey" />
                    <asp:BoundField DataField="ParentAccountCodeAlternateKey" HeaderText="ParentAccountCodeAlternateKey" SortExpression="ParentAccountCodeAlternateKey" />
                    <asp:BoundField DataField="AccountDescription" HeaderText="AccountDescription" SortExpression="AccountDescription" />
                    <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" />
                    <asp:BoundField DataField="Operator" HeaderText="Operator" SortExpression="Operator" />
                    <asp:BoundField DataField="CustomMembers" HeaderText="CustomMembers" SortExpression="CustomMembers" />
                    <asp:BoundField DataField="ValueType" HeaderText="ValueType" SortExpression="ValueType" />
                    <asp:BoundField DataField="CustomMemberOptions" HeaderText="CustomMemberOptions" SortExpression="CustomMemberOptions" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksDWConnectionString %>" DeleteCommand="DELETE FROM [DimAccount] WHERE [AccountKey] = @AccountKey" InsertCommand="INSERT INTO [DimAccount] ([ParentAccountKey], [AccountCodeAlternateKey], [ParentAccountCodeAlternateKey], [AccountDescription], [AccountType], [Operator], [CustomMembers], [ValueType], [CustomMemberOptions]) VALUES (@ParentAccountKey, @AccountCodeAlternateKey, @ParentAccountCodeAlternateKey, @AccountDescription, @AccountType, @Operator, @CustomMembers, @ValueType, @CustomMemberOptions)" SelectCommand="SELECT [AccountKey], [ParentAccountKey], [AccountCodeAlternateKey], [ParentAccountCodeAlternateKey], [AccountDescription], [AccountType], [Operator], [CustomMembers], [ValueType], [CustomMemberOptions] FROM [DimAccount]" UpdateCommand="UPDATE [DimAccount] SET [ParentAccountKey] = @ParentAccountKey, [AccountCodeAlternateKey] = @AccountCodeAlternateKey, [ParentAccountCodeAlternateKey] = @ParentAccountCodeAlternateKey, [AccountDescription] = @AccountDescription, [AccountType] = @AccountType, [Operator] = @Operator, [CustomMembers] = @CustomMembers, [ValueType] = @ValueType, [CustomMemberOptions] = @CustomMemberOptions WHERE [AccountKey] = @AccountKey">
                <DeleteParameters>
                    <asp:Parameter Name="AccountKey" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ParentAccountKey" Type="Int32" />
                    <asp:Parameter Name="AccountCodeAlternateKey" Type="Int32" />
                    <asp:Parameter Name="ParentAccountCodeAlternateKey" Type="Int32" />
                    <asp:Parameter Name="AccountDescription" Type="String" />
                    <asp:Parameter Name="AccountType" Type="String" />
                    <asp:Parameter Name="Operator" Type="String" />
                    <asp:Parameter Name="CustomMembers" Type="String" />
                    <asp:Parameter Name="ValueType" Type="String" />
                    <asp:Parameter Name="CustomMemberOptions" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ParentAccountKey" Type="Int32" />
                    <asp:Parameter Name="AccountCodeAlternateKey" Type="Int32" />
                    <asp:Parameter Name="ParentAccountCodeAlternateKey" Type="Int32" />
                    <asp:Parameter Name="AccountDescription" Type="String" />
                    <asp:Parameter Name="AccountType" Type="String" />
                    <asp:Parameter Name="Operator" Type="String" />
                    <asp:Parameter Name="CustomMembers" Type="String" />
                    <asp:Parameter Name="ValueType" Type="String" />
                    <asp:Parameter Name="CustomMemberOptions" Type="String" />
                    <asp:Parameter Name="AccountKey" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p><a href="https://microsoft.com" class="btn btn-primary btn-lg" draggable="false">Learn more &raquo;</a></p>
        <p>&nbsp;</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProspectiveBuyerKey" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ProspectiveBuyerKey" HeaderText="ProspectiveBuyerKey" ReadOnly="True" SortExpression="ProspectiveBuyerKey" />
                    <asp:BoundField DataField="ProspectAlternateKey" HeaderText="ProspectAlternateKey" SortExpression="ProspectAlternateKey" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="YearlyIncome" HeaderText="YearlyIncome" SortExpression="YearlyIncome" />
                    <asp:BoundField DataField="TotalChildren" HeaderText="TotalChildren" SortExpression="TotalChildren" />
                    <asp:BoundField DataField="NumberChildrenAtHome" HeaderText="NumberChildrenAtHome" SortExpression="NumberChildrenAtHome" />
                    <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                    <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                    <asp:BoundField DataField="NumberCarsOwned" HeaderText="NumberCarsOwned" SortExpression="NumberCarsOwned" />
                    <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="StateProvinceCode" HeaderText="StateProvinceCode" SortExpression="StateProvinceCode" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksDWConnectionString1 %>" DeleteCommand="DELETE FROM [ProspectiveBuyer] WHERE [ProspectiveBuyerKey] = @ProspectiveBuyerKey" InsertCommand="INSERT INTO [ProspectiveBuyer] ([ProspectAlternateKey], [FirstName], [MiddleName], [LastName], [BirthDate], [MaritalStatus], [Gender], [EmailAddress], [YearlyIncome], [TotalChildren], [NumberChildrenAtHome], [Education], [Occupation], [HouseOwnerFlag], [NumberCarsOwned], [AddressLine1], [AddressLine2], [City], [StateProvinceCode], [PostalCode], [Phone], [Salutation], [Unknown]) VALUES (@ProspectAlternateKey, @FirstName, @MiddleName, @LastName, @BirthDate, @MaritalStatus, @Gender, @EmailAddress, @YearlyIncome, @TotalChildren, @NumberChildrenAtHome, @Education, @Occupation, @HouseOwnerFlag, @NumberCarsOwned, @AddressLine1, @AddressLine2, @City, @StateProvinceCode, @PostalCode, @Phone, @Salutation, @Unknown)" SelectCommand="SELECT [ProspectiveBuyerKey], [ProspectAlternateKey], [FirstName], [MiddleName], [LastName], [BirthDate], [MaritalStatus], [Gender], [EmailAddress], [YearlyIncome], [TotalChildren], [NumberChildrenAtHome], [Education], [Occupation], [HouseOwnerFlag], [NumberCarsOwned], [AddressLine1], [AddressLine2], [City], [StateProvinceCode], [PostalCode], [Phone], [Salutation], [Unknown] FROM [ProspectiveBuyer]" UpdateCommand="UPDATE [ProspectiveBuyer] SET [ProspectAlternateKey] = @ProspectAlternateKey, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [BirthDate] = @BirthDate, [MaritalStatus] = @MaritalStatus, [Gender] = @Gender, [EmailAddress] = @EmailAddress, [YearlyIncome] = @YearlyIncome, [TotalChildren] = @TotalChildren, [NumberChildrenAtHome] = @NumberChildrenAtHome, [Education] = @Education, [Occupation] = @Occupation, [HouseOwnerFlag] = @HouseOwnerFlag, [NumberCarsOwned] = @NumberCarsOwned, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [StateProvinceCode] = @StateProvinceCode, [PostalCode] = @PostalCode, [Phone] = @Phone, [Salutation] = @Salutation, [Unknown] = @Unknown WHERE [ProspectiveBuyerKey] = @ProspectiveBuyerKey">
                <DeleteParameters>
                    <asp:Parameter Name="ProspectiveBuyerKey" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProspectAlternateKey" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="DateTime" />
                    <asp:Parameter Name="MaritalStatus" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="YearlyIncome" Type="Decimal" />
                    <asp:Parameter Name="TotalChildren" Type="Byte" />
                    <asp:Parameter Name="NumberChildrenAtHome" Type="Byte" />
                    <asp:Parameter Name="Education" Type="String" />
                    <asp:Parameter Name="Occupation" Type="String" />
                    <asp:Parameter Name="HouseOwnerFlag" Type="String" />
                    <asp:Parameter Name="NumberCarsOwned" Type="Byte" />
                    <asp:Parameter Name="AddressLine1" Type="String" />
                    <asp:Parameter Name="AddressLine2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="StateProvinceCode" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Salutation" Type="String" />
                    <asp:Parameter Name="Unknown" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProspectAlternateKey" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="DateTime" />
                    <asp:Parameter Name="MaritalStatus" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="YearlyIncome" Type="Decimal" />
                    <asp:Parameter Name="TotalChildren" Type="Byte" />
                    <asp:Parameter Name="NumberChildrenAtHome" Type="Byte" />
                    <asp:Parameter Name="Education" Type="String" />
                    <asp:Parameter Name="Occupation" Type="String" />
                    <asp:Parameter Name="HouseOwnerFlag" Type="String" />
                    <asp:Parameter Name="NumberCarsOwned" Type="Byte" />
                    <asp:Parameter Name="AddressLine1" Type="String" />
                    <asp:Parameter Name="AddressLine2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="StateProvinceCode" Type="String" />
                    <asp:Parameter Name="PostalCode" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Salutation" Type="String" />
                    <asp:Parameter Name="Unknown" Type="Int32" />
                    <asp:Parameter Name="ProspectiveBuyerKey" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                &nbsp;</h2>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>

</asp:Content>
