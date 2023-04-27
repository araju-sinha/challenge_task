def key_values(object_dict, key):
    keys = key.split("/")
#    print("keys after split", keys)
    for k in keys:
#        print("k value to pick", k)
# Applying and to check
        if isinstance(object_dict, dict) and k in object_dict:
            object_dict = object_dict[k]
#            print("object_dict value ", object_dict)
        else:
            return None
    
    return object_dict

object1 = {"a": {"b": {"c": "d"}}}
key1 = "a/b/c"
value1 = key_values(object1, key1)
print(value1)

object2 = {"x": {"y": {"z": "a"}}}
key2 = "x/y/z"
value2 = key_values(object2, key2)
print(value2)
