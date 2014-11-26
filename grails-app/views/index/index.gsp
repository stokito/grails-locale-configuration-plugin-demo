%{--WATCHME--}%
<%@ page import="grails.plugin.localeConfiguration.SmartConfigLocaleResolver; org.springframework.web.servlet.support.RequestContextUtils" contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="title"/></title>
    <meta name="layout" content="main"/>
    <r:require module="langSelector"/>
    <style>
        td {
            max-width: 200px !important;
            overflow-x: auto !important;
            text-wrap: none !important;
        }
    </style>
</head>

<body>
<h1><g:message code="title"/></h1>

%{--<langs:selector langs="en, es, pt-BR, ru"/>--}%

<div>
    <form method="get">
        <g:localeSelect name="lang"/>
        <input type="submit" value="Change locale"/>
    </form>
</div>
<hr/>
<table id="settings">
    <tbody>
    <tr>
        <td>Default system locale</td>
        <td><code>Locale.default</code></td>
        <td>"${Locale.default}"</td>
    </tr>
    <tr>
        <td>Supported locales</td>
        <td><code>grails.plugin.localeConfiguration.supportedLocales</code> in <code>Config.groovy</code></td>
        <td>"${grailsApplication.config.grails.plugin.localeConfiguration.supportedLocales ?: []}"</td>
    </tr>
    <tr>
        <td>Default locale</td>
        <td><code>grails.plugin.localeConfiguration.defaultLocale</code> in <code>Config.groovy</code></td>
        <td>"${grailsApplication.config.grails.plugin.localeConfiguration.defaultLocale ?: null}"</td>
    </tr>
    <tr>
        <td>Locale from param in GET request</td>
        <td><code>params.lang</code></td>
        <td>"${params.lang}"</td>
    </tr>
    <tr>
        <td>Locale stored to session</td>
        <td><code>session[SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME]</code></td>
        <td>"${session[SmartConfigLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME]}"</td>
    </tr>
    <tr>
        <td>Preferred locales in setting of browser (chrome://settings/languages)</td>
        <td><code>request.getHeader('Accept-Language')</code></td>
        <td>"${request.getHeader('Accept-Language')}"</td>
    </tr>
    <tr>
        <td>Other locales that you prefer</td>
        <td><code>request.locales</code></td>
        <td>"${request.locales*.toString().join(',')}"</td>
    </tr>
    <tr>
        <td>Your most preferred requested locale</td>
        <td><code>request.locale</code> that same as <code>request.locales[0]</code></td>
        <td>"${request.locale}"</td>
    </tr>
    <tr>
        <td>Resolved locale</td>
        <td><code>RequestContextUtils.getLocale(request)</code></td>
        <td>"${RequestContextUtils.getLocale(request)}"</td>
    </tr>
    <tr>
        <td>We render page for you with locale</td>
        <td><code>response.locale</code></td>
        <td>"${response.locale}"</td>
    </tr>
    </tbody>
</table>

</body>
</html>