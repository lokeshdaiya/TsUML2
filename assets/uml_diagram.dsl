#.interface: fill=lightblue
#.enumeration: fill=lightgreen
#.type: fill=lightgray
[<interface>Weapon||+tryHit(): boolean]
[<interface>Named|+name: string|]
[<interface>Magic|+kind: string|]
[<interface>BlackMagic||+paintItBlack(): boolean]
[<interface>MagicWeapon<MT>|+magic: MT|+tryMagicHit(): boolean]
[<interface>BlackMagicWeapon||]
[<enumeration>Gender|Male;Female;Else]
[<type>MagicDurability|+fire: number;+water: number|]
[<type>Durable|+durability: number;+magicDurability: MagicDurability|+refresh(): void]
[Magic]<:--[BlackMagic]
[Weapon]<:--[MagicWeapon<MT>]
[MagicWeapon<MT>]<:--[BlackMagicWeapon]
[BaseWeapon|#damage: number;+durability: number;+magicDurability: MagicDurability;+attributes: string\[\]|+refresh(): void]
[Katana|+name: string|+tryHit(): boolean;+doIt(): void]
[MagicKatana<MT>|+magic: MT|+tryMagicHit(): boolean]
[BlackMagicKatana||+tryBlackMagicHit(): boolean]
[Durable]<:--[BaseWeapon]
[BaseWeapon]<:-[Katana]
[Weapon]<:--[Katana]
[Named]<:--[Katana]
[Katana]<:-[MagicKatana<MT>]
[MagicWeapon<MT>]<:--[MagicKatana<MT>]
[MagicKatana<MT>]<:-[BlackMagicKatana]
[MagicWeapon<MT>]<:--[BlackMagicKatana]
[Ninja|+gender: Gender;+static IdCnt: number;-_weapon: Weapon;+id: number|+fight(): boolean]
[Viking<WT>|+gender: Gender;+weapon: WT|+fight(): boolean]
[UberViking<WT>||]
[VikingWithKatana||]
[Viking<WT>]<:-[UberViking<WT>]
[Viking<WT>]<:-[VikingWithKatana]