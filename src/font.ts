import { Compiler } from "./compiler";
import { Metrics } from "./metrics";

export class Font {

  private constructor(
    public raw: opentype.Font,
    private compiler: Compiler
  ) { }

  static async Install(
    fontUrl: string,
    compiler: Compiler,
    opentype: any,
  ) {
    const raw = await opentype.load(fontUrl);
    return new Font(raw, compiler);
  }

  measure(
    name: string,
    size: number
  ) {
    return new Metrics(this, name, size);
  }

  static Compile(
    font: Font,
    name: string,
    size: number,
    ppc: number,
    eps: number
  ) {
    const cmds = font.raw.getPath(name, 0, 0, size).commands;
    const fmt = font.raw.outlinesFormat;
    const shapes = font.compiler.compile(cmds, fmt, ppc, eps * size);
    return shapes;
  }

}