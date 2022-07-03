(function (window, $) {
    window.AccountLogin = {
        init: function () {
            this.regisControl();
        },
        regisControl: function () {
            const me = this;

            $('#btnSignIn').off('click').on('click', function (e) {
                e.preventDefault();
                me.login();
            });
        },
        getFormData: function () {
            var model = {
                Email: $('#frmLogin [name="Email"]').val(),
                Password: $('#frmLogin [name="Password"]').val()
            };

            return model;
        },
        login: function () {
            const me = this;
            var model = me.getFormData();

            $.ajax({
                url: '/Account/Login',
                data: { model: model },
                type: 'post',
                success: function (res) {
                    if (res.Success) {
                        location.href = '/';
                    }
                    else {
                        toastr["error"]("Tài khoản hoặc mật khẩu không chính xác");
                    }
                }
            });
        }
    }
})(window, jQuery);

$(document).ready(function () {
    AccountLogin.init();
});