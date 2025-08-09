$(document).ready(function () {
    // Form validation
    $('#form1').submit(function (e) {
        let isValid = true;

        // Validate first name
        const firstName = $('#txtFirstName').val().trim();
        if (firstName === '') {
            showError($('#txtFirstName'), 'First name is required');
            isValid = false;
        } else {
            clearError($('#txtFirstName'));
        }

        // Validate last name
        const lastName = $('#txtLastName').val().trim();
        if (lastName === '') {
            showError($('#txtLastName'), 'Last name is required');
            isValid = false;
        } else {
            clearError($('#txtLastName'));
        }

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

        // Validate phone
        const phone = $('#txtPhone').val().trim();
        if (phone === '') {
            showError($('#txtPhone'), 'Phone number is required');
            isValid = false;
        } else if (!isValidPhone(phone)) {
            showError($('#txtPhone'), 'Please enter a valid phone number');
            isValid = false;
        } else {
            clearError($('#txtPhone'));
        }

        // Validate password
        const password = $('#txtPassword').val().trim();
        if (password === '') {
            showError($('#txtPassword'), 'Password is required');
            isValid = false;
        } else if (password.length < 8) {
            showError($('#txtPassword'), 'Password must be at least 8 characters');
            isValid = false;
        } else {
            clearError($('#txtPassword'));
        }

        // Validate confirm password
        const confirmPassword = $('#txtConfirmPassword').val().trim();
        if (confirmPassword === '') {
            showError($('#txtConfirmPassword'), 'Please confirm your password');
            isValid = false;
        } else if (confirmPassword !== password) {
            showError($('#txtConfirmPassword'), 'Passwords do not match');
            isValid = false;
        } else {
            clearError($('#txtConfirmPassword'));
        }

        // Validate terms checkbox
        if (!$('#chkTerms').is(':checked')) {
            showError($('#chkTerms').closest('.form-group'), 'You must agree to the terms');
            isValid = false;
        } else {
            clearError($('#chkTerms').closest('.form-group'));
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

    // Helper function to validate phone number
    function isValidPhone(phone) {
        const re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
        return re.test(phone);
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

    // Password strength indicator
    $('#txtPassword').on('keyup', function () {
        const password = $(this).val();
        const strength = checkPasswordStrength(password);
        const strengthBar = $('.password-strength');

        if (!strengthBar.length) {
            $(this).after('<div class="password-strength mt-2"><div class="progress"><div class="progress-bar" role="progressbar"></div></div><small class="strength-text"></small></div>');
        }

        const progressBar = $('.progress-bar');
        const strengthText = $('.strength-text');

        switch (strength) {
            case 0:
            case 1:
                progressBar.css('width', '25%').removeClass('bg-warning bg-success').addClass('bg-danger');
                strengthText.text('Weak').css('color', '#dc3545');
                break;
            case 2:
                progressBar.css('width', '50%').removeClass('bg-danger bg-success').addClass('bg-warning');
                strengthText.text('Moderate').css('color', '#ffc107');
                break;
            case 3:
                progressBar.css('width', '75%').removeClass('bg-danger bg-warning').addClass('bg-success');
                strengthText.text('Strong').css('color', '#28a745');
                break;
            case 4:
                progressBar.css('width', '100%').removeClass('bg-danger bg-warning').addClass('bg-success');
                strengthText.text('Very Strong').css('color', '#28a745');
                break;
        }
    });

    function checkPasswordStrength(password) {
        let strength = 0;

        // Length >= 8
        if (password.length >= 8) strength++;

        // Contains lowercase
        if (/[a-z]/.test(password)) strength++;

        // Contains uppercase
        if (/[A-Z]/.test(password)) strength++;

        // Contains number
        if (/[0-9]/.test(password)) strength++;

        // Contains special char
        if (/[^A-Za-z0-9]/.test(password)) strength++;

        return Math.min(strength, 4);
    }

    // Toggle password visibility
    $('.toggle-password').click(function () {
        const passwordInput = $('#txtPassword');
        const confirmInput = $('#txtConfirmPassword');
        const type = passwordInput.attr('type') === 'password' ? 'text' : 'password';

        passwordInput.attr('type', type);
        confirmInput.attr('type', type);
        $(this).toggleClass('fa-eye fa-eye-slash');
    });
});