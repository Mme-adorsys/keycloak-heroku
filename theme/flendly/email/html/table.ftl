<#import "../shared.ftl" as shared>

<#macro mailHeader type="html">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html charset=UTF-8"/>
<meta name="color-scheme" content="light dark">
<meta name="supported-color-schemes" content="light dark">
<head>
    <style>
        <#include "styles.css"/>
    </style>
</head>
<body>
</#macro>

<#macro tableHeader type="html">
<table class="mail-body-text-color mail-body-background">

    <tr>
        <td>
            <a href="http://www.klartax.de/">
                <img src="${url.resourcesUrl}/img/Logo_plain_letters_cuttet.png"
                     alt="Flendly"
                     class="mail-img-big light-img">
                <img src="${url.resourcesUrl}/img/Logo_plain_letters_cuttet.png"
                     alt="KLARTAX"
                     class="mail-img-big dark-img">
            </a>
        </td>
    </tr>
    </#macro>

    <#macro tableFooter type="html">
    <tr>
        <td>
            <@shared.footer></@shared.footer>
            <a href="#">
                <img src="${url.resourcesUrl}/img/Logo_plain_letters_cuttet-p-500.png"
                     alt="Flendly - Eine Marke von Flendly"
                     class="mail-img-small light-img">
                <img src="${url.resourcesUrl}/img/Logo_plain_letters_cuttet-p-500.png"
                     alt="Flendly - Eine Marke von Flendly"
                     class="mail-img-small dark-img">
            </a>
        </td>
    </tr>
</table>

</body>
</html>
</#macro>

