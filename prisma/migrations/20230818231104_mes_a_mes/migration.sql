-- CreateTable
CREATE TABLE "Month" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Month_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MonthlyData" (
    "id" SERIAL NOT NULL,
    "monthId" INTEGER NOT NULL,
    "emissions" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "removals" DOUBLE PRECISION NOT NULL DEFAULT 0,

    CONSTRAINT "MonthlyData_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "MonthlyData" ADD CONSTRAINT "MonthlyData_monthId_fkey" FOREIGN KEY ("monthId") REFERENCES "Month"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
