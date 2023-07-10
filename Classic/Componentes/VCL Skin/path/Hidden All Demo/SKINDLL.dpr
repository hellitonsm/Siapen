library SKINDLL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SkinUnit in 'SkinUnit.pas';


{$R SKIN.res}

exports
  InitSkin, //初始化函数 initialize function
  UnLoadAll, //收尾函数  release function
  SetActive,  //激活或者不激活  active or not
  SetSkinFile, //设置 SKIN      set skin for your form
  Add3rdControl; //增加第三方控件  add 3rd components eg. raize,elib etc.

{
  使用方法；

  在 Form 创建时调用 initskin(handle), initskin 只需调用一次
  在 initskin 之后或者是 show 时由 SetSkinFile 设置缺省的 skin

  如何更换 skin :
  当完成 initskin 后，根据需要由 SetSkinFile　加载所需要的 skin
  也可以创建 skin 列表，有客户自己选择

  如何收尾：
  在 Query form close 时调用 UnLoadAll 释放掉由 initskin 创建的 skin

  Usage:
  Call initskin function when Form foundation and transfers form.handle as paramter to initskin,
  initskin function have use only one time,
  then set default skiin by seskinfile function when the form showing or creating.

  After  completes initskin, according to needs change or replaces skin by SetSkinFile funciton which needs also may found skin tabulates,
  how has customer own chooses

  Concludes:
  When form Query close transfers UnLoadAll to bleeds off skin which founds by initskin function
}
begin

end.
