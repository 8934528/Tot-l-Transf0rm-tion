$(document).ready(function () {
    // Initialize earnings chart
    const ctx = document.getElementById('earningsChart').getContext('2d');
    const earningsChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [
                {
                    label: 'Service Fees',
                    data: [1250, 1900, 1500, 2000, 1750, 2250],
                    backgroundColor: 'rgba(249, 98, 159, 0.7)',
                    borderColor: 'rgba(249, 98, 159, 1)',
                    borderWidth: 1
                },
                {
                    label: 'Tips',
                    data: [200, 250, 180, 300, 220, 350],
                    backgroundColor: 'rgba(238, 130, 238, 0.7)',
                    borderColor: 'rgba(238, 130, 238, 1)',
                    borderWidth: 1
                }
            ]
        },
        options: {
            responsive: true,
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            return 'R' + context.raw.toFixed(2);
                        }
                    }
                },
                legend: {
                    display: false
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function (value) {
                            return 'R' + value;
                        }
                    }
                }
            }
        }
    });

    // Period filter
    $('.dropdown-item').click(function (e) {
        e.preventDefault();
        const period = $(this).text().trim();
        $('.earnings-period .dropdown-toggle').text(period);

        // In a real app, this would filter the earnings data
        console.log('Filtering earnings for:', period);
    });

    // Initialize transactions table
    $('.table').DataTable({
        responsive: true,
        searching: false,
        paging: false,
        info: false,
        order: [[0, 'desc']]
    });
});