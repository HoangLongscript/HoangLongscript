local a=loadstring(game:HttpGet('https://sirius.menu/rayfield'))()local a=a:CreateWindow({Name="HoangLongModel",LoadingTitle="HoangLongScript",LoadingSubtitle="Model Auto Chest",ConfigurationSaving={Enabled=false,FolderName=nil,FileName="HoangLongHUB"},Discord={Enabled=true,Invite="https://discord.gGg/cTV954j",RememberJoins=true},KeySystem=true,KeySettings={Title="HoangLongScript",Subtitle="Model Key System",Note="Model Key",FileName="Key",SaveKey=true,GrabKeyFromSite=false,Key={"2aBcDeFgHiJkLmNoPqRsTuVwXyZ","4aBcDeFgHiJkLmNoPqRsTuVwXyZ","6aBcDeFgHiJkLmNoPqRsTuVwXyZ","8aBcDeFgHiJkLmNoPqRsTuVwXyZ","0aBcDeFgHiJkLmNoPqRsTuVwXyZ"}}})local a=a:CreateTab("Auto Farm Chest",4483362458)local a=a:CreateToggle({Name="Auto  Farm Chest",CurrentValue=false,Flag="Toggle1",Callback=function(a)getgenv().Server_Hop=true;getgenv().Chest_Farm=true;getgenv().wait_Time=60;local a=game.PlaceId;if a==2753915549 or a==4442272183 or a==7449423635 then repeat wait()until game:IsLoaded()~=false;local a=0;local a=game.PlaceId;local b={}local c=""local d=os.date("!*t").hour;local e=false;local e=pcall(function()b=game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))end)if not e then table.insert(b,d)writefile("NotSameServers.json",game:GetService('HttpService'):JSONEncode(b))end;function TPReturner()local e;if c==""then e=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..a..'/servers/Public?sortOrder=Asc&limit=100'))else e=game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..a..'/servers/Public?sortOrder=Asc&limit=100&cursor='..c))end;local f=""if e.nextPageCursor and e.nextPageCursor~="null"and e.nextPageCursor~=nil then c=e.nextPageCursor end;local c=0;for e,e in pairs(e.data)do local g=true;f=tostring(e.id)if tonumber(e.maxPlayers)>tonumber(e.playing)then for a,a in pairs(b)do if c~=0 then if f==tostring(a)then g=false end else if tonumber(d)~=tonumber(a)then local a=pcall(function()delfile("NotSameServers.json")b={}table.insert(b,d)end)end end;c=c+1 end;if g==true then table.insert(b,f)wait()pcall(function()writefile("NotSameServers.json",game:GetService('HttpService'):JSONEncode(b))wait()game:GetService("TeleportService"):TeleportToPlaceInstance(a,f,game.Players.LocalPlayer)end)wait(4)end end end end;function Teleport()while wait()do pcall(function()TPReturner()if c~=""then TPReturner()end end)end end;spawn(function()local a="SetTeam"local b="Marines"game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(a,b)end)spawn(function()while wait(.8)do if Chest_Farm then pcall(function()for a,a in pairs(game:GetService("Workspace"):GetChildren())do if string.find(a.Name,"Chest")then print(a.Name)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=a.CFrame;wait(.15)end end;game.Players.LocalPlayer.Character.Head:Destroy()for a,a in pairs(game:GetService("Workspace"):GetDescendants())do if string.find(a.Name,"Chest")and a:IsA("TouchTransmitter")then firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,a.Parent,0)wait()firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,a.Parent,1)end end end)end end end)spawn(function()while wait()do if Server_Hop then pcall(function()wait(wait_Time)Teleport()print("Finding new server")end)end end end)end end})