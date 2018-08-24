require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  
  test "Lancer la page lol" do
    get "/"
    assert_match "réception", response.body
  end

  test "Créer une entrée en base" do
    post "/", params: { object: "testdefou", body: "testdefou", read: "false" }
    get "/"
    assert_match "testdefou", response.body
  end

  test "Supprimer une entrée en base" do
    post "/", params: { object: "testdefou", body: "testdefou", read: "false" }
    get "/"
    delete email_path(Email.find_by(object: "testdefou"))
    assert_no_match "testdefou", response.body
  end

end
