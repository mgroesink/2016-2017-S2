<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Main.aspx.vb" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:TextBox ID="txtZoek" runat="server"></asp:TextBox>
    <asp:Button ID="btnZoek" runat="server" Text="Zoek" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="movie_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="3" Width="774px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" Font-Size="Large" PageSize="15">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Images/select.png" SelectText="" />
            <asp:BoundField DataField="movie_id" HeaderText="movie_id" ReadOnly="True" SortExpression="movie_id" InsertVisible="False" Visible="False" />
            <asp:BoundField DataField="title" HeaderText="Titel" SortExpression="title" />
            <asp:BoundField DataField="release_date" HeaderText="Release datum" SortExpression="release_date" DataFormatString="{0:d}" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerSettings Position="TopAndBottom" />
        <PagerStyle CssClass="PagerButton" Font-Size="Medium" ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [movies] WHERE [movie_id] = @movie_id" InsertCommand="INSERT INTO [movies] ([title], [release_date]) VALUES (@title, @release_date)" SelectCommand="SELECT [movie_id], [title], [release_date] FROM [movies] WHERE ([title] LIKE '%' + @title + '%')" UpdateCommand="UPDATE [movies] SET [title] = @title, [release_date] = @release_date WHERE [movie_id] = @movie_id">
        <DeleteParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtZoek" Name="title" PropertyName="Text" Type="String" DefaultValue=" " />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
            <asp:Parameter Name="movie_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="review_id" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="779px" Font-Size="Large" GridLines="Horizontal">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <FieldHeaderStyle Width="20%" />
        <Fields>
            <asp:BoundField DataField="review_id" HeaderText="review_id" InsertVisible="False" ReadOnly="True" SortExpression="review_id" Visible="False" />
            <asp:BoundField DataField="movie_id" HeaderText="Film ID" SortExpression="movie_id" />
            <asp:BoundField DataField="summary" HeaderText="Samenvatting" SortExpression="summary" />
            <asp:BoundField DataField="rating" HeaderText="Waardering" SortExpression="rating" />
            <asp:BoundField DataField="review" HeaderText="Beoordeling" SortExpression="review" />
            <asp:BoundField DataField="reviewer" HeaderText="Beoordeeld door" SortExpression="reviewer" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [reviews] WHERE [review_id] = @review_id" InsertCommand="INSERT INTO [reviews] ([movie_id], [summary], [rating], [review], [reviewer]) VALUES (@movie_id, @summary, @rating, @review, @reviewer)" SelectCommand="SELECT * FROM [reviews] WHERE ([movie_id] = @movie_id)" UpdateCommand="UPDATE [reviews] SET [movie_id] = @movie_id, [summary] = @summary, [rating] = @rating, [review] = @review, [reviewer] = @reviewer WHERE [review_id] = @review_id">
        <DeleteParameters>
            <asp:Parameter Name="review_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="reviewer" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="movie_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="reviewer" Type="String" />
            <asp:Parameter Name="review_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

