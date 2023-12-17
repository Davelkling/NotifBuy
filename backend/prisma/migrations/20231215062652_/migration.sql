/*
  Warnings:

  - You are about to drop the `Products` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Products" DROP CONSTRAINT "Products_peddlerId_fkey";

-- DropTable
DROP TABLE "Products";

-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "peddlerId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_key" ON "Product"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Product_peddlerId_key" ON "Product"("peddlerId");

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_peddlerId_fkey" FOREIGN KEY ("peddlerId") REFERENCES "Peddler"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
