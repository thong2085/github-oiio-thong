<script src="{{ asset('libs/tabler/dist/js/tabler.min.js') }}" defer></script>
<script src="{{ asset('libs/jquery/jquery.min.js') }}"></script>
<script src="{{ asset('libs/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
<script src="{{ asset('libs/Parsley.js-2.9.2/parsley.min.js') }}"></script>
<!-- datatables -->
<script src="{{ asset('libs/datatables/jquery.dataTables.min.js') }}"></script>

<script src="{{ asset('libs/datatables/plugins/bs5/js/dataTables.bootstrap5.min.js') }}"></script>

<script src="{{ asset('libs/datatables/plugins/buttons/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('libs/datatables/plugins/buttons/js/buttons.bootstrap5.min.js') }}"></script>

<script src="{{ asset('libs/datatables/plugins/responsive/js/responsive.dataTables.min.js') }}"></script>
<script src="{{ asset('libs/datatables/plugins/responsive/js/responsive.bootstrap5.min.js') }}"></script>


<script src="{{ asset('/admin/assets/js/setup.js') }}"></script>

<script src="{{ asset('assets/js/province.js') }}"></script>
@stack('libs-js')
@stack('custom-js')
