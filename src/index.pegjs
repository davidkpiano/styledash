FnExp
= name:FnName "(" args:FnArg* ")"
{
  return { name, args }
}

FnName
= "$" name:[a-z\-]i+
{
  return name.join('')
}

FnArg
= arg:Exp ', '?
{
  return arg
  return [x].concat(xs.slice(1))
}

Exp
= FnExp
/ String

String
= ["] str:([^"]*) ["]
{
  return str.join('')
}
