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
        <td>Default locale</td>
        <td><code>name.stokito.smartLocaleResolver.defaultLocale</code> in <code>Config.groovy</code></td>
        <td>"${grailsApplication.config.name.stokito.smartLocaleResolver.defaultLocale ?: null}"</td>
    </tr>
    <p><code>lang</code> param is: <strong></strong></p>
    <tr>
        <td>Locale from param in GET request</td>
        <td><code>params.lang</code></td>
        <td>"${params.lang}"</td>
    </tr>
    <tr>
        <td>Locale stored to session</td>
        <td><code>session.getAttribute(SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)</code></td>
        <td>"${session.getAttribute(SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME)}"</td>
    </tr>
    <tr>
        <td><code>Accept-Language</code> header</td>
        <td><code>request.getHeader('Accept-Language')</code></td>
        <td>"${request.getHeader('Accept-Language')}"</td>
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
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>
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