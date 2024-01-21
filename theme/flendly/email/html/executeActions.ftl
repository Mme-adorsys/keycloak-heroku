<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("eventUpdatePasswordSubject")}</p>

            Ihr Administrator hat Sie aufgefordert Ihren Account zu aktualisieren.

            Klicken Sie einfach auf den
            unten stehenden Link, und schon geht's los!

            <table class="button-table button-table-width">
                <tr>
                    <td class="button-td">
                        <a href="${kcSanitize(link)?no_esc}"
                           class="button-link button-link-font-size"
                           style="color: #1D2D56;background-color: #E5ECF5;"
                           tabindex="1">Account aktualisieren</a>
                    </td>
                </tr>
            </table>

            Wenn Sie von dieser Aufforderung nichts wissen, ignorieren Sie diese Nachricht einfach. Dann bleibt Ihr
            Account
            unverändert.

        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>