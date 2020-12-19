export interface IFetchResult {
    isLoaded: boolean,
    error: string | null,
    status?: number,
    data?: any
}