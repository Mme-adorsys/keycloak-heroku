<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("welcomeHeader")}</p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Sie haben versucht sich bei
                KLARTAX zu registrieren?
            </p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Wir haben festgestellt, dass Sie
                mit dieser
                E-Mail-Adresse bereits einen Account bei uns haben. Sie können diesen ohne Probleme
                weiterverwenden.
            </p>

            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">
                Sie haben nicht versucht, sich zu registrieren?
                Dann hat wohl jemand anderes versucht, einen Account mit dieser E-Mail-Adresse zu erstellen, jedoch ohne Erfolg.
            </p>

        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>
