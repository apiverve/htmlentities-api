declare module '@apiverve/htmlentities' {
  export interface htmlentitiesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface htmlentitiesResponse {
    status: string;
    error: string | null;
    data: HTMLEntitiesEncoderDecoderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HTMLEntitiesEncoderDecoderData {
      action:           null | string;
      original:         null | string;
      encoded:          null | string;
      entitiesReplaced: (null | string)[];
      count:            number | null;
  }

  export default class htmlentitiesWrapper {
    constructor(options: htmlentitiesOptions);

    execute(callback: (error: any, data: htmlentitiesResponse | null) => void): Promise<htmlentitiesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmlentitiesResponse | null) => void): Promise<htmlentitiesResponse>;
    execute(query?: Record<string, any>): Promise<htmlentitiesResponse>;
  }
}
