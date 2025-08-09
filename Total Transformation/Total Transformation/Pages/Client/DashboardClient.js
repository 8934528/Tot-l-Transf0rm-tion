$(document).ready(function () {
    // Initialize client dashboard chart
    const ctx = document.getElementById('clientChart').getContext('2d');
    const clientChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{
                label: 'Completed Appointments',
                data: [3, 5, 2, 4, 6, 4],
                backgroundColor: 'rgba(249, 98, 159, 0.7)',
                borderColor: 'rgba(249, 98, 159, 1)',
                borderWidth: 1
            }, {
                label: 'Cancelled Appointments',
                data: [1, 2, 1, 0, 1, 2],
                backgroundColor: 'rgba(158, 27, 50, 0.7)',
                borderColor: 'rgba(158, 27, 50, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                tooltip: {
                    mode: 'index',
                    intersect: false,
                }
            },
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Initialize upcoming appointments table
    $('.table').DataTable({
        responsive: true,
        searching: false,
        paging: false,
        info: false,
        order: [[2, 'asc']]
    });

    // Service card hover effect
    $('.service-card').hover(
        function () {
            $(this).find('.service-title').css('color', 'var(--primary-color)');
        },
        function () {
            $(this).find('.service-title').css('color', 'var(--secondary-color)');
        }
    );
});