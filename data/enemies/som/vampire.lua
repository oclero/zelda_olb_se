-- Vampire boss.

local enemy = ...

function enemy:on_created()

  enemy:set_life(30)
  enemy:set_damage(6)
  enemy:create_sprite("enemies/" .. enemy:get_breed())
  enemy:set_hurt_style("boss")
  enemy:set_pushed_back_when_hurt(false)
end

function enemy:on_restarted()

  local movement = sol.movement.create("target")
  movement:set_speed(64)
  movement:start(enemy)
end

-- TODO when hurting the hero, add damage to Vampire's like points.
