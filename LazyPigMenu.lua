LazyPigOptions = {
	{
		text = "Lanzamiento para objetos verdes [Ctrl + Alt]",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "GREEN", value = 1, tooltip = NEED },
			{ text = GREED, var = "GREEN", value = 2, tooltip = GREED },
			{ text = PASS, var = "GREEN", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Lanzamiento automático para Zul'Gurub",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "ZG", value = 1, tooltip = NEED },
			{ text = GREED, var = "ZG", value = 2, tooltip = GREED },
			{ text = PASS, var = "ZG", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Lanzamiento automático para Núcleo Magma",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "MC", value = 1, tooltip = NEED },
			{ text = GREED, var = "MC", value = 2, tooltip = GREED },
			{ text = PASS, var = "MC", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Automatización de AQ Ídolos + Escarabajos",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "AQ", value = 1, tooltip = NEED },
			{ text = GREED, var = "AQ", value = 2, tooltip = GREED },
			{ text = PASS, var = "AQ", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Automatización de arenas corruptas de Ciénaga Negra",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "SAND", value = 1, tooltip = NEED },
			{ text = GREED, var = "SAND", value = 2, tooltip = GREED },
			{ text = PASS, var = "SAND", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Lanzamiento Automático de Santuario Esmeralda",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "ES_SHARDS", value = 1, tooltip = NEED },
			{ text = GREED, var = "ES_SHARDS", value = 2, tooltip = GREED },
			{ text = PASS, var = "ES_SHARDS", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Lanzamiento Automático de Naxxramas",
		exclusive = true,
		checkBoxes = {
			{ text = NEED, var = "NAXX", value = 1, tooltip = NEED },
			{ text = GREED, var = "NAXX", value = 2, tooltip = GREED },
			{ text = PASS, var = "NAXX", value = 0, tooltip = PASS },
		},
	},
	{
		text = "Removedor de salvación",
		exclusive = true,
		checkBoxes = {
			{ text = ALWAYS, var = "SALVA", value = 1, tooltip = ALWAYS, setFunc = LazyPig_CheckSalvation },
			{ text = "Inteligente", var = "SALVA", value = 2, tooltip = "Inteligente", tooltipSub = "Eliminación automática si:\nEres guerrero y tienes un escudo equipado,\nEres chamán y tienes un escudo equipado y tienes el talento Armadura espiritual rango 2,\nEres druida en forma de oso,\nEres paladín con Furia justa.", setFunc = LazyPig_CheckSalvation },
		},
	},
	{
		text = "Eliminador de mejoras de maná",
		checkBoxes = {
			{ text = ALWAYS, var = "REMOVEMANABUFFS", tooltip = "Eliminación automática de Bendición de Sabiduría / Intelecto Arcano / Oración del Espíritu. Desactivado en campos de batalla.", setFunc = LazyPig_CheckManaBuffs },
		},
	},
	{
		text = "Reglas para aceptar invitaciones grupales",
		checkBoxes = {
			{ text = "Compañeros de gremio", var = "GINV", tooltip = "Aceptar automáticamente invitaciones de miembros del gremio." },
			{ text = "Amigos", var = "FINV", tooltip = "Aceptar automáticamente invitaciones de amigos." },
			{ text = "Extraños", var = "SINV", tooltip = "Aceptar automáticamente invitaciones de desconocidos." },
			{ text = "Inactivo mientras está en BG o en cola", var = "DINV", tooltip = "No aceptar invitaciones automáticamente mientras estés en el campo de batalla o en la cola." }
		},
	},
	{
		text = "Automatización de campos de batalla",
		checkBoxes = {
			{ text = "Entrar al campo de batalla", var = "EBG", tooltip = "Entra al campo de batalla tan pronto como aparezca la cola." },
			{ text = "Abandonar el campo de batalla", var = "LBG", tooltip = "Abandona el campo de batalla tan pronto como haya terminado." },
			{ text = "Campo de batalla de cola", var = "QBG", tooltip = "Únase a la primera cola disponible tan pronto como haga clic derecho en el maestro de batalla." },
			{ text = "Liberación automática", var = "RBG", tooltip = "Liberación automática de espíritu en los campos de batalla." },
			{ text = "Anuncio de la cola del líder", var = "AQUE", tooltip = "Anuncia automáticamente unirse a la cola del campo de batalla como líder de incursión." },
			{ text = "Compartir misiones de Block BG", var = "SBG", tooltip = "Rechazar automáticamente misiones compartidas mientras estás en los campos de batalla." }
		},
	},
	{
		text = "Filtro de chat",
		checkBoxes = {
			{ text = "Spam de los jugadores", var = "SPAM", tooltip = "Ocultar los mensajes de spam de los jugadores." },
			{ text = "Lanzamiento poco común", var = "SPAM_UNCOMMON", tooltip = "Ocultar mensajes de botín poco comunes (verdes)." },
			{ text = "Lanzamiento raro", var = "SPAM_RARE", tooltip = "Ocultar mensajes de botín raros (azules)." },
			{ text = "Botín pobre-común", var = "SPAM_LOOT", tooltip = "Ocultar los mensajes de botín comunes y pobres (grises y blancos)." },
			{ text = "Mensajes de Cerdo Perezoso", var = "ROLLMSG", tooltip = "Mostrar mensajes de rotación automática de Cerdo Perezoso." }
		},
	},
	{
		text = "Silenciar el chat mundial",
		checkBoxes = {
			{ text = "Mazmorras", var = "WORLDDUNGEON", tooltip = "Silenciar el chat mundial mientras estás en las mazmorras.", setFunc = LazyPig_ZoneCheck },
			{ text = "Bandas", var = "WORLDRAID", tooltip = "Silenciar el chat mundial durante las Bandas.", setFunc = LazyPig_ZoneCheck },
			{ text = "Campos de Batalla", var = "WORLDBG", tooltip = "Silenciar el chat mundial mientras estás en los campos de batalla.", setFunc = LazyPig_ZoneCheck },
			{ text = "Silenciar Permanentemente", var = "WORLDUNCHECK", tooltip = "Silenciar el chat mundial para siempre...", setFunc = LazyPig_ZoneCheck }
		},
	},
	{
		text = MISCELLANEOUS,
		checkBoxes = {
			{ text = "Aceptación automática de invocación", var = "SUMM", tooltip = "Aceptación automática de invocación", tooltipSub = "Si se marca, las citaciones serán aceptadas antes de su vencimiento." },
			{ text = "Posición automática de la ventana de botín", var = "LOOT", tooltip = "Posición automática de la ventana de botín", tooltipSub = "Coloca la ventana de botín debajo del cursor del ratón."},
			{ text = "Clic derecho mejorado", var = "RIGHT", tooltip = "Clic derecho mejorado", tooltipSub = "Haga clic derecho para arrastrar y soltar elementos en los marcos de correo, comercio y subasta.", setFunc = LazyPig_MailtoCheck },
			{ text = "División/fusión de pila fácil", var = "SHIFTSPLIT", tooltip = "División/fusión de pila fácil", tooltipSub = "Presione Mayús + clic derecho en el elemento para comenzar, mantenga presionada la tecla Control o Alt para cambiar la cantidad de división, presione Mayús + clic derecho en el elemento nuevamente para finalizar.", setFunc = LazyPig_MailtoCheck },
			{ text = "Distancia de cámara extendida", var = "CAM", tooltip = "Distancia de cámara extendida", tooltipSub = "Amplíe la distancia de la cámara al máximo.", setFunc = LazyPig_RefreshCamera },
			{ text = "Combinaciones especiales de teclas", var = "SPECIALKEY", tooltip = "Combinaciones especiales de teclas", tooltipSub = "Active las combinaciones de teclas especiales, haga clic en el botón Combinaciones de teclas para obtener más detalles." },
			{ text = "Rechazo automático de duelo", var = "DUEL", tooltip = "Rechazo automático de duelos (mantenga presionada la tecla Shift para omitirlo)." },
			{ text = "Aceptación automática de resurrección de instancia", var = "REZ", tooltip = "Aceptación automática de resurrección de instancia", tooltipSub = "Aceptar automáticamente la resurrección en bandas, mazmorras y campos de batalla si el jugador que te resucita está fuera de combate." },
			{ text = "Procesamiento automático de chismes", var = "GOSSIP", tooltip = "Procesamiento automático de chismes (mantenga presionada la tecla Shift para omitir)", tooltipSub = "Evite los chismes que le generan los posaderos, los maestros de vuelo, etc." },
			{ text = "Desmontaje automático", var = "DISMOUNT", tooltip = "Desmontaje automático", tooltipSub = "Desmontar automáticamente cuando lo requiera otra acción." },
			{ text = "Postura automática", var = "AUTOSTANCE", tooltip = "Postura automática", tooltipSub = "Cambia automáticamente a la postura de guerrero/forma de druida requerida al lanzar el hechizo." },
		},
	},
}

function LazyPig_CreateOptionsFrame()
	-- Option Frame
	local frame = CreateFrame("Frame", "LazyPigOptionsFrame", UIParent)
	tinsert(UISpecialFrames,"LazyPigOptionsFrame")
	frame:SetFrameStrata("DIALOG")
	frame:SetWidth(500)
	frame:SetHeight(670)
	frame:SetPoint("CENTER", UIParent, 0, 80)
	frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8",
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
		tile = true,
		tileSize = 32,
		edgeSize = 32,
		insets = { left = 11, right = 12, top = 12, bottom = 11 }
	})
	frame:SetBackdropColor(0, 0, 0, .8)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(false)
	frame:RegisterForDrag("LeftButton")
	frame:Hide()
	frame:SetScript("OnMouseDown", function()
		if arg1 == "LeftButton" and not this.isMoving then
			this:StartMoving();
			this.isMoving = true;
		end
	end)
	frame:SetScript("OnMouseUp", function()
		if arg1 == "LeftButton" and this.isMoving then
			this:StopMovingOrSizing();
			this.isMoving = false;
		end
	end)
	frame:SetScript("OnHide", function()
		if this.isMoving then
			this:StopMovingOrSizing();
			this.isMoving = false;
		end
	end)

	-- MenuTitle Frame
	local texture_title = frame:CreateTexture("LazyPigOptionsFrameTitle")
	texture_title:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header", true);
	texture_title:SetWidth(296)
	texture_title:SetHeight(58)
	texture_title:SetPoint("CENTER", frame, "TOP", 0, -20)

	frame.texture_title = texture_title

	-- MenuTitle FontString
	local fs_title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	local LP_VERSION = GetAddOnMetadata("_LazyPig", "Version")
	fs_title:SetPoint("CENTER", frame.texture_title, "CENTER", 0, 12)
	fs_title:SetText("Opciones de Cerdo Perezoso")
	
	local versionText = frame:CreateFontString("$parentVersionText", "ARTWORK", "GameFontNormalSmall")
	versionText:SetPoint("TOPLEFT", frame, 20, -20)
	versionText:SetText("versión: "..LP_VERSION)

	frame.fs_title = fs_title

	-- Close Setting Window Button
	local btn_close = CreateFrame("Button", "LazyPigOptionsFrameCloseButton", frame, "UIPanelCloseButton")
	btn_close:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -12, -12)
	btn_close:SetWidth(32)
	btn_close:SetHeight(32)
	
	frame.btn_close = btn_close

	frame.btn_close:SetScript("OnClick", function()
		this:GetParent():Hide()
			LazyPigKeybindsFrame:Hide()
	end)

	-- Keybinds Window Button
	local btn_keybinds = CreateFrame("Button", "LazyPigOptionsFrameKeibindsButton", frame, "UIPanelButtonTemplate2")
	btn_keybinds:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -33, 18)
	btn_keybinds:SetWidth(120)
	btn_keybinds:SetHeight(20)
	btn_keybinds:SetText(KEY_BINDINGS)
	btn_keybinds:SetTextColor(1, 1, 1)
	frame.btn_keybinds = btn_keybinds

	frame.btn_keybinds:SetScript("OnClick", function()
		if LazyPigKeybindsFrame:IsShown() then
			LazyPigKeybindsFrame:Hide()
		else
			LazyPigKeybindsFrame:Show()
		end
	end)

	local height = 16
	local insetLeft = 30
	local insetTop = -32
	local columnWidth = 240
	local offsetX, offsetY = insetLeft, insetTop
	local index = 1
	for i = 1, getn(LazyPigOptions) do
		if i == 10 then
			offsetX, offsetY = insetLeft + columnWidth, insetTop
		end
		
		-- Check box group title
		local fontString = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
		fontString:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX, offsetY - 10)
		fontString:SetTextColor(1, 1, 1, 1)
		fontString:SetText(LazyPigOptions[i].text)
		
		offsetY = offsetY - height - 5
		
		for j = 1, getn(LazyPigOptions[i].checkBoxes) do
			local checkBox = CreateFrame("CheckButton", "$parentCheckBox"..index, frame, "UICheckButtonTemplate")
			local checkBoxText = _G[checkBox:GetName().."Text"]
			
			checkBox:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX + 5, offsetY)
			checkBox:SetWidth(22)
			checkBox:SetHeight(22)
			checkBoxText:SetText(LazyPigOptions[i].checkBoxes[j].text)
			checkBox.textR, checkBox.textG, checkBox.textB = checkBoxText:GetTextColor()
			
			-- Makes text clickable
			checkBox:SetHitRectInsets(0, -(checkBoxText:GetWidth() + 5), 0, 0)
			
			LazyPigOptions[i].checkBoxes[j].frame = checkBox
			checkBox.tooltip = LazyPigOptions[i].checkBoxes[j].tooltip
			checkBox.tooltipSub = LazyPigOptions[i].checkBoxes[j].tooltipSub
			checkBox.var = LazyPigOptions[i].checkBoxes[j].var
			checkBox.value = LazyPigOptions[i].checkBoxes[j].value
			checkBox.exclusive = LazyPigOptions[i].exclusive
			checkBox.checkBoxes = LazyPigOptions[i].checkBoxes
			checkBox.setFunc = LazyPigOptions[i].checkBoxes[j].setFunc

			checkBox:SetScript("OnShow", function()
				local value = this.value or true
				if LPCONFIG[this.var] == value then
					this:SetChecked(true)
					if this.exclusive then
						for _, data in pairs(this.checkBoxes) do
							if data.frame ~= this then
								data.frame:SetChecked(false)
							end
						end
					end
				else
					this:SetChecked(false)
				end
			end)

			checkBox:SetScript("OnClick", function()
				if this.exclusive then
					for _, data in pairs(this.checkBoxes) do
						if data.frame ~= this then
							data.frame:SetChecked(false)
						end
					end
				end
				local value = this.value or true
				if type(value) == "boolean" then
					LPCONFIG[this.var] = not LPCONFIG[this.var]
					-- this:SetChecked(LPCONFIG[this.var])
				elseif type(value) == "number" then
					LPCONFIG[this.var] = this:GetChecked() and this.value or nil
					-- this:SetChecked(LPCONFIG[this.var] == 0 and true or LPCONFIG[this.var])
				end
				if this.setFunc then
					this.setFunc()
				end
				PlaySound("igMainMenuOptionCheckBoxOn")
			end)

			checkBox:SetScript("OnEnter", function()
				_G[this:GetName().."Text"]:SetTextColor(1, 1, 1)
				if this.tooltip then
					GameTooltip:SetOwner(this, "ANCHOR_TOPRIGHT")
					GameTooltip:SetBackdropColor(.01, .01, .01, .91)
					GameTooltip:SetText(this.tooltip, nil, nil, nil, 1, true)
					if this.tooltipSub then
						GameTooltip:AddLine(this.tooltipSub, 1, 1, 1, true)
					end
					GameTooltip:Show()
				end
			end)

			checkBox:SetScript("OnLeave", function()
				_G[this:GetName().."Text"]:SetTextColor(this.textR, this.textG, this.textB)
				GameTooltip:Hide()
			end)

			offsetY = offsetY - height
			index = index + 1
		end
	end
end
