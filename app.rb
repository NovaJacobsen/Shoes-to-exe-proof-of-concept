require 'shoes'

Shoes.app(title: 'Hello world', width: 300, height: 100) do
  stack margin: 10 do
    para 'Enter your name:', margin_bottom: 5
    flow do
      @name_field = edit_line
      button 'Submit' do
        name = @name_field.text
        alert "Hello, #{name}!"
        @name_field.text = ''  # Clear the text field
      end
    end
  end
end
