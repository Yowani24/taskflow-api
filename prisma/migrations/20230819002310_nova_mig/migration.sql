/*
  Warnings:

  - You are about to drop the `Month` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `MonthlyData` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "MonthlyData" DROP CONSTRAINT "MonthlyData_monthId_fkey";

-- DropTable
DROP TABLE "Month";

-- DropTable
DROP TABLE "MonthlyData";

-- CreateTable
CREATE TABLE "MonthlyEmissions" (
    "id" SERIAL NOT NULL,
    "month" TEXT NOT NULL,
    "emissions_january" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_february" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_march" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_april" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_may" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_june" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_july" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_august" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_september" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_october" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_november" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "emissions_december" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_january" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_february" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_march" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_april" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_may" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_june" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_july" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_august" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_september" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_october" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_november" DECIMAL(65,30) NOT NULL DEFAULT 0,
    "removals_december" DECIMAL(65,30) NOT NULL DEFAULT 0,

    CONSTRAINT "MonthlyEmissions_pkey" PRIMARY KEY ("id")
);
