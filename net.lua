--ver 1.1
--soucre https://github.com/zutheoqn/autotouch.git
local xoainfo = "com.ienthach.XoaInfo" ;
local url_net = "http://alltimemobile.com/lists/?key=92069&aff_id=76541&agent=ios";
local adgem_location_x,adgem_location_y,adgem_location_color = 120, 628, 10921638;
local offwall_loc_x,offwall_loc_y,offwall_loc_color = 694, 465, 7961213;
function ssleep(s)
      sc = s * 1000000 ;
      usleep(sc);
end
function _clearDB()--open,clearDB xoainfo
      appRun(xoainfo);
      ssleep(3);
      repeat
            if appState(xoainfo) == "ACTIVATED" then
                  ssleep(0.2);
                  if getColor(817, 376) == 16696954 then
                        ssleep(1);
                        tap(817, 376);
                        tap(817, 376)
                        ssleep(3);
                        break;
                  end
            else
                  toast('_clearDB', 1);
                  ssleep(1);
            end
      until appState(xoainfo) ~= "ACTIVATED"
end
function _openURL(url)
      openURL(url);
      ssleep(3);
end
function _clickOncheck(x,y,Color)
      local stop_loop = false;
      repeat
            if getColor(x, y) == Color then
                ssleep(1);
                tap(x, y);
                stop_loop = true;
            else
                  toast("_clickOncheck", 1);
                  ssleep(1);
            end
      until(stop_loop)
end

_clearDB();
ssleep(2);
_openURL(url_net);
ssleep(2);
_clickOncheck(offwall_loc_x,offwall_loc_y,offwall_loc_color);
ssleep(2);
_clickOncheck(adgem_location_x,adgem_location_y,adgem_location_color);
ssleep(2);
