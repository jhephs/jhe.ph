class ApplicationResolver < ::ActionView::FileSystemResolver
  def initialize
    super('app/views')
  end

  def find_templates(name, prefix, partial, details)
    return super if prefix.include?('layouts')

    super('default', '', partial, details)
  end
end
