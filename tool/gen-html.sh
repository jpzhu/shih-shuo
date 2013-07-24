cat << EOF
<head>
<title>世说新语译注（南朝宋）刘义庆 撰 许绍早等 译注</title>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<meta name="cover" content="shihshuo-cover.png" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
</head>
<style>
.break { page-break-before: always; }
</style>

<body>
EOF

for file in $(seq -w 0 37)
do
cat $file.html
done

cat << EOF
</body>
EOF
