declare module '@apiverve/htmlentities' {
  export interface htmlentitiesOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface htmlentitiesResponse {
    status: string;
    error: string | null;
    data: HTMLEntitiesEncoderDecoderData;
    code?: number;
  }


  interface HTMLEntitiesEncoderDecoderData {
      action:           string;
      original:         string;
      encoded:          string;
      entitiesReplaced: string[];
      count:            number;
  }

  export default class htmlentitiesWrapper {
    constructor(options: htmlentitiesOptions);

    execute(callback: (error: any, data: htmlentitiesResponse | null) => void): Promise<htmlentitiesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmlentitiesResponse | null) => void): Promise<htmlentitiesResponse>;
    execute(query?: Record<string, any>): Promise<htmlentitiesResponse>;
  }
}
