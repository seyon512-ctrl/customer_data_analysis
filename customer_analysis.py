import pandas as pd

df = pd.read_excel("customer_data.xlsx")

print(df.head())

total_customers = len(df)
print("Total Customers:", total_customers)

total_spending = df["Total_Spending"].sum()
print("Total Spending:", total_spending)

average_spending = df["Total_Spending"].mean()
print("Average Spending:", average_spending)

top_customer = df.loc[df["Total_Spending"].idxmax()]
print("Highest Spending Customer:")
print(top_customer)

low_customer = df.loc[df["Total_Spending"].idxmin()]
print("Lowest Spending Customer:")
print(low_customer)

city_customers = df.groupby("City")["Customer_ID"].count()

print("Customers by City:")
print(city_customers)

city_spending = df.groupby("City")["Total_Spending"].sum()

print("Total Spending by City:")
print(city_spending)

highest_city = city_spending.idxmax()

print("Highest Spending City:", highest_city)

top_buyer = df.loc[df["Purchase_Count"].idxmax()]

print("Customer with Most Purchases:")
print(top_buyer)

gender_count = df["Gender"].value_counts()

print("Customers by Gender:")
print(gender_count)

gender_spending = df.groupby("Gender")["Total_Spending"].sum()

print("Spending by Gender:")
print(gender_spending)

highest_gender = gender_spending.idxmax()

print("Higher Spending Gender:", highest_gender)

average_city_spending = df.groupby("City")["Total_Spending"].mean()

print("Average Spending by City:")
print(average_city_spending)

highest_average_city = average_city_spending.idxmax()

print("Highest Average Spending City:", highest_average_city)

def customer_category(spending):
    if spending >= 20000:
        return "High Value"
    elif spending >= 10000:
        return "Medium Value"
    else:
        return "Low Value"

df["Customer_Category"] = df["Total_Spending"].apply(customer_category)

print(df[["Customer_Name", "Total_Spending", "Customer_Category"]])

category_count = df["Customer_Category"].value_counts()

print("Customer Categories:")
print(category_count)

def age_group(age):
    if age <= 25:
        return "18-25"
    elif age <= 35:
        return "26-35"
    else:
        return "36-50"

df["Age_Group"] = df["Age"].apply(age_group)

print(df[["Customer_Name", "Age", "Age_Group"]])

age_group_count = df["Age_Group"].value_counts()

print("Customers by Age Group:")
print(age_group_count)

age_group_spending = df.groupby("Age_Group")["Total_Spending"].sum()

print("Spending by Age Group:")
print(age_group_spending)

highest_age_group = age_group_spending.idxmax()

print("Highest Spending Age Group:", highest_age_group)

print("\n===== CUSTOMER DATA ANALYSIS SUMMARY =====")

print("Total Customers:", total_customers)
print("Total Spending:", total_spending)
print("Average Spending:", average_spending)

print("Highest Spending Customer:", top_customer["Customer_Name"])
print("Highest Spending:", top_customer["Total_Spending"])

print("Lowest Spending Customer:", low_customer["Customer_Name"])
print("Lowest Spending:", low_customer["Total_Spending"])

print("Highest Spending City:", highest_city)
print("Highest Average Spending City:", highest_average_city)

print("Most Purchases Customer:", top_buyer["Customer_Name"])
print("Most Purchases:", top_buyer["Purchase_Count"])

print("Highest Spending Gender:", highest_gender)
print("Highest Spending Age Group:", highest_age_group)