 <!-- /.container-fluid -->
            <footer class="footer text-center"> <?php echo date('Y'); ?> &copy; <?php echo strtoupper($this->comp['company_name']); ?> - All Rights Reserved. Developed by : <a href="https://maskinweb.com/" target="_blank" > Maskin Web Solutions India Pvt. Ltd. </a> </footer>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>bootstrap/dist/js/tether.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="<?php echo base_url('assets/cms/');?>js/waves.js"></script>
    <!--Counter js -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!--Morris JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/raphael/raphael-min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/morrisjs/morris.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>js/custom.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>js/dashboard1.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/toast-cms/js/jquery.toast.js"></script>

    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
    <!-- start - This is for export functionality only -->
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->
    <script>
    $(document).ready(function() {
        $('#myTable').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;

                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before(
                                '<tr class="group"><td colspan="5">' + group + '</td></tr>'
                            );

                            last = group;
                        }
                    });
                }
            });

            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });
    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
    </script>

    <style>
        .btn-group .dropdown-menu a{
            color:#fff;
        }

        .btn-default .dropdown-menu {
          color: #000 !important;
        }
        .btn-default .dropdown-menu li > a:hover,
        .btn-default .dropdown-menu li > a:focus {
          background-color: #000 !important;
          color:#fff !important;
        }
        .btn-group-primary .dropdown-menu {
          background-color: #3784c5 !important;
        }
        .btn-group-primary .dropdown-menu li > a:hover,
        .btn-group-primary .dropdown-menu li > a:focus {
          background-color: #428bca !important;
        }
        .btn-group-success .dropdown-menu {
          background-color: #51b351 !important;
        }
        .btn-group-success .dropdown-menu li > a:hover,
        .btn-group-success .dropdown-menu li > a:focus {
          background-color: #5cb85c !important;
        }
        .btn-group-info .dropdown-menu {
          background-color: #4ebbdb !important;
        }
        .btn-group-info .dropdown-menu li > a:hover,
        .btn-group-info .dropdown-menu li > a:focus {
          background-color: #5bc0de !important;
        }
        .btn-group-warning .dropdown-menu {
          background-color: #efa640 !important;
        }
        .btn-group-warning .dropdown-menu li > a:hover,
        .btn-group-warning .dropdown-menu li > a:focus {
          background-color: #f0ad4e !important;
        }
        .btn-group-danger .dropdown-menu {
          background-color: #d64742 !important;
        }
        .btn-group-danger .dropdown-menu li > a:hover,
        .btn-group-danger .dropdown-menu li > a:focus {
          background-color: #d9534f !important;
        }
    </style>

    <!--<script type="text/javascript">
    $(document).ready(function() {
        $.toast({
            heading: 'Welcome to Elite admin',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg: '#ff6849',
            icon: 'info',
            hideAfter: 3500,

            stack: 6
        })
    });
    </script>-->
    <!--Style Switcher -->
    <script src="<?php echo base_url('assets/cms/');?>plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>