<%@ Page Title="Ilmateade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="uudisedNikulina.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lisa ilmateade</h2>
    <p>&nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ilm_id" DataSourceID="SqlDataSource1_ilm" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="224px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ilm_id" HeaderText="ilm_id" InsertVisible="False" ReadOnly="True" SortExpression="ilm_id" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:BoundField DataField="temp" HeaderText="temp" SortExpression="temp" />
                <asp:TemplateField HeaderText="uudis_id" SortExpression="uudis_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_uudis" DataTextField="uudiseTeema" DataValueField="uudis_id" SelectedValue='<%# Bind("uudis_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_uudis" runat="server" ConnectionString="<%$ ConnectionStrings:uudiseBaasConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema]) VALUES (@uudiseTeema)" SelectCommand="SELECT [uudiseTeema], [uudis_id] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema WHERE [uudis_id] = @uudis_id">
                            <DeleteParameters>
                                <asp:Parameter Name="uudis_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="uudiseTeema" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="uudiseTeema" Type="String" />
                                <asp:Parameter Name="uudis_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField CancelText="Loobu" InsertText="Lisa" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_ilm" runat="server" ConnectionString="<%$ ConnectionStrings:uudiseBaasConnectionString1 %>" DeleteCommand="DELETE FROM [ilm] WHERE [ilm_id] = @ilm_id" InsertCommand="INSERT INTO [ilm] ([kuupaev], [temp], [uudis_id]) VALUES (@kuupaev, @temp, @uudis_id)" SelectCommand="SELECT * FROM [ilm]" UpdateCommand="UPDATE [ilm] SET [kuupaev] = @kuupaev, [temp] = @temp, [uudis_id] = @uudis_id WHERE [ilm_id] = @ilm_id">
            <DeleteParameters>
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="kuupaev" />
                <asp:Parameter Name="temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="kuupaev" />
                <asp:Parameter Name="temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    
</asp:Content>
