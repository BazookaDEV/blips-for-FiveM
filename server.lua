AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/blips" then
        CancelEvent()
        TriggerClientEvent('mostraBlips', source)
    end
end)

AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/names" then
        CancelEvent()
        TriggerClientEvent('mostraNomi', source)
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
