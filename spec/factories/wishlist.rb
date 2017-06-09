FactoryGirl.define do
  factory :wishlist do |f|
    wishlist_id f.wishlist_id
    book_id f.book_id
    f.books { |a| [a.association(:book)] }
  end

end