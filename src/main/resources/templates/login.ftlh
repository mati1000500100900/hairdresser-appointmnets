<#include "base.ftlh">

<#macro page_body>
    <script src="/js/loginValidate.js"></script>
    <div class="container-fluid text-center text-md-left">
        <br>
        <div class="col col-sm-8 col-md-6 col-lg-4 col-xl-4 mx-auto">
            <div class="card" style="max-width:480px">
                <div class="card-header"><h2>Dashboard Login</h2></div>
                <div class="card-body">
                    <form id="loginForm" name="loginForm" action="/login" method="post">
                        <div class="form-row">
                            <div class="col">
                                <label for="username">Login</label>
                                <input type="text" class="form-control" id="username" name="username" aria-invalid="true" /><br>
                                <label for="password">Hasło</label>
                                <input type="password" class="form-control" id="password" name="password"/><br>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <button class="btn btn-primary btn-block" type="submit" id="submit-button">Log in</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</#macro>

<@display_page/>