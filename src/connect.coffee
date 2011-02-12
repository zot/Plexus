net = require 'net'
sys = require 'sys'
{AMT} = require 'amt'
{Some, None} = require 'option'
{Cons, Nil} = require 'list'

class Game
  constructor: (@pending, @cmds, @world) ->
  reduce: (f, v) -> f this, this
  foreach: (f) ->
  filter: (f) -> if f() then this else
    t = this
    reduce: (f, v) -> t
    filter: (f) -> this
  process: (data) ->
    if (index = data.lastIndexOf '\n') == -1 then new Game @pending + data, @cmds, @world
    else mofor game in (new Game data[index + 1..], @cmds, @world) do
      cmd in (@pending + data[0...index]).split '\n'
      game.run (cmd.split ///[ ]+///)
  run: (cmd) -> if cmd.length && legal[cmd[0]] then this[cmd[0]] cmd[1..]... else this
  move: (x, y) -> new Game @pending, Cons "move #{x}, #{y}", @cmds
  shoot: (amt) -> new Game @pending, Cons "shoot #{amt}", @cmds
  @legal:
    move: true
    shoot: true

game = new Game "", Nil, AMT

server = net.createServer (con) ->
  con.setEncoding 'ascii'
  con.on 'data', (data) ->
    game = game.process data
    if game.cmds != Nil
      sys.puts "run commands: #{game.cmds.reverse.join '\n'}"

server.listen 8080, 'localhost'
