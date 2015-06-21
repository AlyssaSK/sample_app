#coding: utf-8
module SessionsHelper
  # Аутентификация пользователя
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  # Проверка аутентификации пользователя
  def signed_in?
    !current_user.nil?
  end

  # Будет перенаправлять на страницу авторизации,
  # пока пользователь не авторизуется
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: 'Please sign in.'
    end
  end
  # Инициализация объекта с входным параметром
  def current_user=(user)
    @current_user = user
  end
  # Инициализация объекта пользователь
  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
  # Является объект текущим пользователем
  def current_user?(user)
    user == current_user
  end
  # Выход пользователя из системы
  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.encrypt(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
  # Удаление сессии и перенаправление
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end