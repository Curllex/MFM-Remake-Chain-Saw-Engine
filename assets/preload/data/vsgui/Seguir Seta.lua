local xd = 400;
local yd = 390;
local xb = 930;
local yb = 460;
local ofs = 20;
local ofsy = 40;
local followchars = true
local del = 1
local del2 = 1
function onUpdate()
  if del > 0 then
    del = del - 1
  end
  if del2 > 0 then
    del2 = del2 - 1
  end
  if followchars == true then
    if mustHitSection == false then
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
      triggerEvent('Camera Follow Pos',xd,yd-ofsy)
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
    triggerEvent('Camera Follow Pos',xd,yd+ofsy)
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
    triggerEvent('Camera Follow Pos',xd+ofs,yd)
    end
    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
    triggerEvent('Camera Follow Pos',xd-ofs,yd)
    end
    end
      if mustHitSection == true then
      if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
        triggerEvent('Camera Follow Pos',xb,yb-ofsy)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
  triggerEvent('Camera Follow Pos',xb,yb+ofsy)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
  triggerEvent('Camera Follow Pos',xb-ofs,yb)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
  triggerEvent('Camera Follow Pos',xb+ofs,yb)
      end
    else
    triggerEvent('Camera Follow Pos','','')
  end
end
end