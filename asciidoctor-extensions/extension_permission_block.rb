require 'asciidoctor/extensions'

include Asciidoctor

# An extension that introduces a custom admonition type, complete
# with a custom icon.
#
# Usage
#
#   [PERMISSION]
#   ====
#   What's the main tool for selecting colors?
#   ====
#
# or
#
#   [PERMISSION]
#   What's the main tool for selecting colors?
#
class PermissionBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :PERMISSION
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'permission'
    attrs['caption'] = 'Permission'

    doc = parent.document
    attrs['title'] = "#{doc.attributes['permission-caption'] || 'Permission'} #{attrs['id']}" unless attrs['title']

    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end
end

class PermissionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>.admonitionblock td.icon .icon-permission:before { content: "\f06a"; color: #009933; }</style>'
  end
end
