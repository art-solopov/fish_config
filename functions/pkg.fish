function pkg
         if which fisherman
            curl -sL get.fisherman.sh | fish
         end
end

set -g packages bass 'fishery/segment'

function pkg_install
         for package in $packages
             fisher i $package
         end
end