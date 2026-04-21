<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop | Premium Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-deep: #0b1120;
            --bg-surface: #111827;
            --card-bg: #1f2937;
            --primary-glow: #38bdf8;
            --accent-vibrant: #06b6d4;
            --accent-purple: #8b5cf6;
            --text-light: #f9fafb;
            --text-muted: #9ca3af;
            --border-dim: #1e293b;
            --success: #10b981;
            --warning: #f59e0b;
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
            --radius-sm: 12px;
            --transition-smooth: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: var(--bg-deep);
            font-family: 'Inter', sans-serif;
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }

        ::-webkit-scrollbar-track {
            background: var(--bg-surface);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--accent-vibrant);
            border-radius: 10px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* glassmorphic header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(15, 23, 42, 0.75);
            border-bottom: 1px solid rgba(56, 189, 248, 0.2);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 20px;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 26px;
            background: linear-gradient(135deg, #ffffff 20%, var(--accent-vibrant) 80%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
        }

        .brand span {
            background: linear-gradient(135deg, var(--accent-purple), var(--primary-glow));
            -webkit-background-clip: text;
            background-clip: text;
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 10px 18px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition-smooth);
            background: transparent;
            color: var(--text-muted);
        }

        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: rgba(56, 189, 248, 0.12);
            color: var(--primary-glow);
            backdrop-filter: blur(4px);
        }

        .search {
            background: rgba(31, 41, 55, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 60px;
            padding: 8px 18px;
            border: 1px solid var(--border-dim);
            transition: var(--transition-smooth);
        }

        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
        }

        .search input::placeholder {
            color: var(--text-muted);
        }

        .icon-btn {
            background: rgba(31, 41, 55, 0.6);
            width: 40px;
            height: 40px;
            border-radius: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition-smooth);
            color: var(--text-light);
        }

        .icon-btn:hover {
            background: var(--accent-vibrant);
            color: #0f172a;
            transform: translateY(-2px);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-purple);
            font-weight: bold;
            font-size: 11px;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 8px var(--accent-purple);
        }

        /* hero section modern */
        .hero {
            background: radial-gradient(ellipse at 70% 30%, rgba(6, 182, 212, 0.15), transparent 70%),
                        linear-gradient(135deg, #0a0f1f 0%, #0f172a 100%);
            padding: 80px 0;
            border-radius: 0 0 48px 48px;
            margin-bottom: 20px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(56,189,248,0.2), transparent);
            top: -100px;
            right: -50px;
            border-radius: 50%;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 56px;
            font-weight: 700;
            background: linear-gradient(to right, #fff, var(--accent-vibrant));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -1px;
        }

        .btn {
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            transition: var(--transition-smooth);
            cursor: pointer;
            border: none;
            font-size: 0.9rem;
        }

        .btn-primary {
            background: linear-gradient(95deg, var(--accent-vibrant), var(--primary-glow));
            color: #0f172a;
            box-shadow: 0 8px 18px rgba(6, 182, 212, 0.3);
        }

        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 24px rgba(6, 182, 212, 0.5);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(56, 189, 248, 0.5);
            color: white;
        }

        /* category cards modern */
        .grid {
            display: grid;
            gap: 28px;
        }

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card-bg);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-lg);
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition-smooth);
            border: 1px solid rgba(56, 189, 248, 0.1);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent-vibrant);
            background: rgba(31, 41, 55, 0.9);
            box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.5);
        }

        .cat-card .icon {
            font-size: 38px;
            background: linear-gradient(145deg, var(--accent-vibrant), var(--accent-purple));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* product cards */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card-bg);
            border-radius: var(--radius-xl);
            overflow: hidden;
            transition: var(--transition-smooth);
            border: 1px solid rgba(56, 189, 248, 0.08);
            backdrop-filter: blur(2px);
        }

        .product:hover {
            transform: translateY(-10px);
            border-color: rgba(56, 189, 248, 0.5);
            box-shadow: 0 24px 40px -16px black;
        }

        .product img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product:hover img {
            transform: scale(1.02);
        }

        .add-btn {
            background: linear-gradient(90deg, #2dd4bf20, #3b82f620);
            border: 1px solid var(--accent-vibrant);
            border-radius: 40px;
            color: white;
            font-weight: 600;
            transition: 0.2s;
        }

        .add-btn:hover {
            background: var(--accent-vibrant);
            color: #0f172a;
        }

        /* deal card premium */
        .deal {
            background: linear-gradient(125deg, #111827, #0f172a);
            border-radius: 40px;
            border: 1px solid rgba(6, 182, 212, 0.3);
            overflow: hidden;
            backdrop-filter: blur(8px);
        }

        .time-box {
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(12px);
            border-radius: 24px;
            min-width: 80px;
            padding: 14px 0;
            border: 1px solid rgba(6, 182, 212, 0.3);
        }

        /* testimonials */
        .testimonials {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 0 24px;
        }

        .testimonial {
            background: rgba(31, 41, 55, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 28px;
            min-width: 340px;
            padding: 28px;
            border: 1px solid var(--border-dim);
        }

        /* newsletter premium */
        .newsletter {
            background: linear-gradient(115deg, #1e293b, #0f172a);
            border-radius: 48px;
            border: 1px solid rgba(56, 189, 248, 0.2);
        }

        .newsletter input {
            background: #0f172a;
            border: 1px solid var(--border-dim);
            color: white;
            border-radius: 60px;
            padding: 14px 22px;
            width: 280px;
        }

        footer {
            border-top: 1px solid rgba(56, 189, 248, 0.1);
        }

        @media (max-width: 1100px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 800px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-flex !important; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .hero h1 { font-size: 38px; }
            .container { padding: 0 20px; }
        }
        @media (max-width: 550px) {
            .products, .categories { grid-template-columns: 1fr; }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 220px; }
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 26px;
            color: white;
        }
        .rating {
            color: #fbbf24;
        }
        .old-price {
            text-decoration: line-through;
            font-size: 13px;
            color: var(--text-muted);
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display:flex; align-items:center; gap:20px;">
            <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#">NEXUS<span>SHOP</span></a>
        </div>
        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Explore</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Premium</a></li>
            </ul>
        </nav>
        <div style="display:flex; align-items:center; gap:14px;">
            <div class="search">
                <input type="text" id="searchInput" placeholder="Search products...">
                <button id="searchBtn" style="background:none; border:none; color:white;"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions" style="display:flex; gap:12px;">
                <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
                <a class="cart icon-btn" href="#" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>
    <div id="mobileMenu" style="display:none; background:#0f172a; border-top:1px solid #1e293b; padding:16px 24px;">
        <ul style="list-style:none; display:flex; flex-direction:column; gap:14px;">
            <li><a href="#">Home</a></li>
            <li><a href="#">Shop</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">Account</a></li>
        </ul>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container" style="text-align: center;">
            <h1>Beyond Ordinary.<br>Neo‑Luxury Drops</h1>
            <p style="font-size: 1.2rem; color: #cbd5e1; max-width: 700px; margin: 20px auto;">Experience cutting‑edge design, epic discounts, and next‑gen service — all in one place.</p>
            <div style="display:flex; gap:16px; justify-content:center;">
                <button class="btn btn-primary" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-ghost" id="exploreDeals">Flash Sale <i class="fas fa-gem"></i></button>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="container section" style="margin: 40px auto;">
        <div class="title" style="text-align:center; margin-bottom: 32px;">
            <h2 style="font-size: 32px; font-weight: 600;">Curated <span style="color:var(--accent-vibrant)">Collections</span></h2>
            <p class="muted" style="color:var(--text-muted)">Explore premium categories crafted for modern life</p>
        </div>
        <div class="grid categories" id="categoriesGrid"></div>
    </section>

    <!-- Trending Products -->
    <section class="container section" style="margin: 20px auto;">
        <div class="title" style="text-align:center; margin-bottom: 32px;">
            <h2>✨ Trending Now</h2>
            <p class="muted" style="color:var(--text-muted)">Most wanted & highly rated</p>
        </div>
        <div class="grid products" id="productsGrid"></div>
    </section>

    <!-- Flash Sale -->
    <section id="deals" class="container section">
        <div class="title" style="text-align:center; margin-bottom: 32px;">
            <h2><i class="fas fa-stopwatch"></i> Lightning Deal</h2>
            <p class="muted">Grab before it's gone — exclusive price</p>
        </div>
        <div class="deal" style="display:flex; gap:20px; align-items:center;">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook M2" style="width:45%; object-fit:cover;">
            <div class="content" style="padding: 32px;">
                <h3 style="font-size: 32px;">MacBook Air M3</h3>
                <p style="color:var(--text-muted)">Next‑gen performance. Ultra‑slim design. AI‑ready chip.</p>
                <div class="timer" style="display:flex; gap:16px; margin: 24px 0;">
                    <div class="time-box"><div id="dealDays">0</div><div style="font-size:12px;">Days</div></div>
                    <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
                    <div class="time-box"><div id="dealMinutes">00</div><div>Mins</div></div>
                    <div class="time-box"><div id="dealSeconds">00</div><div>Secs</div></div>
                </div>
                <div style="display:flex; gap:16px; align-items:baseline; flex-wrap:wrap;">
                    <div class="price" style="font-size:38px; font-weight:700;">$999</div>
                    <div class="old-price" style="font-size:20px;">$1,399</div>
                    <div style="background: #ff4757; border-radius:60px; padding:6px 18px;">-28% OFF</div>
                </div>
                <button class="btn btn-primary" id="buyDeal" style="margin-top:28px;"><i class="fas fa-bolt"></i> Claim Deal</button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="container section">
        <div class="title" style="text-align:center;">
            <h2>Voices of <span style="color:var(--accent-vibrant)">Excellence</span></h2>
            <p>What our community thinks</p>
        </div>
        <div class="testimonials" id="testimonials"></div>
    </section>

    <!-- Newsletter Premium -->
    <section class="container section">
        <div class="newsletter" style="padding: 56px 32px; text-align:center;">
            <h3 style="font-size: 30px;">Join the Inner Circle</h3>
            <p style="margin:12px 0 24px;">Get early access to exclusive deals & private sales</p>
            <form id="newsletterForm" style="display:flex; justify-content:center; gap:12px; flex-wrap:wrap;">
                <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
                <button class="btn btn-primary" id="subscribeBtn">Subscribe <i class="fas fa-paper-plane"></i></button>
            </form>
            <div id="newsletterMsg" style="margin-top:16px; font-size:14px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display:flex; flex-wrap:wrap; justify-content:space-between; gap:36px; padding: 48px 0 32px;">
        <div><div style="font-weight:700; font-size:24px;">NexusShop</div><p class="muted" style="margin-top:12px;">Redefining modern commerce with elegance & innovation.</p></div>
        <div style="display:flex; gap:60px;">
            <div><div style="font-weight:600;">Explore</div><div class="muted" style="margin-top:10px;">New Arrivals<br>Best Sellers<br>Gift Cards</div></div>
            <div><div style="font-weight:600;">Support</div><div class="muted" style="margin-top:10px;">FAQs<br>Returns<br>Track Order</div></div>
        </div>
    </div>
    <div style="text-align:center; padding: 24px 0; border-top:1px solid #1e293b;">© <span id="year"></span> NexusShop — Future of E‑Commerce</div>
</footer>

<script>
    // ENHANCED DATA
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
        { id: 'clothing', name: 'Urban Wear', icon: 'fa-shirt' },
        { id: 'gadgets', name: 'Audio & Gear', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Sneakers', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Luxury Acc', icon: 'fa-gem' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 342, badge: '🔥 Hot', img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'Zenbook Pro Duo', price: 1799, rating: 4, reviews: 89, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Galaxy Watch6', price: 299, oldPrice: 379, rating: 5, reviews: 214, badge: '−21%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 2025', price: 189, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony Alpha IV', price: 2499, rating: 5, reviews: 67, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Dior Sauvage', price: 138, rating: 5, reviews: 210, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Aer Duffel Pack', price: 89, oldPrice: 129, rating: 4, reviews: 92, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'Sony XM6', price: 429, rating: 5, reviews: 278, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
    ];

    const testimonialsData = [
        { name: 'Ava Chen', review: 'Absolutely stunning quality & fast shipping! The UI itself is a vibe.', rating: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Marcus V.', review: 'Best premium store I’ve experienced. Seamless checkout and unique drops.', rating: 5, avatar: 'https://randomuser.me/api/portraits/men/32.jpg' },
        { name: 'Sophia L.', review: 'Great deals and customer support. The flash sale was unreal!', rating: 4, avatar: 'https://randomuser.me/api/portraits/women/44.jpg' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m === '&') return '&amp;'; if(m === '<') return '&lt;'; if(m === '>') return '&gt;'; return m;}); }

    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="muted" style="font-size:12px;">Explore</div>`;
            card.addEventListener('click', () => { searchInput.value = cat.name; filterProducts(cat.name); window.scrollTo({ top: document.querySelector('#productsGrid').offsetTop - 80, behavior: 'smooth' }); });
            categoriesGrid.appendChild(card);
        });
    }

    function renderProducts(products) {
        productsGrid.innerHTML = '';
        products.forEach(p => {
            const prodDiv = document.createElement('div');
            prodDiv.className = 'product';
            prodDiv.innerHTML = `
                ${p.badge ? `<div style="position:absolute; margin:14px; z-index:2;"><span style="background:var(--accent-purple); padding:6px 14px; border-radius:40px; font-size:12px; font-weight:bold;">${p.badge}</span></div>` : ''}
                <img src="${p.img}" alt="${p.title}" style="width:100%; height:210px; object-fit:cover;">
                <div class="product-body" style="padding:18px;">
                    <h5 style="font-size:18px;">${escapeHtml(p.title)}</h5>
                    <div class="muted" style="font-size:13px;">${p.category}</div>
                    <div class="price-row" style="display:flex; justify-content:space-between; margin:10px 0;">
                        <div><span class="price" style="font-size:22px; font-weight:700;">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                        <div class="rating">${'★'.repeat(p.rating)} <span style="font-size:11px;">(${p.reviews})</span></div>
                    </div>
                </div>
                <div class="product-footer" style="padding:0 18px 18px 18px; display:flex; gap:12px;">
                    <button class="add-btn" data-id="${p.id}" style="flex:1; padding:12px; border-radius:40px;"><i class="fas fa-cart-plus"></i> Add</button>
                    <button class="wish-btn" style="background:#1e293b; border-radius:40px; width:44px;"><i class="far fa-heart"></i></button>
                </div>
            `;
            productsGrid.appendChild(prodDiv);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => { const id = Number(btn.dataset.id); addToCart(id); });
        });
    }

    function addToCart(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if(!product) return;
        cartCount++;
        cartCountEl.innerText = cartCount;
        const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
        if(btn) { const original = btn.innerHTML; btn.innerHTML = '<i class="fas fa-check"></i> Added'; setTimeout(() => btn.innerHTML = original, 1000); }
        const toast = document.createElement('div'); toast.innerText = `✨ ${product.title} added!`; toast.style.position='fixed'; toast.style.bottom='20px'; toast.style.right='20px'; toast.style.background='#1e293b'; toast.style.padding='12px 24px'; toast.style.borderRadius='60px'; toast.style.zIndex='999'; toast.style.backdropFilter='blur(8px)'; toast.style.border='1px solid cyan'; document.body.appendChild(toast); setTimeout(()=>toast.remove(),2000);
    }

    function filterProducts(query) {
        const term = query.trim().toLowerCase();
        if(!term) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    // init
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

    // timer deal
    (function setupTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(14, 0, 0, 0);
        function update() {
            const diff = target - new Date();
            if(diff <= 0) { document.getElementById('dealDays').innerText = 0; document.getElementById('dealHours').innerText = '00'; document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00'; return; }
            const days = Math.floor(diff / (1000*3600*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        update(); setInterval(update, 1000);
    })();

    // testimonials dynamic
    const testContainer = document.getElementById('testimonials');
    testimonialsData.forEach(t => {
        const div = document.createElement('div'); div.className = 'testimonial';
        div.innerHTML = `<div class="rating">${'★'.repeat(t.rating)}</div><p style="margin:14px 0;">“${t.review}”</p><div style="display:flex; gap:12px; align-items:center;"><img src="${t.avatar}" width="42" height="42" style="border-radius:60px; object-fit:cover;"><div><strong>${t.name}</strong><div class="muted">Verified</div></div></div>`;
        testContainer.appendChild(div);
    });

    document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({ top: document.getElementById('productsGrid').offsetTop - 40, behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => location.href = '#deals');
    document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountEl.innerText = cartCount; alert('🔥 MacBook M3 added to cart with flash discount!'); });
    document.getElementById('newsletterForm').addEventListener('submit', (e) => { e.preventDefault(); const email = document.getElementById('newsletterEmail').value; const msgDiv = document.getElementById('newsletterMsg'); if(!email.includes('@')) { msgDiv.innerHTML = '❌ Valid email required'; msgDiv.style.color='#ffb3b3'; } else { msgDiv.innerHTML = '🎉 Thanks! You’re in the loop.'; msgDiv.style.color='#9effcf'; document.getElementById('newsletterEmail').value=''; setTimeout(()=>msgDiv.innerHTML='',3000); } });
    document.getElementById('mobileToggle').addEventListener('click', () => { const menu = document.getElementById('mobileMenu'); menu.style.display = menu.style.display === 'none' ? 'flex' : 'none'; });
    document.getElementById('year').innerText = new Date().getFullYear();
    document.getElementById('catMenuBtn')?.addEventListener('click', (e) => { e.preventDefault(); alert('✨ Browse categories below — click any tile to filter products!'); });
</script>
</body>
</html>
