module Findable
  def find_by_name
    self.class.all.detect {|a| a.name == name}
  end
end