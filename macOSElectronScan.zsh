for filename in /Applications/*.app/Contents/Frameworks/Electron\ Framework.framework/Electron\ Framework
do
  appName=$(echo $filename | cut -f 3 -d '/') 
  echo "App Name:         $appName"

  electronVersion=$(strings "$filename" | grep "Chrome/" | grep -i Electron | grep -v '%s' | sort -u | cut -f 3 -d '/')
  echo "Electron Version: $electronVersion"
  
  echo -n "File Name:        $filename "
  echo -e "\n"
done
