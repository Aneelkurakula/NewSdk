﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScreenShare.aspx.cs" Inherits="UCENTRIK.WEB.PLATFORM.dirAgent.ScreenShare" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Unit</title>
    <script type="text/javascript">

        function OnRefreshSubscriber(oid) {
            var obj = list_obj[oid];
            if (obj != null) {
                var status_off = obj.status == "off";
                document.getElementById("ButtonStart").disabled = !status_off;
                document.getElementById("ButtonStop").disabled = status_off;
                document.getElementById("ButtonControl").disabled = status_off;

                var text = "Control On";
                if(obj.id_control_by == 2)
                {
                     text = "Control Off";
                }
                document.getElementById("ButtonControl").value = text;
            }
        }

    </script>
</head>
<body>
    <form runat="server">
    <div>
        <table border="1">
            <tr>
                <td>
                    <asp:Button ID="ButtonStart" runat="server" Text="Start" ClientIDMode="Static" Enabled="true" />
                    <asp:Button ID="ButtonStop" runat="server" Text="Stop" ClientIDMode="Static" Enabled="true"
                        disabled="disabled" />
                    <asp:Button ID="ButtonControl" runat="server" Text="Control On" ClientIDMode="Static"
                        Enabled="true" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <object id="wye_uic_screen" classid="clsid:748C7CED-885E-4733-ADA6-890A0C94CBC6"
                        codebase="<%=uctx_cab%>" width="<%=this.UIControlWidth%>"
                        height="<%=this.UIControlHeight%>">
                    </object>
                </td>
            </tr>
        </table>
    </div>
   
    </form>
</body>
</html>
