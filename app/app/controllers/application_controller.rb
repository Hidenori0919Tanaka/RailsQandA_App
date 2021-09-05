class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        added_attrs = [ :email, :username, :password, :password_confirmation ]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end

    def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました" 
        questions_index  #　質問一覧画面に遷移
        # if current_user
        #   flash[:notice] = "ログインに成功しました" 
        #   root_url  #　指定したいパスに変更
        # else
        #   flash[:notice] = "新規登録完了しました。次に名前を入力してください" 
        #   new_profile_path  #　指定したいパスに変更
        # end
    end
end
