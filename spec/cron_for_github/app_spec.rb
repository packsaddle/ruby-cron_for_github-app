require 'spec_helper'

describe CronForGithub::App do
  it 'has a version number' do
    expect(CronForGithub::App::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
