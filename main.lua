    local url = "" --Webhook Bot Url
    local ssc = "Update :" --Update Log
    local MarketplaceService = game:GetService("MarketplaceService")
    local cc = "v1.0.1" -- Version
    local gamename = MarketplaceService:GetProductInfo(game.PlaceId).Name  
    local gamename2 = MarketplaceService:GetProductInfo(game.PlaceId).Name  
    local placeid = game.PlaceId
    local gamelink = "https://www.roblox.com/games/"
    
       local data = {
        ["username"] = 'Perfectus Update Bot',
        ['content'] = "", --emoji-id or channel-id or role-id
        ["avatar_url"] = "",
        ["embeds"] = {
            {
                ["name"] = "Perfectus Update Bot",
                ["description"] = "### Updated Script to Game",
                ["thumbnail"]= {
                ["url"] = ""}, --thumbnail url
                ["title"] =  gamename .. " / Updated Game Link",
                ["url"] = gamelink .. placeid,
                ["color"] = "16190510", -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "Hub Name",
                        ["value"] = '```lua'..'\n' .."Perfectus Hub".. '\n```',
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Game Name",
                        ["value"] = '```lua'..'\n'..gamename..'\n```', 
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Update Log",
                        ["value"] = '```lua'..'\n'..ssc..'\n```',
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Version",
                        ["value"] = '```lua'..'\n'..cc..'\n```',
                        ["inline"] = false
                    },                    
                },
                ["footer"] = {
                    ["text"] = "Updated",
                    ["icon_url"] = "https://cdn3.emoji.gg/emojis/4532-roleiconmod.png",
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
