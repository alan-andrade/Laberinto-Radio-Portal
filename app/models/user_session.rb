class UserSession < Authlogic::Session::Base
	generalize_credentials_error_messages "Acceso incorrecto. Intenta de nuevo"
end
