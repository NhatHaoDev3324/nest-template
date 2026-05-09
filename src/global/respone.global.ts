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

    toJSON() {
        return {
            statusCode: this.statusCode,
            message: this.message,
            data: this.data ?? null,
        };
    }
}

export class ResponseToken {
    statusCode: number;
    message: string;
    token: string;

    constructor(statusCode: number, message: string, token: string) {
        this.statusCode = statusCode;
        this.message = message;
        this.token = token;

        return this;
    }

    toJSON() {
        return {
            statusCode: this.statusCode,
            message: this.message,
            token: this.token,
        };
    }
}

export class ResponseSuccessNoData {
    statusCode: number;
    message: string;

    constructor(statusCode: number, message: string) {
        this.statusCode = statusCode;
        this.message = message;

        return this;
    }

    toJSON() {
        return {
            statusCode: this.statusCode,
            message: this.message,
        };
    }
}
