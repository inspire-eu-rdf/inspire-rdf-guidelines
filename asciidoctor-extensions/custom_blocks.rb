RUBY_ENGINE == 'opal' ?
  (require 'extension_requirement_block') :
  (require_relative 'extension_requirement_block')
RUBY_ENGINE == 'opal' ?
  (require 'extension_recommendation_block') :
  (require_relative 'extension_recommendation_block')
RUBY_ENGINE == 'opal' ?
  (require 'extension_permission_block') :
  (require_relative 'extension_permission_block')

Extensions.register do
  block RequirementBlock
  block RecommendationBlock
  block PermissionBlock
  docinfo_processor RequirementBlockDocinfo
  docinfo_processor RecommendationBlockDocinfo
  docinfo_processor PermissionBlockDocinfo
end
