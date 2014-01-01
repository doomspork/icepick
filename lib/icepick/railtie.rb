module Icepick
  class Railtie < Rails::Railtie
    initializer 'icepick.initialize' do |app|
      Icepick.initialize!({name: app.class.parent_name.underscore})

      silence_warnings do
        # Use Pry instead of IRB
        IRB = Pry
      end
    end
  end
end
