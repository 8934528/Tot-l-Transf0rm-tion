$(document).ready(function () {
    // Toggle password visibility
    $('.toggle-password').click(function () {
        const passwordInput = $('#txtPassword');
        const type = passwordInput.attr('type') === 'password' ? 'text' : 'password';
        passwordInput.attr('type', type);
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

    // Social login button hover effects
    $('.btn-social').hover(
        function () {
            $(this).css('transform', 'translateY(-2px)');
            $(this).css('box-shadow', '0 4px 8px rgba(0,0,0,0.1)');
        },
        function () {
            $(this).css('transform', 'translateY(0)');
            $(this).css('box-shadow', 'none');
        }
    );
});