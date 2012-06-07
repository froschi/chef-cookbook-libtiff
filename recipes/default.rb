include_recipe "libjpeg"

packages = %w/
  libtiff4
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
