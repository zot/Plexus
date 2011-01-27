sys = require 'sys'

exports.API = class API
  set: (msgId, key, value) -> "set #{msgId} #{key} #{value}"
  setIf: (msgId, key, testValue, value) -> "setIf #{msgId} #{key} #{testValue} #{value}"
  setWhen: (msgId, key, testValue, value) -> "setWhen #{msgId} #{key} #{testValue} #{value}"
  incremenet: (msgId, key, delta) -> "incremenet #{msgId} #{key} #{delta}"
  append: (msgId, key, value, unique) -> "append #{msgId} #{key} #{value} #{unique}"
  removeFirst: (msgId, key) -> "removeFirst #{msgId} #{key}"
  remove: (msgId, key, value) -> "remove #{msgId} #{key} #{value}"
  listen: (msgId, key) -> "listen #{msgId} #{key}"
  unlisten: (msgId, key) -> "unlisten #{msgId} #{key}"
  createList: (msgId, key, value...) -> "createList #{msgId} #{key} #{value}"
  createSet: (msgId, key, value...) -> "createSet #{msgId} #{key} #{value}"

###
Messages
welcome(namespace)
refused(msgId, reason)
alias(key, alias)
set(msgId, modCount, key, value)
append(msgId, modCount, key, value)
removeFirst(msgId, modCound, key, value)
remove(msgId, modCount, key, value)
###

sys.puts new API().set(1, 2, 3)
