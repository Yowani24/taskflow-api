/*
  Warnings:

  - You are about to drop the column `emissions_april` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_august` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_december` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_february` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_january` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_july` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_june` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_march` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_may` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_november` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_october` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `emissions_september` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_april` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_august` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_december` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_february` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_january` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_july` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_june` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_march` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_may` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_november` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_october` on the `YearlyEmissions` table. All the data in the column will be lost.
  - You are about to drop the column `removals_september` on the `YearlyEmissions` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "YearlyEmissions" DROP COLUMN "emissions_april",
DROP COLUMN "emissions_august",
DROP COLUMN "emissions_december",
DROP COLUMN "emissions_february",
DROP COLUMN "emissions_january",
DROP COLUMN "emissions_july",
DROP COLUMN "emissions_june",
DROP COLUMN "emissions_march",
DROP COLUMN "emissions_may",
DROP COLUMN "emissions_november",
DROP COLUMN "emissions_october",
DROP COLUMN "emissions_september",
DROP COLUMN "removals_april",
DROP COLUMN "removals_august",
DROP COLUMN "removals_december",
DROP COLUMN "removals_february",
DROP COLUMN "removals_january",
DROP COLUMN "removals_july",
DROP COLUMN "removals_june",
DROP COLUMN "removals_march",
DROP COLUMN "removals_may",
DROP COLUMN "removals_november",
DROP COLUMN "removals_october",
DROP COLUMN "removals_september",
ADD COLUMN     "emissions_abril" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_agosto" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_dezembro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_fevereiro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_janeiro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_julho" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_junho" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_maio" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_marco" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_novembro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_outubro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "emissions_setembro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_abril" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_agosto" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_dezembro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_fevereiro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_janeiro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_julho" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_junho" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_maio" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_marco" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_novembro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_outubro" DECIMAL(65,30) NOT NULL DEFAULT 0,
ADD COLUMN     "removals_setembro" DECIMAL(65,30) NOT NULL DEFAULT 0;
