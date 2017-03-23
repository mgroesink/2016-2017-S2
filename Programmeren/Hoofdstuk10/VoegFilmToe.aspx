<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VoegFilmToe.aspx.cs" Inherits="VoegFilmToe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="530px" AutoGenerateRows="False" DataKeyNames="movie_id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="movie_id" HeaderText="movie_id" InsertVisible="False" ReadOnly="True" SortExpression="movie_id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="release_date" HeaderText="release_date" SortExpression="release_date" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [movies] WHERE [movie_id] = @movie_id" InsertCommand="INSERT INTO [movies] ([title], [release_date]) VALUES (@title, @release_date)" SelectCommand="SELECT * FROM [movies]" UpdateCommand="UPDATE [movies] SET [title] = @title, [release_date] = @release_date WHERE [movie_id] = @movie_id">
    <DeleteParameters>
        <asp:Parameter Name="movie_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="release_date" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="release_date" Type="DateTime" />
        <asp:Parameter Name="movie_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

