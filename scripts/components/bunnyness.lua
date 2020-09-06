local function oncurrent(self, current)
    if self.inst.player_classified ~= nil then
        assert(current >= 0 and current <= 255, "Player currentbunnyness out of range: "..tostring(current))
        --self.inst.player_classified.currentbunnyness:set(math.ceil(current))
    end
end

local Bunnyness = Class(function(self, inst)
    self.inst = inst

    --V2C: Recommended to explicitly add tag to prefab pristine state
    inst:AddTag("bunnyness")

    self.max = 100
    self.current = 100
    self._old = self.current
    self.time_effect_multiplier = 1

    if inst.player_classified ~= nil then
        makereadonly(self, "max")
    end
end,
nil,
{
    current = oncurrent,
})

function Bunnyness:IsStarving()
    return self.current <= 0
end

local function OnTimeEffectTick(inst, self, delta, dt)
    self:DoDelta(delta * self.time_effect_multiplier, true)
    --Bunnyness hitting 0 does starving damage
    if self.current <= 0 then
        inst.components.health:DoDelta(-inst.components.hunger.hurtrate * dt, false, "hunger")
    end
end

function Bunnyness:StartTimeEffect(dt, delta_b)
    if self.task ~= nil then
        self.task:Cancel()
    end
    self.task = self.inst:DoPeriodicTask(dt, OnTimeEffectTick, nil, self, delta_b, dt)
end

function Bunnyness:StopTimeEffect()
    if self.task ~= nil then
        self.task:Cancel()
        self.task = nil
    end
end

function Bunnyness:SetTimeEffectMultiplier(multiplier)
    self.time_effect_multiplier = multiplier or 1
end

function Bunnyness:DoDelta(delta, overtime)
    local old = self._old
    self.current = math.clamp(self.current + delta, 0, self.max)
    self._old = self.current

    self.inst:PushEvent("bunnynessdelta", { oldpercent = old / self.max, newpercent = self.current / self.max, overtime = overtime })

    --push starving event if hunger value isn't currently starving
    if not self.inst.components.hunger:IsStarving() then
        if self.current <= 0 then
            if old > 0 then
                self.inst:PushEvent("startstarving")
                ProfileStatsSet("started_starving", true)
            end
        elseif old <= 0 then
            self.inst:PushEvent("stopstarving")
            ProfileStatsSet("stopped_starving", true)
        end
    end
end

function Bunnyness:GetPercent()
    return self.current / self.max
end

function Bunnyness:SetPercent(percent, overtime)
    self.current = self.max * percent
    self:DoDelta(0, overtime)
end

function Bunnyness:OnSave()
    return 
    {
        current = self.current,
    }
end

function Bunnyness:OnLoad(data)
    if data ~= nil and data.current ~= nil and data.current ~= self.current then
        self.current = data.current
        self:DoDelta(0, true)
    end
end

function Bunnyness:GetDebugString()
    return string.format("%2.2f / %2.2f", self.current, self.max)
end

return Bunnyness
