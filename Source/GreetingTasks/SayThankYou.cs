using Microsoft.Build.Framework;
using MSBuildTask = Microsoft.Build.Utilities.Task;

namespace MSBuildTasks
{
    public class SayThankYou : MSBuildTask
    {
        public override bool Execute()
        {
            Log.LogMessage(MessageImportance.High, "Mahalo");
            return true;
        }
    }
}
