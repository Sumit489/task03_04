<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imagedl.aspx.cs" Inherits="task_03.Imagedl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Product Name:-
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Price
                    </td>
                    <td>
                        <asp:TextBox ID="price" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description
                    </td>
                    <td>
                        <asp:TextBox ID="description" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td>
                        Upload Image
                    </td>
                    <td>
                        <asp:FileUpload ID="image" runat="server" />
                    </td>
                </tr>
                    <td>
                        
                        <asp:Button ID="btn" runat="server" Text="submit" OnClick="btn_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
            <ItemTemplate>
                <br />
                productname:
                <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                productimage:
               <img height="200px" width="200px" src='<%#"data:image/jpg;base64,"+Convert.ToBase64String((byte[]) Eval("productimage"))%>'
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dpPMSConnectionString %>" SelectCommand="SELECT * FROM [productmaster]"></asp:SqlDataSource>
    </form>
</body>
</html>
