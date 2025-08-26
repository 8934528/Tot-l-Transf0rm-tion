$(document).ready(function () {
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

    // Add toggle password button if not exists
    if ($('.toggle-password').length === 0) {
        $('#txtPassword').after('<span class="toggle-password fas fa-eye-slash"></span>');
        $('.toggle-password').css({
            'position': 'absolute',
            'right': '10px',
            'top': '35px',
            'cursor': 'pointer',
            'z-index': '10'
        });
        $('#txtPassword').parent().css('position', 'relative');
    }

    // User type selection styling
    $('.btn-user-type').click(function () {
        $('.btn-user-type').removeClass('active');
        $(this).addClass('active');
    });
});