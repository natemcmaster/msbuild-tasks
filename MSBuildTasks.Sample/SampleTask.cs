using Microsoft.Build.Framework;
using MSBuildTask = Microsoft.Build.Utilities.Task;

namespace MSBuildTasks.Sample
{
    public class SimpleTask : MSBuildTask
    {
        public override bool Execute()
        {
            Log.LogMessage("I always pass", MessageImportance.High);
            return true;
        }
    }
}
