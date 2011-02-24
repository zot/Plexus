{createServer} = require 'net'
{puts} = require 'sys'
{AMT} = require 'amt'
{Some, None} = require 'option'
{Cons, Nil} = require 'list'
{ReductionGizmo, state} = require 'monad'

m = {}

class Game extends ReductionGizmo
  constructor: (@pending, @cmds, @world) ->
  process: (data) ->
    if (index = data.lastIndexOf '\r\n') != -1 then @processLines data, index, '\r\n'
    else if (index = data.lastIndexOf '\n') != -1 then @processLines data, index, '\n'
    else new Game @pending + data, @cmds, @world
  processLines: (data, index, lineEnd) -> (mofor game in this do
    cmd in (@pending + data[0...index]).split lineEnd
    game.run cmd.split /\ +/).setPending data[index + lineEnd.length..]
  setPending: (pending) -> new Game pending, @cmds, @world
  run: (cmd) -> if legal?[cmd?[0]] == m then this[cmd[0]] cmd[1..]... else @illegal cmd
  # commands
  illegal: (cmd) -> new Game @pending, (Cons "illegal '#{cmd.join ' '}'", @cmds), @world
  move: (x, y) -> new Game @pending, (Cons "move #{x}, #{y}", @cmds), @world
  shoot: (amount) -> new Game @pending, (Cons "shoot #{amount}", @cmds), @world

legal = move: m, shoot: m

game = new Game "", Nil, AMT.put

server = createServer (con) ->
  con.setEncoding 'ascii'
  con.on 'data', (data) ->
    game = game.process data
    if game.cmds != Nil
      puts "run commands: #{game.cmds.reverse().join '\n'}"

server.listen 8080, 'localhost'
