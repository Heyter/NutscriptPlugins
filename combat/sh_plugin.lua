local PLUGIN = PLUGIN
PLUGIN.name = "Combat"
PLUGIN.author = "Chancer"
PLUGIN.desc = "A combat system based off of stats and rolling. Inspired by CWPNP."

local CHATCOLOR_MELEE = Color(155, 130, 130)
local CHATCOLOR_RANGED = Color(130, 130, 150)
local CHATCOLOR_REACT = Color(130, 150, 130)
local CHATCOLOR_RESIST = Color(160, 150, 130)

	bParts = {}
    bParts[1] = "Skull"
    bParts[2] = "Head Glance"
    bParts[3] = "Left Eye"
    bParts[4] = "Nose"
    bParts[5] = "Mouth"
    bParts[6] = "Neck Flesh"
    bParts[7] = "Neck"
    bParts[8] = "Larynx"
    bParts[9] = "Neck Spine"
    bParts[10] = "Base of Neck"
    bParts[11] = "Left Shoulder"
    bParts[12] = "Right Shoulder"
    bParts[13] = "Left Shoulder Socket"
    bParts[14] = "Right Shoulder Socket"
    bParts[15] = "Left Shoulder Glance"
    bParts[16] = "Right Shoulder Glance"
    bParts[17] = "Left Upper Arm Bone"
    bParts[18] = "Right Upper Arm Bone"
    bParts[19] = "Left Upper Arm Flesh"
    bParts[20] = "Right Upper Arm Flesh"
    bParts[21] = "Left Arm Glance"
    bParts[22] = "Right Arm Glance"
	bParts[23] = "Left Elbow"
	bParts[24] = "Right Elbow"
	bParts[25] = "Left Forearm Flesh"
	bParts[26] = "Right Forearm Flesh"
	bParts[27] = "Left Forearm Bone"
	bParts[28] = "Right Forearm Bone"
	bParts[29] = "Left Hand"
	bParts[30] = "Right Hand"
	bParts[31] = "Left Scapula"
	bParts[32] = "Right Scapula"
	bParts[33] = "Heart"
	bParts[34] = "Left Lung"
	bParts[35] = "Right Lung"
	bParts[36] = "Upper Chest Spine"
	bParts[37] = "Lower Chest Spine"
	bParts[38] = "Abdomen Spine"
	bParts[39] = "Left Upper Chest Rib"
	bParts[40] = "Right Upper Chest Rib"
	bParts[41] = "Left Lower Chest Rib"
	bParts[42] = "Right Lower Chest Rib"
	bParts[43] = "Liver"
	bParts[44] = "Kidney"
	bParts[45] = "Stomach"
	bParts[46] = "Spleen"
	bParts[47] = "Large Intestine"
	bParts[48] = "Small Intestine"
	bParts[49] = "Left Pelvis"
	bParts[50] = "Center Pelvis"
	bParts[51] = "Right Pelvis"
	bParts[52] = "Torso Glance"
	bParts[53] = "Left Hip"
	bParts[54] = "Right Hip"
	bParts[55] = "Left Hip Socket"
	bParts[56] = "Right Hip Socket"
	bParts[57] = "Left Upper Leg Flesh"
	bParts[58] = "Right Upper Leg Flesh"
	bParts[59] = "Left Upper Leg Femur"
	bParts[60] = "Right Upper Leg Femur"
	bParts[61] = "Left Leg Glance"
	bParts[62] = "Right Leg Glance"
	bParts[63] = "Left Knee"
	bParts[64] = "Right Knee"
	bParts[65] = "Left Shin Flesh"
	bParts[66] = "Right Shin Flesh"
	bParts[67] = "Left Tibia"
	bParts[68] = "Right Tibia"
	bParts[69] = "Left Ankle"
	bParts[70] = "Right Ankle"
	bParts[71] = "Left Foot"
	bParts[72] = "Right Foot"
	bParts[73] = "Right Eye"
	bParts[74] = "Groin"
	bParts[75] = "Left Ear"
	bParts[76] = "Right Ear"
	bParts[77] = "Weapon"

nut.chat.register("reflexes", {
	format = "%s has rolled %s for reflexes.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("flee", {
	format = "%s has rolled %s for a flee attempt.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("dodge", {
	format = "%s has rolled %s for a dodge or miss.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("block", {
	format = "%s has rolled %s for a block.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("defend", {
	format = "%s has rolled %s for a defend.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("firearms", {
	format = "%s has rolled %s for a shot.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("firearmsaimed", {
	format = "%s has rolled %s for an aimed shot.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("throw", {
	format = "%s has rolled %s for a throw.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("akimbo", {
	format = "%s has rolled %s for an akimbo shot.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("firearmsburst", {
	format = "%s has rolled %s for a burst fire shot.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("firearmsburstaimed", {
	format = "%s has rolled %s for an aimed burst fire shot.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("part", {
	format = "%s's projectile flies at the target's %s.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("partb", {
	format = "%s's burst shot flies at the target's %s.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("melee", {
	format = "%s has rolled %s for a melee attack.",
	color = CHATCOLOR_MELEE,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("parry", {
	format = "%s has rolled %s for a parry.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("suppress", {
	format = "%s has rolled %s for suppressing fire.",
	color = CHATCOLOR_RANGED,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("grapple", {
	format = "%s has rolled %s for a grapple.",
	color = CHATCOLOR_MELEE,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("sneak", {
	format = "%s has rolled %s for sneaking.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("perception", {
	format = "%s has rolled %s for perception.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("scavenge", {
	format = "%s has rolled %s for scavenging.",
	color = CHATCOLOR_REACT,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("fortitude", {
	format = "%s has rolled %s for fortitude.",
	color = CHATCOLOR_RESIST,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("endure", {
	format = "%s has rolled %s for enduring.",
	color = CHATCOLOR_RESIST,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.chat.register("will", {
	format = "%s has rolled %s for willpower.",
	color = CHATCOLOR_RESIST,
	filter = "actions",
	font = "nutChatFontItalics",
	onCanHear = nut.config.get("chatRange", 280) * 2,
	deadCanChat = true
})

nut.command.add("reflexes", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("stm")/100) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "reflexes", rolled .. critmsg)
	end
})

nut.command.add("flee", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("stm")/100) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "flee", rolled .. critmsg)
	end
})

nut.command.add("dodge", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("stm") * 0.014) + math.random(0, 9)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "dodge", rolled .. critmsg)
	end
})

nut.command.add("block", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.010) + (char:getAttrib("accuracy") * 0.005)) + math.random(0, 9)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "block", rolled .. critmsg)
	end
})

nut.command.add("defend", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.005) + (char:getAttrib("accuracy") * 0.005) + (char:getAttrib("stm") * 0.004)) + math.random(0, 9)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "defend", rolled .. critmsg)
	end
})

nut.command.add("firearms", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("accuracy") * 0.018) + (char:getAttrib("str") * 0.002)) + math.random(0, 10)) * crit
		local part = bParts[math.random(1, 77)]
		
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")
		nut.chat.send(client, "firearms", rolled .. critmsg)
		nut.chat.send(client, "part", part)
	end
})

nut.command.add("firearmsaimed", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = ((math.random(0, 20) * ((char:getAttrib("accuracy") * 0.019) + (char:getAttrib("str") * 0.001)) + math.random(0, 10)) + 2) * crit

		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "firearmsaimed", rolled .. critmsg)
	end
})

nut.command.add("throw", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("accuracy") * 0.01) + (char:getAttrib("str") * 0.01)) + math.random(0, 10)) * crit
		local part = bParts[math.random(1, 77)]
		
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")
		nut.chat.send(client, "throw", rolled .. critmsg)
		nut.chat.send(client, "part", part)
	end
})

nut.command.add("akimbo", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 16) * ((char:getAttrib("accuracy") * 0.009) + (char:getAttrib("str") * 0.009)) + math.random(0, 8)) * crit
		local part = bParts[math.random(1, 77)]
		
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")
		nut.chat.send(client, "akimbo", rolled .. critmsg)
		nut.chat.send(client, "part", part)
		
		rolled = (math.random(0, 16) * ((char:getAttrib("accuracy") * 0.009) + (char:getAttrib("str") * 0.009)) + math.random(0, 8)) * crit
		part = bParts[math.random(1, 77)]	
		
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")		
		nut.chat.send(client, "akimbo", rolled .. critmsg)
		nut.chat.send(client, "part", part)
	end
})

nut.command.add("firearmsburst", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("accuracy") * 0.016) + math.random(0, 8)) * crit
		local part = bParts[math.random(1, 77)]
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")	
		nut.chat.send(client, "firearmsburst", rolled .. critmsg)
		nut.chat.send(client, "partb", part)
	
		rolled = rolled * (0.6 + ((char:getAttrib("str") * 4) / 1000))
		part = bParts[math.random(1, 77)]
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")	
		nut.chat.send(client, "firearmsburst", rolled)
		nut.chat.send(client, "partb", part)
	
		rolled = rolled * (0.4 + ((char:getAttrib("str") * 6) / 1000))
		part = bParts[math.random(1, 77)]
		nut.log.add(client:Name().." rolled \""..rolled.. " " .. part .. "\"")		
		nut.chat.send(client, "firearmsburst", rolled)
		nut.chat.send(client, "partb", part)
	end
})

nut.command.add("firearmsburstaimed", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("accuracy") * 0.016) + math.random(0, 8)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")	
		nut.chat.send(client, "firearmsburst", rolled .. critmsg)
	
		rolled = rolled * (0.6 + ((char:getAttrib("str") * 4) / 1000))
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "firearmsburst", rolled)
	
		rolled = rolled * (0.4 + ((char:getAttrib("str") * 6) / 1000))
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "firearmsburst", rolled)
	end
})

nut.command.add("melee", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.014) + (char:getAttrib("accuracy") * 0.006)) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "melee", rolled .. critmsg)
	end
})

nut.command.add("parry", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.005) + (char:getAttrib("accuracy") * 0.005) + (char:getAttrib("stm") * 0.005)) + math.random(0, 8)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "parry", rolled .. critmsg)
	end
})

nut.command.add("suppress", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.016) + (char:getAttrib("accuracy") * 0.005)) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "suppress", rolled .. critmsg)
	end
})

nut.command.add("grapple", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * ((char:getAttrib("str") * 0.018) + (char:getAttrib("accuracy") * 0.002)) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")
		nut.chat.send(client, "grapple", rolled .. critmsg)
	end
})

--should integrate fear meter here
nut.command.add("sneak", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("stm")* 0.02) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "sneak", rolled .. critmsg)
	end
})

--This is used for detecting sneaking targets, or for finding secrets
nut.command.add("perception", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local crit = math.random(1, 1000)
		local critmsg = ""
		if (crit <= (char:getAttrib("luck") + 10)) then
			crit = (1.5 + char:getAttrib("luck")/10)
			critmsg = " (Crit!)"
		else
			crit = 1
		end
		local rolled = (math.random(0, 20) * (char:getAttrib("perception") * 0.02) + math.random(0, 10)) * crit
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "perception", rolled .. critmsg)
	end
})

nut.command.add("scavenge", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local luckroll = math.random(0, char:getAttrib("luck"))
		local rolled = math.random(luckroll, 100)
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "scavenge", rolled)
	end
})
--for resisting mental attacks (hallucinations, panic, etc)
nut.command.add("fortitude", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local rolled = (math.random(0, 20) * (char:getAttrib("fortitude") * 0.017) + (char:getAttrib("end") * 0.003) + math.random(0, 10))
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "fortitude", rolled)
	end
})
--for resisting physical things (drugs, sound attacks, knockouts, etc)
nut.command.add("endure", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local rolled = (math.random(0, 20) * (char:getAttrib("end") * 0.017) + (char:getAttrib("fortitude") * 0.003) + math.random(0, 10))
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "endure", rolled)
	end
})

--for controlling forged (drifter created) aberrations and tamed abominations
nut.command.add("will", {
	onRun = function(client, arguments)
		local char = client:getChar()
		local rolled = (math.random(0, 20) * (char:getAttrib("end") * 0.01) + (char:getAttrib("fortitude") * 0.01) + math.random(0, 10))
		nut.log.add(client:Name().." rolled \""..rolled.."\"")		
		nut.chat.send(client, "will", rolled)
	end
})