--ver 1.2
--soucre https://github.com/zutheoqn/autotouch.git
local xoainfo = "com.ienthach.XoaInfo" ;
local url_net = "http://alltimemobile.com/lists/?key=92069&aff_id=76541&agent=ios";
local app_key_open = "com.finalwire.aida64";
local adgem_location_x,adgem_location_y,adgem_location_color = 120, 628, 10921638;
local offwall_loc_x,offwall_loc_y,offwall_loc_color = 694, 465, 7961213;
local app_1,app_1_loc_x,app_1_loc_y = "com.app.armorvpn",math.random(100,200),math.random(500,600);
local app_2,app_2_loc_x,app_2_loc_y = "co.mona.Monaco",math.random(100,200),math.random(500,600);
local app_3,app_3_loc_x,app_3_loc_y = "irlapp.com.IRL",math.random(100,200),math.random(500,600);
local app_4,app_4_loc_x,app_4_loc_y = "connectiq.miles",math.random(100,200),math.random(500,600);

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
function _sleepApp(app,x,y)
      ssleep(1);
      appRun(app);
      ssleep(3);
      for i = 1, 5 do
            if appState(app) == "ACTIVATED" then
                  tap(x,y);
                  ssleep(10);
                  tap(x,y);
                  ssleep(10);
            else
                  ssleep(1);
                  break;
            end
      end
      --random click
end
_clearDB();
ssleep(2);
_openURL(url_net);
ssleep(2);
_clickOncheck(offwall_loc_x,offwall_loc_y,offwall_loc_color);
ssleep(2);
_clickOncheck(adgem_location_x,adgem_location_y,adgem_location_color);
ssleep(2);
repeat
      if appState(app_key_open) == "ACTIVATED" then
            ssleep(2);
            _sleepApp(app_1,app_1_loc_x,app_1_loc_y);
            _sleepApp(app_2,app_2_loc_x,app_2_loc_y);
            _sleepApp(app_3,app_3_loc_x,app_3_loc_y);
            _sleepApp(app_4,app_4_loc_x,app_4_loc_y);
            stop_loop_openApp = true;
      end
until stop_loop_openApp
