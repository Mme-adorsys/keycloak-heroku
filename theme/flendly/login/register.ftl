<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.name!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.name!''))}
    <#elseif section = "form">

        <div class="padding-30"></div>

        <div class="section-workflow-progress-bar">
            <div class="container-workflow w-container">
                <div class="padding-5"></div>

                <div class="kc-logo-text"/>
            </div>
        </div>
        <div class="section-workflow-progress-bar">
            <div class="container-workflow w-container">
                <div class="padding-20"></div>
                <div id="progress-bar" class="w-layout-grid grid-progress-bar-ag">
                    <div id="w-node-_4088fb23-507b-71b4-8bb5-bedd1ed2c3b6-1e4981b7" class="div-block-grid-accent"></div>
                    <div id="w-node-_4088fb23-507b-71b4-8bb5-bedd1ed2c3b7-1e4981b7"
                         class="div-block-grid-accent-light"></div>
                    <div id="w-node-_4088fb23-507b-71b4-8bb5-bedd1ed2c3b9-1e4981b7"
                         class="div-block-grid-accent-light"></div>
                    <div id="w-node-_4088fb23-507b-71b4-8bb5-bedd1ed2c3ba-1e4981b7"
                         class="div-block-grid-accent-light"></div>
                    <div id="w-node-_4088fb23-507b-71b4-8bb5-bedd1ed2c3bb-1e4981b7"
                         class="div-block-grid-accent-light"></div>
                    <div id="w-node-ee338ff9-c015-e29e-c15d-86608deafec9-1e4981b7"
                         class="div-block-grid-accent-light"></div>
                    <div id="w-node-_47ffab40-ed6c-430c-fe5c-b21bbdb7eeee-1e4981b7"
                         class="div-block-grid-dark-grey"></div>
                    <div class="div-block-grid-dark-grey"></div>
                    <div class="div-block-grid-dark-grey"></div>
                </div>
                <div class="padding-20"></div>
            </div>
        </div>
        <div class="padding-30"></div>

        <div class="container-std w-container">
            <div class="w-form">
                <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}"
                      method="post" class="w-form">
                    <div id="employee_reg_01" class="div-block-workflow">
                        <h1 class="heading-float-2 black">Schön, dass Sie da sind!</h1>
                        <div class="padding-10"></div>
                        <p class="paragraph-workflow"><strong>Bitte vergeben Sie eine Email Adresse und ein
                                Passwort.</strong>
                        </p>
                        <div class="padding-10"></div>

                        <div class="wrapper-460px"><label for="user-email" class="field-label-std">Email</label>
                            <input
                                    type="email" class="text-field-45px w-input" maxlength="256"
                                    data-name="email"
                                    placeholder="Ihre Email Adresse" id="email" required="" name="email"
                                    value="${(register.formData.email!'')}">
                            <label
                                    for="user-password"
                                    class="field-label-std">Passwort
                                (mind. 8 Zeichen) </label>
                            <input type="password" class="text-field-45px w-input"
                                   maxlength="256"
                                   name="password" data-name="password"
                                   placeholder="Ihr Wunschpasswort"
                                   minlength="8" id="user-password" required="">

                            <label
                                    for="user-password-repeated" class="field-label-std">Wiederholung
                                Passwort</label>
                            <input
                                    type="password" id="password-confirm" name="password-confirm"

                                    class="text-field-45px w-input" maxlength="256"
                                    data-name="password-confirm"
                                    placeholder="Ihr Wunschpasswort" minlength="8"
                                    required="">
                            <label class="w-checkbox checkbox-field">
                                <input
                                        type="checkbox" name="user.attributes.agb"
                                        data-name="agb" required=""
                                        id="user.attributes.agb"
                                        class="w-checkbox-input checkbox">
                                <span
                                        class="checkbox-label w-form-label">Ich stimme den <a
                                            href="#">AGBs</a> von Flendly zu</span></label></div>
                    </div>

                    <#if recaptchaRequired??>
                        <div class="form-group">
                            <div class="${properties.kcInputWrapperClass!}">
                                <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                            </div>
                        </div>
                    </#if>


                    <div class="padding-30"></div>

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
                </form>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
