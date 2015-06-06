 test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", newsletter_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contato_path
    assert_select "a[href=?]", institucional_path
  end