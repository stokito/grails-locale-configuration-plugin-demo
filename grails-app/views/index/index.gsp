%{--WATCHME--}%
<%@ page import="name.stokito.SmartConfigLocaleResolver" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="title"/></title>
    <meta name="layout" content="main"/>
</head>

<body>
<h1><g:message code="title"/></h1>
<table>
    <tbody>
    <tr>
        <td>Default system locale</td>
        <td><code>Locale.default</code></td>
        <td>"${Locale.default}"</td>
    </tr>
    <tr>
        <td>Supported locales</td>
        <td><code>name.stokito.smartLocaleResolver.supportedLocales</code> in <code>Config.groovy</code></td>
        <td>"${grailsApplication.config.name.stokito.smartLocaleResolver.supportedLocales ?: []}"</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>
<p>Default locale (<code>name.stokito.smartLocaleResolver.defaultLocale</code> in <code>Config.groovy</code>): <strong>"${grailsApplication.config.name.stokito.smartLocaleResolver.defaultLocale ?: null}"</strong>.</p>
<p><code>lang</code> param is: <strong>"${params.lang}"</strong></p>
<p>Locale stored to session is: <strong>"${session.getAttribute(SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)}"</strong></p>
<p><code>Accept-Language</code> header is: <strong>"${request.getHeader('Accept-Language')}"</strong></p>
<p>Other locales that you prefer (<code>request.locales</code>): <strong>"${request.locales*.toString().join(',')}"</strong></p>
<p>Your requested locale (<code>request.locale</code> that same as <code>request.locales</code>) is: <strong>"${request.locale}"</strong></p>
<p>You can choice your preferred locales in setting of browser (chrome://settings/languages).</p>
<p>We render page for you with locale (<code>response.locale</code>) <strong>"${response.locale}"</strong></p>
<div>
    <form method="get">
        <g:localeSelect name="lang"/>
        <input type="submit" value="Change locale"/>
    </form>
</div>
</body>
</html>