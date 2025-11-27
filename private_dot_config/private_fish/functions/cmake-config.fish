function cmake-config --wraps='cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=/home/nicolas/.local/share/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON' --description 'alias cmake-config cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=/home/nicolas/.local/share/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
    cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=/home/nicolas/.local/share/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON $argv
end
