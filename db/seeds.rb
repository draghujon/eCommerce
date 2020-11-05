# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Category.delete_all

software = Category.find_or_create_by(name: "Software", description: "Operating System Software")
product_win10 = software.products.create(
  name: "Windows 10",
  quantity_per_unit: 1,
  unit_price: 299.99,
  unit_stock: 10,
  category_id: software.id
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

gaming_race_set = peripherals.products.create(
  name: "Generic racing pedal and steering wheel set",
  quantity_per_unit: 2,
  unit_price: 129.99,
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
  name: "Windows 10 Desktop Computer, 256 Gig SSD Harddrive, 1 TB Sata Harddrive, 16 Gigs RAM, Video Card 8 GB, 2.8 GHz",
  quantity_per_unit: 1,
  unit_price: 799.99,
  unit_stock: 5,
  category_id: computer_systems.id
)

macOS_desktop = computer_systems.products.create(
  name: "Mac OS X Catelina Desktop Computer, 512 Gig SSD Harddrive, 1 TB Sata Harddrive, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1199.99,
  unit_stock: 2,
  category_id: computer_systems.id
)

windows_laptop = computer_systems.products.create(
  name: "Windows 10 Laptop, 512 GB SSD Harddrive, 1 TB Sata Harddrive, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1299.99,
  unit_stock: 4,
  category_id: computer_systems.id
)

macOS_laptop = computer_systems.products.create(
  name: "Mac OS X Catelina Laptop, 512 Gig SSD Harddrive, 1 TB Sata Harddrive, 16 Gigs RAM, Video Card 8 GB, 2.5 GHz",
  quantity_per_unit: 1,
  unit_price: 1499.99,
  unit_stock: 3,
  category_id: computer_systems.id
)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?