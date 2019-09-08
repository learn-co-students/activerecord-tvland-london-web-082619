class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say #returns 'Tyrion Lannister always says: A Lannister always pays his debts'
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attributes)
    new_show = Show.create(attributes)
    self.show = new_show
  end

  def build_network(attributes)
    new_network = Network.create(attributes)
    self.show.network = new_network
  end


end