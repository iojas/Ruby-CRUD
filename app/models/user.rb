class User < ApplicationRecord
  def how_old
      "I am "+self.age.to_s+" years old"
  end
end
