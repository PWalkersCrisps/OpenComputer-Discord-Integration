local internet = require("internet")
local json = require("json")

io.write("Login URL:")

local url = io.read()

term.clear()

while true do
    local message = io.read()

    local args = {}
    for i in string.gmatch(message, "%S+") do
        table.insert(args, i)
    end

    if message == "inputEnd" then
        break
    end
    
    local messageData = {
        content = message,
        username = "Balls",
        avatar_url = "https://cdn.discordapp.com/attachments/911293186398367794/1078826969648603247/c30.jpg"
    }

    local headers = {
        ["Content-Type"] = "application/json",
        ["User-Agent"] = "MyBot (https://example.com, 1.0)"
    }

    internet.request(url, json.encode(messageData), headers)

    io.write()
end

print("Logging out")