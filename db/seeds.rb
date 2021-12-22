puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Stress Ball", value: 5, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
Freebie.create(item_name: "Pen", value: 2, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
Freebie.create(item_name: "Notepad", value: 6, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
Freebie.create(item_name: "Headphones", value: 20, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
Freebie.create(item_name: "Tablet", value: 50, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)
Freebie.create(item_name: "Plushie", value: 10, company_id: Company.all.sample.id, dev_id: Dev.all.sample.id)

puts "Seeding done!"
