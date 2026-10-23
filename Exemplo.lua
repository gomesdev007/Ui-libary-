
local Rayfield = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/gomesdev007/Ui-libary-/refs/heads/main/Rayfield_Gen3_Compact.lua"
))()

local Window = Rayfield:CreateWindow({
    Name = "gen modded Demo",
    LoadingTitle = "modded",
    LoadingSubtitle = "Exemplo da biblioteca",
    ConfigurationSaving = {
        Enabled = false
    }
})

-- ABA PRINCIPAL
local MainTab = Window:CreateTab("Principal", 4483362458)

MainTab:CreateSection("Botões")

MainTab:CreateButton({
    Name = "Botão de teste",
    Callback = function()
        print("Botão clicado!")
    end
})

MainTab:CreateButton({
    Name = "Mostrar notificação",
    Callback = function()
        Rayfield:Notify({
            Title = "Gomes Hub",
            Content = "A biblioteca está funcionando!",
            Duration = 4
        })
    end
})

MainTab:CreateSection("Controles")

local Ativado = false

MainTab:CreateToggle({
    Name = "Ativar função de teste",
    CurrentValue = false,
    Flag = "TesteToggle",
    Callback = function(Value)
        Ativado = Value
        print("Toggle:", Ativado and "Ativado" or "Desativado")
    end
})

MainTab:CreateSlider({
    Name = "Velocidade de teste",
    Range = {0, 100},
    Increment = 5,
    Suffix = "%",
    CurrentValue = 50,
    Flag = "TesteSlider",
    Callback = function(Value)
        print("Valor do slider:", Value)
    end
})

MainTab:CreateDropdown({
    Name = "Escolher modo",
    Options = {"Modo 1", "Modo 2", "Modo 3"},
    CurrentOption = {"Modo 1"},
    MultipleOptions = false,
    Flag = "ModoDropdown",
    Callback = function(Option)
        print("Modo escolhido:", Option)
    end
})

-- ABA DE FERRAMENTAS
local ToolsTab = Window:CreateTab("Ferramentas", 4483362458)

ToolsTab:CreateSection("Entrada de texto")

ToolsTab:CreateInput({
    Name = "Seu texto",
    PlaceholderText = "Digite alguma coisa...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("Texto digitado:", Text)
    end
})

ToolsTab:CreateKeybind({
    Name = "Tecla de teste",
    CurrentKeybind = "K",
    HoldToInteract = false,
    Flag = "TesteKeybind",
    Callback = function()
        print("Tecla de teste pressionada!")
    end
})

ToolsTab:CreateSection("Informações")

ToolsTab:CreateParagraph({
    Title = "Rayfield Compact",
    Content = "Este é um exemplo para testar os componentes da biblioteca."
})

ToolsTab:CreateLabel("Biblioteca carregada")

ToolsTab:CreateButton({
    Name = "Testar aviso",
    Callback = function()
        Rayfield:Notify({
            Title = "Test sucess",
            Content = "O sistema de notificações foi chamado.",
            Duration = 3
        })
    end
})
