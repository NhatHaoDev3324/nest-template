export class ResponseData<D> {
    statusCode: number;
    message: string;
    data?: D | D[] | null;

    constructor(statusCode: number, message: string, data: D | D[] | null) {
        this.statusCode = statusCode;
        this.message = message;
        this.data = data;

        return this;
    }
}
