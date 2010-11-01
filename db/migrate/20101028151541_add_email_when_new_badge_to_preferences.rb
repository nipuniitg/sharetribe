class AddEmailWhenNewBadgeToPreferences < ActiveRecord::Migration
  def self.up
    Person.all.each do |person|
      person.update_attribute(:preferences, person.preferences.merge({:email_about_new_badges => true}))
    end  
  end

  def self.down
  end
end
