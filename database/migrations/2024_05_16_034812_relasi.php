<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('transaksis', function (Blueprint $table) {
            $table->foreign('pembeli_id')->references('id')->on('pembelis')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')
                ->onUpdate('cascade')->onDelete('cascade');
        });



        Schema::table('detiltransaksis', function (Blueprint $table) {

            $table->foreign('transaksi_id')->references('id')->on('transaksis')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->foreign('kayu_id')->references('id')->on('kayus')
                ->onUpdate('cascade')->onDelete('cascade');
        });

        //
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('transaksis', function (Blueprint $table) {
            $table->dropForeign('transaksis_pembeli_id_foreign');
        });

        Schema::table('transaksis', function (Blueprint $table) {
            $table->dropIndex('transaksis_pembeli_id_foreign');
        });

        Schema::table('transaksis', function (Blueprint $table) {
            $table->dropForeign('transaksis_user_id_foreign');
        });

        Schema::table('transaksis', function (Blueprint $table) {
            $table->dropIndex('transaksis_user_id_foreign');
        });

        Schema::dropIfExists('transaksis');




        Schema::table('detiltransaksis', function (Blueprint $table) {
            $table->dropForeign('detiltransaksis_transaksi_id_foreign');
        });

        Schema::table('detiltransaksis', function (Blueprint $table) {
            $table->dropIndex('detiltransaksis_transaksi_id_foreign');
        });

        Schema::table('detiltransaksis', function (Blueprint $table) {
            $table->dropForeign('detiltransaksis_kayu_id_foreign');
        });

        Schema::table('detiltransaksis', function (Blueprint $table) {
            $table->dropIndex('detiltransaksis_kayu_id_foreign');
        });

        Schema::dropIfExists('detiltransaksis');
    }
};

        //


