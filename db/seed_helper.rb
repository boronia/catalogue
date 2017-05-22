
def create_books
  Book.delete_all
  APP_CONFIG['books'].each do |hash|
    Book.create!(hash)
  end
end

def create_wishlist
  #todo
end

def create_owners
  #todo
end