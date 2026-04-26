import {
    Column,
    CreateDateColumn,
    DeleteDateColumn,
    Entity,
    PrimaryGeneratedColumn,
    UpdateDateColumn,
} from 'typeorm';

@Entity('products')
export class Product {
    @PrimaryGeneratedColumn('uuid')
    id!: string;

    @Column({ nullable: true })
    name!: string;

    @Column({ nullable: true })
    description!: string;

    @Column({ nullable: false })
    price!: number;

    @CreateDateColumn()
    created_at!: Date;

    @UpdateDateColumn()
    updated_at!: Date;

    @DeleteDateColumn()
    deleted_at!: Date;
}
