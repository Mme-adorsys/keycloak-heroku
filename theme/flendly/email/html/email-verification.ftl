<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">

                Herzlich Willkommen bei Flendly
            </p>


            <table class="button-table button-table-width">
                <tr>
                    <td class="button-td">
                        <a href="${kcSanitize(link)?no_esc}"
                           class="button-link button-link-font-size"
                           style="color: #1D2D56;background-color: #E5ECF5;"
                           tabindex="1">Registrierung abschließen</a>
                    </td>
                </tr>
            </table>


            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Zu Ihrer Sicherheit bitten wir Sie noch Ihr Konto zu bestätigen, indem Sie auf die obige Schaltfläche
                klicken. Der Link
                ist ${kcSanitize(linkExpirationFormatter(linkExpiration))?no_esc} gültig.</p>
            <br>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Ihr Team von Flendly.</p>

        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>