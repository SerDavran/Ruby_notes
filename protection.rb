# Public methods: Can be called by anyone. 
# Protected methods: Can be invoked only by objects of the defining class and its subclasses.Access is kept within the family. Internal state of other object.
# Private methods: Cannot be called with an explicit receiver—the receiver is always the current object, also known as self. This means that private methods can be called only in the context of the current object; you can’t invoke another object’s private methods.

class MyClass
	# Public
	def meth1
	end

	def down1
	end
	def down2
	end
	def down3 
	end

	protected
	def meth2
	end

	private
	def meth3
	end

	public 
	def meth4
	end

	public :down1
	protected :meth2
	private :down3

end

