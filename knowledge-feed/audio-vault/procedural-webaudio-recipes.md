# Cofre de Áudio: Receitas Procedurais WebAudio API (Zero Dependência Externa)

Para garantir que **qualquer projeto tenha áudio profissional de estúdio imediatamente** sem depender de arquivos `.mp3` externos que podem quebrar, o especialista `TECH_AUDIO` + `SFX_FOLEY` utiliza esta arquitetura base:

## Receita Base de Motor de Som Sintetizado (Leve, Humanizado e Sem Clicks)

```javascript
class StudioSoundEngine {
  constructor() {
    this.ctx = null;
    this.muted = false;
    this.lastPlayed = new Map();
  }

  init() {
    if (!this.ctx) {
      const AudioCtx = window.AudioContext || window.webkitAudioContext;
      if (AudioCtx) this.ctx = new AudioCtx();
    }
    if (this.ctx && this.ctx.state === 'suspended') {
      this.ctx.resume().catch(() => {});
    }
  }

  // Evita que o mesmo som encavale no mesmo milissegundo (Audio Stacking Protection)
  canPlay(id, cooldownMs = 35) {
    if (this.muted) return false;
    this.init();
    if (!this.ctx) return false;
    const now = performance.now();
    if (now - (this.lastPlayed.get(id) || 0) < cooldownMs) return false;
    this.lastPlayed.set(id, now);
    return true;
  }

  // Variação humana de pitch (±5%) para nunca soar robótico
  humanize(freq, variance = 0.05) {
    return freq * (1 + (Math.random() * 2 - 1) * variance);
  }

  // 1. Clique Tátil Suave (Hover / Botão comum)
  playClick() {
    if (!this.canPlay('click', 30)) return;
    const t = this.ctx.currentTime;
    const osc = this.ctx.createOscillator();
    const gain = this.ctx.createGain();
    osc.type = 'triangle';
    osc.frequency.setValueAtTime(this.humanize(520), t);
    osc.frequency.exponentialRampToValueAtTime(140, t + 0.028);
    gain.gain.setValueAtTime(0.0001, t);
    gain.gain.linearRampToValueAtTime(0.18, t + 0.003);
    gain.gain.exponentialRampToValueAtTime(0.0001, t + 0.028);
    osc.connect(gain).connect(this.ctx.destination);
    osc.start(t);
    osc.stop(t + 0.03);
  }

  // 2. Confirmação / Sucesso / Recompensa (Acorde Ascendente Brilhante)
  playSuccess() {
    if (!this.canPlay('success', 80)) return;
    const notes = [523.25, 659.25, 783.99, 1046.5]; // Dó Maior (C5, E5, G5, C6)
    notes.forEach((freq, i) => {
      const t = this.ctx.currentTime + i * 0.055;
      const osc = this.ctx.createOscillator();
      const gain = this.ctx.createGain();
      osc.type = 'triangle';
      osc.frequency.setValueAtTime(this.humanize(freq, 0.015), t);
      gain.gain.setValueAtTime(0.0001, t);
      gain.gain.linearRampToValueAtTime(0.22, t + 0.01);
      gain.gain.exponentialRampToValueAtTime(0.0001, t + 0.32);
      osc.connect(gain).connect(this.ctx.destination);
      osc.start(t);
      osc.stop(t + 0.34);
    });
  }

  // 3. Erro / Bloqueio (Grave Curto e Contido)
  playError() {
    if (!this.canPlay('error', 100)) return;
    const t = this.ctx.currentTime;
    const osc = this.ctx.createOscillator();
    const gain = this.ctx.createGain();
    osc.type = 'sawtooth';
    osc.frequency.setValueAtTime(165, t);
    osc.frequency.linearRampToValueAtTime(110, t + 0.14);
    gain.gain.setValueAtTime(0.0001, t);
    gain.gain.linearRampToValueAtTime(0.16, t + 0.01);
    gain.gain.exponentialRampToValueAtTime(0.0001, t + 0.15);
    osc.connect(gain).connect(this.ctx.destination);
    osc.start(t);
    osc.stop(t + 0.16);
  }
}
```

## Preferências Sonoras Absorvidas (Auto-Feed)
<!-- A IA adiciona automaticamente aqui novos timbres e regras sonoras pedidas no chat -->
