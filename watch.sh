#!/bin/bash

# Watch e Auto-Build TCC
# Monitora mudanças em TCC.md e referencias.bib e gera PDF automaticamente
# Uso: ./watch.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Monitorando mudanças em TCC.md e referencias.bib..."
echo "Pressione Ctrl+C para parar"
echo ""

# Usa fswatch se disponível, senão usa polling simples
if command -v fswatch &> /dev/null; then
    fswatch -o "$SCRIPT_DIR/TCC.md" "$SCRIPT_DIR/referencias.bib" | while read; do
        echo ""
        echo "$(date '+%H:%M:%S') - Alteração detectada, gerando PDF..."
        "$SCRIPT_DIR/build.sh"
    done
else
    echo "fswatch não encontrado. Usando polling (menos eficiente)."
    echo "Para melhor experiência, instale fswatch: brew install fswatch"
    echo ""

    LAST_HASH=""
    while true; do
        CURRENT_HASH=$(cat "$SCRIPT_DIR/TCC.md" "$SCRIPT_DIR/referencias.bib" 2>/dev/null | md5)
        if [ "$CURRENT_HASH" != "$LAST_HASH" ] && [ -n "$LAST_HASH" ]; then
            echo ""
            echo "$(date '+%H:%M:%S') - Alteração detectada, gerando PDF..."
            "$SCRIPT_DIR/build.sh"
        fi
        LAST_HASH="$CURRENT_HASH"
        sleep 2
    done
fi
