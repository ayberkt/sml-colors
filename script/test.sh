echo "OS.Process.exit OS.Process.failure" | sml -m src/test.cm > /dev/null

if [ $? -eq 0 ]; then
  printf "Compilation with SMLofNJ successful.\n\n"
  sml @SMLload=run_tests
else
  printf "Could not compile.\n"
fi
