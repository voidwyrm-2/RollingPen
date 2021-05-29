function SteamDetails()

    ModBase.SetSteamWorkshopDetails("Rolling Pen", "Need easy dough? use a rolling pen to get some! I hope you like this, this is my first mod! I will have others coming soon. P.S. this is also my first model!", {"Rolling Pen"}, "Good_Dough.png")

end

function Creation()

    ModFood.CreateFood("Sugar", {"Straw","FlourCrude"}, {2,1})
    ModFood.CreateFood("Raw Doughnut", {"DoughGood","Flour","CakeBatter","Sugar"}, {2,3,2,1}, "Raw Doughnut", true)
    ModFood.CreateFood("Doughnut", {"Raw Doughnut","ToolTorchCrude"}, {1,1}, "Donut_Cooked(V1)", true)
    ModConverter.CreateConverter("Crude Rolling Pen", {"Dough","FlourCrude","BreadCrude"}, {"Pole","WheelCrude"}, {1,2}, "Models/Parts/Wood/Pole", {-1,-1}, {1,0}, {0,1}, {1,1}, false)
    ModConverter.CreateConverter("Good Rolling Pen", {"Dough","FlourCrude","BreadCrude","DoughGood","Flour","Bread"}, {"Axle","Wheel","FixingPeg"}, {1,2,2}, "Models/Parts/Wood/Axle", {-1,-1}, {1,0}, {0,1}, {1,1}, false)
    ModConverter.CreateConverter("Crude Metal Rolling Pen", {"Dough","FlourCrude","BreadCrude","DoughGood","Flour","Pastry","CakeBatter","Bread","Sugar"}, {"MetalPoleCrude","MetalWheel"}, {1,2}, "Models/Parts/Metal/MetalPoleCrude", {-1,-1}, {1,0}, {0,1}, {1,1}, false)
    ModConverter.CreateConverter("Good Metal Rolling Pen", {"BerriesCakeRaw","BerriesCake","AppleBerryPieRaw","AppleBerryPie","ApplePieRaw","ApplePie","Dough","FlourCrude","BreadCrude","DoughGood","Flour","Pastry","CakeBatter","Bread","Raw Doughnut","Doughnut","Sugar"}, {"MetalAxle","MetalWheel","Rivets"}, {1,2,2}, "Table_Best", {-1,-1}, {1,0}, {0,1}, {1,1}, true)

end

function BeforeLoad()
 
    ModVariable.SetVariableForBuildingUpgrade("Crude Rolling Pen", "Good Rolling Pen")
    ModVariable.SetVariableForBuildingUpgrade("Good Rolling Pen", "Crude Metal Rolling Pen")
    ModVariable.SetVariableForBuildingUpgrade("Crude Metal Rolling Pen", "Good Metal Rolling Pen")
    ModVariable.AddRecipeToConverter("Good Metal Rolling Pen", "Raw Doughnut", 1)
    ModVariable.AddRecipeToConverter("Good Metal Rolling Pen", "Doughnut", 1)
    ModVariable.AddRecipeToConverter("Crude Metal Rolling Pen", "Sugar", 1)
    ModVariable.AddRecipeToConverter("Good Metal Rolling Pen", "Sugar", 1)

end