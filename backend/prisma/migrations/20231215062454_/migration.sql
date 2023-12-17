/*
  Warnings:

  - A unique constraint covering the columns `[peddlerId]` on the table `Products` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `peddlerId` to the `Products` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Products" ADD COLUMN     "peddlerId" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Products_peddlerId_key" ON "Products"("peddlerId");

-- AddForeignKey
ALTER TABLE "Products" ADD CONSTRAINT "Products_peddlerId_fkey" FOREIGN KEY ("peddlerId") REFERENCES "Peddler"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
