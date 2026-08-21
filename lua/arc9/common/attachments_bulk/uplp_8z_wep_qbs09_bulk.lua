local ATT = {}

local iconfolder = "entities/uplp_attachments/qbs09/"

-------------------- BARRELS
---------- uplp_qbs09_barrel_short

ATT = {}

ATT.PrintName = "305mm Breacher Barrel"
ATT.CompactName = "Short"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "barrel_short.png", "mips smooth")
ATT.Category = "uplp_qbs09_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- Positives
ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.05
ATT.SpeedAdd = 0.02
ATT.BarrelLengthAdd = -4
ATT.RPMMult = 1.11
ATT.DispersionSpreadAddHipFire = -0.01

-- Negatives
ATT.SpreadAdd = 0.015
ATT.ClipSizeOverride = 3
ATT.RangeMaxAdd = -15 / ARC9.HUToM
ATT.PhysBulletMuzzleVelocityMult = 0.94

ATT.CustomizePosHook = function(wep, vec) return vec + Vector(-2, -3, 0) end
ATT.CustomizeRotateAnchorHook = function(wep, vec) return vec + Vector(-2, 0, 0) end

ARC9.LoadAttachment(ATT, "uplp_qbs09_barrel_short")

-------------------- STOCKS

---------- uplp_qbs09_stock_folding
ATT = {}

ATT.PrintName = "Collapsed Stock"
ATT.CompactName = "Collapsed"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "stock_collapsed.png", "mips smooth")

ATT.Category = "uplp_qbs09_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- Positives
ATT.BarrelLengthAdd = -4
ATT.SpeedMultSights = 1.1
ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.05

-- Negatives
ATT.RecoilAdd = 0.3
ATT.SwayMultSights = 1.25

ATT.Free = true

ARC9.LoadAttachment(ATT, "uplp_qbs09_stock_collapsed")


---------- uplp_qbs09_stock_spas
ATT = {}

ATT.PrintName = "SPAS Folding Stock"
ATT.CompactName = "SPAS"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "stock_spas.png", "mips smooth")

ATT.Category = "uplp_qbs09_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.RecoilUpMult = 0.7
ATT.SpeedAdd = -0.02

ATT.CustomPros = {
    [ARC9:GetPhrase("uplp_togglestat_extended") .. " - " .. ARC9:GetPhrase("autostat.recoil")] = "-0.2",
    [ARC9:GetPhrase("uplp_togglestat_folded") .. " - " .. string.format( ARC9:GetPhrase("autostat.secondary.sights"), ARC9:GetPhrase("autostat.speed") )] = "×115%",
    [ARC9:GetPhrase("uplp_togglestat_folded") .. " - " .. ARC9:GetPhrase("autostat.aimdownsightstime")] = "-0.1s",
}

ATT.CustomCons = {
    [ARC9:GetPhrase("uplp_togglestat_folded") .. " - " .. ARC9:GetPhrase("autostat.recoil")] = "+0.6",
    [ARC9:GetPhrase("uplp_togglestat_folded") .. " - " .. string.format( ARC9:GetPhrase("autostat.secondary.sights"), ARC9:GetPhrase("autostat.dispersionspread") )] = "+34.4MOA",

}

ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("uplp_togglestat_extended"),
        ActivateElements = {"uplp_qbs09_stock_spas_e"},

        RecoilAdd = -0.2,
    },
    {
        PrintName = ARC9:GetPhrase("uplp_togglestat_folded"),
        ActivateElements = {"uplp_qbs09_stock_spas_f", "uplp_no_optics"},

        RecoilAdd = 0.6,
        AimDownSightsTimeAdd = -0.1,
        SpeedMultSights = 1.15,
        DispersionSpreadAddSights = 0.01,

        BarrelLengthAdd = -6,
        CantPeek = true,
    },
}

ARC9.LoadAttachment(ATT, "uplp_qbs09_stock_spas")

ATT = {}

ATT.PrintName = "Buffer Tube"
ATT.CompactName = "Buffer Tube"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "stock_tube.png", "mips smooth")

ATT.Category = "uplp_qbs09_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_qbs09_stock_tube"}

ATT.RecoilAutoControlMult = 0.7
ATT.RecoilAdd = -0.6 + 1
ATT.SwayAddSights = 1
ATT.AimDownSightsTimeAdd = 0.05 - 0.1
ATT.SprintToFireTimeAdd = 0.04 - 0.1
-- ATT.SpreadAddHipFire = 0.01 - 0.01
ATT.SpeedMultSights = 1.15
ATT.SpeedAdd = 0.02

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_ar15_stock"},
        DefaultIcon = Material("entities/uplp_attachements/def/arstock.png", "mips smooth"),
        Pos = Vector(2, 0, -0),
        Scale = 1.04,
        Ang = Angle(0, 0, 0),
    },
}

ATT.CustomizePosHook = function(wep, vec) return vec + Vector(-3, 2, 0) end
ATT.CustomizeRotateAnchorHook = function(wep, vec) return vec + Vector(-3, 0, 0) end

ARC9.LoadAttachment(ATT, "uplp_qbs09_stock_tube")

-------------------- AMMO

ATT = {}

ATT.PrintName = "uplp_qbs09_shell_tungsten"
ATT.CompactName = "uplp_qbs09_shell_tungsten"
ATT.Description = ATT.PrintName
ATT.SortOrder = 2

ATT.Icon = Material(iconfolder .. "shell_tungsten.png", "mips smooth")
ATT.Category = "uplp_qbs09_ammo"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- Positives
ATT.DamageMinMult = 2
ATT.RangeMaxAdd = 25 / ARC9.HUToM
ATT.NumOverride = 14
ATT.SpreadAdd = -0.005
ATT.PenetrationAdd = 10
ATT.PhysBulletMuzzleVelocityMult = 1.1

-- Negatives
ATT.RPMAdd = -30
ATT.RecoilMult = 1.15
ATT.RecoilRandomUpMult = 1.15
ATT.RecoilRandomSideMult = 1.15

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_qbs_tungsten.mdl"

ARC9.LoadAttachment(ATT, "uplp_qbs09_shell_tungsten")

---------- uplp_qbs09_shell_slug
ATT = {}

ATT.PrintName = "uplp_qbs09_shell_slug"
ATT.CompactName = "uplp_qbs09_shell_slug"
ATT.Description = ATT.PrintName
ATT.SortOrder = 2

ATT.Icon = Material(iconfolder .. "shell_slug.png", "mips smooth")
ATT.Category = "uplp_qbs09_ammo"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_qbs_slug.mdl"

-- Positives
ATT.DamageMinMult = 1.65
ATT.RangeMinAdd = 10 / ARC9.HUToM
ATT.RangeMaxMult = 2
ATT.SpreadMult = 0.15
ATT.HeadshotDamageAdd = 0.5
ATT.PenetrationAdd = 30

-- Negatives
ATT.RPMAdd = -30
ATT.NumOverride = 1
ATT.DamageMaxMult = 0.8
ATT.HullSizeOverride = 0
ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.PhysBulletGravityMult = 2
ATT.PhysBulletDragMult = 3
ATT.DispersionSpreadAddHipFire = 0.02
ATT.LegDamageMult = 0.5

ATT.RecoilMult = 1.15
ATT.RecoilRandomUpMult = 1.15
ATT.RecoilRandomSideMult = 1.15

ATT.DamageTypeOverride = DMG_BULLET
ATT.AlwaysPhysBulletOverride = true
ATT.SweetSpotOverride = false

ATT.MuzzleParticleOverride = "muzzleflash_slug"
ATT.MuzzleParticleOverride_Priority = 1

ARC9.LoadAttachment(ATT, "uplp_qbs09_shell_slug")