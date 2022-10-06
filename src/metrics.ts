import { Font } from "./font";

export class Metrics {

  constructor(
    private font: Font,
    private name: string,
    private size: number
  ) { }

  get ascender() {
    return this.font.raw.ascender
      / this.font.raw.unitsPerEm
      * this.size;
  }

  get descender() {
    return this.font.raw.descender
      / this.font.raw.unitsPerEm
      * this.size;
  }

  get advanceWidth() {
    return this.font.raw.getAdvanceWidth(this.name, this.size);
  }

}