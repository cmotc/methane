using Gtk;
namespace METHANE{
	public class DefaultUI : GLib.Object{
		private static const string UI = "assets/ui/default.ui";
		private static const string WINDOW = "MethaneUI";
		Builder MainBuilder;
		Object MainWindow;
		public DefaultUI(){
			MainBuilder = GenerateBuilder();
			MainWindow = MainBuilder.get_object(WINDOW);
		}
		private Builder GenerateBuilder(){
			Builder temp = new Builder();
			try{
				temp.add_from_file(UI);
			}catch(GLib.Error e){
				
			}
			temp.connect_signals(null);
			return temp;
		}
		protected Builder GetBuilder(){
			return MainBuilder;
		}
		
		
	}
}