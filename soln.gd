
extends SceneTree

const DATA_FILE = (
    "/home/qaptor/Programming/godot/aoc_gd/20&&/day@@/data.txt"
    # "/Users/rocco/Programming/advent/20&&/day@@/data.txt"
)


func _init() -> void:
    var time_start = Time.get_ticks_usec()
    print("Saluton, 20&& Tago @@!\n")

    var data :Dictionary = load_data(DATA_FILE)
    print(JSON.stringify(data, '  ', false))

    test_data1(data)
    test_data2(data)

    var time_end = Time.get_ticks_usec()
    print("overall time: %d" %(time_end - time_start))
    print('\nfin')


func load_data (filename :String) -> Dictionary:
    var time_start = Time.get_ticks_usec()
    var file := FileAccess.open(filename, FileAccess.READ)
    var content :String = file.get_as_text(true)
    file.close()

    var data :Dictionary = {}
    var lines :PackedStringArray = content.split("\n", false)
    for line in lines:
        data.get_or_add('chars', []).append(Array(line.split("", false)))

    var time_end = Time.get_ticks_usec()
    print("load data time: %d" %(time_end - time_start))
    return data


func test_data1(data :Dictionary) -> void:
    var time_start :int = Time.get_ticks_usec()

    var result = 0

    var time_end :int = Time.get_ticks_usec()
    print('part 2: %d time: %d' %[result, time_end - time_start])


func test_data2(data :Dictionary) -> void:
    var time_start :int = Time.get_ticks_usec()

    var result = 0

    var time_end :int = Time.get_ticks_usec()
    print('part 2: %d time: %d' %[result, time_end - time_start])


