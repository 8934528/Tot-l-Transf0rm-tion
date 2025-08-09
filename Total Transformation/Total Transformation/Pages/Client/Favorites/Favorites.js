$(document).ready(function () {
    // Filter favorites
    $('.btn-filter').click(function () {
        const filter = $(this).find('input').attr('value') || 'all';

        if (filter === 'all') {
            $('.favorite-card').show();
        } else {
            $('.favorite-card').hide();
            $('.favorite-card.' + filter).show();
        }
    });

    // Remove favorite
    $('.btn-remove').click(function (e) {
        e.stopPropagation();
        if (confirm('Are you sure you want to remove this from your favorites?')) {
            $(this).closest('.favorite-card').fadeOut(300, function () {
                $(this).remove();
                // In a real app, this would also update the database
            });
        }
    });

    // Book now button
    $('.btn-book').click(function () {
        // In a real app, this would redirect to booking page with pre-selected item
        const itemName = $(this).closest('.favorite-card').find('.favorite-title').text();
        alert(`Booking ${itemName}... Redirecting to booking page.`);
    });

    // View button
    $('.btn-view').click(function () {
        // In a real app, this would show details of the favorite item
        const itemName = $(this).closest('.favorite-card').find('.favorite-title').text();
        alert(`Showing details for ${itemName}`);
    });

    // Favorite card click
    $('.favorite-card').click(function (e) {
        if (!$(e.target).closest('.btn-remove, .btn-book, .btn-view').length) {
            // In a real app, this would show details of the favorite item
            const itemName = $(this).find('.favorite-title').text();
            alert(`Showing details for ${itemName}`);
        }
    });
});