(function (window, $) {
    window.LoginRegister = {
        init: function () {
            this.regisControl();
        },
        regisControl: function () {
            const me = this;

            $('#btnLogin').off('click').on('click', function (e) {
                e.preventDefault();
                me.login();
            });

            $('#btnRegister').off('click').on('click', function (e) {
                e.preventDefault();
                me.register();
            });
        },
        getLoginFormData: function () {
            var model = {
                Email: $('#frmLogin [name="Email"]').val(),
                Password: $('#frmLogin [name="Password"]').val(),
            };

            return model;
        },
        login: function () {
            const me = this;
            var model = me.getLoginFormData();

            $.ajax({
                url: '/Account/Login',
                data: { model: model },
                type: 'post',
                success: function (res) {
                    _base.handleResponse(res, function () {
                        if (res.Success) {
                            setTimeout(function () { location.href = '/' }, 1000);
                        }
                    });
                }
            });
        },
        getRegisterFormData: function () {
            var model = {
                FullName: $('#frmRegister [name="FullName"]').val(),
                Email: $('#frmRegister [name="Email"]').val(),
                Password: $('#frmRegister [name="Password"]').val(),
                ConfirmPassword: $('#frmRegister [name="ConfirmPassword"]').val()

            };

            return model;
        },
        register: function () {
            const me = this;
            debugger
            var model = me.getRegisterFormData();

            $.ajax({
                url: '/Account/Register',
                data: { model: model },
                type: 'post',
                success: function (res) {
                    _base.handleResponse(res, function () {
                        if (res.Success) {
                            setTimeout(function () { location.href = '/Home' }, 1000);
                        }
                    });
                }
            });
        }
    }
})(window, jQuery);

$(document).ready(function () {
    LoginRegister.init();
});