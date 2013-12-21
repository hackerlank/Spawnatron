class 'Spawnatron'
class 'SpawnatronEntry'

function SpawnatronEntry:__init( model_id, price, entry_type )
    self.model_id = model_id
    self.price = price
    self.entry_type = entry_type
end

function SpawnatronEntry:GetPrice()
    return self.price
end

function SpawnatronEntry:GetModelId()
    return self.model_id
end

function SpawnatronEntry:GetListboxItem()
    return self.listbox_item
end

function SpawnatronEntry:SetListboxItem( item )
    self.listbox_item = item
end

class 'VehicleSpawnatronEntry' (SpawnatronEntry)

function VehicleSpawnatronEntry:__init( model_id, price )
    SpawnatronEntry.__init( self, model_id, price, 1 )
end

function VehicleSpawnatronEntry:GetName()
    return Vehicle.GetNameByModelId( self.model_id )
end

class 'WeaponSpawnatronEntry' (SpawnatronEntry)

function WeaponSpawnatronEntry:__init( model_id, price, slot, name )
    SpawnatronEntry.__init( self, model_id, price, 2 )
    self.slot = slot
    self.name = name
end

function WeaponSpawnatronEntry:GetSlot()
    return self.slot
end

function WeaponSpawnatronEntry:GetName()
    return self.name
end

class 'ModelSpawnatronEntry' (SpawnatronEntry)

function ModelSpawnatronEntry:__init( model_id, price, name )
    SpawnatronEntry.__init( self, model_id, price, 2 )
    self.name = name
end

function ModelSpawnatronEntry:GetName()
    return self.name
end

function Spawnatron:CreateItems()
    self.types = {
        ["Vehicle"] = 1,
        ["Weapon"] = 2,
        ["Model"] = 3
    }

    self.id_types = {}

    for k, v in pairs(self.types) do
        self.id_types[v] = k
    end
    self.items = {
        [self.types.Vehicle] = {
            { "Civilian", "Sports", "Bikes", "Offroad", "Trucks/LGV", "Military (Ground)", "Planes", "Helicopters", "Boats" },
            ["Civilian"] = {
				VehicleSpawnatronEntry( 8, 0 ),
				VehicleSpawnatronEntry( 9, 0 ),
				VehicleSpawnatronEntry( 15, 0 ),
                VehicleSpawnatronEntry( 22, 0 ),
				VehicleSpawnatronEntry( 23, 0 ),
				VehicleSpawnatronEntry( 26, 0 ),
				VehicleSpawnatronEntry( 29, 0 ),
				VehicleSpawnatronEntry( 60, 0 ),
				VehicleSpawnatronEntry( 63, 0 ),
				VehicleSpawnatronEntry( 68, 0 ),
				VehicleSpawnatronEntry( 70, 0 ),
				VehicleSpawnatronEntry( 73, 0 ),
                -- DLC
                --VehicleSpawnatronEntry( 20, 8000 ),
                --VehicleSpawnatronEntry( 58, 2000 ),
                --VehicleSpawnatronEntry( 75, 1000 ),
                --VehicleSpawnatronEntry( 82, 1000 )
            },
			["Sports"] = {
                VehicleSpawnatronEntry( 2, 0 ),
				VehicleSpawnatronEntry( 7, 0 ),
                VehicleSpawnatronEntry( 54, 0 ),
				VehicleSpawnatronEntry( 55, 0 ),
                VehicleSpawnatronEntry( 78, 0 ),
				VehicleSpawnatronEntry( 91, 0 ),
			},
			["Bikes"] = {
                VehicleSpawnatronEntry( 21, 0 ),
				VehicleSpawnatronEntry( 32, 0 ),
                VehicleSpawnatronEntry( 43, 0 ),
				VehicleSpawnatronEntry( 44, 0 ),
				VehicleSpawnatronEntry( 47, 0 ),
				VehicleSpawnatronEntry( 61, 0 ),
				VehicleSpawnatronEntry( 74, 0 ),
				VehicleSpawnatronEntry( 83, 0 ),
                VehicleSpawnatronEntry( 89, 0 ),
				VehicleSpawnatronEntry( 90, 0 ),
			},
			["Offroad"] = {
				VehicleSpawnatronEntry( 1, 0 ),
				VehicleSpawnatronEntry( 10, 0 ),
                VehicleSpawnatronEntry( 11, 0 ),
                VehicleSpawnatronEntry( 13, 0 ),
				VehicleSpawnatronEntry( 33, 0 ),
				VehicleSpawnatronEntry( 36, 0 ),
				VehicleSpawnatronEntry( 52, 0 ),
				VehicleSpawnatronEntry( 84, 0 ),
				VehicleSpawnatronEntry( 86, 0 ),
			},
			["Trucks/LGV"] = {
                VehicleSpawnatronEntry( 4, 0 ),
				VehicleSpawnatronEntry( 12, 0 ),
				VehicleSpawnatronEntry( 40, 0 ),
				VehicleSpawnatronEntry( 41, 0 ),
				VehicleSpawnatronEntry( 42, 0 ),
				VehicleSpawnatronEntry( 49, 0 ),
				VehicleSpawnatronEntry( 66, 0 ),
				VehicleSpawnatronEntry( 71, 0 ),
                VehicleSpawnatronEntry( 76, 0 ),
                VehicleSpawnatronEntry( 79, 0 ),
			},
			["Military (Ground)"] = {
				VehicleSpawnatronEntry( 18, 0 ),
				VehicleSpawnatronEntry( 31, 0 ),
                VehicleSpawnatronEntry( 35, 0 ),
				VehicleSpawnatronEntry( 46, 0 ),
				VehicleSpawnatronEntry( 48, 0 ),
				VehicleSpawnatronEntry( 56, 0 ),
                VehicleSpawnatronEntry( 72, 0 ),
                VehicleSpawnatronEntry( 77, 0 ),
                VehicleSpawnatronEntry( 87, 0 ),
			},
            ["Boats"] = {
                VehicleSpawnatronEntry( 5, 0 ),
				VehicleSpawnatronEntry( 6, 0 ),
                VehicleSpawnatronEntry( 16, 0 ),
				VehicleSpawnatronEntry( 19, 0 ),
                VehicleSpawnatronEntry( 25, 0 ),
                VehicleSpawnatronEntry( 27, 0 ),
                VehicleSpawnatronEntry( 28, 0 ),
				VehicleSpawnatronEntry( 38, 0 ),
				VehicleSpawnatronEntry( 45, 0 ),
				VehicleSpawnatronEntry( 50, 0 ),
                VehicleSpawnatronEntry( 69, 0 ),
                VehicleSpawnatronEntry( 80, 0 ),
                VehicleSpawnatronEntry( 88, 0 ),
                -- DLC
                --VehicleSpawnatronEntry( 53, 10000 )
            },

            ["Planes"] = {
                VehicleSpawnatronEntry( 30, 0 ),
				VehicleSpawnatronEntry( 34, 0 ),
				VehicleSpawnatronEntry( 39, 0 ),
				VehicleSpawnatronEntry( 51, 0 ),
				VehicleSpawnatronEntry( 57, 0 ),
				VehicleSpawnatronEntry( 59, 0 ),
                VehicleSpawnatronEntry( 81, 0 ),
                VehicleSpawnatronEntry( 85, 0 ),
                -- DLC
                --VehicleSpawnatronEntry( 24, 15000 )
            },
			["Helicopters"] = {
				VehicleSpawnatronEntry( 3, 0 ),
				VehicleSpawnatronEntry( 14, 0 ),
				VehicleSpawnatronEntry( 37, 0 ),
				VehicleSpawnatronEntry( 62, 0 ),
                VehicleSpawnatronEntry( 64, 0 ),
				VehicleSpawnatronEntry( 65, 0 ),
				VehicleSpawnatronEntry( 67, 0 ),
			}
        },

        [self.types.Weapon] = {
            { "Right Hand", "Left Hand", "Two-handed" },
            ["Right Hand"] = {
                WeaponSpawnatronEntry( Weapon.Handgun, 0, 1, "Pistol" ),
                WeaponSpawnatronEntry( Weapon.Revolver, 0, 1, "Revolver" ),
                WeaponSpawnatronEntry( Weapon.SMG, 0, 1, "SMG" ),
                WeaponSpawnatronEntry( Weapon.SawnOffShotgun, 0, 1, "Sawn-off Shotgun" ),
				WeaponSpawnatronEntry( Weapon.GrenadeLauncher, 0, 1, "Grenade Launcher" ),
				WeaponSpawnatronEntry( Weapon.BubbleGun, 0, 1, "Bubble Gun" )
            },
			["Left Hand"] = {
                WeaponSpawnatronEntry( Weapon.Handgun, 0, 0, "Pistol" ),
                WeaponSpawnatronEntry( Weapon.Revolver, 0, 0, "Revolver" ),
                WeaponSpawnatronEntry( Weapon.SMG, 0, 0, "SMG" ),
                WeaponSpawnatronEntry( Weapon.SawnOffShotgun, 0, 0, "Sawn-off Shotgun" ),
				WeaponSpawnatronEntry( Weapon.GrenadeLauncher, 0, 0, "Grenade Launcher" ),
				WeaponSpawnatronEntry( Weapon.BubbleGun, 0, 0, "Bubble Gun" )
            },
            ["Two-handed"] = {
                WeaponSpawnatronEntry( Weapon.Assault, 0, 2, "Assault Rifle" ),
                WeaponSpawnatronEntry( Weapon.Shotgun, 0, 2, "Shotgun" ),
                WeaponSpawnatronEntry( Weapon.MachineGun, 0, 2, "Machine Gun" ),
                WeaponSpawnatronEntry( Weapon.Sniper, 0, 2, "Sniper Rifle" ),
                WeaponSpawnatronEntry( Weapon.RocketLauncher, 0, 2, "Rocket Launcher" ),
            }
        },

        [self.types.Model] = {
            { "Roaches", "Ular Boys", "Reapers", "Government", "Agency", "Misc" },

            ["Roaches"] = {
                ModelSpawnatronEntry( 2, 0, "Razak Razman" ),
                ModelSpawnatronEntry( 5, 0, "Elite" ),
                ModelSpawnatronEntry( 32, 0, "Technician" ),
                ModelSpawnatronEntry( 85, 0, "Soldier 1" ),
                ModelSpawnatronEntry( 59, 0, "Soldier 2" )
            },

            ["Ular Boys"] = {
                ModelSpawnatronEntry( 38, 0, "Sri Irawan" ),
                ModelSpawnatronEntry( 87, 0, "Elite" ),
                ModelSpawnatronEntry( 22, 0, "Technician" ),
                ModelSpawnatronEntry( 27, 0, "Soldier 1" ),
                ModelSpawnatronEntry( 103, 0, "Soldier 2" )
            },

            ["Reapers"] = {
                ModelSpawnatronEntry( 90, 0, "Bolo Santosi" ),
                ModelSpawnatronEntry( 63, 0, "Elite" ),
                ModelSpawnatronEntry( 8, 0, "Technician" ),
                ModelSpawnatronEntry( 12, 0, "Soldier 1" ),
                ModelSpawnatronEntry( 58, 0, "Soldier 2" ),
            },

            ["Government"] = {
                ModelSpawnatronEntry( 74, 0, "Baby Panay" ),
                ModelSpawnatronEntry( 67, 0, "Burned Baby Panay" ),
                ModelSpawnatronEntry( 101, 0, "Colonel" ),
                ModelSpawnatronEntry( 3, 0, "Demo Expert" ),
                ModelSpawnatronEntry( 98, 0, "Pilot" ),
                ModelSpawnatronEntry( 42, 0, "Black Hand" ),
                ModelSpawnatronEntry( 44, 0, "Ninja" ),
                ModelSpawnatronEntry( 23, 0, "Scientist" ),
                ModelSpawnatronEntry( 52, 0, "Soldier 1" ),
                ModelSpawnatronEntry( 66, 0, "Soldier 2" ) 
            },

            ["Agency"] = {
                ModelSpawnatronEntry( 9, 0, "Karl Blaine" ),
                ModelSpawnatronEntry( 65, 0, "Jade Tan" ),
                ModelSpawnatronEntry( 25, 0, "Maria Kane" ),
                ModelSpawnatronEntry( 30, 0, "Marshall" ),
                ModelSpawnatronEntry( 34, 0, "Tom Sheldon" ),
                ModelSpawnatronEntry( 100, 0, "Black Market Dealer" ),
                ModelSpawnatronEntry( 83, 0, "White Tiger" ),
                ModelSpawnatronEntry( 51, 0, "Rico Rodriguez" )
            },

            ["Misc"] = {
                ModelSpawnatronEntry( 70, 0, "General Masayo" ),
                ModelSpawnatronEntry( 11, 0, "Zhang Sun" ),
                ModelSpawnatronEntry( 84, 0, "Alexander Mirikov" ),
                ModelSpawnatronEntry( 19, 0, "Chinese Businessman" ),
                ModelSpawnatronEntry( 36, 0, "Politician" ),
                ModelSpawnatronEntry( 78, 0, "Thug Boss" ),
                ModelSpawnatronEntry( 71, 0, "Saul Sukarno" ),
                ModelSpawnatronEntry( 79, 0, "Japanese Veteran" ),
                ModelSpawnatronEntry( 96, 0, "Bodyguard" ),
                ModelSpawnatronEntry( 80, 0, "Suited Guest 1" ),
                ModelSpawnatronEntry( 95, 0, "Suited Guest 2" ),
                ModelSpawnatronEntry( 60, 0, "Race Challenge Girl" ),
                ModelSpawnatronEntry( 15, 0, "Male Stripper 1" ),
                ModelSpawnatronEntry( 17, 0, "Male Stripper 2" ),
                ModelSpawnatronEntry( 86, 0, "Female Stripper" ),
                ModelSpawnatronEntry( 16, 0, "Panau Police" ),
                ModelSpawnatronEntry( 18, 0, "Hacker" ),
                ModelSpawnatronEntry( 64, 0, "Bom Bom Bohilano" ),
                ModelSpawnatronEntry( 40, 0, "Factory Boss" ),
                ModelSpawnatronEntry( 1, 0, "Thug 1" ),
                ModelSpawnatronEntry( 39, 0, "Thug 2" ),
                ModelSpawnatronEntry( 61, 0, "Soldier" ),
                ModelSpawnatronEntry( 26, 0, "Boat Captain" ),
                ModelSpawnatronEntry( 21, 0, "Paparazzi" ),
            }
        }
    }
end