# YOLOv8

1. **Clone:**

```bash
https://github.com/OKleg/furnitureDetection.git
cd furnitureDetection
```

2. **Training:**
```bash
docker-compose up --build
```
3. **Export Model:**
```bash
yolo export model=output/yolov8n_custom/weights/best.pt format=tf
```