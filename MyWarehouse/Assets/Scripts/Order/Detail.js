////(function (window, $) {
////    window.ProductCreate = {
////        init: function () {
////            this.regisControl();
////            this.initForm();
////        },
////        regisControl: function () {
////            const me = this;

////            $('#btnUpdate').off('click').on('click', function (e) {
////                e.preventDefault();
////                me.submitProduct();
////            });

////            var editor = CKEDITOR.replace('Detail');

////            // ckfinder
////            $('#selectMainImage').on('click', function (e) {
////                e.preventDefault();
////                var finder = new CKFinder();
////                finder.selectActionFunction = function (url) {
////                    $('#boxMainImage').removeClass("hidden");
////                    $('#boxMainImage').html('');
////                    $('#boxMainImage').append($(`<img class="d-block rounded product-preview-image" src="${url}" />`));
////                    $('#frmProduct [name="MainImage"]').val(url);
////                };
////                finder.popup();
////            });

////            $('#selectListImages').on('click', function (e) {
////                e.preventDefault();
////                var finder = new CKFinder();
////                finder.selectActionFunction = function (url) {
////                    $('#frmProduct [name="ListImages"]').val($('#frmProduct [name="ListImages"]').val() + url + ";");
////                    $('#boxListImages').removeClass("hidden");
////                    $('#boxListImages').append($(`<img class="d-block rounded product-preview-image" src="${url}" />`));
////                };
////                finder.popup();
////            });
////        },
////        initForm: function () {
////            const me = this;
////            me.loadCategoryCombobox();
////        },
////        getFormData: function () {
////            var model = {
////                Id: $('#frmProduct [name="Id"]').val(),
////                Name: $('#frmProduct [name="Name"]').val(),
////                Code: $('#frmProduct [name="Code"]').val(),
////                CategoryId: $('#frmProduct [name="CategoryId"]').val(),
////                Detail: CKEDITOR.instances['Detail'].getData(),
////                ListImages: $('#frmProduct [name="ListImages"]').val(),
////                MainImage: $('#frmProduct [name="MainImage"]').val(),
////                IsActive: $('#frmProduct [name="IsActive"]').is(':checked'),
////                Price: $('#frmProduct [name="Price"]').val(),
////                IsFeatured: $('#frmProduct [name="IsFeatured"]').is(':checked'),
////                ShortDescription: $('#frmProduct [name="ShortDescription"]').val(),
////                Quantity: $('#frmProduct [name="Quantity"]').val()
////            };

////            return model;
////        },
////        submitProduct: function () {
////            const me = this;
////            var model = me.getFormData();

////            $.ajax({
////                url: '/Product/Update',
////                data: { product: model },
////                type: 'post',
////                success: function (res) {
////                    _base.handleResponse(res, function () {
////                        if (res.Success) {
////                            setTimeout(function () { location.href = '/Product/Index' }, 1000);
////                        }
////                    });
////                }
////            });
////        },
////        loadCategoryCombobox: function () {
////            const me = this;

////            $.ajax({
////                url: '/ProductCategory/GetAll',
////                success: function (res) {
////                    if (res.Success) {
////                        html = '';
////                        if (res.Data && res.Data.length > 0) {
////                            $.each(res.Data, function (i, cate) {
////                                html += `<option value="${cate.Id}">${cate.Name}</option>`;
////                            });
////                        }

////                        $('#frmProduct [name="CategoryId"]').html(html);

////                        me.loadProduct();
////                    }
////                }
////            });
////        },
////        loadProduct: function () {
////            $.ajax({
////                url: '/Product/Get/' + $('#frmProduct [name="Id"]').val(),
////                success: function (res) {
////                    if (res.Success) {
////                        var product = res.Data;
////                        $('#frmProduct [name="Name"]').val(product.Name);
////                        $('#frmProduct [name="Code"]').val(product.Code);
////                        $('#frmProduct [name="CategoryId"]').val(product.CategoryId);
////                        $('#frmProduct [name="Price"]').val(product.Price);
////                        $('#frmProduct [name="IsActive"]').prop('checked', product.IsActive);
////                        $('#frmProduct [name="IsFeatured"]').prop('checked', product.IsFeatured);
////                        $('#frmProduct [name="ShortDescription"]').val(product.ShortDescription);
////                        $('#frmProduct [name="Quantity"]').val(product.Quantity);

////                        // binding ckeditor
////                        $('#frmProduct [name="Detail"]').html(product.Detail);
////                        CKEDITOR.instances['Detail'].setData(product.Detail);

////                        // binding Image
////                        $('#boxMainImage').removeClass("hidden");
////                        $('#boxMainImage').html('');
////                        $('#boxMainImage').append($(`<img class="d-block rounded product-preview-image" src="${product.MainImage}" />`));
////                        $('#frmProduct [name="MainImage"]').val(product.MainImage);

////                        if (product.ListImages) {
////                            $('#frmProduct [name="ListImages"]').val(product.ListImages);
////                            $('#boxListImages').removeClass("hidden");
////                            $.each(product.ListImages.split(';').filter(element => element), function (i, item) {
////                                $('#boxListImages').append($(`<img class="d-block rounded product-preview-image" src="${item}" />`));
////                            });
////                        }
////                    }
////                }
////            });
////        }
////    }
////})(window, jQuery);

////$(document).ready(function () {
////    ProductCreate.init();
////});