return {
    no_consumer = true, -- This means our plugin will not apply to specific service consumers
    fields = {
        header = {
            type     = "string",
            required = false,
            default  = "X-Hello"
        },
        value = {
            type     = "string",
            required = false,
            default  = "Hello, World"
        }
    }
}

