# typed: strict
# frozen_string_literal: true

class CleanerLinux < Cleaner
  private

  sig { override.params(path: Pathname).returns(T::Boolean) }
  def executable_path?(path)
    path.elf? || path.text_executable?
  end
end
