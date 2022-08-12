local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local API = "https://games.roblox.com/v1/games/"
local _PlaceId = game.PlaceId
local _Servers = API.._PlaceId.."/servers/Public?sortOrder=Asc&limit=100"

function ListServers(cursor)
   local Raw = game:HttpGet(_Servers .. ((cursor and "&cursor="..cursor) or ""))
   return HttpService:JSONDecode(Raw)
end

local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server

TeleportService:TeleportToPlaceInstance(_PlaceId,Server.id,game.Players.LocalPlayer)
