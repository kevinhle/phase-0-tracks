
class TodoList

    def initialize(array)
        @todolist = array
    end


    def get_items
        @todolist
    end

    def add_item(item)
        @todolist.push(item)
    end

    def delete_item(item)
        @todolist.delete(item)
        @todolist
    end

    def get_item(index)
        @todolist.fetch(index)
    end
end 