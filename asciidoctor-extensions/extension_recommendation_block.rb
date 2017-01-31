require 'asciidoctor/extensions'

include Asciidoctor

# An extension that introduces a custom admonition type, complete
# with a custom icon.
#
# Usage
#
#   [RECOMMENDATION]
#   ====
#   What's the main tool for selecting colors?
#   ====
#
# or
#
#   [RECOMMENDATION]
#   What's the main tool for selecting colors?
#
class RecommendationBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :RECOMMENDATION
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'recommendation'
    attrs['caption'] = 'Recommendation'

    doc = parent.document
    attrs['title'] = "#{doc.attributes['recommendation-caption'] || 'Recommendation'} #{attrs['id']}" unless attrs['title']

    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class RecommendationBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>.admonitionblock td.icon .icon-recommendation:before { content: "\f06a"; color: #ffcc00; }</style>'
  end
end