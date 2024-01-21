<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('email','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
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
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;"
                      action="${url.loginAction}"
                      method="post" class="w-form">

                    <label for="user-email" class="field-label-std">Email</label>

                    <input type="text" class="text-field-45px w-input" maxlength="256" tabindex="1" autofocus
                           name="username" type="text" autofocus autocomplete="off" data-name="username"
                           placeholder="Ihre Email"
                           id="user-username" required="">


                    <label for="user-password" class="field-label-std">Passwort</label>

                    <input type="password" class="text-field-45px w-input" maxlength="256"
                           autocomplete="off" data-name="password" placeholder="Ihre Passwort"

                           tabindex="2" id="password" name="password" type="password" autocomplete="off"

                           id="user-password"
                           required="">

                    <div class="w-layout-grid grid-3">
                        <div id="w-node-d36cab57-e2af-23dd-1cfe-e521e2fec6b3-1e4981aa"><input
                                    type="submit" value="Login" data-wait="Please wait..."
                                    id="signInButton" class="call-to-action-max w-button"></div>


                        <a id="w-node-_10f91b39-88ef-f783-21e9-80b9212c669c-1e4981aa"
                           href="${url.loginResetCredentialsUrl}"
                           class="link">Passwort vergessen?</a>
                    </div>
                    <div class="padding-10"></div>
                </form>
            </div>
        </div>
    </div>

    <div class="padding-30"></div>
    <div class="container-std w-container">
        <h1 class="heading-float-3">Sie haben noch keinen Account?</h1>
        <div class="padding-5"></div>
        <a href="${url.registrationUrl}" class="call-to-action-max w-button">Jetzt
            registrieren</a>
    </div>

</@layout.registrationLayout>
