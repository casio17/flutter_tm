from django.urls import path
from . import views

urlpatterns = [
    path('',views.getRoutes),
    path('notes/',views.getNotes),
    path('notes/create/',views.createNote),
    path('notes/<str:pk>',views.getNote),
    path('notes/<str:pk>/update/',views.updateNode),
    path('notes/<str:pk>/delete/',views.deleteNote),
]
