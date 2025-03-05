Config = {}

Config.Locale = 'en' -- Choose Language

Config.bombItem = 'carbomb' -- Item Required to Arm the Bomb
Config.remote = {
    item = 'carbombremote', -- Item Required to Detonate the Bomb
    maxDistance = 50.0 -- Max Distance to Detonate the Bomb
}

-- 0 (Explode After Countdown)
-- 1 (Explode once the veh reaches a set speed)
-- 2 (Remote Detonate on Key Press)
-- 3 (Detonate after veh is entered and timer ends)
-- 4 (Detonate Immediately After the vehicle is entered)
Config.DetonationType = 2

Config.ProgressBarType = 1 -- 0 (Disable) | 1 (ProgressBars) | 2 (MythicProgressBars)

Config.UsingMythicNotifications = false -- false (Default QBCore Notifications) | true (Mythic Notifications Enabled)

Config.TimeTakenToArm = 4 -- in seconds 

Config.TimeUntilDetonation = 10 -- in seconds

Config.TriggerKey = 47 -- If using type 2

Config.maxSpeed = 50 -- if using type 1

Config.Speed = 'MPH' -- if using type 1