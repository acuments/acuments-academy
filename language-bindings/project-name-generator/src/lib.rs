use neon::prelude::*;
use names::Generator;

fn hello(mut cx: FunctionContext) -> JsResult<JsString> {
    Ok(cx.string("hello node"))
}

fn generate_project_name(mut cx: FunctionContext) -> JsResult<JsString> {
	let mut generator = Generator::default();
    Ok(cx.string(generator.next().unwrap()))
}

#[neon::main]
fn main(mut cx: ModuleContext) -> NeonResult<()> {
    cx.export_function("hello", hello)?;
    cx.export_function("getProjectName", generate_project_name)?;
    Ok(())
}
