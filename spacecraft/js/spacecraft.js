// Fixed header
var prevScrollpos = window.pageYOffset;

window.onscroll = function() {
	var currentScrollPos = window.pageYOffset;
	var _header = document.getElementById('header');
	var _global = document.getElementById('global');
	var headerHeight = _header.clientHeight;

	if (currentScrollPos > 0)
	{
		_header.style.top = 0;
		_header.classList.add('sticked-header');
		_global.style.marginTop = headerHeight + 'px';

		if (currentScrollPos > headerHeight)
		{
			if (prevScrollpos > currentScrollPos) {
				_header.style.top = 0;
			}
			else if (prevScrollpos < currentScrollPos) {
				_header.style.top = '-' + headerHeight + 'px';
			}
			prevScrollpos = currentScrollPos;
		}
	}
	else
	{
		_header.classList.remove('sticked-header');
		_global.style.marginTop = 0;
	}
};
