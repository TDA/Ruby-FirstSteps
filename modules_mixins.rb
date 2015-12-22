#needs forward declaration
# m is small, so module, not Module
module ExModule
  def exMethod
    puts "Example"
  end
end

class ModulesMixins
  include ExModule
end

modules_eg = ModulesMixins.new
modules_eg.exMethod