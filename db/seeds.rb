# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Dependency.destroy_all
DependencyProfile.destroy_all
EquipmentProfile.destroy_all
Copier.destroy_all
Printer.destroy_all
Screen.destroy_all
Pc.destroy_all
Network.destroy_all
Consumable.destroy_all

users = User.create! [
  { username: "carlos", password: "abc123" },
  { username: "mary", password: "123abc" }
]

#name: nil, type: nil
dependencies = Dependency.create! [
	{ name:"Informatica y Sistemas", description:"Coordinacion" },
	{ name:"Recaudacion de Rentas", description:"Coordinacion" },
	{ name:"Juridico", description:"Coordinacion" },
	{ name:"Oficialia Mayor", description:"Coordinacion" },
	{ name:"Secretaria General", description:"Coordinacion" }
]

#Dependency.where(name:'Sistemas').pluck(:id)
responsables=["Maria Jesus Ochoa Arce", "Arturo Osuna Olivas", "Desconocido", "Francisco kiko", "Julio Villegas"]
telephones=["1467600 ext 1423","1467600 ext 1424","1467600 ext 1425","1467600 ext 1426","1467600 ext 1427"]
counter=0
Dependency.all.each  do |d| 
	dp=DependencyProfile.create! location:"Ed. Delegacional", responsable:responsables[counter], telephone:telephones[counter], address:"Av. Hidalgo y Blvd. Consituyentes", delegation:"Cabo San Lucas"
	counter+=1
	dp.Dependency=d
end
#location: string, responsable: string, telephone: string, address: string, Dependency_id: integer
#no_inventary: nil, serial_number: nil, service_years: nil, manufacturer: nil, model: nil, notes: nil, Dependency_id: nil
#creating equipments binding with the type of equipment
equipment_profiles = EquipmentProfile.create! [
	{no_inventary:"031240", serial_number:"CNU348BM6G", service_years:6, manufacturer:"HP", model:"ProBook 640", notes:"LAPTOP C.GARCIA"},
	{serial_number:"2M2336003N", service_years:"6", manufacturer:"HP", model:"DL380p", notes:"SERVIDOR QUE ERA PARA EL SIAC"},
	{no_inventary:"013620", serial_number:"MXJ81200P9", service_years:6, manufacturer:"HP", model:"dc7800p SFF", notes:"PC DE CAJAS RECAUDACION DE RENTAS CSL"},
	{no_inventary:"006580", serial_number:"CNN6341VND", service_years:8, manufacturer:"HP", model:"L1706", notes:"MONITOR RECAUDACION DE RENTAS" },
	{no_inventary:"013570", serial_number:"CNRXL35869", service_years:8, manufacturer:"HP", model:"4250n", notes:"IMPRESORA CAJAS RECAUDACION DE RENTAS CSL"},
	{serial_number:"A2T139778", service_years:0, manufacturer:"XEROX", model:"WorkCentre 3615", notes:"COPIADORA XEROX PRESTAMO"}
]

c=Copier.create! name:"Xerox workcentre 3615"
c.EquipmentProfile=EquipmentProfile.find_by serial_number: "A2T139778"

p=Printer.create! name:"Laserjet 4250n", genus:"Laser"
p.EquipmentProfile=EquipmentProfile.find_by serial_number: "CNRXL35869"

m=Screen.create! inches:17
m.EquipmentProfile=EquipmentProfile.find_by serial_number: "CNN6341VND"

pc=Pc.create! [ 
	{name:"Cyrax-pc", hd:"500GB", os:"Windows 7 Professional", workgroup:"INICIOMS", lan_mac:"A0:D3:C1:9B:18:D3", wifi_mac:"C4:D9:87:1D:99:BC", bluetooth:true, ip:"172.1.8.172", mask:"255.255.255.0"},
	{name:"D2CSL", hd:"1TB", os:"Windows Server 2008r2", workgroup:"D2CSL", lan_mac:"00:50:56:C0:00:08", bluetooth:false, ip:"172.1.8.176", mask:"255.255.255.0"},
	{name:"SERVO CONTA", hd:"250GB", os:"Windows Server 2003", workgroup:"contabilidadCSL", lan_mac:"00:50:56:C0:00:08", bluetooth:false, ip:"192.168.1.174", mask:"255.255.255.0"}
]
pc=Pc.find_by name:"Cyrax-pc"
ep=EquipmentProfile.find_by serial_number: "CNU348BM6G"
pc.EquipmentProfile=ep
pc.save!
pc=Pc.find_by name:"D2CSL"
ep=EquipmentProfile.find_by serial_number: "2M2336003N"
pc.EquipmentProfile=ep
pc.save!
pc=Pc.find_by name:"SERVO CONTA"
ep=EquipmentProfile.find_by serial_number: "MXJ81200P9"
pc.EquipmentProfile=ep
pc.save!

#bind with their Dependency
Dsistemas=Dependency.find_by name:"Informatica y Sistemas"
equipment=EquipmentProfile.find_by serial_number: "CNU348BM6G"
equipment.Dependency=Dsistemas
equipment.save!
equipment=EquipmentProfile.find_by serial_number: "2M2336003N"
equipment.Dependency=Dsistemas
equipment.save!

DRecaudacion=Dependency.find_by name:"Recaudacion de Rentas"
equipment=EquipmentProfile.find_by no_inventary:"013620"
equipment.Dependency=DRecaudacion
equipment.save!
equipment=EquipmentProfile.find_by no_inventary:"006580"
equipment.Dependency=DRecaudacion
equipment.save!
equipment=EquipmentProfile.find_by no_inventary:"013570"
equipment.Dependency=DRecaudacion
equipment.save!

DOficialia=Dependency.find_by name:"Oficialia Mayor"
equipment=EquipmentProfile.find_by serial_number:"A2T139778"
equipment.Dependency=DOficialia
equipment.save!

#networks
Network.create! [
  { link_type:"Modem ADSL", location:"RECAUDACION CSL", ip_range:"192.168.5.0/24"},
  { link_type:"Enlace Municipal", location:"RECAUDACION CSL", ip_range:"172.1.8.0/24"},
	{ link_type:"Modem ADSL", location:"RECAUDACION CSL", ip_range:"192.168.1.0/24"}
]
pc1=Pc.first
pc2=Pc.second
pc3=Pc.last
net=Network.find_by ip_range:"172.1.8.0/24"
pc1.Network=net
pc2.Network=net
pc3.Network=net
pc1.save!
pc2.save!
pc3.save!
Consumable.create! [
	{ genus:"Laser Toner", model:"42A" },
	{ genus:"Copiadora Toner", model:"TSXP3610M" }
]

t=Consumable.find_by model:"42A"
t.Printer=Printer.find_by name:"Laserjet 4250n"
t.save!
t=Consumable.find_by model:"TSXP3610M"
t.Printer=Printer.find_by name:"Xerox workcentre 3615"
t.save!
