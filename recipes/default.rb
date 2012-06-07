include_recipe "libjpeg"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libtiff4
  /
when "precise"
  packages |= %w/
    libtiff4
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
