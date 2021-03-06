function set(key, val)
  --print ('set');
  return alchemy('set', key, val);
end
function get(key)
  --print ('get');
  return alchemy('get', key);
end
function info()
  return alchemy('info');
end

function subscribe(channel)
  print ('subscribe');
  return alchemy('subscribe', channel);
end
function publish(channel, msg)
  print ('publish');
  return alchemy('publish', channel, msg);
end

function print_packages()
  table.foreach(package, print)
end

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k,v in pairs(o) do
                if type(k) ~= 'number' then k = '"'..k..'"' end
                s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

function ltrig_cnt(tbl, ...)
  alchemy("incr", 'ltrig_cnt');
  print('ltrig_cnt: tbl: ' .. tbl);
  print('ltrig_cnt: ' .. alchemy("get", 'ltrig_cnt'));
  local args = {...};
  print('ltrig_cnt: #args: ' .. #args);
end

function hiya() print ('hiya'); end

function fib(n) return n<2 and n or fib(n-1)+fib(n-2) end

function lcap_add(tname, fk1, pk)
  print('lcap_add: tname: ' .. tname .. ' fk1: ' .. fk1 .. ' pk: ' .. pk);
end
function lcap_del(tname, fk1, pk)
  print('lcap_del: tname: ' .. tname .. ' fk1: ' .. fk1 .. ' pk: ' .. pk);
end

function print_column(val)
  print('column: ' .. val);
end

function cubed(n)
  return n * n * n;
end
function nest_json(num)
  --print ('nest_json');
  return "{'DEEP':{'A':{'B':{'C':" .. cubed(num) .. "}}}}";
end
function nested_lua(n, f, s)
  --print ('nested_lua');
  return {n = n; f = f; s = s;};
end
