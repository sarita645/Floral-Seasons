/* ════════════════════════════════════════
   歲月花跡 · main.js
   動畫、互動、日期邏輯
════════════════════════════════════════ */

/* ── Scroll reveal ── */
const fadeEls = document.querySelectorAll('.fade-up');
const revealObserver = new IntersectionObserver(entries => {
  entries.forEach(e => {
    if (e.isIntersecting) e.target.classList.add('visible');
  });
}, { threshold: 0.1 });
fadeEls.forEach(el => revealObserver.observe(el));

/* ── Scroll hint fade ── */
const scrollHint = document.getElementById('scrollHint');
window.addEventListener('scroll', () => {
  if (scrollHint) {
    scrollHint.style.opacity = window.scrollY > 180 ? '0' : '0.55';
  }
}, { passive: true });

/* ── Season column hover ── */
const calCols = document.querySelectorAll('.cal-col');
calCols.forEach(col => {
  col.addEventListener('mouseenter', () => {
    calCols.forEach(c => c.style.opacity = '0.55');
    col.style.opacity = '1';
  });
  col.addEventListener('mouseleave', () => {
    calCols.forEach(c => c.style.opacity = '1');
  });
});

/* ── Dynamic month badge (reads actual current month) ── */
const MONTHS_ZH = ['一月','二月','三月','四月','五月','六月',
                   '七月','八月','九月','十月','十一月','十二月'];
const now = new Date();
const monthNumEl  = document.querySelector('.month-num');
const monthLblEl  = document.querySelector('.month-lbl');
if (monthNumEl) monthNumEl.textContent = String(now.getMonth() + 1).padStart(2, '0');
if (monthLblEl) monthLblEl.textContent = MONTHS_ZH[now.getMonth()];

/* ── Countdown helper ── */
function daysUntil(month, day) {
  const today = new Date();
  let target = new Date(today.getFullYear(), month - 1, day);
  if (target < today) target.setFullYear(target.getFullYear() + 1);
  return Math.ceil((target - today) / (1000 * 60 * 60 * 24));
}
