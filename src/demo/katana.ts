import { Weapon, Named, MagicWeapon, Magic, BlackMagic, Durable, MagicDurability, Attribute } from "./interfaces";


export class BaseWeapon implements Durable {
    protected damage = 25;
    durability: number = 100;
    magicDurability: MagicDurability = {
        fire: 100,
        water: 100,
    }
    public attributes: Attribute[] = [{id: "explosive", value: 10}, {id: "bouncing", value: 20}];
    refresh(): void {
       // DO Something 
    }
}

export class Katana extends BaseWeapon implements Weapon, Named  {
    name = "Katana";
    public tryHit(fromDistance: number) {
        return fromDistance <= 2;
    }

    public doIt() {}
}

export class MagicKatana<MT extends Magic> extends Katana implements MagicWeapon<MT> {

    constructor(public magic: MT) {
        super();
    }

    tryMagicHit(): boolean {
        throw new Error("Method not implemented.");
    }

}

export class BlackMagicKatana extends MagicKatana<BlackMagic> implements MagicWeapon<BlackMagic> {
    tryBlackMagicHit(): boolean {
        throw new Error("Method not implemented.");
    }
}
