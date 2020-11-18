# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.delete_all
OrderDetail.delete_all
Order.delete_all
Product.delete_all
Category.delete_all
User.delete_all
Province.delete_all
Page.delete_all

Page.create(
  title: 'About CF Computing',
  content: 'CF Computing has been in business since 2014 when I graduated from Network Admin/Computer Tech course at Patal Vocational College. Now we offer a store to buy various computer hardware and software and devices.',
  permalink: 'about_us'
)

Page.create(
  title: 'Contact CF Computing',
  content: '123 My Street, Winnipeg, MB, R2W0G1',
  permalink: 'contact_us'
)

software = Category.find_or_create_by(name: "Software", description: "Operating System Software")
product_win10 = software.products.create(
  name: "Windows 10 Home",
  quantity_per_unit: 1,
  unit_price: 149.99,
  unit_stock: 10,
  category_id: software.id,
  created_at: "2020-10-01"
)

product_win10_pro = software.products.create(
  name: "Windows 10 Pro",
  quantity_per_unit: 1,
  unit_price: 189.99,
  unit_stock: 10,
  category_id: software.id,
)

product_win10_pro_creators = software.products.create(
  name: "Windows 10 Pro Creators Update",
  quantity_per_unit: 1,
  unit_price: 259.99,
  unit_stock: 10,
  category_id: software.id,
)

product_win_server = software.products.create(
  name: "Windows Server 2019 Essentials",
  quantity_per_unit: 1,
  unit_price: 539.99,
  unit_stock: 10,
  category_id: software.id,
)

product_win_server_cal = software.products.create(
  name: "Windows Server 2019 Standard w/16 additional processor core add on",
  quantity_per_unit: 1,
  unit_price: 214.99,
  unit_stock: 3,
  category_id: software.id,
)

product_win_server = software.products.create(
  name: "Windows Server 2019 Standard w/CAL Suite",
  quantity_per_unit: 1,
  unit_price: 539.99,
  unit_stock: 10,
  category_id: software.id,
)

product_win_server_2019 = software.products.create(
  name: "Windows Server 2019 Standard 24 Cores",
  quantity_per_unit: 1,
  unit_price: 1749.99,
  unit_stock: 2,
  category_id: software.id,
)

product_macOS = software.products.create(
  name: "macOS Catalina 10.15.7",
  quantity_per_unit: 1,
  unit_price: 399.99,
  unit_stock: 10,
  category_id: software.id
)

product_linux = software.products.create(
  name:  "Ubuntu 18.04 LTS 'Bionic Beaver'",
  quantity_per_unit: 1,
  unit_price: 99.99,
  unit_stock: 5,
  category_id: software.id
)

product_fix_me_stick = software.products.create(
  name: "FixMeStick Virus Removal Device",
  quantity_per_unit: 1,
  unit_price: 59.99,
  unit_stock: 10,
  category_id: software.id,
)

product_f_secure = software.products.create(
  name: "F-Secure",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 10,
  category_id: software.id,
)

product_eSet = software.products.create(
  name: "ESET Internet Security",
  quantity_per_unit: 1,
  unit_price: 59.99,
  unit_stock: 10,
  category_id: software.id,
)

product_malwarebytes = software.products.create(
  name: "Malwarebytes Premium Malware Removal",
  quantity_per_unit: 1,
  unit_price: 59.99,
  unit_stock: 10,
  category_id: software.id,
)

product_symantic = software.products.create(
  name: "Norton Security v3.0 OEM",
  quantity_per_unit: 1,
  unit_price: 29.99,
  unit_stock: 5,
  category_id: software.id,
)

product_lamantine = software.products.create(
  name: "Lamantine Sticky Password 7",
  quantity_per_unit: 1,
  unit_price: 19.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_home = software.products.create(
  name: "Microsoft Home & Business 2019 One-Time Purchase",
  quantity_per_unit: 1,
  unit_price: 319.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_bus = software.products.create(
  name: "Microsoft 365 Business Standard 12-Month Subscription",
  quantity_per_unit: 1,
  unit_price: 189.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_family = software.products.create(
  name: "Microsoft 365 Family 12-Month Subscription",
  quantity_per_unit: 1,
  unit_price: 109.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_personal = software.products.create(
  name: "Microsoft 365 Personal 12-Month Subscription",
  quantity_per_unit: 1,
  unit_price: 79.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_bus_prem = software.products.create(
  name: "Microsoft 365 Business Premium 1 Year Subscription",
  quantity_per_unit: 1,
  unit_price: 179.99,
  unit_stock: 5,
  category_id: software.id,
)

product_office_home_student = software.products.create(
  name: "Microsoft Office Home & Student 2016 for 1 user on 1 PC",
  quantity_per_unit: 1,
  unit_price: 169.99,
  unit_stock: 2,
  category_id: software.id,
)

product_office_home_student_2019 = software.products.create(
  name: "Microsoft Office Home & Student 2019 One-Time Purchase, 1 Person",
  quantity_per_unit: 1,
  unit_price: 169.99,
  unit_stock: 3,
  category_id: software.id,
)

product_ssd_hdd_clone = software.products.create(
  name: "SSD & HDD Cloning Kit",
  quantity_per_unit: 1,
  unit_price: 29.99,
  unit_stock: 4,
  category_id: software.id,
)

product_acronis_backup = software.products.create(
  name: "Acronis True Image 2019 Software - Backup",
  quantity_per_unit: 1,
  unit_price: 39.99,
  unit_stock: 4,
  category_id: software.id,
)

product_acronis_backup_2020 = software.products.create(
  name: "Acronis True Image 2020 Backup and Personal Cyber Protection Software",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 4,
  category_id: software.id,
)

parts = Category.find_or_create_by(name: "Computer Parts", description: "Computer internal parts")
hard_drive = parts.products.create(
  name: "Generic hard drive 1 TB",
  quantity_per_unit: 1,
  unit_price: 89.99,
  unit_stock: 5,
  category_id: parts.id
)

memory = parts.products.create(
  name: "Generic memory, 8 GB x 2",
  quantity_per_unit: 2,
  unit_price: 125.99,
  unit_stock: 5,
  category_id: parts.id
)

video_card = parts.products.create(
  name: "Generic video card, 8 GB Video Memory",
  quantity_per_unit: 1,
  unit_price: 299.99,
  unit_stock: 6,
  category_id: parts.id
)

motherboard = parts.products.create(
  name: "Generic motherboard, Fast BUS Speeds",
  quantity_per_unit: 1,
  unit_price: 499.99,
  unit_stock: 2,
  category_id: parts.id
)

network_adapters = parts.products.create(
  name: "Generic network adapter, 1000/100/10 Speeds",
  quantity_per_unit: 1,
  unit_price: 89.99,
  unit_stock: 4,
  category_id: parts.id
)

power_supply = parts.products.create(
  name: "Generic power supply, 500 watts",
  quantity_per_unit: 1,
  unit_price: 129.99,
  unit_stock: 3,
  category_id: parts.id
)

sound_card = parts.products.create(
  name: "Generic sound card",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 2,
  category_id: parts.id
)

processor = parts.products.create(
  name: "Generic processor i7 8th Gen",
  quantity_per_unit: 1,
  unit_price: 499.99,
  unit_stock: 4,
  category_id: parts.id
)

optical_disc_drive = parts.products.create(
  name: "Generic optical BluRay/DVD ReWritter Drive",
  quantity_per_unit: 1,
  unit_price: 75.99,
  unit_stock: 5,
  category_id: parts.id
)

adapter_card = parts.products.create(
  name: "Generic adapter card",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 3,
  category_id: parts.id
)

cooling_unit = parts.products.create(
  name: "Generic cooling system",
  quantity_per_unit: 1,
  unit_price: 599.99,
  unit_stock: 2,
  category_id: parts.id
)

computer_case = parts.products.create(
  name: "Generic computer tower case",
  quantity_per_unit: 1,
  unit_price: 199.99,
  unit_stock: 4,
  category_id: parts.id
)

monitor = Category.find_or_create_by(name: "Display Devices", description: "HD Monitors")
hd_17_inch = monitor.products.create(
  name: "Generic 17 inch HD Monitor",
  quantity_per_unit: 1,
  unit_price: 179.99,
  unit_stock: 4,
  category_id: monitor.id
)

hd_19_inch = monitor.products.create(
  name: "Generic 19 inch HD Monitor",
  quantity_per_unit: 1,
  unit_price: 229.99,
  unit_stock: 6,
  category_id: monitor.id
)

hd_21_inch = monitor.products.create(
  name: "Generic 21 inch HD Monitor",
  quantity_per_unit: 1,
  unit_price: 269.99,
  unit_stock: 2,
  category_id: monitor.id
)

hd_23_inch = monitor.products.create(
  name: "Generic 23 inch HD Monitor",
  quantity_per_unit: 1,
  unit_price: 299.99,
  unit_stock: 2,
  category_id: monitor.id
)

elo_15_inch = monitor.products.create(
  name: "Elo 15in LCD TouchMonitor",
  quantity_per_unit: 1,
  unit_price: 749.99,
  unit_stock: 3,
  category_id: monitor.id
)

elo_17_inch = monitor.products.create(
  name: "Elo 17in Accutouch TouchMonitor",
  quantity_per_unit: 1,
  unit_price: 829.99,
  unit_stock: 3,
  category_id: monitor.id
)

elo_19_inch = monitor.products.create(
  name: "Elo 19in LCD Desktop TouchMonitor w/AccuTouch",
  quantity_per_unit: 1,
  unit_price: 899.99,
  unit_stock: 3,
  category_id: monitor.id
)

targus_21_5_inch_priv_screen = monitor.products.create(
  name: "Targus 21.5in Widescreen LCD Monitor Privacy Screen",
  quantity_per_unit: 1,
  unit_price: 119.99,
  unit_stock: 3,
  category_id: monitor.id
)

targus_22_inch_priv_screen = monitor.products.create(
  name: "Targus 22in Widescreen LCD Monitor Privacy Screen",
  quantity_per_unit: 1,
  unit_price: 139.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_21_5_inch = monitor.products.create(
  name: "LG 21.5in Full HD Widescreen TN 75Hz 1ms LED LCD w/Freesync",
  quantity_per_unit: 1,
  unit_price: 119.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_22_inch = monitor.products.create(
  name: "LG 22in Full HD Widescreen TN 75Hz 1ms LED LCD w/Freesync",
  quantity_per_unit: 1,
  unit_price: 129.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_24_inch = monitor.products.create(
  name: "LG 24in Full HD Widescreen TN 75Hz 1ms LED LCD w/Freesync",
  quantity_per_unit: 1,
  unit_price: 139.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_24_inch_4k = monitor.products.create(
  name: "LG 24in Widescreen IPS LCD LED 4K UHD. Dual Thunderbold 3.",
  quantity_per_unit: 1,
  unit_price: 929.99,
  unit_stock: 2,
  category_id: monitor.id
)

lg_25_inch = monitor.products.create(
  name: "LG 25in Ultra Wide Full HD IPS LED LCD",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 2,
  category_id: monitor.id
)

lg_27_inch = monitor.products.create(
  name: "LG 27in Full HD Widescreen IPS 75Hz LED LCD w/Freesync",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_29_inch = monitor.products.create(
  name: "LG 29in Ultra Wide Full HD IPS LED LCD w/Freesync",
  quantity_per_unit: 1,
  unit_price: 349.99,
  unit_stock: 3,
  category_id: monitor.id
)

lg_32_inch = monitor.products.create(
  name: "LG 32in UltraGear QHD 144Hz VA LED LCD w/Freesync, HAS",
  quantity_per_unit: 1,
  unit_price: 569.99,
  unit_stock: 2,
  category_id: monitor.id
)

lg_32_inch_gaming = monitor.products.create(
  name: "LG 32in UltraGear QHD 144Hz Gaming VA LED LCD w/Freesync 2",
  quantity_per_unit: 1,
  unit_price: 499.99,
  unit_stock: 2,
  category_id: monitor.id
)

peripherals = Category.find_or_create_by(name: "Peripherals", description: "Computer Peripherals")
keyboard = peripherals.products.create(
  name: "Generic full size keyboard",
  quantity_per_unit: 1,
  unit_price: 29.99,
  unit_stock: 12,
  category_id: peripherals.id
)

mouse = peripherals.products.create(
  name: "Generic 3 button mouse",
  quantity_per_unit: 1,
  unit_price: 12.99,
  unit_stock: 8,
  category_id: peripherals.id
)

speaker = peripherals.products.create(
  name: "Generic full 5.1 HD Audio Speakers",
  quantity_per_unit: 5,
  unit_price: 89.99,
  unit_stock: 12,
  category_id: peripherals.id
)

speaker_polk_black = peripherals.products.create(
  name: "Polk Audio Assist Wireless Speaker w/Google Assist & Chromecast, Black",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 6,
  category_id: peripherals.id
)

speaker_polk_white = peripherals.products.create(
  name: "Polk Audio Assist Wireless Speaker w/Google Assist & Chromecast, White",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 6,
  category_id: peripherals.id
)

speaker_jbl_charge_3 = peripherals.products.create(
  name: "JBL Charge 3 Waterproof Bluetooth Speaker w/6,000mAh USB Charger, Black",
  quantity_per_unit: 1,
  unit_price: 219.99,
  unit_stock: 10,
  category_id: peripherals.id
)

speaker_jbl_charge_4 = peripherals.products.create(
  name: "JBL Charge 4 Waterproof Bluetooth Speaker, Black",
  quantity_per_unit: 1,
  unit_price: 239.99,
  unit_stock: 10,
  category_id: peripherals.id
)

speaker_mackie_cr3 = peripherals.products.create(
  name: "Mackie CR3 Powered Multimedia Monitor Speackers with Accoustic Isolation Pads",
  quantity_per_unit: 2,
  unit_price: 144.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_mackie_cr3_x = peripherals.products.create(
  name: "Mackie CR3-X 3in Multimedia Studio Monitors / Speackers",
  quantity_per_unit: 2,
  unit_price: 144.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_mackie_cr3_x_bt = peripherals.products.create(
  name: "Mackie CR3-X 3in Multimedia Studio Monitors / Speackers with Bluetooth",
  quantity_per_unit: 2,
  unit_price: 174.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_mackie_cr4_x = peripherals.products.create(
  name: "Mackie CR4-X 4in Multimedia Studio Monitors / Speackers",
  quantity_per_unit: 2,
  unit_price: 214.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_mackie_cr4_x_bt = peripherals.products.create(
  name: "Mackie CR4-X 4in Multimedia Studio Monitors / Speackers with Bluetooth",
  quantity_per_unit: 2,
  unit_price: 244.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_creative_labs = peripherals.products.create(
  name: "Creative Labs GigaWorks T40 Series II 2.0 Speakers",
  quantity_per_unit: 2,
  unit_price: 139.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_creative_labs_pebble_sub = peripherals.products.create(
  name: "Creative Labs Pebble Plus 2.1 USB Desktop Speakers w/Subwoofer, Black",
  quantity_per_unit: 3,
  unit_price: 53.99,
  unit_stock: 3,
  category_id: peripherals.id
)

speaker_creative_labs_pebble = peripherals.products.create(
  name: "Creative Labs Pebble USB 2.0 Desktop Speakers, Black",
  quantity_per_unit: 2,
  unit_price: 32.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_creative_labs_soundblaster = peripherals.products.create(
  name: "Creative Labs Sound Blaster X Katana Gaming Soundbar w/Wireless Subwoofter & Remote Control",
  quantity_per_unit: 3,
  unit_price: 299.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_creative_labs_soundblaster_kratos = peripherals.products.create(
  name: "Creative Labs Sound Blaster X Kratos S3 2.1 Channel Speaker System",
  quantity_per_unit: 3,
  unit_price: 99.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_logitech = peripherals.products.create(
  name: "Logitech S120 Stereo Speakers",
  quantity_per_unit: 2,
  unit_price: 19.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_boom_2 = peripherals.products.create(
  name: "Logitech Ultimate Ears BOOM 2 Portable Wireless Speaker w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 229.99,
  unit_stock: 5,
  category_id: peripherals.id
)

speaker_logitech_boom_3 = peripherals.products.create(
  name: "Logitech Ultimate Ears BOOM 3 Portable Wireless Speaker w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 199.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_mega_boom_3 = peripherals.products.create(
  name: "Logitech Ultimate Ears MEGABOOM 3 Portable Wireless Speaker w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_mega_boom_le = peripherals.products.create(
  name: "Logitech Ultimate Ears MEGABOOM LE Portable Wireless Speaker w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 249.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_power_up = peripherals.products.create(
  name: "Logitech Ultimate Ears POWER UP Charging Dock for Boom 3 and Mega 3",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_wonder_boom_2 = peripherals.products.create(
  name: "Logitech Ultimate Ears WONDERBOOM 2 Portable Wireless Speaker w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 129.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_multimedia = peripherals.products.create(
  name: "Logitech Z130 2.0 Multimedia Speakers",
  quantity_per_unit: 2,
  unit_price: 29.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_speakers = peripherals.products.create(
  name: "Logitech Z150 2.0 Speakers",
  quantity_per_unit: 2,
  unit_price: 29.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_speakers_2 = peripherals.products.create(
  name: "Logitech Z200 2.0 Speakers",
  quantity_per_unit: 2,
  unit_price: 39.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_multimedia_2 = peripherals.products.create(
  name: "Logitech Z213 2.1 Multimedia Speakers",
  quantity_per_unit: 3,
  unit_price: 49.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_multimedia_system = peripherals.products.create(
  name: "Logitech Z313 2.1 Multimedia Speaker System",
  quantity_per_unit: 4,
  unit_price: 69.99,
  unit_stock: 4,
  category_id: peripherals.id
)

speaker_logitech_speaker_system = peripherals.products.create(
  name: "Logitech Z323 2.1 Speaker System",
  quantity_per_unit: 3,
  unit_price: 99.99,
  unit_stock: 2,
  category_id: peripherals.id
)

speaker_logitech_speaker_system_sub = peripherals.products.create(
  name: "Logitech Z333 2.1 Speaker System w/Subwoofer",
  quantity_per_unit: 4,
  unit_price: 119.99,
  unit_stock: 3,
  category_id: peripherals.id
)

speaker_logitech_speaker_system_sub_bt = peripherals.products.create(
  name: "Logitech Z337 2.1 Multimedia Speaker System w/Subwoofer & Bluetooth",
  quantity_per_unit: 4,
  unit_price: 129.99,
  unit_stock: 3,
  category_id: peripherals.id
)

speaker_logitech_mult_wired = peripherals.products.create(
  name: "Logitech Z50 Wired Multimedia Speaker, Grey",
  quantity_per_unit: 1,
  unit_price: 24.99,
  unit_stock: 3,
  category_id: peripherals.id
)

speaker_logitech_channel_thx_system = peripherals.products.create(
  name: "Logitech Z906 5.1 Channel THX Speaker System",
  quantity_per_unit: 8,
  unit_price: 499.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_keyboard = peripherals.products.create(
  name: "Generic gaming keyboard",
  quantity_per_unit: 1,
  unit_price: 129.99,
  unit_stock: 5,
  category_id: peripherals.id
)

gaming_mouse = peripherals.products.create(
  name: "Generic gaming mouse",
  quantity_per_unit: 1,
  unit_price: 99.99,
  unit_stock: 5,
  category_id: peripherals.id
)

gaming_controller = peripherals.products.create(
  name: "Generic gaming controller, 14 button",
  quantity_per_unit: 1,
  unit_price: 69.99,
  unit_stock: 4,
  category_id: peripherals.id
)

gaming_controller_xbox_cyber = peripherals.products.create(
  name: "Xbox One Wireless Controller, Cyberpunk 2077 Limited Edition",
  quantity_per_unit: 1,
  unit_price: 84.99,
  unit_stock: 1,
  category_id: peripherals.id
)

gaming_controller_xbox_black = peripherals.products.create(
  name: "Xbox One Wireless Controller - Black",
  quantity_per_unit: 1,
  unit_price: 74.99,
  unit_stock: 4,
  category_id: peripherals.id
)

gaming_controller_xbox_white = peripherals.products.create(
  name: "Xbox One Wireless Controller X/S - White",
  quantity_per_unit: 1,
  unit_price: 74.99,
  unit_stock: 4,
  category_id: peripherals.id
)

gaming_controller_xbox_blue = peripherals.products.create(
  name: "Xbox One Wireless Controller - Blue",
  quantity_per_unit: 1,
  unit_price: 74.99,
  unit_stock: 5,
  category_id: peripherals.id
)

gaming_controller_logitech = peripherals.products.create(
  name: "Logitech F310 Wired Gaming Pad",
  quantity_per_unit: 1,
  unit_price: 34.99,
  unit_stock: 4,
  category_id: peripherals.id
)

gaming_controller_logitech_wireless = peripherals.products.create(
  name: "Logitech F710 WirelessGaming Pad",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 4,
  category_id: peripherals.id
)

gaming_controller_thrustmaster = peripherals.products.create(
  name: "Thrustmaster Wired GP XID Pro Gamepad for PC",
  quantity_per_unit: 1,
  unit_price: 44.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_controller_flashfire = peripherals.products.create(
  name: "Flashfire Mobile Gaming Hyperpad Controller w/Bluetooth",
  quantity_per_unit: 1,
  unit_price: 49.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_controller_retrones = peripherals.products.create(
  name: "Retro NES Style Wired USB Video Game Controller",
  quantity_per_unit: 1,
  unit_price: 14.99,
  unit_stock: 3,
  category_id: peripherals.id
)

gaming_controller_retrosnes = peripherals.products.create(
  name: "Retro SNES Style Wired USB 2.0",
  quantity_per_unit: 1,
  unit_price: 12.99,
  unit_stock: 3,
  category_id: peripherals.id
)

gaming_controller_8bitdo = peripherals.products.create(
  name: "8BITDO SN30 Pro Gamepad w/Bluetooth v4.0, Rechargable Battery, Bluetooth w/USB",
  quantity_per_unit: 1,
  unit_price: 59.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_controller_retrosnes_2 = peripherals.products.create(
  name: "Retro SNES Style Wired USB 2.0 2-Pack",
  quantity_per_unit: 2,
  unit_price: 24.99,
  unit_stock: 3,
  category_id: peripherals.id
)

gaming_race_set = peripherals.products.create(
  name: "Generic racing pedal and steering wheel set",
  quantity_per_unit: 2,
  unit_price: 129.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_race_set_flashfire = peripherals.products.create(
  name: "Flashfire 4-in-1 Force Racing Wheel Set w/Force Wheel and Pedal",
  quantity_per_unit: 2,
  unit_price: 189.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_race_set_thrustmaster = peripherals.products.create(
  name: "Thrustmaster 599XX EVO 30 Wheel Add-On, Alcantara Edition",
  quantity_per_unit: 2,
  unit_price: 129.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_race_set_nextlevel = peripherals.products.create(
  name: "Next Level Racing Challenger Racing Simulator Cockpit",
  quantity_per_unit: 1,
  unit_price: 499.99,
  unit_stock: 1,
  category_id: peripherals.id
)

gaming_race_set_nextlevel_addon = peripherals.products.create(
  name: "Next Level Racing Seat Add-On",
  quantity_per_unit: 1,
  unit_price: 749.99,
  unit_stock: 1,
  category_id: peripherals.id
)

gaming_race_set_joystick = peripherals.products.create(
  name: "Flashfire Cobra V5 HOTAS Flight Simulation Combo w/Joystick and Throttle Unit",
  quantity_per_unit: 2,
  unit_price: 189.99,
  unit_stock: 2,
  category_id: peripherals.id
)

gaming_race_set_yoke = peripherals.products.create(
  name: "CH Product Eclipse Yoke Flight Simulation System",
  quantity_per_unit: 1,
  unit_price: 319.99,
  unit_stock: 2,
  category_id: peripherals.id
)

cables = Category.find_or_create_by(name: "Cables and Adapters", description: "Various cables for computers")
power_cable = cables.products.create(
  name: "Generic power cable",
  quantity_per_unit: 1,
  unit_price: 5.99,
  unit_stock: 15,
  category_id: cables.id
)

vga_cable = cables.products.create(
  name: "Generic VGA 15 pin cable",
  quantity_per_unit: 1,
  unit_price: 7.99,
  unit_stock: 4,
  category_id: cables.id
)

dvi_cable = cables.products.create(
  name: "Generic DVI 29 pin cable",
  quantity_per_unit: 1,
  unit_price: 12.99,
  unit_stock: 9,
  category_id: cables.id
)

hdmi_cable = cables.products.create(
  name: "Generic HDMI cable",
  quantity_per_unit: 1,
  unit_price: 14.99,
  unit_stock: 25,
  category_id: cables.id
)

display_port_cable = cables.products.create(
  name: "Generic Display Port cable",
  quantity_per_unit: 1,
  unit_price: 19.99,
  unit_stock: 13,
  category_id: cables.id
)

computer_systems = Category.find_or_create_by(name: "Computer Systems", description: "Computer systems, Windows/MacOS")
windows_desktop = computer_systems.products.create(
  name: "Windows 10 Desktop Computer, 256 Gig SSD Harddrive, 1 TB Sata HDD, 16 Gigs RAM, Video Card 8 GB, 2.8 GHz",
  quantity_per_unit: 1,
  unit_price: 799.99,
  unit_stock: 5,
  category_id: computer_systems.id
)

macOS_desktop = computer_systems.products.create(
  name: "Mac OS X Catelina Desktop Computer, 512 Gig SSD HDD, 1 TB Sata Harddrive, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1199.99,
  unit_stock: 2,
  category_id: computer_systems.id
)

windows_laptop = computer_systems.products.create(
  name: "Windows 10 Laptop, 512 GB SSD Harddrive, 1 TB Sata HDD, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1299.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

macOS_laptop = computer_systems.products.create(
  name: "Mac OS X Catelina Laptop, 512 Gig SSD Harddrive, 1 TB Sata HDD, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1499.99,
  unit_stock: 3,
  category_id: computer_systems.id
)

msi_system_1 = computer_systems.products.create(
  name: "MSI Aegis RS 10SD-018CA w/Core i7-10700KF, 512 Gig SSD, 1 TB Sata HDD, 16 Gigs RAM, Geforce RTX 8 GB",
  quantity_per_unit: 1,
  unit_price: 2399.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

msi_system_2 = computer_systems.products.create(
  name: "MSI Codex R 10SC-004CA w/Core i5-10400F, 512 Gig SSD, 16 Gigs RAM, GeForce RTX 6 GB",
  quantity_per_unit: 1,
  unit_price: 1599.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

msi_system_3 = computer_systems.products.create(
  name: "MSI Codex R 10SC-005CA w/Core i7-10700F, 512 Gig SSD, 1 TB Sata HDD, 16 Gigs RAM, GeForce RTX 6 GB",
  quantity_per_unit: 1,
  unit_price: 1999.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

msi_system_4 = computer_systems.products.create(
  name: "MSI Codex R 10SI-015CA w/Core i5-10400F, 512 Gig SSD, 8 Gigs RAM, GeForce RTX 6 GB",
  quantity_per_unit: 1,
  unit_price: 1199.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

msi_system_5 = computer_systems.products.create(
  name: "MSI Trident AS 10SD-1064 w/Core i7-10700F, 512 Gig SSD, 1 TB Sata HDD, 16 Gigs RAM, GeForce RTX 8 GB",
  quantity_per_unit: 1,
  unit_price: 2399.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

alberta = Province.create(
  name: "Alberta",
  taxes: 0.05
)

bc = Province.create(
  name: "British Columbia",
  taxes: 0.12
)

manitoba = Province.create(
  name: "Manitoba",
  taxes: 0.12
)

newbrunswick = Province.create(
  name: "New Brunswick",
  taxes: 0.15
)

newfoundland = Province.create(
  name: "New Found Land and Labrador",
  taxes: 0.15
)

northwestterritories = Province.create(
  name: "Northwest Territories",
  taxes: 0.05
)

novascotia = Province.create(
  name: "Nova Scotia",
  taxes: 0.15
)

nunavut = Province.create(
  name: "Nunavut",
  taxes: 0.05
)

ontario = Province.create(
  name: "Ontario",
  taxes: 0.13
)

pei = Province.create(
  name: "Prince Edward Island",
  taxes: 0.15
)

quebec = Province.create(
  name: "Quebec",
  taxes: 0.14975
)

saskatchewan = Province.create(
  name: "Saskatchewan",
  taxes: 0.11
)

# chris = User.create(
#   email: 'cfeasby204@gmail.com',
#   address: '25 Lansdowne Ave',
#   province: 'Manitoba',
#   password: 'feasby'
# )

yukon = Province.create(
  name: "Yukon",
  taxes: 0.05
)

# Provinces.all.each do |province|
#   province.users.create(
#     email: 'cfeasby@shaw.ca',
#     address: '25 Lansdowne Ave',
#     province: manitoba,
#     password: 'feasby'
#   )
# end
puts "Created #{Product.count} products"
puts "Created #{Province.count} provinces"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?