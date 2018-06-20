using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Tone.RNTone
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNToneModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNToneModule"/>.
        /// </summary>
        internal RNToneModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTone";
            }
        }
    }
}
