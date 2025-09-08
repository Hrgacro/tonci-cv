document.addEventListener('DOMContentLoaded', () => {
  const sidebar = document.getElementById('sidebar');
  const toc = document.createElement('ul');
  document.querySelectorAll('h2, h3').forEach(h => {
    if (!h.id) h.id = h.textContent.trim().toLowerCase().replace(/\s+/g, '-');
    const li = document.createElement('li');
    const a = document.createElement('a');
    a.href = `#${h.id}`;
    a.textContent = h.textContent;
    li.appendChild(a);
    toc.appendChild(li);
  });
  sidebar.appendChild(toc);
});
