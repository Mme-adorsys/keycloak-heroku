<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
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
                    <form id="kc-passwd-update-form" class="w-form" action="${url.loginAction}" method="post">

                        <label for="password-new" class="field-label-std">Neues Passwort</label>

                        <input class="text-field-45px w-input" maxlength="256" tabindex="1"
                               name="password-new" type="password" autofocus autocomplete="off" data-name="password-new"
                               placeholder="Neues Passwort"
                               id="user-password-new" required="">

                        <label for="user-email" class="field-label-std">Neues Passwort wiederholen</label>

                        <input type="password" class="text-field-45px w-input" maxlength="256" tabindex="1" autofocus
                               name="password-confirm" autocomplete="off" data-name="password-confirm"
                               placeholder="Passwort wiederholen"
                               id="user-password-confirm" required="">

                        <div class="button-bar">
                            <a id="button-back" href="${url.loginUrl}"
                               class="button-workflow-forward w-button">abbrechen</a>
                            <input
                                    class="call-to-action-max w-button"
                                    type="submit" value="absenden"/>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </#if>
</@layout.registrationLayout>
