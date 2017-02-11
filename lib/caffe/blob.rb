module Caffe
  class Blob
    class Cursor
      include Enumerable

      alias count size
    end

    def [] index
      data[index]
    end

    def []= index, x
      data[index] = x
    end

    def size
      data.size
    end

    def copy x
      data.copy x
    end

    def each &blk
      data.each &blk
    end

    include Enumerable

    alias count size
  end
end