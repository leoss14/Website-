# Portfolio Website - Flat Structure Guide

## Directory Structure

Your website should be organized as follows:

```
Website/
├── index.html                      # Main homepage
├── projects.html                   # All projects page
├── about.html                      # About page
├── contact.html                    # Contact page
├── style.css                       # Main stylesheet (LSE/Moody's theme)
├── uber_project.html               # Uber RL project page
├── capstone_page.html              # Moody's capstone project page
│
├── uber_visualizations/            # Uber project interactive charts
│   ├── 1_uber_2018_clusters.html
│   ├── 2_uber_2025_clusters.html
│   ├── 3_top_zones_comparison.html
│   ├── 4_hourly_patterns.html
│   ├── 5_daily_patterns.html
│   ├── 6_demand_heatmaps.html
│   ├── 7_borough_analysis.html
│   └── 8_cluster_shifts_PROPER.html
│
└── capstone_visualizations/        # Capstone project interactive charts
    ├── map_production_final.html
    ├── map_clusters.html
    ├── scatter_pca.html
    ├── pca_loadings_pc1.html
    └── pca_loadings_pc2.html
```

## Migration Steps

### 1. Move Main HTML Files to Root

From your current structure:
```bash
# Move from Pages/ to root
mv Pages/home.html index.html  # (or rename the existing index.html)
mv Pages/projects.html .
mv Pages/about.html .
mv Pages/contact.html .
mv Pages/style.css .
```

### 2. Move Project Pages to Root

```bash
# Move project pages
mv Uber/uber_project.html .
mv "Capstone Project/capstone_page.html" .
```

### 3. Organize Visualization Files

```bash
# Create visualization directories
mkdir uber_visualizations
mkdir capstone_visualizations

# Move Uber visualizations
mv Uber/outputs/*.html uber_visualizations/

# Move Capstone visualizations  
mv "Capstone Project"/*.html capstone_visualizations/
# (Keep capstone_page.html in root, move only the visualization HTML files)
```

### 4. Clean Up Old Directories

```bash
# After verifying everything works
rm -rf Pages/
rm -rf Uber/
rm -rf "Capstone Project"/
```

## Updated File References

All navigation links now point to files in the same directory:
- `index.html` → Main homepage
- `projects.html` → Project listings
- `about.html` → About page
- `contact.html` → Contact page
- `uber_project.html` → Uber RL project
- `capstone_page.html` → Moody's capstone

## Visualization Paths

The HTML files reference visualizations in subdirectories:
- **Uber project**: `uber_visualizations/filename.html`
- **Capstone project**: `capstone_visualizations/filename.html`

## Color Theme

The entire site now uses the **LSE & Moody's color scheme**:
- **LSE Red** (#E30613) - Primary accents, borders, highlights
- **Moody's Blue** (#002A54) - Headers, main elements
- **Clean White** background
- **Dark Grey** (#333333) text

## GitHub Deployment

After reorganizing:

```bash
git add .
git commit -m "Flatten website structure for easier deployment"
git push
```

If using GitHub Pages, make sure `index.html` is in the repository root.

## Testing Locally

Open `index.html` in your browser - all links should work correctly.
Check that:
1. Navigation works between all pages
2. Project cards link to correct project pages
3. Visualizations load on project pages
4. All styling appears correctly

## Notes

- The capstone page has TWO navigation bars:
  - Top: Portfolio navigation (to go back to other pages)
  - Second: Internal project navigation (for scrolling within the page)
  
- All files use relative paths - no absolute URLs needed
  
- Browser caching: If changes don't appear, do a hard refresh (Ctrl+Shift+R)
