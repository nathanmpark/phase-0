# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
# end

# def my_hash_finding_method(source, thing_to_find)
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
# def my_array_modification_method!(source, thing_to_modify)
# end

# def my_hash_modification_method!(source, thing_to_modify)
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
# def my_array_sorting_method(source)
# end

# def my_hash_sorting_method(source)
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
# end

# def my_hash_deletion_method!(source, thing_to_delete)
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 5
def my_array_splitting_method(source)
  copy = source.dup
  copy.partition{|item| item.kind_of?(Fixnum)}
end

def my_hash_splitting_method(source, age)
  copy = source.dup
  copy.sort_by{|k,v| v}
  copy.partition{|item| item[1]<= age}
end

# Identify and describe the Ruby method(s) you implemented.

# The ruby methods implemented were sort_by and partition.
# Sort_by is an enumerable which allows you to sort based on a criteria. In my case, I used it to sort based on the values of the key-value pairs. This return an array of nested two-item arrays [key,value].
# Partition is a useful enumerable in the fact that it can split an array based on a given conditional/criteria. You can split an array based on it being an integer or string, or based on an age such as in the my_hash_splitting_method.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# sort_by is an enumerable.
# sort_b{|obj| block} -> array
# %w{"apple","man","bear"}.sort_by{|word| word.length}
# =>["man","bear","apple"}]

# partition is an enumerable
# partition{|obj| block} ->[true_array,false_array]
# (1..6).partition{|v| v.even?}
# =>[[2,4,6],[1,3,5]]

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

# I learned a great deal about reading documentation, finding examples online to help clarify its uses and/or variations, and lastly testing it out for myself in irb. In explaining it to others, it reconfirms and solidifies my understanding of the concepts.