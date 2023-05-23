<%@ Page Title="Uudised" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="uudisedNikulina.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uudised</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Width="427px" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>

            <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudiseBaasConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema], [kirjeldus], [kuupaev]) VALUES (@uudiseTeema, @kirjeldus, @kuupaev)" SelectCommand="SELECT [uudiseTeema], [kirjeldus], [kuupaev], [uudis_id] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema, [kirjeldus] = @kirjeldus, [kuupaev] = @kuupaev WHERE [uudis_id] = @uudis_id">
        <DeleteParameters>
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h3>
        Lisa uudis</h3>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="64px" Width="288px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" InsertVisible="False" ReadOnly="True" SortExpression="uudis_id" />
                <asp:CommandField CancelText="Loobu" InsertText="Lisa" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
</p>

</asp:Content>
