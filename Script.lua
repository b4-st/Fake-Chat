local FakeSpace = "                                                                                                                                                      "
local Event = nil
if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
	if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest") then
		Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
	end
else
	if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
		if game:GetService("TextChatService"):FindFirstChild("TextChannels"):FindFirstChild("RBXGeneral") then
			Event = game:GetService("TextChatService").TextChannels.RBXGeneral
		end
	end
end
if Event then
	if Event:IsA("RemoteEvent") then
		Event:FireServer(_G.RealMessage.. FakeSpace.. "[".. _G.FakeUsername.. "]: ".. _G.FakeMessage, "All")
	else
		Event:SendAsync(_G.RealMessage.. FakeSpace.. _G.FakeUsername.. ": ".. _G.FakeMessage, "")
	end
end
