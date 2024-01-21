<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <div>
            <div class="padding-30"></div>

            <div class="section-workflow-progress-bar">
                <div class="container-workflow w-container">
                    <div class="padding-5"></div>

                    <div class="kc-logo-text"/>
                </div>
            </div>
            <div class="padding-30"></div>
            <div class="container-std w-container">
                <div class="w-form">
                    <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction}"
                          method="post" class="w-form" >

                        <label for="user-email" class="field-label-std">Ihre Email Adresse</label>

                        <input type="text" class="text-field-45px w-input" maxlength="256" tabindex="1" autofocus
                               name="username" type="text" autofocus autocomplete="off" data-name="username"
                               placeholder="Ihre Email"
                               id="user-username" required="">


                        <div class="button-bar">
                            <button
                                    id="button-back"
                                    class="button-workflow-back w-node-c34aae07-d4ae-83b6-6df1-74d77b4e2468-1e4981b7 w-button"
                                    onclick="location.href='${url.loginUrl}'"
                            >
                                zurück
                            </button>
                            <button
                                    class="button-workflow-forward w-node-c34aae07-d4ae-83b6-6df1-74d77b4e2468-1e4981b7 w-button"
                                    type="submit" value="weiter"
                            >Weiter
                            </button>
                        </div>

                        <div class="padding-10"></div>
                    </form>
                </div>
            </div>
        </div>
    <#elseif section = "info" >
        <#if realm.duplicateEmailsAllowed>
            ${msg("emailInstructionUsername")}
        <#else>
            ${msg("emailInstruction")}
        </#if>
    </#if>
</@layout.registrationLayout>
