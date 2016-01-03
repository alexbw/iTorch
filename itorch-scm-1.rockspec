package = "itorch"
version = "scm-1"

source = {
   url = "git://github.com/facebook/iTorch.git",
}

description = {
   summary = "iPython kernel for Lua / Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/facebook/iTorch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "luafilesystem",
   "penlight",
   "lua-cjson",
   "uuid",
   "lbase64",
   "env",
   "image",
   "lzmq >= 0.4.2",
   "luacrypto"
}

build = {
   type = "command",
   build_command = [[
	cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
