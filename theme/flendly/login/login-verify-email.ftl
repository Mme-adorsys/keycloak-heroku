<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
        <div>
            <div class="padding-50"></div>

            <div class="section-workflow-progress-bar">
                <div class="container-workflow w-container">
                    <div class="padding-5"></div>

                    <div class="kc-logo-text"/>
                </div>
            </div>
            <div class="padding-30"></div>
            <div class="container-std w-container">
                <div class="w-form">
                    <div id="kc-form-login" class="w-form">
                        <div class="container-std w-container">
                            <h1 class="heading-float-3">Wir haben Ihnen eine Email zur Bestätigung geschickt</h1>
                            <h1 class="heading-float-3">Bitte bestätigen Sie ihren Account durch den Link in der Email</h1>
                            <div class="padding-5"></div>
                        </div>
                        <div class="padding-10"></div>
                    </div>
                </div>
            </div>
        </div>

    <#elseif section = "info">
        <p class="instruction">
            ${msg("emailVerifyInstruction2")}
            <br/>
            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
    </#if>
</@layout.registrationLayout>
