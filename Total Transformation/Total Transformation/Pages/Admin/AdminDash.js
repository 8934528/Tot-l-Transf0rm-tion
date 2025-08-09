$(document).ready(function () {
    // Initialize admin dashboard chart
    const ctx = document.getElementById('adminChart').getContext('2d');
    const adminChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [
                {
                    label: 'Clients',
                    data: [120, 190, 170, 200, 180, 220],
                    backgroundColor: 'rgba(249, 98, 159, 0.7)',
                    borderColor: 'rgba(249, 98, 159, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Practitioners',
                    data: [20, 25, 22, 30, 28, 35],
                    backgroundColor: 'rgba(158, 27, 50, 0.7)',
                    borderColor: 'rgba(158, 27, 50, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Bookings',
                    data: [150, 210, 190, 230, 200, 250],
                    backgroundColor: 'rgba(238, 130, 238, 0.7)',
                    borderColor: 'rgba(238, 130, 238, 1)',
                    borderWidth: 1
                }
            ]
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

    // Initialize tables
    $('.table').DataTable({
        responsive: true,
        searching: false,
        paging: false,
        info: false,
        order: [[3, 'desc']]
    });

    // System alerts
    $('.alert-card').click(function () {
        // In a real app, this would navigate to the relevant issue
        alert('You clicked on: ' + $(this).find('.alert-title').text());
    });
});