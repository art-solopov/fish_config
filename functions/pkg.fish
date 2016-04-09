function pkg
         if which fisherman
            curl -sL get.fisherman.sh | fish
         end
end

set -g packages bass 'hasanozgan/theme-lambda'

function pkg_install
         for package in $packages
             fisher i $package
         end
end