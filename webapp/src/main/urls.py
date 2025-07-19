from django.urls import path

from main.views import TaskSetter, TaskGetter, task_tracker

urlpatterns = [
    path('settask/', TaskSetter.as_view()),
    path('gettask/', TaskGetter.as_view()),
    path('tracker-task/', task_tracker),
]
