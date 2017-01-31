require 'asciidoctor/extensions'

include Asciidoctor

# An extension that introduces a custom admonition type, complete
# with a custom icon.
#
# Usage
#
#   [REQUIREMENT]
#   ====
#   What's the main tool for selecting colors?
#   ====
#
# or
#
#   [REQUIREMENT]
#   What's the main tool for selecting colors?
#
class RequirementBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :REQUIREMENT
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'requirement'
    attrs['caption'] = 'Requirement'

    doc = parent.document
    requirement_id = doc.counter('requirement')
    attrs['id'] = "_requirement-#{requirement_id}" unless attrs['id']    
#attrs['title'] = "#{doc.attributes['requirement-caption'] || 'Requirement'} #{requirement_id}" unless attrs['title']
    attrs['title'] = "#{doc.attributes['requirement-caption'] || 'Requirement'} #{attrs['id']}" unless attrs['title']

    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class RequirementBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>.admonitionblock td.icon .icon-requirement:before { content: "\f06a"; color: #b30000; }</style>'
  end
end