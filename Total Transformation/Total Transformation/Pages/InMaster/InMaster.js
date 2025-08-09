$(document).ready(function () {
    // Toggle sidebar collapse
    $('#sidebarToggle, #navToggle').click(function () {
        $('body').toggleClass('sidebar-collapsed');

        // For mobile view
        if ($(window).width() < 992) {
            $('#sidebar').toggleClass('show');
        }
    });

    // Close sidebar when clicking outside on mobile
    $(document).click(function (e) {
        if ($(window).width() < 992) {
            if (!$(e.target).closest('#sidebar').length && !$(e.target).closest('#navToggle').length) {
                $('#sidebar').removeClass('show');
            }
        }
    });

    // Prevent closing when clicking inside sidebar
    $('#sidebar').click(function (e) {
        e.stopPropagation();
    });

    // Active menu item
    $('.menu-item').click(function () {
        $('.menu-item').removeClass('active');
        $(this).addClass('active');
    });

    // Initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();

    // Initialize popovers
    $('[data-toggle="popover"]').popover();

    // Notifications dropdown
    $('.notifications').click(function (e) {
        e.stopPropagation();
        $(this).find('.dropdown-menu').toggleClass('show');
    });

    // Messages dropdown
    $('.messages').click(function (e) {
        e.stopPropagation();
        $(this).find('.dropdown-menu').toggleClass('show');
    });

    // Close dropdowns when clicking outside
    $(document).click(function () {
        $('.dropdown-menu').removeClass('show');
    });

    // Prevent dropdown from closing when clicking inside
    $('.dropdown-menu').click(function (e) {
        e.stopPropagation();
    });

    // Search box focus
    $('.search-box input').focus(function () {
        $(this).parent().addClass('focused');
    });

    $('.search-box input').blur(function () {
        $(this).parent().removeClass('focused');
    });

    // Responsive table
    $('.table-responsive').each(function () {
        $(this).wrap('<div class="responsive-table-container"></div>');
    });

    // Initialize charts (example with Chart.js)
    if (typeof Chart !== 'undefined') {
        // Sample chart initialization
        const ctx = document.getElementById('dashboardChart');
        if (ctx) {
            const myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
                    datasets: [{
                        label: 'Bookings',
                        data: [12, 19, 3, 5, 2, 3, 15],
                        backgroundColor: 'rgba(249, 98, 159, 0.2)',
                        borderColor: 'rgba(249, 98, 159, 1)',
                        borderWidth: 2,
                        tension: 0.4,
                        fill: true
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        }
    }
});