![Quasar Logo](https://cdn.tebex.io/store/1044584/templates/150612/assets/f8188b8b77ed91fbf1c4b73d2869b46da16004f7.png?updated=497d56ad074cc29061da64cd7d1cae08422b3107c6fe8074fd6ef3a03c552ae6 "Quasar Logo")

# Ox Inventory to Quasar Inventory Items Converter - FiveM

## Requirements
Before using this resource, ensure that your FiveM server meets the following requirements:

- **[Quasar Inventory](https://buy.quasar-store.com/package/5677336)**: The target inventory system where items will be converted. Ensure it is properly installed and configured on your server. You can find more information and installation instructions on the [Quasar Inventory docs](https://docs.quasar-store.com/assets-and-guides/inventory).
- **[Ox Inventory](https://github.com/overextended/ox_inventory)**: The source inventory system from which you are converting items. Make sure it is installed and functioning on your server.

## Introduction
This resource facilitates the conversion of items from Ox Inventory to Quasar Inventory in a FiveM server.

## Installation Steps

### Step 1: Retrieve Ox Inventory Items
1. Obtain the `items.lua` file from the `data` folder in `ox_inventory` (`@ox_inventory/data/items.lua`).
2. Place the obtained file in the `input` folder of this converter.

### Step 2: Add the Converter Resource
1. Copy this resource into your server's `resources` folder.
2. Refresh and start the resource.

### Step 3: Run Conversion Command
Execute the `items` command in your server console.

### Step 4: Integrate with Quasar Inventory
1. Retrieve the converted `items.lua` file from the `output` folder of this converter.
2. Replace the existing `items.lua` file in the `shared` folder of `qs-inventory` (`@qs-inventory/shared/items.lua`).

### Step 5: Finalize
Don't forget to remove the `ox_inventory` resource from your server.
Restart the server and enjoy your game! 🎊

## Notes
- Make sure to follow these steps carefully to ensure a successful conversion.
- For any issues, use the [issues page](https://github.com/AdrianoTxr/items-ox-to-qs/issues).

## Credits
- Quasar
- [Quasar Inventory](https://buy.quasar-store.com/package/5677336)
- [Quasar Store](https://discord.com/invite/quasarstore)
- [Ox Inventory](https://github.com/overextended/ox_inventory)
