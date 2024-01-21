<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("eventUpdatePasswordSubject")}</p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Das Passwort für Ihren Account wurde zurückgesetzt.
            </p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Haben Sie diese Änderung nicht selbst vorgenommen, dann wenden Sie sich Bitte an Ihren Administrator.
            </p>

        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>