<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to limit the text length in the ASPxMemo using the HTML5 maxLength attribute</title>
</head>
<body>
    <script type="text/javascript">
        function setMaxLength(s, e) {
            memo.GetInputElement().maxLength = spin.GetValue();
        }
    </script>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" Width="170px" ClientInstanceName="memo">
            <ClientSideEvents Init="setMaxLength" />
        </dx:ASPxMemo>
        <dx:ASPxSpinEdit ID="ASPxSpinEdit1" runat="server" Height="21px" Number="20" HelpText="Max symbols count" ClientInstanceName="spin">
            <ClientSideEvents ValueChanged="setMaxLength" />
        </dx:ASPxSpinEdit>
    </div>
    </form>
</body>
</html>
