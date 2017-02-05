using Microsoft.Build.Framework;
using MSBuildTask = Microsoft.Build.Utilities.Task;

namespace MSBuildTasks
{
    public class SayHello : MSBuildTask
    {
        public override bool Execute()
        {
            Log.LogMessage("Aloha", MessageImportance.High);
            return true;
        }
    }
}
