$(document).ready(function () {
    // Settings menu navigation
    $('.settings-menu .menu-item').click(function (e) {
        e.preventDefault();
        const target = $(this).attr('href');

        // Update active menu item
        $('.settings-menu .menu-item').removeClass('active');
        $(this).addClass('active');

        // Show corresponding section
        $('.settings-section').removeClass('active');
        $(target).addClass('active');
    });

    // Payment method type toggle
    $('#addPaymentModal select').change(function () {
        const method = $(this).val();

        if (method === 'Bank Account') {
            $('.card-details').hide();
            $('.bank-details').show();
        } else if (method === 'Credit/Debit Card') {
            $('.bank-details').hide();
            $('.card-details').show();
        } else {
            $('.card-details, .bank-details').hide();
        }
    });

    // Day schedule toggle
    $('.day-header input[type="checkbox"]').change(function () {
        const daySchedule = $(this).closest('.day-schedule');
        const isChecked = $(this).is(':checked');

        daySchedule.find('.time-slots select').prop('disabled', !isChecked);
    });

    // Break time toggle
    $('#enableBreak').change(function () {
        const isChecked = $(this).is(':checked');
        $('.time-range select').prop('disabled', !isChecked);
    });

    // Save settings
    $('.settings-section .btn-primary').click(function () {
        const section = $(this).closest('.settings-section');
        const sectionId = section.attr('id');

        // In a real app, this would save to the server
        alert(`${sectionId} settings saved!`);
    });

    // Remove payment method
    $('.method-actions .btn-outline-danger').click(function () {
        const paymentMethod = $(this).closest('.payment-method');
        const methodName = paymentMethod.find('.method-name').text();

        if (confirm(`Are you sure you want to remove ${methodName}?`)) {
            paymentMethod.fadeOut(300, function () {
                $(this).remove();
            });
        }
    });
});