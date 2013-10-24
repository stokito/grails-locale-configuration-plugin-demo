%{--WATCHME--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="title"/></title>
    <meta name="layout" content="main"/>
</head>

<body>
<h1><g:message code="title"/></h1>
<p>Default system locale: ${Locale.default}</p>
<p>Supported locales are (supportedLocales in Config.groovy): ${grailsApplication.config.supportedLocales ?: []}.</p>
<p>Default locale (defaultLocale in Config.groovy): ${grailsApplication.config.defaultLocale ?: null}.</p>
<p>You can choice your preferred locales in setting of browser (chrome://settings/languages).</p>
<p>Accept-Language: is ${request.getHeader('Accept-Language')}</p>
<p>Other locales that you prefer: ${request.locales*.toString().join(',')}</p>
<p>Your requested locale is ${request.locale}</p>
<p>We render page for you with locale ${response.locale}</p>
<div>
    <form method="get">
        <g:localeSelect name="lang"/>
        <input type="submit" value="Change locale"/>
    </form>
</div>
</body>
</html>