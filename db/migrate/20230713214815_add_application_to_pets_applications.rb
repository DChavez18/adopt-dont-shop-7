class AddApplicationToPetsApplications < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets_applications, :application, null: false, foreign_key: true
  end
end