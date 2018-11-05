<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS.Master" AutoEventWireup="true" CodeBehind="ManageContent.aspx.cs" Inherits="Multicultural_Recruitment_System.ManageContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="CSS.css" rel="stylesheet" />
    <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid borderline">
        <h1>Manage Content</h1>
    </div>
    <div class="container-fluid">
        <div class="col-sm-6">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col-sm-4 text-right">
                    <h3>Which Group?</h3>
                </div>
                <div class="col-sm-2 ">
                    <asp:DropDownList ID="ddlGroup" runat="server">
                        <asp:ListItem Enabled="true" Text="Select Group" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="News" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Apply" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Contact Us" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <asp:DropDownList ID="ddlAddType" Visible="false" runat="server">
                        <asp:ListItem Enabled="true" Text="Select Type" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Build" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Scrap" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="btnSubmitGroupSelect" Text="View Group" OnClick="btnSubmitGroupSelect_Click" runat="server" />
                    <asp:Button ID="btnAddContent" Text="Add Content" OnClick="btnAddContent_Click" Visible="false" runat="server" />
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <asp:Panel ID="pnlAddScraped" Visible="false" runat="server">
            <div class="container-fluid allborders">
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8 h-100 justify-content-center align-items-center">
                        <h2>Scraped URL</h2>
                        <div class="col-sm-12">
                            <asp:TextBox ID="txtScrapedURL" runat="server" />
                        </div>
                        <h2>Periodic Updates</h2>
                        <div class="col-sm-12">
                            <asp:DropDownList ID="ddlUpdate" runat="server">
                                <asp:ListItem Enabled="true" Text="Update Frequency" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Never" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Weekly" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Bi-Yearly" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Yearly" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1">
                        <asp:Button ID="Button1" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                    <div class="col-sm-10">
                    </div>
                    <div class="col-sm-1">
                        <asp:Button ID="Button2" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlAddBuild" Visible="false" runat="server">
            <div class="container-fluid allborders">
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <h2>Title</h2>
                        <textarea id="" class="txaTitle editabletxa"></textarea>
                        <h2>Body</h2>
                        <textarea id="" class="txaBody editabletxa"></textarea>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1">
                        <asp:Button ID="btnCancelAdd" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                    <div class="col-sm-10">
                    </div>
                    <div class="col-sm-1">
                        <asp:Button ID="btnDoneAdd" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlApplicationLink" Visible="false" runat="server">
            <div class="container-fluid allborders">
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <h2>Title</h2>
                        <textarea id="" class="txaTitle editabletxa"></textarea>
                        <h2>Body</h2>
                        <textarea id="" class="txaBody editabletxa"></textarea>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1">
                        <asp:Button ID="btnApplicationLinkAdd" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                    <div class="col-sm-10">
                    </div>
                    <div class="col-sm-1">
                        <asp:Button ID="btnApplicationLinkCancle" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlContactUs" Visible="false" runat="server">
            <div class="container-fluid allborders">
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <h2>Title</h2>
                        <textarea id="" class="txaTitle editabletxa">Contact Us</textarea>
                        <h2>Body</h2>
                        <textarea id="" class="txaBody editabletxa">"Email: recruiting@temple.edu \n Phone: 267-222-2222"</textarea>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1">
                        <asp:Button ID="Button5" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click"/>
                    </div>
                    <div class="col-sm-10">
                    </div>
                    <div class="col-sm-1">
                        <asp:Button ID="Button6" Text="Submit" runat="server" OnClick="btnCancelAdd_Click"/>
                    </div>
                </div>
            </div>
        </asp:Panel>


        <asp:Panel ID="pnlNewsDash" Visible="false" runat="server">
            <div class="container-fluid ">
                <button runat="server" id="btnAddNews" onserverclick="btnAddNews_ServerClick" class="addButton float-right">
                    <i class="far fa-plus-square"></i>
                </button>
            </div>
            <div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Article Title</th>
                            <th scope="col">Article Body</th>
                            <th scope="col"><i class="fas fa-pencil-alt"></i></th>
                            <th scope="col"><i class="fas fa-trash-alt"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Lewis Katz School of Medicine</th>
                            <td>The Lewis Katz School of Medicine at Temple University, located on the Health Science Campus...</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <th scope="row">Article Two</th>
                            <td>Acticle Body 2</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </asp:Panel>
    </div>
    <script>
        tinyMCE.init({
            mode: "exact",
            selector: ".editabletxa",
            //elements: "txaBuildBody",
        });
    </script>

</asp:Content>