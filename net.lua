--ver 1.0
--soucre https://github.com/zutheoqn/autotouch.git
local xoainfo = "com.ienthach.XoaInfo" ;
local url_net = "http://alltimemobile.com/lists/?key=92069&aff_id=76541&agent=ios";
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
function click_adgem()
      local stop_loop = false;
      repeat
            if getColor(120, 628) == 10921638 then
                usleep(1000000);
                tap(120, 628);
                stop_loop = true;
            else
                  toast("click_adgem", 1);
                  ssleep(1);
            end
      until(stop_loop)
end
