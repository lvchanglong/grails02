<%@ page import="lvchanglong.User" %>

<div class="navbar-wrapper" style="z-index:9999;">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Grails联盟</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <g:form controller="guest" action="index" style="display:inline-block;width:300px;padding-top:8px;">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="文章标题检索..." name="q" value="${params.q}"/>
                                    <span class="input-group-btn">
                                        <g:submitButton name="submit" class="btn btn-default" value="Go!"/>
                                    </span>
                                </div>
                            </g:form>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav pull-right">
                        <g:set var="vip" value="${lvchanglong.User.get(session.uid)}"/>
                        <g:if test="${vip}">
                            <li>
                                <g:render template="/layouts/demos/regenerate" model="[vip:vip]"/>
                            </li>
                            <li>
                                <g:render template="/layouts/demos/logout"/>
                            </li>
                        </g:if>
                        <g:else>
                            <li>
                                <g:render template="/layouts/demos/login"/>
                            </li>
                            <li>
                                <g:render template="/layouts/demos/register"/>
                            </li>
                        </g:else>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>