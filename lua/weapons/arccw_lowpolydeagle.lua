SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Low Poly"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2.1
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 0
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Deagle"

-- True name --

SWEP.TrueName = "Desert Eagle"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Impractical pistol #13."
SWEP.Trivia_Manufacturer = "ISM"
SWEP.Trivia_Calibre = ".50 AE"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Israel / US"
SWEP.Trivia_Year = 1924

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "IMI"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_lowpolydeagle.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 80
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 86
SWEP.DamageMin = 21
SWEP.Range = 70
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 470 

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 7
SWEP.ExtendedClipSize = 14
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 2
SWEP.RecoilSide = 0.5

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.4
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 200
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_revolver"
SWEP.NPCWeight = 71

-- Accuracy --

SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 550
SWEP.MoveDispersion = 700

SWEP.Primary.Ammo = ".357"
SWEP.MagID = "deagle"

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.88
SWEP.SightTime = 0.18

-- Length --

SWEP.BarrelLength = 20
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(-0.5, -4, 2)
SWEP.HolsterAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.55, 10, 1.5),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, -2)

SWEP.CustomizePos = Vector(-1, -2, 1)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-12, 4.5, -5.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = "weapons/arccw/deagle/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "lowpolyfal_supp.ogg"
SWEP.DistantShootSound = path .. "dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {

    ["compbar"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

-- Animations --

SWEP.Animations = {
    ["idle_empty"] = {
        Source = "idle_empty",
        framerate = 60,
        Time = 120 / 60,
    },
    ["idle"] = {
        Source = "idle",
        framerate = 60,
        Time = 120 / 60,
    },
    ["ready"] = {
        Source = "ready",
        framerate = 60,
        Time = 73 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            { s = path .. "start.ogg", t = 0 / 60, c = ca },
            { s = path .. "readycharge.ogg", t = 22 / 60, c = ca },
            { s = path .. "end.ogg", t = 46 / 60, c = ca },
        },
    },
    ["draw"] = {
        Source = "idle",
        framerate = 60,
    },
    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        framerate = 60,
        Time = 35 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire_comp"] = {
        Source = {"fire_01_comp", "fire_02_comp", "fire_03_comp"},
        framerate = 60,
        Time = 35 / 60,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        framerate = 60,
        Time = 37 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = path .. "mech_last.ogg", t = 0 }},
    },

    -- 7-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 2,
        Time = 111 / 60,
        framerate = 60,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        RareSource = "reload_empty_alt",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        framerate = 60,
        Time = 146 / 60,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
        },
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 120 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 231 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 120 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 231 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
        },
    },
}

-- ADS animation blending, thanks fesiug -- 

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end

-- Attachments --

SWEP.CamAttachment = 3

SWEP.RejectAttachments = {
  ["lpak_polymer"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.2, 6),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Barrel",
        Slot = {"lpdeagle_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = "Default Barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, -4),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, 0.5, 2),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"fnchand"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(-0.6, -0.6, 1),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpfal_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defmag.png"),
        DefaultAttName = "20-Round Standard Mag",
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","go_stock","lphm_stock","lpfal_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defstock.png"),
        DefaultAttName = "Standard Wooden Stock",
        VMScale = Vector(0.9,0.9,0.9),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.2, -16),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        Slot = {"lpfal_grip"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defgrip.png"),
        DefaultAttName = "Standard Wooden Grip",
    },
    {
        PrintName = "Dust Cover",
        Slot = {"lpfal_dc"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defdc.png"),
        DefaultAttName = "Standard Dust Cover",
    },
    {
        PrintName = "Perk",
        Slot = "go_perk",
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.5, -0.1, -14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = {"skin_lpak"},
        DefaultAttName = "Black",
        FreeSlot = true,
    },
}