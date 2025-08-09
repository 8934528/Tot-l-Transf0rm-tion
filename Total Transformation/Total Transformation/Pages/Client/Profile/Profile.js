$(document).ready(function () {
    // Initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();

    // Change avatar button
    $('.btn-change-avatar').click(function () {
        // In a real app, this would open a file dialog for image upload
        alert('Please select a new profile photo from your device');
    });

    // Form submission
    $('form').submit(function (e) {
        e.preventDefault();

        // In a real app, this would save the changes to the database
        const formId = $(this).closest('.profile-section').find('.section-title').text();
        alert(`${formId} saved successfully!`);
    });

    // Input validation
    $('input, select').on('change', function () {
        const inputId = $(this).attr('id');
        const value = $(this).val();

        if (!value) {
            $(this).addClass('is-invalid');
        } else {
            $(this).removeClass('is-invalid');

            // Specific validation for email
            if (inputId === 'email' && !isValidEmail(value)) {
                $(this).addClass('is-invalid');
                alert('Please enter a valid email address');
            }

            // Specific validation for phone
            if (inputId === 'phone' && !isValidPhone(value)) {
                $(this).addClass('is-invalid');
                alert('Please enter a valid phone number');
            }
        }
    });

    // Helper function to validate email
    function isValidEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // Helper function to validate phone number
    function isValidPhone(phone) {
        const re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
        return re.test(phone);
    }
});