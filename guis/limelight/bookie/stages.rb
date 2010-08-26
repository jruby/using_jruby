# START:bookie
stage 'default' do
  default_scene 'bookie'
  title 'Bookie'
  location [200, 25]
  size [400, 400]
end
# END:bookie

if ENV['BOOKIE_DEV']
  stage 'devtool' do
    default_scene 'devtool'
    title 'Dev Tool'
    location [50, 25]
    size [100, 100]
    background_color 'transparent'
    framed false
  end
end
