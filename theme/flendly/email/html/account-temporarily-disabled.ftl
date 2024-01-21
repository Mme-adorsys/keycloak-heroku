<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("userTemporarilyDisabled")}</p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Aus Sicherheitsgründen wurde Ihr Benutzerkonto für 30 Minuten gesperrt. Bitte versuchen Sie es nach
                Ablauf der Frist noch einmal oder kontaktieren Sie den Service.
            </p>

        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>
