package = "hello"
version = "dev-1"
source = {
   url = "git+https://github.com/narate/kong-docker.git"
}
description = {
   homepage = "https://github.com/narate/kong-docker",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.hello.handler"] = "kong/plugins/hello/handler.lua",
      ["kong.plugins.hello.schema"] = "kong/plugins/hello/schema.lua"
   }
}
