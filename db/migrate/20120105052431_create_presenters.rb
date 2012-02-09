class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string 	:name,	:null	=>	false
      t.string 	:twitter
      t.string 	:facebook
      t.text 		:biography
      t.boolean	:admin	,	default: false 
      # AUTHLOGIC
			t.string    :email,               :null => false                # optional, you can use login instead, or both
			t.string    :crypted_password,    :null => false                # optional, see below
			t.string    :password_salt,       :null => false                # optional, but highly recommended
			t.string    :persistence_token,   :null => false                # required
			t.string    :single_access_token, :null => false                # optional, see Authlogic::Session::Params
			t.string    :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability

			# Magic columns, just like ActiveRecord's created_at and updated_at. These are automatically maintained by Authlogic if they are present.
			t.integer   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
			t.integer   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
			t.datetime  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
			t.datetime  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
			t.datetime  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
			t.string    :current_login_ip                                   # optional, see Authlogic::Session::MagicColumns
			t.string    :last_login_ip                                      # optional, see Authlogic::Session::MagicColumns

      t.timestamps
    end
	  puts Presenter.create(name: "Alan Andrade Cestelos", email: "alan.andradec@gmail.com",  password: "gallo", password_confirmation: "gallo", admin: true)
  end
end
