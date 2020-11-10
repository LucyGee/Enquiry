
var Select2Builder = Select2Builder || {
    initAjaxSelect2 : function (opts) {
        if (!opts) {
            return;
        }
        var $element = opts.element;

        if (!$element) {
            if (opts.containerId) {
                $element = $('#' + opts.containerId);
            } else {
                $element = $(opts.selector);
            }
        }

        $element.select2({
            data: opts.data,
            placeholder: opts.placeholder||'Select an Item',
            allowClear: true,
            multiple: opts.multiple,
            width: '100%',
            id: function (e) {
                return e[opts.id || 'id'];
            },
            ajax: {
                url: $element.attr('select2-url'),
                dataType: 'json',
                data: function (term, page) {
                    var params = opts.params || {};
                    return $.extend(params,{
                        term: term,
                        page: page-1,
                        size: 10,
                        sort: opts.sort
                    });
                },
                results: function (data) {
                    return {
                        results: data.content,
                        more: !data.last
                    };
                }
            },
            formatResult: opts.formatResult || function(data) {return data},
            formatSelection: opts.formatSelection || function(data) {return data},
            escapeMarkup: function (m) {
                return m;
            },
            initSelection: opts.initSelection || function() {}
        }).on("change", function (e) {
            $("#" + $element.attr('select2-input-id')).val(e.val);
            if (opts.change) {
                opts.change(e);
            }
        }).select2('val', []);
    }
};