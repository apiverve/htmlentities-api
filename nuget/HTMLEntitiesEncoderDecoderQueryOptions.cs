using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HTMLEntitiesEncoderDecoder
{
    /// <summary>
    /// Query options for the HTML Entities Encoder/Decoder API
    /// </summary>
    public class HTMLEntitiesEncoderDecoderQueryOptions
    {
        /// <summary>
        /// The HTML content to encode
        /// </summary>
        [JsonProperty("html")]
        public string Html { get; set; }

        /// <summary>
        /// The action to perform
        /// </summary>
        [JsonProperty("action")]
        public string Action { get; set; }
    }
}
