from ultralytics import YOLO

model = YOLO("yolov8n.pt")  

model.train(
    data="training_data/data.yaml", 
    imgsz=640,                      
    epochs=2,                       
    batch=8,                       
    name="yolov8n_custom",
    project="output"
)