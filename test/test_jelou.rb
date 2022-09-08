require "minitest/autorun"
require "jelou"

class JelouTest < MiniTest::Test
    def test_complete_dom
        assert Jelou.complete_dom.size, 13986
        assert Jelou.complete_dom, '#<Net::HTTPOK 200 OK readbody=true>'
    end
    
    def test_dom_extract
        assert Jelou.dom_extract.size, 301
    end

    def test_complete_dom_includes_dom_extract
        assert_includes Jelou.complete_dom, Jelou.dom_extract
    end 
end