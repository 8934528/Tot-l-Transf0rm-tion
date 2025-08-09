$(document).ready(function () {
    // Initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();

    // Filter appointments
    $('.btn-filter').click(function () {
        const filter = $(this).find('input').attr('value') || 'all';

        if (filter === 'all') {
            $('.appointment-card').show();
        } else {
            $('.appointment-card').hide();
            $('.appointment-card.' + filter).show();
        }
    });

    // Search functionality
    $('.appointments-search input').on('keyup', function () {
        const searchText = $(this).val().toLowerCase();

        $('.appointment-card').each(function () {
            const cardText = $(this).text().toLowerCase();
            if (cardText.indexOf(searchText) > -1) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

    // Appointment actions
    $('.btn-action').click(function (e) {
        e.stopPropagation();
        const action = $(this).attr('title');

        switch (action) {
            case 'View Details':
                // In a real app, this would show a modal with details
                alert('Showing appointment details');
                break;
            case 'Cancel':
                if (confirm('Are you sure you want to cancel this appointment?')) {
                    $(this).closest('.appointment-card').find('.badge')
                        .removeClass('badge-success')
                        .addClass('badge-danger')
                        .text('Cancelled');
                    alert('Appointment cancelled successfully');
                }
                break;
            case 'Book Again':
                // In a real app, this would redirect to booking page
                alert('Redirecting to booking page');
                break;
            case 'Leave Review':
                // In a real app, this would show a review form
                alert('Showing review form');
                break;
        }
    });
});