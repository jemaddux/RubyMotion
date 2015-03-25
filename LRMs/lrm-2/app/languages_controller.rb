class LanguagesController < UIViewController
  def viewDidLoad
    super

    self.title = "Programming Languages"

    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.autoresizingMask = UIViewAutoresizingFlexibleHeight
    self.view.addSubview(@table)

    @table.dataSource = self
    @data = lang_list

    @cell_counter = 0
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "SUPER_UNIQUE_CELL_IDENTIFIER_OF_DOOM"
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)
    unless cell
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @reuseIdentifier)
      @cell_counter += 1
    end

    cell.textLabel.text = @data[indexPath.row]

    puts @cell_counter

    cell
  end

  def lang_list
    %w(
      Derpy
      Sleepy
      Grumpy
      Moody
      Harry Pottery
      Voldermorty
      Nevilly
      C
      Java
      Objective-C
      C++
      PHP
      C#
      Python
      JavaScript
      Brendan Eich
      Perl
      Larry Wall
      Ruby
      Pascal
      Lisp
      Groovy
      Cobol
      Erlang
      Clojure
      Haskell
      ML
      Scheme
      Scala
      Lua
      Fortran
      ASP
      Cold Fusion
      MATLAB
      Smalltalk
      OCaml
    )
  end
end



