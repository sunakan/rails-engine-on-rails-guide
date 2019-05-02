require "blorgh/engine"

module Blorgh
  # cattr_accessorと同じ
  # 値をすべてのクラスで共有したい場合に使う
  mattr_accessor :author_class

  # author_classでの保存時にconstantizeが必ず呼び出されるようにしたい場合
  # 以下のように実装する
  def self.author_class
    @@author_class.constantize
  end
end
