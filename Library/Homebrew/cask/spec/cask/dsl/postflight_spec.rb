require "spec_helper"
require "test/support/helper/spec/shared_examples/hbc_dsl_base"
require "test/support/helper/spec/shared_examples/hbc_staged"

describe Hbc::DSL::Postflight do
  let(:cask) { Hbc::CaskLoader.load_from_file(TEST_FIXTURE_DIR/"cask/Casks/basic-cask.rb") }
  let(:dsl) { Hbc::DSL::Postflight.new(cask, Hbc::FakeSystemCommand) }

  it_behaves_like Hbc::DSL::Base

  it_behaves_like Hbc::Staged do
    let(:staged) { dsl }
  end
end
