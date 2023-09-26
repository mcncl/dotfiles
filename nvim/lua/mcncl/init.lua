require("mcncl.set")
require("mcncl.remap")
require("mcncl.lazy")

function R(name)
    require("plenary.reload").reload_module(name)
end
