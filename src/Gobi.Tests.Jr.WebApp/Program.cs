using Gobi.Test.Jr.Application;
using Gobi.Test.Jr.Domain.Interfaces;
using Gobi.Test.Jr.Infra;
using System.Configuration;
using System;
using Microsoft.EntityFrameworkCore;
using Gobi.Tests.Jr.WebApp;

var builder = WebApplication.CreateBuilder(args);

builder
.Services
.AddControllersWithViews()
.AddRazorRuntimeCompilation();

builder.Services.AddScoped<TodoItemService>();
builder.Services.AddTransient<ITodoItemRepository, TodoItemRepository>();

builder.Services.AddDbContext<AppGobiDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");

    app.UseHsts();    
}


app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Todo}/{action=Index}/{id?}");

app.Run();
