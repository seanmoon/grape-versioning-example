class ExampleAPI < Grape::API
  prefix 'api'

  version 'v2', using: :header, vendor: 'example', strict: true do
    get 'posts/:id' do
      "Version two!"
    end
  end

  version 'v1', using: :header, vendor: 'example', strict: true do
    get 'posts/:id' do
      "Version one!"
    end
  end
end
