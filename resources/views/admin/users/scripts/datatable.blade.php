<script>
    function searchColumsDataTable(datatable) {
        datatable.api().columns([1, 2, 3, 4, 5]).every(function () {
            var column = this;
            var input = document.createElement("input");
            if(column.selector.cols == 5){
                input.setAttribute('type', 'date');
            }
            // else if(column.selector.cols == 5){
            //     input = document.createElement("select");
            //     createSelectColumnUniqueDatatableAll(input, @json($gender));
            // }else if(column.selector.cols == 6){
            //     input = document.createElement("select");
            //     createSelectColumnUniqueDatatableAll(input, @json($vip));
            // }
    
            input.setAttribute('placeholder', 'Nhập từ khóa');
            input.setAttribute('class', 'form-control');
    
            $(input).appendTo($(column.footer()).empty())
            .on('change', function () {
                column.search($(this).val(), false, false, true).draw();
            });
        }); 
    }
    </script>