$(document).ready(function () {
    // Revenue Chart
    const revenueCtx = document.getElementById('revenueChart').getContext('2d');
    const revenueChart = new Chart(revenueCtx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{
                label: 'Revenue',
                data: [12500, 19000, 15000, 20000, 17500, 22500],
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
                },
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            return 'R' + context.raw.toLocaleString();
                        }
                    }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function (value) {
                            return 'R' + value.toLocaleString();
                        }
                    }
                }
            }
        }
    });

    // Users Chart
    const usersCtx = document.getElementById('usersChart').getContext('2d');
    const usersChart = new Chart(usersCtx, {
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

    // Services Chart
    const servicesCtx = document.getElementById('servicesChart').getContext('2d');
    const servicesChart = new Chart(servicesCtx, {
        type: 'doughnut',
        data: {
            labels: ['Hair Services', 'Nail Services', 'Makeup', 'Barber', 'Spa'],
            datasets: [{
                data: [35, 25, 20, 15, 5],
                backgroundColor: [
                    'rgba(249, 98, 159, 0.7)',
                    'rgba(158, 27, 50, 0.7)',
                    'rgba(238, 130, 238, 0.7)',
                    'rgba(255, 193, 7, 0.7)',
                    'rgba(108, 117, 125, 0.7)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'right',
                }
            }
        }
    });

    // Report generation
    $('.btn-primary').click(function () {
        alert('Report generation would be implemented here with backend integration');
    });
});