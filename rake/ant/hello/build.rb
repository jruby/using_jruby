require 'ant'
ant :name => "hello", :default => "hello" do
  target :name => "hello" do
    echo :message => "Hello Ant!"
  end
end
