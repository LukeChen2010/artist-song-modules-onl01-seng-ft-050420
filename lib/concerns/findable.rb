module Findable
  def find_by_name(name, all)
    self.class.all.detect {|a| a.name == name}
  end
end