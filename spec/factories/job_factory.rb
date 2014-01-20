FactoryGirl.define do
  factory :job do
    name "Thin job"
    description "Basic remote *job*"
    apply "Lorem Ipsum"
    address "Kabul-Jalalabad Highway, Kabul, Afghanistan"
    highlight false
  end
end
