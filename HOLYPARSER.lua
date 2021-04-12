-- annoy script tm Do not streal from annoy s cript enterprise
-- @author Terry A. Davis

-- C++ is a perfect language and has no flaws because jesus encorporates it. 
-- Rust is a sin and people should stop using it because jesus is against rust because rust can kill people
-- because of the pollution in the material

local Players = game:GetService("Players");
local Teams = game:GetService("Teams");

local annoy_script_defs = {};

-- This reminds me of static std::function<std::string,std::string> newindex(std::map<std::string,std::string> tbl, std::string key, std::string value)
local function newindex(tbl,key,value)  -- This is a high tech new index function
	tbl[key]=value;						 -- Jesus encorporated function do not steal 20201
	return function(...)
		newindex(tbl,...);
	end
end

-- This reminds me of static std::string index(std::map<std::string,std::string> tbl, std::string key)
local function index(tbl,key) -- Hi tech index function
	return tbl[key];
end

-- This reminds me of static std::vector<std::string> check_eq(std::list<Player> arr, std::string delim)
local function check_eq(arr,delim) -- This is O(log n) Very efficient algoirhm
	local eq={};
	for _,v in pairs(arr)do
		if(v.Name:lower():sub(1,#delim)==delim:lower())then-- Using the power of if statement and thing is poosible!
			table.insert(eq,1,v); 
		end
	end
	return eq;
end


-- This reminds me of std::map<std::string,std::function<void>> expect(const char*,  ...)
local function expect(fn)
	local args={};
	local env={};
	function env.arg(ty) -- Help it says null ptr???
		table.insert(args,ty);
		return env;
	end
	function env.describe()return env;end
	function env.apply() 	-- Apply tbhe function for the funfction which is the function of the main table which is a function of the function
							-- Genus code only here
		previous=index(annoy_script_defs,fn);
		annoy_script_defs[fn]=function(slf,...)
			local pack={...};
			for i = 1,#pack do
				if(typeof(index(pack,i))~=index(args,i))then return;end-- Using the power of if statement and thing is poosible!
			end
			previous(slf,unpack(pack));
		end
	end
	function env.cleanup()
							-- For  garbage collection
							-- (but that is unholy)
		for name in pairs(args)do args[name]=nil;end
		for name in pairs(env)do env[name]=nil;end
	end
	return env;
end

-- This reminds me of static std::map<std::string,std::function<void>> template()
local function template()
	local templ={};
	local env={};
	local new;
	function env.expect(name,value) 	-- We do tihs for expceting th etype of the other type that you
										-- put in and this is c++ structure in real life!
		templ[name]=value;
			return env;
		end
		function env.new()
			new={};
			local entries={};
			function new.add(name,value)
				entries[name]=value;
			end
			function new.get()
				for name,value in pairs(templ)do
					if(value=="number")then newindex(entries,name,tonumber(index(entries,name)));end -- Using the power of if statement and thing is poosible!
					if(value=="boolean")then newindex(entries,name,index(entries,name)=="true" or index(entries,name)=="t");end -- Using the power of if statement and thing is poosible!
					if(typeof(index(entries,name))~=value)then return;end-- Using the power of if statement and thing is poosible!
				end
				return entries;
			end
			function new.cleanup()
				for name in pairs(entries)do
					entries[name]=nil;
				end
			end
		end
	return env;
end

local function pass(x)return x;end
function annoy_script_defs:select(selector, isRandom)
	local selection = ((selector=="*" or selector=="all") and pass or check_eq)(Players:GetPlayers(),selector); -- Using the power of jesus's and statement and or statement we can pass in unholy references into our functios. The only holy part is selector.
	if(Teams:FindFirstChild(selector))then selection=Teams[selector]:GetPlayers();end-- Using the power of if statement and thing is poosible!
		self._selection=isRandom and {selection[math.random(1,#selection)]} or selection;
	end
	local remoteTemplate = template()
		.expect("Pitch", "number")
	function annoy_script_defs:do_annoy(id, volume, pitch, limb)
		print(id,volume,pitch,limb);
		for _, selector in pairs(self._selection)do
			if(not selector.Character)then continue;end-- Using the power of if statement and thing is poosible!
			if(not selector.Character:FindFirstChild(limb))then continue;end-- Using the power of if statement and thing is poosible!
		end
	end
	-- THis reminds me of static void bind(std::string key, int count, ...)
	function annoy_script_defs:bind(key,...)
		local pack={...};
		local keyCode=nil;
		for _,keycode in pairs(Enum.KeyCode:GetEnumItems())do
			if(keycode.Name:lower()==key:lower())then-- Using the power of if statement and thing is poosible!
			keyCode=keycode;
		end-- hams nadiwch
	end
	
	coroutine.wrap(function()
		while wait() do
			if(game:GetService("UserInputService"):IsKeyDown(keyCode)) then -- Using the power of if statement and thing is poosible!
				self:do_annoy(unpack(pack));
			end
		end
	end)();
end

expect("do_annoy").arg("number").arg("number").arg("number").arg("string").apply();
expect("bind").arg("string").arg("number").arg("number").arg("number").arg("string").apply();

--- This reminds me of static void parse_annoy_script(std::string str)
local function parse_annoy_script(str)
	local instructions=str:split("\n");
	for i, v in pairs(instructions)do
		if(v:find("#"))then continue;end-- Using the power of if statement and thing is poosible!
		local split = v:split(" ");
		for name,value in pairs(split)do
			if(value:sub(1)=="#")then break;end-- Using the power of if statement and thing is poosible!
			value=value:gsub(" ",""):gsub("\t",""):gsub("%*",""); -- Using the power of jesus's coding we can create ofne of the best holy expression in the entire world!
			split[name]=value;
			if(tonumber(value))then split[name]=tonumber(value);end-- Using the power of if statement and thing is poosible!
			if(value=="true" or value=="t" or value=="false" or value=="f")then split[name]=(value=="true" or value=="t");end-- Using the power of if statement and thing is poosible!
		end
		(annoy_script_defs[split[1]] or pass)(annoy_script_defs, unpack(split,2));
	end
end

parse_annoy_script([[
	# Welcome to HOLY SCRIPT
	# After 9 years in development,
	# hopefully it has been worth the wait.
	# Thanks, and have fun!
	bind K 123 4 6 Head
	select *
	do_annoy 123 4 6 Head
]]);

-- jesus asked for no memory!!!