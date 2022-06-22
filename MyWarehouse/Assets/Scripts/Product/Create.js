(function (window, $) {
    window.ProductCreate = {
        init: function () {
            this.regisControl();
            this.initForm();
        },
        regisControl: function () {
            const me = this;

            $('#btnCreate').off('click').on('click', function (e) {
                e.preventDefault();
                me.submitProduct();
            });

            var editor = CKEDITOR.replace('Detail');

            // ckfinder
            $('#selectMainImage').on('click', function (e) {
                e.preventDefault();
                var finder = new CKFinder();
                finder.selectActionFunction = function (url) {
                    $('#boxMainImage').removeClass("hidden");
                    $('#boxMainImage').html('');
                    $('#boxMainImage').append($(`<img class="d-block rounded product-preview-image" src="${url}" />`));
                    $('#frmProduct [name="MainImage"]').val(url);
                };
                finder.popup();
            });

            $('#selectListImages').on('click', function (e) {
                e.preventDefault();
                var finder = new CKFinder();
                finder.selectActionFunction = function (url) {
                    $('#frmProduct [name="ListImages"]').val($('#frmProduct [name="ListImages"]').val() + url + ";");
                    $('#boxListImages').removeClass("hidden");
                    $('#boxListImages').append($(`<img class="d-block rounded product-preview-image" src="${url}" />`));
                };
                finder.popup();
            });
        },
        initForm: function () {
            const me = this;
            me.loadCategoryCombobox();
        },
        getFormData: function () {
            var model = {
                Name: $('#frmProduct [name="Name"]').val(),
                Code: $('#frmProduct [name="Code"]').val(),
                CategoryId: $('#frmProduct [name="CategoryId"]').val(),
                Detail: CKEDITOR.instances['Detail'].getData(),
                ListImages: $('#frmProduct [name="ListImages"]').val(),
                MainImage: $('#frmProduct [name="MainImage"]').val(),
                IsActive: $('#frmProduct [name="IsActive"]').is(':checked'),
                Price: $('#frmProduct [name="Price"]').val(),
                IsFeatured: $('#frmProduct [name="IsFeatured"]').is(':checked'),
                ShortDescription: $('#frmProduct [name="ShortDescription"]').val(),
                Quantity: $('#frmProduct [name="Quantity"]').val()
            };

            return model;
        },
        submitProduct: function () {
            const me = this;
            var model = me.getFormData();

            $.ajax({
                url: '/Product/Create',
                data: { product: model },
                type: 'post',
                success: function (res) {
                    _base.handleResponse(res, function () {
                        if (res.Success) {
                            setTimeout(function () { location.href = '/Product/Index' }, 1000);
                        }
                    });
                }
            });
        },
        loadCategoryCombobox: function () {
            $.ajax({
                url: '/ProductCategory/GetAll',
                success: function (res) {
                    if (res.Success) {
                        html = '';
                        if (res.Data && res.Data.length > 0) {
                            $.each(res.Data, function (i, cate) {
                                html += `<option value="${cate.Id}">${cate.Name}</option>`;
                            });
                        }

                        $('#frmProduct [name="CategoryId"]').html(html);
                    }
                }
            });
        }
    }
})(window, jQuery);

$(document).ready(function () {
    ProductCreate.init();
});