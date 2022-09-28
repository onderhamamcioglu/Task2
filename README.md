# Proje 2
## Bir projenin Container dönüşümünü sağlamak ve her hangi bir platform üzerinde CI/CD tekniklerinin uygulanması
- [x] Seçilecek bir Continuous Integration platformunda (Azure DevOps, Gitlab, GitHub vb..) "Azure DevOps tercihimizdir" yeni proje
açıp, temel Work Item Management ihtiyaçları için örnek bir iki iş maddesi (PBI, Task vb..) oluşturmak.
- [Issues](https://github.com/onderhamamcioglu/Task2/issues?q=)
- [x] Örnek bir web projesinin kodlarını git üzerinden bu platforma yüklemek. (Mümkünse feature-branching tekniğini uygulamak)
- [Branches](https://github.com/onderhamamcioglu/Task2/branches)
- [x]  Projenin dockerize hale getirilip, container imajının oluşturulması ve bir container registery'e aktarılması.
- [Container Registry](https://ghcr.io/onderhamamcioglu/task2)
- [x]  Pipeline tasarımı yapıp projenin her değişiklikle derlenmesinin ve paketlerin (artifact'larının) oluşmasının sağlanması
- [Pipeline](https://github.com/onderhamamcioglu/Task2/blob/prod/.github/workflows/pipeline.yml)
- [x]  Oluşan paketlerin (imajların) bir ImageScanner (dockerhub, harbor vb..) çözümünde belirli aralıklarla analize girmesinin
sağlanması
- ![Planned Analyze](https://github.com/onderhamamcioglu/Task2/actions/workflows/plannedanalyze.yml/badge.svg?branch=prod) | [Image Scanner Pipeline](https://github.com/onderhamamcioglu/Task2/blob/prod/.github/workflows/plannedanalyze.yml)
- [x] Analizlerden geçmiş başarılı imajların otomatik olarak bir Kubernetes cluster'ına (Local k8s, AKS, ECS, GKS vb..) teslimatının
"deployment" yapılması.
- ![Pipeline](https://github.com/onderhamamcioglu/Task2/actions/workflows/pipeline.yml/badge.svg)
