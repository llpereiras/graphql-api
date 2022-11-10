# frozen_string_literal: true

require 'rails_helper'

describe Article do
  subject(:result) { described_class.new(params.attributes).save! }

  context 'with article params' do
    let(:params) { build(:article) }

    before do
      travel_to '2022-09-01' do
        create(:article)
        create(:article)
      end

      travel_to '2022-11-05' do
        create(:article)
      end
    end

    it 'return articles actives of current article', :aggregate_failures do
      travel_to '2022-10-01' do
        create(:article)
        create(:article)

        result = Article.all.order(:published_at)

        expect(result.count).to eq(5)
        expect(result.first.published_at.to_date.to_s).to eq('2022-09-01')
        expect(result.last.published_at.to_date.to_s).to eq('2022-11-05')
      end
    end
  end
end
