from functools import wraps # Decorador que permite manejar excepciones en las vistas
from django.shortcuts import redirect

def login_required(view_func):
    @wraps(view_func)
    def wrapped_view(request, *args, **kwargs):
        if not request.session.get('user_id'):
            return redirect('login')
        return view_func(request, *args, **kwargs)
    return wrapped_view