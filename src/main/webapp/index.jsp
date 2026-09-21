<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ========== RESET & BASE ========== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #fafaf8;
      color: #1a1a2e;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
    }

    /* ========== VARIABLES ========== */
    :root {
      --bg: #fafaf8;
      --bg-card: #ffffff;
      --primary: #1a1a2e;
      --primary-light: #2d2d44;
      --accent: #e07a5f;
      --accent-light: #f4d0c5;
      --text-muted: #6b6b7b;
      --border: #e8e8ec;
      --radius: 16px;
      --radius-sm: 10px;
      --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.04);
      --shadow-md: 0 8px 24px rgba(0, 0, 0, 0.06);
      --shadow-lg: 0 16px 48px rgba(0, 0, 0, 0.08);
      --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
    }

    /* ========== UTILITY ========== */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    /* ========== HEADER ========== */
    .header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(250, 250, 248, 0.85);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--border);
    }

    .header__inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      height: 72px;
      gap: 32px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      text-decoration: none;
      color: var(--primary);
    }

    .logo__icon {
      width: 36px;
      height: 36px;
      background: var(--primary);
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #fff;
      font-size: 16px;
      font-weight: 800;
      letter-spacing: -0.5px;
    }

    .logo__text {
      font-family: 'Playfair Display', serif;
      font-size: 22px;
      font-weight: 700;
      letter-spacing: -0.5px;
    }

    .logo__text span {
      color: var(--accent);
    }

    .nav {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .nav__link {
      padding: 8px 16px;
      border-radius: 8px;
      text-decoration: none;
      color: var(--text-muted);
      font-size: 14px;
      font-weight: 500;
      transition: var(--transition);
    }

    .nav__link:hover,
    .nav__link--active {
      color: var(--primary);
      background: rgba(26, 26, 46, 0.05);
    }

    .header__actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: 10px;
      border: 1px solid var(--border);
      background: var(--bg-card);
      color: var(--primary);
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: var(--transition);
      font-size: 16px;
      position: relative;
    }

    .icon-btn:hover {
      border-color: var(--accent);
      color: var(--accent);
      box-shadow: var(--shadow-sm);
    }

    .icon-btn__badge {
      position: absolute;
      top: -4px;
      right: -4px;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      background: var(--accent);
      color: #fff;
      font-size: 10px;
      font-weight: 700;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* ========== HERO ========== */
    .hero {
      padding: 64px 0 48px;
    }

    .hero__inner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 48px;
      align-items: center;
    }

    .hero__badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 6px 14px;
      border-radius: 100px;
      background: var(--accent-light);
      color: var(--accent);
      font-size: 12px;
      font-weight: 600;
      letter-spacing: 0.5px;
      text-transform: uppercase;
      margin-bottom: 20px;
    }

    .hero__badge i {
      font-size: 12px;
    }

    .hero__title {
      font-family: 'Playfair Display', serif;
      font-size: 52px;
      line-height: 1.15;
      letter-spacing: -1.5px;
      color: var(--primary);
      margin-bottom: 20px;
    }

    .hero__title em {
      font-style: normal;
      color: var(--accent);
    }

    .hero__desc {
      font-size: 17px;
      color: var(--text-muted);
      max-width: 480px;
      margin-bottom: 32px;
      line-height: 1.7;
    }

    .hero__actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 14px 28px;
      border-radius: 12px;
      font-size: 15px;
      font-weight: 600;
      text-decoration: none;
      cursor: pointer;
      border: none;
      transition: var(--transition);
      font-family: inherit;
    }

    .btn--primary {
      background: var(--primary);
      color: #fff;
    }

    .btn--primary:hover {
      background: var(--primary-light);
      box-shadow: var(--shadow-md);
      transform: translateY(-2px);
    }

    .btn--outline {
      background: transparent;
      color: var(--primary);
      border: 1.5px solid var(--border);
    }

    .btn--outline:hover {
      border-color: var(--primary);
      background: rgba(26, 26, 46, 0.03);
      transform: translateY(-2px);
    }

    .hero__visual {
      display: grid;
      grid-template-columns: 1fr 1fr;
      grid-template-rows: auto auto;
      gap: 16px;
    }

    .hero__card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border);
      transition: var(--transition);
    }

    .hero__card:hover {
      box-shadow: var(--shadow-md);
      transform: translateY(-3px);
    }

    .hero__card--wide {
      grid-column: span 2;
      display: flex;
      align-items: center;
      gap: 20px;
    }

    .hero__card-icon {
      width: 48px;
      height: 48px;
      border-radius: 12px;
      background: var(--accent-light);
      color: var(--accent);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
      flex-shrink: 0;
    }

    .hero__card-stat {
      font-size: 28px;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.5px;
    }

    .hero__card-label {
      font-size: 13px;
      color: var(--text-muted);
      font-weight: 500;
    }

    .hero__card-inner {
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    .hero__card--small {
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    /* ========== SECTION ========== */
    .section {
      padding: 64px 0;
    }

    .section__header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 40px;
      gap: 24px;
      flex-wrap: wrap;
    }

    .section__title {
      font-family: 'Playfair Display', serif;
      font-size: 36px;
      letter-spacing: -1px;
      color: var(--primary);
      margin-bottom: 8px;
    }

    .section__subtitle {
      font-size: 15px;
      color: var(--text-muted);
    }

    .section__link {
      color: var(--accent);
      text-decoration: none;
      font-weight: 600;
      font-size: 14px;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }

    .section__link:hover {
      gap: 10px;
    }

    /* ========== CATEGORIES ========== */
    .categories {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .category {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 32px 24px;
      text-align: center;
      border: 1px solid var(--border);
      cursor: pointer;
      transition: var(--transition);
      text-decoration: none;
      display: block;
    }

    .category:hover {
      border-color: var(--accent);
      box-shadow: var(--shadow-md);
      transform: translateY(-4px);
    }

    .category__icon {
      width: 56px;
      height: 56px;
      border-radius: 16px;
      background: var(--accent-light);
      color: var(--accent);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 22px;
      margin: 0 auto 16px;
      transition: var(--transition);
    }

    .category:hover .category__icon {
      background: var(--accent);
      color: #fff;
    }

    .category__name {
      font-size: 15px;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 4px;
    }

    .category__count {
      font-size: 13px;
      color: var(--text-muted);
    }

    /* ========== PRODUCTS ========== */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product {
      background: var(--bg-card);
      border-radius: var(--radius);
      border: 1px solid var(--border);
      overflow: hidden;
      transition: var(--transition);
      cursor: pointer;
    }

    .product:hover {
      box-shadow: var(--shadow-lg);
      transform: translateY(-6px);
      border-color: transparent;
    }

    .product__image {
      height: 200px;
      background: linear-gradient(135deg, #f0f0f4 0%, #e8e8ee 100%);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 48px;
      color: #c0c0cc;
      position: relative;
      overflow: hidden;
    }

    .product__badge {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 4px 10px;
      border-radius: 100px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.3px;
      text-transform: uppercase;
    }

    .product__badge--new {
      background: var(--primary);
    }

    .product__wish {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      color: var(--text-muted);
      font-size: 14px;
      transition: var(--transition);
      opacity: 0;
    }

    .product:hover .product__wish {
      opacity: 1;
    }

    .product__wish:hover {
      color: var(--accent);
      background: #fff;
      box-shadow: var(--shadow-sm);
    }

    .product__body {
      padding: 20px;
    }

    .product__category {
      font-size: 12px;
      color: var(--accent);
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-bottom: 6px;
    }

    .product__name {
      font-size: 16px;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 8px;
      letter-spacing: -0.2px;
    }

    .product__rating {
      display: flex;
      align-items: center;
      gap: 6px;
      margin-bottom: 12px;
    }

    .product__stars {
      color: #f5b342;
      font-size: 12px;
    }

    .product__reviews {
      font-size: 12px;
      color: var(--text-muted);
    }

    .product__footer {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .product__price {
      font-size: 20px;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.5px;
    }

    .product__price s {
      font-size: 13px;
      font-weight: 500;
      color: var(--text-muted);
      margin-left: 6px;
    }

    .product__add {
      width: 38px;
      height: 38px;
      border-radius: 10px;
      background: var(--primary);
      color: #fff;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      font-size: 15px;
      transition: var(--transition);
    }

    .product__add:hover {
      background: var(--accent);
      transform: scale(1.05);
    }

    /* ========== PROMO ========== */
    .promo {
      background: var(--primary);
      border-radius: 24px;
      padding: 64px 48px;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 48px;
      align-items: center;
      color: #fff;
      position: relative;
      overflow: hidden;
    }

    .promo::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(224, 122, 95, 0.25) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .promo__badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 6px 14px;
      border-radius: 100px;
      background: rgba(224, 122, 95, 0.2);
      color: var(--accent-light);
      font-size: 12px;
      font-weight: 600;
      letter-spacing: 0.5px;
      text-transform: uppercase;
      margin-bottom: 20px;
    }

    .promo__title {
      font-family: 'Playfair Display', serif;
      font-size: 40px;
      line-height: 1.2;
      letter-spacing: -1px;
      margin-bottom: 16px;
    }

    .promo__title em {
      font-style: normal;
      color: var(--accent);
    }

    .promo__desc {
      font-size: 16px;
      color: rgba(255, 255, 255, 0.7);
      margin-bottom: 32px;
      line-height: 1.7;
    }

    .promo .btn--primary {
      background: var(--accent);
    }

    .promo .btn--primary:hover {
      background: #d06a4f;
    }

    .promo .btn--outline {
      color: #fff;
      border-color: rgba(255, 255, 255, 0.25);
    }

    .promo .btn--outline:hover {
      border-color: rgba(255, 255, 255, 0.6);
      background: rgba(255, 255, 255, 0.05);
    }

    .promo__visual {
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 160px;
      color: rgba(255, 255, 255, 0.08);
      line-height: 1;
      user-select: none;
    }

    /* ========== FOOTER ========== */
    .footer {
      background: var(--bg-card);
      border-top: 1px solid var(--border);
      padding: 48px 0 32px;
      margin-top: 64px;
    }

    .footer__inner {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .footer__brand {
      display: flex;
      flex-direction: column;
      gap: 16px;
    }

    .footer__desc {
      font-size: 14px;
      color: var(--text-muted);
      max-width: 300px;
      line-height: 1.7;
    }

    .footer__social {
      display: flex;
      gap: 8px;
    }

    .footer__social a {
      width: 38px;
      height: 38px;
      border-radius: 10px;
      border: 1px solid var(--border);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-muted);
      text-decoration: none;
      font-size: 15px;
      transition: var(--transition);
    }

    .footer__social a:hover {
      border-color: var(--accent);
      color: var(--accent);
      background: var(--accent-light);
    }

    .footer__col h4 {
      font-size: 14px;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 16px;
      letter-spacing: -0.2px;
    }

    .footer__col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .footer__col a {
      color: var(--text-muted);
      text-decoration: none;
      font-size: 14px;
      transition: var(--transition);
    }

    .footer__col a:hover {
      color: var(--accent);
    }

    .footer__bottom {
      padding-top: 24px;
      border-top: 1px solid var(--border);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      flex-wrap: wrap;
    }

    .footer__copy {
      font-size: 13px;
      color: var(--text-muted);
    }

    .footer__payment {
      display: flex;
      gap: 12px;
      font-size: 24px;
      color: var(--text-muted);
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1024px) {
      .hero__inner {
        grid-template-columns: 1fr;
        gap: 40px;
      }
      .hero__title {
        font-size: 44px;
      }
      .categories {
        grid-template-columns: repeat(2, 1fr);
      }
      .products {
        grid-template-columns: repeat(2, 1fr);
      }
      .promo {
        grid-template-columns: 1fr;
        padding: 48px 32px;
      }
      .promo__visual {
        display: none;
      }
      .footer__inner {
        grid-template-columns: 1fr 1fr;
        gap: 32px;
      }
    }

    @media (max-width: 768px) {
      .nav {
        display: none;
      }
      .hero__title {
        font-size: 34px;
      }
      .hero__desc {
        font-size: 15px;
      }
      .section__title {
        font-size: 28px;
      }
      .products {
        grid-template-columns: 1fr 1fr;
        gap: 16px;
      }
      .product__image {
        height: 160px;
        font-size: 36px;
      }
      .product__body {
        padding: 16px;
      }
      .promo__title {
        font-size: 30px;
      }
      .footer__inner {
        grid-template-columns: 1fr;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 16px;
      }
      .hero {
        padding: 40px 0 32px;
      }
      .hero__title {
        font-size: 28px;
      }
      .hero__actions {
        flex-direction: column;
      }
      .btn {
        width: 100%;
      }
      .categories {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .category {
        padding: 20px 16px;
      }
      .products {
        grid-template-columns: 1fr;
      }
      .promo {
        padding: 32px 24px;
        border-radius: 16px;
      }
      .promo__title {
        font-size: 26px;
      }
      .footer__bottom {
        flex-direction: column;
        text-align: center;
      }
    }
  </style>
</head>
<body>

  <!-- ========== HEADER ========== -->
  <header class="header">
    <div class="container header__inner">
      <a href="#" class="logo">
        <div class="logo__icon">N</div>
        <div class="logo__text">Nexus<span>Shop</span></div>
      </a>

      <nav class="nav">
        <a href="#" class="nav__link nav__link--active">Shop</a>
        <a href="#" class="nav__link">Collections</a>
        <a href="#" class="nav__link">Deals</a>
        <a href="#" class="nav__link">About</a>
      </nav>

      <div class="header__actions">
        <button class="icon-btn" aria-label="Search">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <button class="icon-btn" aria-label="Wishlist">
          <i class="fa-regular fa-heart"></i>
        </button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="icon-btn__badge">3</span>
        </button>
      </div>
    </div>
  </header>

  <!-- ========== HERO ========== -->
  <section class="hero">
    <div class="container hero__inner">
      <div>
        <div class="hero__badge">
          <i class="fa-solid fa-bolt"></i> New Season Drop
        </div>
        <h1 class="hero__title">
          Elevate your <em>everyday</em> essentials.
        </h1>
        <p class="hero__desc">
          Curated design objects, apparel, and tech — crafted for the modern minimalist. Free shipping on orders over $75.
        </p>
        <div class="hero__actions">
          <a href="#" class="btn btn--primary">
            Shop Collection <i class="fa-solid fa-arrow-right"></i>
          </a>
          <a href="#" class="btn btn--outline">
            <i class="fa-regular fa-circle-play"></i> Watch Film
          </a>
        </div>
      </div>

      <div class="hero__visual">
        <div class="hero__card hero__card--wide">
          <div class="hero__card-icon">
            <i class="fa-solid fa-truck-fast"></i>
          </div>
          <div class="hero__card-inner">
            <div class="hero__card-stat">Free</div>
            <div class="hero__card-label">Express delivery over $75</div>
          </div>
        </div>
        <div class="hero__card hero__card--small">
          <div class="hero__card-icon">
            <i class="fa-solid fa-rotate-left"></i>
          </div>
          <div class="hero__card-inner">
            <div class="hero__card-stat">30d</div>
            <div class="hero__card-label">Easy returns</div>
          </div>
        </div>
        <div class="hero__card hero__card--small">
          <div class="hero__card-icon">
            <i class="fa-solid fa-shield-halved"></i>
          </div>
          <div class="hero__card-inner">
            <div class="hero__card-stat">2yr</div>
            <div class="hero__card-label">Warranty included</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ========== CATEGORIES ========== -->
  <section class="section">
    <div class="container">
      <div class="section__header">
        <div>
          <h2 class="section__title">Shop by Category</h2>
          <p class="section__subtitle">Find exactly what you're looking for</p>
        </div>
        <a href="#" class="section__link">
          View all <i class="fa-solid fa-arrow-right"></i>
        </a>
      </div>

      <div class="categories">
        <a href="#" class="category">
          <div class="category__icon"><i class="fa-solid fa-headphones"></i></div>
          <div class="category__name">Audio</div>
          <div class="category__count">124 products</div>
        </a>
        <a href="#" class="category">
          <div class="category__icon"><i class="fa-solid fa-shirt"></i></div>
          <div class="category__name">Apparel</div>
          <div class="category__count">86 products</div>
        </a>
        <a href="#" class="category">
          <div class="category__icon"><i class="fa-solid fa-couch"></i></div>
          <div class="category__name">Home</div>
          <div class="category__count">210 products</div>
        </a>
        <a href="#" class="category">
          <div class="category__icon"><i class="fa-solid fa-laptop"></i></div>
          <div class="category__name">Tech</div>
          <div class="category__count">54 products</div>
        </a>
      </div>
    </div>
  </section>

  <!-- ========== PRODUCTS ========== -->
  <section class="section" style="padding-top: 0;">
    <div class="container">
      <div class="section__header">
        <div>
          <h2 class="section__title">Trending Now</h2>
          <p class="section__subtitle">Hand-picked favorites from our community</p>
        </div>
        <a href="#" class="section__link">
          Browse all <i class="fa-solid fa-arrow-right"></i>
        </a>
      </div>

      <div class="products">
        <!-- Product 1 -->
        <article class="product">
          <div class="product__image">
            <i class="fa-solid fa-headphones-simple"></i>
            <span class="product__badge">Bestseller</span>
            <button class="product__wish" aria-label="Add to wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>
          <div class="product__body">
            <div class="product__category">Audio</div>
            <h3 class="product__name">Aura Studio Headphones</h3>
            <div class="product__rating">
              <div class="product__stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star-half-stroke"></i>
              </div>
              <span class="product__reviews">(2.4k)</span>
            </div>
            <div class="product__footer">
              <div class="product__price">$189 <s>$249</s></div>
              <button class="product__add" aria-label="Add to cart">
                <i class="fa-solid fa-plus"></i>
              </button>
            </div>
          </div>
        </article>

        <!-- Product 2 -->
        <article class="product">
          <div class="product__image">
            <i class="fa-solid fa-clock"></i>
            <span class="product__badge product__badge--new">New</span>
            <button class="product__wish" aria-label="Add to wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>
          <div class="product__body">
            <div class="product__category">Accessories</div>
            <h3 class="product__name">Minimal Chrono Watch</h3>
            <div class="product__rating">
              <div class="product__stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <span class="product__reviews">(892)</span>
            </div>
            <div class="product__footer">
              <div class="product__price">$129</div>
              <button class="product__add" aria-label="Add to cart">
                <i class="fa-solid fa-plus"></i>
              </button>
            </div>
          </div>
        </article>

        <!-- Product 3 -->
        <article class="product">
          <div class="product__image">
            <i class="fa-solid fa-camera"></i>
            <button class="product__wish" aria-label="Add to wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>
          <div class="product__body">
            <div class="product__category">Tech</div>
            <h3 class="product__name">Lumina Instant Camera</h3>
            <div class="product__rating">
              <div class="product__stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <span class="product__reviews">(1.1k)</span>
            </div>
            <div class="product__footer">
              <div class="product__price">$219</div>
              <button class="product__add" aria-label="Add to cart">
                <i class="fa-solid fa-plus"></i>
              </button>
            </div>
          </div>
        </article>

        <!-- Product 4 -->
        <article class="product">
          <div class="product__image">
            <i class="fa-solid fa-mug-hot"></i>
            <button class="product__wish" aria-label="Add to wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>
          <div class="product__body">
            <div class="product__category">Home</div>
            <h3 class="product__name">Terra Ceramic Mug Set</h3>
            <div class="product__rating">
              <div class="product__stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star-half-stroke"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <span class="product__reviews">(456)</span>
            </div>
            <div class="product__footer">
              <div class="product__price">$48 <s>$62</s></div>
              <button class="product__add" aria-label="Add to cart">
                <i class="fa-solid fa-plus"></i>
              </button>
            </div>
          </div>
        </article>
      </div>
    </div>
  </section>

  <!-- ========== PROMO ========== -->
  <section class="section" style="padding-top: 0;">
    <div class="container">
      <div class="promo">
        <div>
          <div class="promo__badge">
            <i class="fa-solid fa-gift"></i> Limited Offer
          </div>
          <h2 class="promo__title">
            Get <em>20% off</em> your first order.
          </h2>
          <p class="promo__desc">
            Join the Nexus community and unlock exclusive drops, early access, and member-only pricing.
          </p>
          <div class="hero__actions">
            <
