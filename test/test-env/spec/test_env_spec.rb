require 'json'
require 'rhcl'

state = JSON.parse(File.read('terraform.tfstate'))

describe state do
  it "to have correct projectname" do
    expect(state['modules'][0]['outputs']['projectname']['value']).to eq('acme-inc-testproject')
  end
  it "to have correct fullname" do
  	expect(state['modules'][0]['outputs']['fullname']['value']).to eq('acme-inc-testproject-prod')
  end
  it "to have correct tags" do
  	tags = state['modules'][0]['outputs']['tags']['value']
  	expect(tags['Client']).to eq('Acme Inc')
  	expect(tags['Project']).to eq('testproject')
  	expect(tags['Release Phase']).to eq('prod')
  	expect(tags['tag1']).to eq('value1')
  	expect(tags['tag2']).to eq('value2')
  end
end