require "spec_helper"

describe 'Game of Life' do

  # no loops
  # no conditionals => no mouse!
  # max 4 lines per method

  it 'an empty grid' do
    grid = Grid.new
    grid.to_s.should eq "0 0 0 0 0\n" \
                        "0 0 0 0 0\n" \
                        "0 0 0 0 0\n" \
                        "0 0 0 0 0\n" \
                        "0 0 0 0 0\n"
  end

  it 'a non-empty grid to string' do
    grid = Grid.new([
        [0, 0, 0, 0, 1],
        [0, 1, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 1, 1],
        [0, 0, 0, 1, 0]
      ])

    grid.to_s.should eq "0 0 0 0 1\n" \
                        "0 1 0 0 0\n" \
                        "0 0 0 0 0\n" \
                        "0 0 0 1 1\n" \
                        "0 0 0 1 0\n"

  end

  context 'neighbours' do
    it 'knows neighbours of a cell' do
      grid = Grid.new([
        [0, 0, 0, 0, 1],
        [0, 1, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 1, 1],
        [0, 0, 0, 1, 0]
      ])

      grid.alive_neighbours(0,0).should eq 1
      grid.alive_neighbours(1,1).should eq 0
      grid.alive_neighbours(2,1).should eq 1
      grid.alive_neighbours(4,4).should eq 3
    end
  end

  it 'next generation less than two neighbours' do
      grid = Grid.new([
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 0, 1, 0],
        [0, 0, 0, 0, 0]
      ])

      grid.next.to_s should eq  "0 0 0 0 0\n" \
                                "0 0 0 0 0\n" \
                                "0 0 0 0 0\n" \
                                "0 0 0 0 0\n" \
                                "0 0 0 0 0\n"
  end
end