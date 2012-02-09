class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string 			:name					,	null: false
      t.text 				:description
			t.datetime		:start_time		,	null: false
			t.datetime		:end_time			,	null: false 			
			t.string			:logo_file_name
    	t.integer 		:logo_content_type
    	t.integer 		:logo_file_size
    	t.references	:presenter
    end
  end
end
