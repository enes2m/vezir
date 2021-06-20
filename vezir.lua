IPlist =
    {
        {"vezirtest", "95.70.165.166"},  --Hypnos   
    }
setElementData(root, "vezirkoruma", 1)
oneat = nil
function koruma(res)
    if getElementData(root, "koruma") ~= 1 then     
    setElementData(root, "vezirkoruma", nil)
    shutdown("Lisanssız model - Vezir Model")
    return end
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
    if oneat then return end
            print("bu koruma Winter Scripting tarafından yapılmıştır.")
                if data1 == key then 
                    setElementData(root, "vezirkoruma", 1)
                    print ("Vezir Model orjinal model kullandiginiz icin tesekkurler.")
                    sendMessage("paketlog"," model, kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Paket Aktif!**" )
                    oneat = true
              else 
                    shutdown ("Vezir Model çalıntı model tespit edildi.")
                    setElementData(root, "vezirkoruma", nil)
                    sendMessage("paketlog","modeli kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
              end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)    
end
addEvent("starthypnos", true)
addEventHandler("starthypnos", root, koruma)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/855906476806897664/g4w1T1NR3g2EF6d6-C9OiejKuPT9onJHcFbV6HJpDOZhBMtTopJzHpQN9k3Y-jTIYNVh",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "BOT"
    }
    
}
