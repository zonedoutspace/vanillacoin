
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcoin

LOCAL_CFLAGS := -std=c++11

LOCAL_CPPFLAGS := \
	-fpermissive \
	-w \
	-fexceptions \
	-frtti \
	-D__ANDROID__ \
	-D__arm_ \
	-D__GLIBC__ \
	-D_GLIBCXX_HAS_GTHREADS \
	-D_GLIBCXX_USE_C99_STDINT_TR1 \
	-DBOOST_ASIO_DISABLE_STD_ATOMIC

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
	./include \
	./deps/boost \
	./deps/db/build_unix \
	./deps/openssl/include

LOCAL_SRC_FILES := \
	../src/account.cpp \
	../src/accounting_entry.cpp \
	../src/address_manager.cpp \
	../src/address.cpp \
	../src/alert_manager.cpp \
	../src/alert_unsigned.cpp \
	../src/alert.cpp \
	../src/base58.cpp \
	../src/big_number.cpp \
	../src/block_index_disk.cpp \
	../src/block_index.cpp \
	../src/block_locator.cpp \
	../src/block.cpp \
	../src/checkpoint_sync_unsigned.cpp \
	../src/checkpoint_sync.cpp \
	../src/checkpoints.cpp \
	../src/configuration.cpp \
	../src/crypter.cpp \
	../src/db_env.cpp \
	../src/db_tx.cpp \
	../src/db_wallet.cpp \
	../src/db.cpp \
	../src/file.cpp \
	../src/filesystem.cpp \
	../src/gateway.cpp \
	../src/globals.cpp \
	../src/hash_scrypt.cpp \
	../src/hash.cpp \
	../src/http_transport.cpp \
	../src/inventory_vector.cpp \
	../src/kernel.cpp \
	../src/key_pool.cpp \
	../src/key_public.cpp \
	../src/key_reserved.cpp \
	../src/key_store_basic.cpp \
	../src/key_store_crypto.cpp \
	../src/key_wallet_master.cpp \
	../src/key_wallet.cpp \
	../src/key.cpp \
	../src/message.cpp \
	../src/mining_manager.cpp \
	../src/mining.cpp \
	../src/nat_pmp_client.cpp \
	../src/nat_pmp.cpp \
	../src/pbkdf2.cpp \
	../src/point_in.cpp \
	../src/point_out.cpp \
	../src/reward.cpp \
	../src/ripemd160.cpp \
	../src/rpc_connection.cpp \
	../src/rpc_json_parser.cpp \
	../src/rpc_manager.cpp \
	../src/rpc_server.cpp \
	../src/rpc_transport.cpp \
	../src/script.cpp \
	../src/secret.cpp \
	../src/sha256.cpp \
	../src/signature_cache.cpp \
	../src/stack_impl.cpp \
	../src/stack.cpp \
	../src/status_manager.cpp \
	../src/tcp_acceptor.cpp \
	../src/tcp_connection_manager.cpp \
	../src/tcp_connection.cpp \
	../src/tcp_transport.cpp \
	../src/transaction_in.cpp \
	../src/transaction_index.cpp \
	../src/transaction_merkle.cpp \
	../src/transaction_out.cpp \
	../src/transaction_pool.cpp \
	../src/transaction_position.cpp \
	../src/transaction_wallet.cpp \
	../src/transaction.cpp \
	../src/upnp_client.cpp \
	../src/utility.cpp \
	../src/wallet_manager.cpp \
	../src/wallet.cpp \
	../src/whirlpool.cpp \

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

# To build a static library we must use *some* dependancy.
LOCAL_MODULE := libcoinshared
LOCAL_STATIC_LIBRARIES := libcoin
#
include $(BUILD_SHARED_LIBRARY)
