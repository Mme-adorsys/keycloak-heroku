<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("passwordResetSubject")}</p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Das Passwort für Ihren Account soll zurückgesetzt werden.
            </p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Haben Sie diese Änderung
                beantragt? Dann klicken Sie einfach auf den folgenden Link.
            </p>

            <table class="button-table button-table-width">
                <tr>
                    <td class="button-td">
                        <a href="${kcSanitize(link)?no_esc}"
                           class="button-link button-link-font-size"
                           style="color: #1D2D56;background-color: #E5ECF5;"
                           tabindex="1">Passwort zurücksetzen</a>
                    </td>
                </tr>
            </table>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Wenn Sie das Passwort nicht zurücksetzen möchten, ignorieren Sie diese Nachricht
                einfach.
            </p>
        </div>
    </td>
</tr>

<@table.tableFooter></@table.tableFooter>

