-- CreateTable
CREATE TABLE "DadosHistorico" (
    "id" SERIAL NOT NULL,
    "ano" INTEGER NOT NULL,
    "valor" DOUBLE PRECISION NOT NULL,
    "escopos" TEXT NOT NULL,
    "empresa" TEXT NOT NULL,

    CONSTRAINT "DadosHistorico_pkey" PRIMARY KEY ("id")
);
