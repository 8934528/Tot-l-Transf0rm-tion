$(document).ready(function () {
    // Form validation
    $('#form1').submit(function (e) {
        let isValid = true;

        // Validate email
        const email = $('#txtEmail').val().trim();
        if (email === '') {
            showError($('#txtEmail'), 'Email is required');
            isValid = false;
        } else if (!isValidEmail(email)) {
            showError($('#txtEmail'), 'Please enter a valid email');
            isValid = false;
        } else {
            clearError($('#txtEmail'));
        }

        // Validate password
        const password = $('#txtPassword').val().trim();
        if (password === '') {
            showError($('#txtPassword'), 'Password is required');
            isValid = false;
        } else if (password.length < 6) {
            showError($('#txtPassword'), 'Password must be at least 6 characters');
            isValid = false;
        } else {
            clearError($('#txtPassword'));
        }

        if (!isValid) {
            e.preventDefault();
        }
    });

    // Helper function to validate email
    function isValidEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // Show error message
    function showError(element, message) {
        const formGroup = element.closest('.form-group');
        let errorElement = formGroup.find('.error-message');

        if (errorElement.length === 0) {
            errorElement = $('<small class="error-message text-danger"></small>');
            formGroup.append(errorElement);
        }

        errorElement.text(message);
        element.addClass('is-invalid');
    }

    // Clear error message
    function clearError(element) {
        const formGroup = element.closest('.form-group');
        formGroup.find('.error-message').remove();
        element.removeClass('is-invalid');
    }

    // Toggle password visibility (you can add an eye icon to implement this)
    $('.toggle-password').click(function () {
        const passwordInput = $('#txtPassword');
        const type = passwordInput.attr('type') === 'password' ? 'text' : 'password';
        passwordInput.attr('type', type);
        $(this).toggleClass('fa-eye fa-eye-slash');
    });
});