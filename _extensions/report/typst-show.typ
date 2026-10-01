#show: doc => report(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  authors: ($for(by-author)$[$it.name.literal$],$endfor$),
$endif$
$if(date)$
  date: [$date$],
$endif$
  doc,
)