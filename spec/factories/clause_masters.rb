FactoryBot.define do
  factory :clause_master do
    name { Faker::Lorem.sentence(5) }
    content { Faker::Lorem.paragraph(10) }
    note { Faker::Lorem.sentence(2) }
    status { nil }

    factory :invalid_clause_master do
      name { nil }
    end
  end
end
