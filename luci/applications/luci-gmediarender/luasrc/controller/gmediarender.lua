--[[
RA-MOD
]]--

module("luci.controller.gmediarender", package.seeall)

function index()

	if not nixio.fs.access("/etc/config/gmediaplay") then
		return
	end

	local page
	page = entry({"admin", "RA-MOD", "gmediarender"}, cbi("gmediarender"), _("gmediarender"), 35)
	page.i18n = "gmediarender"
	page.dependent = true
end
