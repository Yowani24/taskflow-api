/*
  Warnings:

  - You are about to drop the `MonthlyEmissions` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "MonthlyEmissions";

-- CreateTable
CREATE TABLE "MonthlyData" (
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

    CONSTRAINT "MonthlyData_pkey" PRIMARY KEY ("id")
);
