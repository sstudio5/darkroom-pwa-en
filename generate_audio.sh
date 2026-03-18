#!/bin/bash
OUT="/Users/shin01/Dropbox/claude-code/Development_app/darkroom-pwa-en/audio"
mkdir -p "$OUT"

say_en() {
  say -v Samantha "$1" -o "${OUT}/${2}.aiff"
  ffmpeg -y -i "${OUT}/${2}.aiff" "${OUT}/${2}.wav" 2>/dev/null
  rm -f "${OUT}/${2}.aiff"
  echo "✓ $2"
}

echo "Generating English audio files..."

say_en "Development starting. Agitate now." "start_develop"
say_en "Agitate now." "agitate"
say_en "Rest." "rest"
say_en "One minute left. Prepare stop bath." "one_minute"
say_en "Last agitation. Prepare stop bath." "last_agitate"
say_en "Drain now." "drain"
say_en "Pour in stop bath." "stop_bath"
say_en "Discard and prepare fixer." "discard_fix"
say_en "Process complete." "complete"
say_en "Agitate in five." "pre_agitate"
say_en "Fixer. Agitate now." "fix_start"
say_en "Wash starting." "wash_start"
say_en "Add wetting agent." "wetting_start"
say_en "Pre-soak starting. Agitate now." "presoak_start"
say_en "Ten seconds. Prepare stop bath." "final_ten"
say_en "Voice on." "voice_on"
say_en "1" "n1"
say_en "2" "n2"
say_en "3" "n3"
say_en "4" "n4"
say_en "5" "n5"
say_en "6" "n6"
say_en "7" "n7"
say_en "8" "n8"
say_en "9" "n9"
say_en "10" "n10"

echo ""
echo "Done! Saved to $OUT"
