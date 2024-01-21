<#macro feedback type="html">
    <#if type = "html">
        <p>${msg("feedBackQuestion")}
            <br aria-hidden="true">${msg("feedBackInfo")}
        </p>
        <br aria-hidden="true">
        <br aria-hidden="true">
    <#else>
        ${msg("feedBackQuestion")}
        ${msg("feedBackInfo")}
    </#if>
</#macro>

<#macro feedbackShort type="html">
    <#if type = "html">
        <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("feedBackQuestionShort")}
            <br aria-hidden="true">
            ${msg("feedBackInfoShort")}
        </p>
    <#else>
        ${msg("feedBackQuestionShort")}
        ${msg("feedBackInfoShort")}
    </#if>
</#macro>

<#macro signoff type="html">
    <#if type = "html">
        <p style="font-size: 18px; font-family: 'Source Sans Pro', sans-serif;">${msg("signOffThanks")}
            <br aria-hidden="true">${msg("signOffTeam")}
        </p>
        <br aria-hidden="true">
    <#else>
        ${msg("signOffThanks")}
        ${msg("signOffTeam")}
    </#if>
</#macro>


<#macro footer type="html">
    <#if type = "html">
        <p style="font-size:12px;text-align:center;margin-bottom:1.1em;">Flendly UG (haftungsbeschränkt)
            <br aria-hidden="true">Schäftlarnstraße 99
            <br aria-hidden="true">81371 München, Deutschland
            <br aria-hidden="true">
            <br aria-hidden="true">Registergericht: Amtsgericht München, HRB 359339
            <br aria-hidden="true">Geschäftsführer: Andre Nonnenmacher
            <br aria-hidden="true">
            <br aria-hidden="true">Unsere Datenschutzhinweise finden Sie <a href="#">hier</a>
        </p>
    <#else>
        FLENDLY UG (haftungsbeschränkt)
        Schäftlarnstraße 99
        81371 München, Deutschland

        Registergericht: Amtsgericht München, HRB 359339
        Geschäftsführer: Andre Nonnenmacher

        <p>Unsere Datenschutzhinweise finden Sie <a href="#">hier</a> </p>

    </#if>
</#macro>


