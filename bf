for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("Tool") then
                        local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame				
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
                        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait(.1)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
                    end
                end
            end
        end)
    end)
