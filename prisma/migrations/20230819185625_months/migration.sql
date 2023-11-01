/*
  Warnings:

  - The primary key for the `YearlyEmissions` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "YearlyEmissions" DROP CONSTRAINT "YearlyEmissions_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "YearlyEmissions_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "YearlyEmissions_id_seq";
