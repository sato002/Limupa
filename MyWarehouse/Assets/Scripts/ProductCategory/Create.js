(function (window, $) {
    window.ProductCategoryCreate = {
        init: function () {
            this.regisControl();
        },
        regisControl: function () {
            const me = this;

            $('#btnCreate').off('click').on('click', function (e) {
                e.preventDefault();
                me.submitProductCategory();
            });
        },
        getFormData: function () {
            var model = {
                Name: $('#frmCategory [name="Name"]').val(),
                Description: $('#frmCategory [name="Description"]').val(),
                Sort: $('#frmCategory [name="Sort"]').val(),
                IsHomePage: $('#frmCategory [name="IsHomePage"]').is(':checked'),
            };

            return model;
        },
        submitProductCategory: function () {
            const me = this;
            var model = me.getFormData();

            $.ajax({
                url: '/ProductCategory/Create',
                data: { productCategory: model },
                type: 'post',
                success: function (res) {
                    _base.handleResponse(res, function () {
                        if (res.Success) {
                            setTimeout(function () { location.href = '/ProductCategory/Index' }, 1000);
                        }
                    });
                }
            });
        }
    }
})(window, jQuery);

$(document).ready(function () {
    ProductCategoryCreate.init();
});