--[[
RA-MOD
]]--

module("luci.controller.shairport", package.seeall)

function index()

	if not nixio.fs.access("/etc/config/airplay") then
		return
	end

	local page
	page = entry({"admin", "RA-MOD", "shairport"}, cbi("shairport"), _("shairport"), 35)
	page.i18n = "shairport"
	page.dependent = true
end
