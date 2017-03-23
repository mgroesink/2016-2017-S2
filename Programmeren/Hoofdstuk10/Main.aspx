<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Main.aspx.vb" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:TextBox ID="txtZoek" runat="server"></asp:TextBox>
    <asp:Button ID="btnZoek" runat="server" Text="Zoek" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="movie_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" Width="774px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="movie_id" HeaderText="movie_id" ReadOnly="True" SortExpression="movie_id" InsertVisible="False" Visible="False" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="release_date" HeaderText="release_date" SortExpression="release_date" DataFormatString="{0:d}" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [movies] WHERE [movie_id] = @movie_id" InsertCommand="INSERT INTO [movies] ([title], [release_date]) VALUES (@title, @release_date)" SelectCommand="SELECT [movie_id], [title], [release_date] FROM [movies] WHERE ([title] LIKE '%' + @title + '%')" UpdateCommand="UPDATE [movies] SET [title] = @title, [release_date] = @release_date WHERE [movie_id] = @movie_id">
        <DeleteParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtZoek" Name="title" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
            <asp:Parameter Name="movie_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="review_id" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="779px">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FieldHeaderStyle Width="20%" />
        <Fields>
            <asp:BoundField DataField="review_id" HeaderText="review_id" InsertVisible="False" ReadOnly="True" SortExpression="review_id" />
            <asp:BoundField DataField="movie_id" HeaderText="movie_id" SortExpression="movie_id" />
            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
            <asp:BoundField DataField="review" HeaderText="review" SortExpression="review" />
            <asp:BoundField DataField="reviewer" HeaderText="reviewer" SortExpression="reviewer" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
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

