require 'ant'

ant.javac :srcdir => "src", :destdir => "build" do
  classpath do
    fileset :dir => "lib" do
      include :name => "*.jar"
    end
  end
end
