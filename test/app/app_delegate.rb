class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    #
    # The fllowing crashes RubyMotion 1.26:
    # Assertion failed: (b != NULL), function rb_vm_block_method_imp, file vm.cpp, line 3000.
    #
    quickie do
      1.should == 1
    end
    true
  end
end
