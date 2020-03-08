# Build a nested HoH of the classification of biological life on Earth based
# on these commented-out snippets assigned to PORTION_1-PORTION_4. Return
# that HoH as the return value for the method "naming_system."
#
# The tests will guide your construction.
#
require 'pp'

PORTION_1 = {
   label: "Kingdom",
   sub_category: {
    label: "Phylum",
     sub_category: {
       label: "Class"}
   }
 }

PORTION_2 = {
   label: "Order"
 }

 PORTION_3 = {
   label: "Family",
   sub_category: {
   label: "Genus"}
 }

 PORTION_4 = {
   label: "Species",
   sub_category: nil}

=begin
hoh = {
{:label => "Kingdom", :sub_category => {:label => "Phylum", :sub_category => {:label => "Class"}}},
{:label => "Order"},
{:label => "Family", :sub_category => {:label => "Genus"}},
{:label => "Species", :sub_category => nil}}
=end

=begin
sub_category: {PORTION_2},
sub_category: {PORTION_3},
sub_category: {PORTION_4}}
=end

def naming_system
  # Remember:
  #  Kingdom
  #  Phylum
  #  Class
  #  Order
  #  Family
  #  Genus
  #  Species
  # So, if we have the "Kingdom" node we should be able to "tunnel" into the
  # HoH all the way to Species!
  hoh = {
    label: "Kingdom",
    sub_category: {
     label: "Phylum",
     sub_category: {
       label: "Class",
        sub_category: {
          label: "Order",
          sub_category: {
            label: "Family",
            sub_category: {
              label: "Genus",
              sub_category: {
                label: "Species"}}}}}}}
  hoh = PORTION_1[:sub_category][:label]

pp hoh
  puts hoh
  puts hoh[:sub_category][:sub_category]
  return hoh
end

#:label => PORTION_1[:label],
#:sub_category => PORTION_1[:sub_category]
