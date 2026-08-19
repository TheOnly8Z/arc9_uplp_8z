local ATT = {}

local iconfolder = "entities/uplp_attachements/qbs09/"

-------------------- BARRELS
---------- uplp_qbs09_barrel_short

ATT = {}

ATT.PrintName = "305mm Breacher Barrel"
ATT.CompactName = "Short"
ATT.Description = ATT.PrintName

ATT.Icon = Material("entities/uplp_attachements/spas/short.png", "mips smooth")
ATT.Category = "uplp_qbs09_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

-- Positives
ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.04
ATT.SpeedAdd = 0.02
ATT.BarrelLengthAdd = -4
ATT.RPMMult = 1.11

-- Negatives
ATT.SpreadAdd = 0.01
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

ATT.Icon = Material("entities/uplp_attachements/spas/fold.png", "mips smooth")

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

ARC9.LoadAttachment(ATT, "uplp_qbs09_stock_collapsed")


-------------------- AMMO

ATT = {}

ATT.PrintName = "uplp_qbs09_shell_tungsten"
ATT.CompactName = "uplp_qbs09_shell_tungsten"
ATT.Description = ATT.PrintName
ATT.SortOrder = 2

ATT.Icon = Material("entities/uplp_attachements/ks23/buck.png", "mips smooth")
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
ATT.RecoilRandomUpMult = 1.25
ATT.RecoilRandomSideMult = 1.25

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_2375_buck.mdl"

ARC9.LoadAttachment(ATT, "uplp_qbs09_shell_tungsten")

---------- uplp_qbs09_shell_slug
ATT = {}

ATT.PrintName = "uplp_qbs09_shell_slug"
ATT.CompactName = "uplp_qbs09_shell_slug"
ATT.Description = ATT.PrintName
ATT.SortOrder = 2

ATT.Icon = Material("entities/uplp_attachements/ks23/slug.png", "mips smooth")
ATT.Category = "uplp_qbs09_ammo"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_2375_slug.mdl"

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
ATT.RecoilDissipationRateMult = 0.75
ATT.HullSizeOverride = 0
ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.PhysBulletGravityMult = 2
ATT.PhysBulletDragMult = 3
ATT.DispersionSpreadAddHipFire = 0.02
ATT.LegDamageMult = 0.5
ATT.RecoilRandomUpMult = 1.25
ATT.RecoilRandomSideMult = 1.25

ATT.DamageTypeOverride = DMG_BULLET
ATT.AlwaysPhysBulletOverride = true
ATT.SweetSpotOverride = false

ATT.MuzzleParticleOverride = "muzzleflash_slug"
ATT.MuzzleParticleOverride_Priority = 1

ARC9.LoadAttachment(ATT, "uplp_qbs09_shell_slug")