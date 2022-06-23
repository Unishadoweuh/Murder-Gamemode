

function GM:CanRespawn(ply)
	if self:GetRound() == 0 then
		if ply.NextSpawnTime && ply.NextSpawnTime > CurTime() then return end
		
		if ply:KeyPressed(IN_JUMP) || ply:KeyPressed(IN_ATTACK) then
			return true
		end
	end

	return false
end