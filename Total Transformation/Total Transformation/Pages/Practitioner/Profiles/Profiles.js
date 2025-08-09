$(document).ready(function () {
    // Profile menu navigation
    $('.profile-menu .menu-item').click(function (e) {
        e.preventDefault();
        const target = $(this).attr('href');

        // Update active menu item
        $('.profile-menu .menu-item').removeClass('active');
        $(this).addClass('active');

        // Show corresponding section
        $('.profile-section').removeClass('active');
        $(target).addClass('active');
    });

    // Edit profile sections
    $('.edit-btn').click(function () {
        const section = $(this).closest('.profile-section');
        const form = section.find('form');

        // Enable all inputs
        form.find('input, select, textarea').prop('readonly', false);
        form.find('select').prop('disabled', false);

        // Show save/cancel buttons
        section.find('.save-btn, .cancel-btn').show();
        $(this).hide();
    });

    // Cancel editing
    $('.cancel-btn').click(function () {
        const section = $(this).closest('.profile-section');
        const form = section.find('form');

        // Reset form and disable inputs
        form[0].reset();
        form.find('input, select, textarea').prop('readonly', true);
        form.find('select').prop('disabled', true);

        // Hide save/cancel buttons
        section.find('.save-btn, .cancel-btn').hide();
        section.find('.edit-btn').show();
    });

    // Save changes
    $('.save-btn').click(function () {
        const section = $(this).closest('.profile-section');
        const form = section.find('form');

        // In a real app, this would save to the server
        alert('Changes saved!');

        // Disable inputs
        form.find('input, select, textarea').prop('readonly', true);
        form.find('select').prop('disabled', true);

        // Hide save/cancel buttons
        section.find('.save-btn, .cancel-btn').hide();
        section.find('.edit-btn').show();
    });

    // Change avatar
    $('.change-avatar').click(function (e) {
        e.preventDefault();
        // In a real app, this would open a file picker
        alert('Avatar change functionality would go here');
    });

    // Portfolio item actions
    $('.portfolio-overlay button').click(function (e) {
        e.stopPropagation();
        const action = $(this).find('i').attr('class').split(' ')[1];
        const portfolioItem = $(this).closest('.portfolio-item');

        if (action === 'trash') {
            if (confirm('Are you sure you want to delete this portfolio item?')) {
                portfolioItem.fadeOut(300, function () {
                    $(this).remove();
                });
            }
        } else if (action === 'edit') {
            alert('Edit portfolio item functionality would go here');
        }
    });
});