<script>
    function searchColumsDataTable(datatable) {
        datatable.api().columns([0, 1, 2, 6, 7]).every(function () {
            var column = this;
            var input = document.createElement("input");
    
            input.setAttribute('placeholder', 'Nhập từ khóa');
            input.setAttribute('class', 'form-control');
            
            if(column.selector.cols == 6){
                input = document.createElement("select");
                createSelectColumnUniqueDatatableAll(input, @json($status));
            }else if(column.selector.cols == 7){
                input = document.createElement("select");
                createSelectColumnUniqueDatatableAll(input, @json($is_virtual));
            }
            $(input).appendTo($(column.footer()).empty())
            .on('change', function () {
                column.search($(this).val(), false, false, true).draw();
            });
        }); 
    }
    $(document).ready(function() {
        // define columns for the datatables
        columns = window.LaravelDataTables["jobTable"].columns();
        toggleColumnsDatatable(columns);
    });
    </script>