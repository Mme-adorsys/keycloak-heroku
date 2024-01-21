<#import "table.ftl" as table>
<#import "../shared.ftl" as shared>

<@table.mailHeader></@table.mailHeader>
<@table.tableHeader></@table.tableHeader>
<tr>
    <td>
        <div class="mail-content mail-content-background">
            <p class="mail-title"
               style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("welcomeHeader")}</p>
            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Wir freuen uns, dass Sie sich
                für
                die Nutzung von KLARTAX entschieden haben.</p>
            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Sie können KLARTAX nun
                kostenfrei
                nutzen. Erst bei Übermittlung Ihrer Steuererklärung an die Finanzverwaltung fallen Kosten gemäß der
                aktuellen Leistungsbeschreibung an.</p>
            <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">Transparenz und Datenschutz sind
                uns
                sehr wichtig. Einmalig senden wir Ihnen deshalb unsere AGB (Leistungsbeschreibung und
                Nutzungsbedingungen) als PDF zu. Unsere Datenschutzinformationen finden Sie unter folgendem
                Download-Link: <a
                        href="https://www.klartax.de/fileadmin/user_upload/klartax_app_datenschutzinformationen.pdf">Datenschutz-Informationen</a>.
            </p>
        </div>
    </td>
</tr>
<@table.tableFooter></@table.tableFooter>