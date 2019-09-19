local BasePlugin = require "kong.plugins.base_plugin"

local HelloHandler = BasePlugin:extend()

HelloHandler.PRIORITY = 2000
HelloHandler.VERSION = "0.1.0"

function HelloHandler:new()
    HelloHandler.super.new(self, "hello")
end


-- Run this when the response header has been received
-- from the upstream service
function HelloHandler:header_filter(conf)
    HelloHandler.super.header_filter(self)
    kong.response.set_header(conf.header, conf.value)
end

return HelloHandler
