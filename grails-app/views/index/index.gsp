%{--WATCHME--}%
<%@ page import="name.stokito.SmartConfigLocaleResolver" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="title"/></title>
    <meta name="layout" content="main"/>
</head>

<body>
<h1><g:message code="title"/></h1>
<p>Default system locale: <strong>"${Locale.default}"</strong></p>
<p>Supported locales are (supportedLocales in Config.groovy): <strong>"${grailsApplication.config.name.stokito.smartLocaleResolver.supportedLocales ?: []}"</strong>.</p>
<p>Default locale (defaultLocale in Config.groovy): <strong>"${grailsApplication.config.name.stokito.smartLocaleResolver.defaultLocale ?: null}"</strong>.</p>
<p><code>lang</code> param is: <strong>"${params.lang}"</strong></p>
<p>Locale stored to session is: <strong>"${session.getAttribute(SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)}"</strong></p>
<p>Accept-Language: is <strong>"${request.getHeader('Accept-Language')}"</strong></p>
<p>Other locales that you prefer: <strong>"${request.locales*.toString().join(',')}"</strong></p>
<p>Your requested locale is <strong>"${request.locale}"</strong></p>
<p>You can choice your preferred locales in setting of browser (chrome://settings/languages).</p>
<p>We render page for you with locale <strong>"${response.locale}"</strong></p>
<p>We render page for you with locale <strong>"${response.locale}"</strong></p>
<div>
    <form method="get">
        <g:localeSelect name="lang"/>
        <input type="submit" value="Change locale"/>
    </form>
</div>
</body>
</html>