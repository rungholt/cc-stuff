local function getMbs()
    shell.run("wget https://raw.githubusercontent.com/SquidDev-CC/mbs/master/mbs.lua mbs")
    shell.run("mbs install")
    shell.run("reboot")
end

shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/stdgui.lua stdgui")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/std.lua std")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/modemstart.lua modemstart")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/speakertest.lua speakertest")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/whisk.lua whisk")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/trace.lua trace")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/ports.lua ports")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/ping.lua ping")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/opusedit.lua opedit")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/on.lua on")
shell.run("pastebin get Aaza6h5v framebuffer")
shell.run("pastebin get ySEWczEr nshauth")
shell.run("wget https://github.com/rungholt/cc-rom/blob/main/programs/turtle/goto.lua")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/nsh.lua nsh")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/nshget.lua nshget")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/nshput.lua nshput")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/kristwallet.lua kristwallet")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/imageconv.lua imgconv")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/gitget.lua gitget")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/gifrec.lua gifrec")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/firewolf.lua firewolf")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/advanced/pain.lua pain")
shell.run("wget https://raw.githubusercontent.com/rungholt/cc-rom/main/programs/advanced/textpaint.lua textpaint")
getMbs()