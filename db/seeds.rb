#encoding: utf-8

Book.find_or_create_by_title_and_year_and_author('1984', 1949, 'George Orwell')
Book.find_or_create_by_title_and_year_and_author('Malý princ', 1943, 'Antoine de Saint-Exupéry')
Book.find_or_create_by_title_and_year_and_author('Nadějné vyhlídky', 1861, 'Charles Dickens')
Book.find_or_create_by_title_and_year_and_author('Sonety', 1609, 'William Shakespeare')
Book.find_or_create_by_title_and_year_and_author('Vojna a mír', 1869, 'Lev Tolstoj')
Book.find_or_create_by_title_and_year_and_author('Stínadla se bouří', 1947, 'Jaroslav Foglar')
Book.find_or_create_by_title_and_year_and_author('Válka světů', 1898, 'Herbert George Wells')
Book.find_or_create_by_title_and_year_and_author('omu zvoní hrana', 1940, 'Ernest Hemingway')
Book.find_or_create_by_title_and_year_and_author('Dvacet tisíc mil pod mořem', 1869, 'Jules Verne')
Book.find_or_create_by_title_and_year_and_author('Pravý výlet pana Broučka do Měsíce', 1888, 'Svatopluk Čech')

Book.all.each do |book|
  for i in 1..99 do
    b = book.dup
    b.title = b.title+"_#{i}"
    b.save
  end
end