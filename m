Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90F077B1D36
	for <lists+linux-man@lfdr.de>; Thu, 28 Sep 2023 15:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232596AbjI1NCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Sep 2023 09:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232585AbjI1NCp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Sep 2023 09:02:45 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12F1E1A3
        for <linux-man@vger.kernel.org>; Thu, 28 Sep 2023 06:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695906115;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=SWtEP6obDhInT9MlruX+BXNPufUR3rJf8VMpuhorm70=;
        b=fh78fpIMcBy1zXbGkflppcGWCeCkqFBP0kTxoMqzQlzNIPdhgBj5fJ03//nLT28b1vLbO4
        AQ8e/XNUryLl/bKhg/lusrUCOAVBzigMPBevxC7qPQyGJbSSLv/Vzx2rkxnHyLkdfYhgoP
        3lSxpHy8xKejvrnDS9PBH68d2iAib/Y=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-341-K6GtmuWePHmYQ4c15XktZg-1; Thu, 28 Sep 2023 09:01:53 -0400
X-MC-Unique: K6GtmuWePHmYQ4c15XktZg-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-993d7ca4607so1106675166b.1
        for <linux-man@vger.kernel.org>; Thu, 28 Sep 2023 06:01:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695906112; x=1696510912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SWtEP6obDhInT9MlruX+BXNPufUR3rJf8VMpuhorm70=;
        b=AjdZCVruL2SmNx7VgfqmezryuOnWLauVBHNu58ZQSTgU4sjtpKJ5f9naFDvhZ0An/N
         HBPoXRe+RBm4b0P4e8LI/BLitMFngid/8OLy6L23FAA/iIkBubyBf9B2HHf9ei/wi5zf
         qWRpOyDPwWLhhd95oqgbhQRmtpKVY+X+nIQPnPcjN0lt2kXAJ9mJ+vqI92H1ISgC+ZDR
         mtuI+lK/FvvBjHdPdtdp4gvmnAtgtRu1p8808JjO2pIK/MdwAZwBiTvM5elTjG3aVilm
         7z2oAxalwI39EdDpLebyT8FQH6lVhI7MKdD/XsO4W5KBTEAHcu7WA/gYOo0AuEfwMSOU
         i1bA==
X-Gm-Message-State: AOJu0YxgKHnWzdOCBVUQSEVae7NYkinKo2U/U9Q0whtqHgyWCgH0AktN
        mnGYnhGS9+gLJTivnpGnogTe7wYctemcvA1Kuqo4GxBhdaawHQArT4rV09r5TJxjtyRSeAdMHJL
        vio9dbOABVPDCNU8kgTUF
X-Received: by 2002:a17:907:7886:b0:9ae:3a68:93e8 with SMTP id ku6-20020a170907788600b009ae3a6893e8mr1305772ejc.14.1695906111911;
        Thu, 28 Sep 2023 06:01:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEz3pbGNaGsGXLxS4Ox+9nimNMZDSlGuOBBQFpgwBh7j/cbtDjr7ZFe8TndKXVmt+ywY7dOTA==
X-Received: by 2002:a17:907:7886:b0:9ae:3a68:93e8 with SMTP id ku6-20020a170907788600b009ae3a6893e8mr1305753ejc.14.1695906111560;
        Thu, 28 Sep 2023 06:01:51 -0700 (PDT)
Received: from maszat.piliscsaba.szeredi.hu (94-21-53-31.pool.digikabel.hu. [94.21.53.31])
        by smtp.gmail.com with ESMTPSA id v6-20020a170906380600b0099c53c4407dsm10784863ejc.78.2023.09.28.06.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 06:01:50 -0700 (PDT)
From:   Miklos Szeredi <mszeredi@redhat.com>
To:     linux-fsdevel@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-api@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        Karel Zak <kzak@redhat.com>, Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 1/4] add unique mount ID
Date:   Thu, 28 Sep 2023 15:01:43 +0200
Message-ID: <20230928130147.564503-2-mszeredi@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928130147.564503-1-mszeredi@redhat.com>
References: <20230928130147.564503-1-mszeredi@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If a mount is released then its mnt_id can immediately be reused.  This is
bad news for user interfaces that want to uniquely identify a mount.

Implementing a unique mount ID is trivial (use a 64bit counter).
Unfortunately userspace assumes 32bit size and would overflow after the
counter reaches 2^32.

Introduce a new 64bit ID alongside the old one.  Initialize the counter to
2^32, this guarantees that the old and new IDs are never mixed up.

Signed-off-by: Miklos Szeredi <mszeredi@redhat.com>
---
 fs/mount.h                | 3 ++-
 fs/namespace.c            | 4 ++++
 fs/stat.c                 | 9 +++++++--
 include/uapi/linux/stat.h | 1 +
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fs/mount.h b/fs/mount.h
index 130c07c2f8d2..a14f762b3f29 100644
--- a/fs/mount.h
+++ b/fs/mount.h
@@ -72,7 +72,8 @@ struct mount {
 	struct fsnotify_mark_connector __rcu *mnt_fsnotify_marks;
 	__u32 mnt_fsnotify_mask;
 #endif
-	int mnt_id;			/* mount identifier */
+	int mnt_id;			/* mount identifier, reused */
+	u64 mnt_id_unique;		/* mount ID unique until reboot */
 	int mnt_group_id;		/* peer group identifier */
 	int mnt_expiry_mark;		/* true if marked for expiry */
 	struct hlist_head mnt_pins;
diff --git a/fs/namespace.c b/fs/namespace.c
index e157efc54023..e02bc5f41c7b 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -68,6 +68,9 @@ static u64 event;
 static DEFINE_IDA(mnt_id_ida);
 static DEFINE_IDA(mnt_group_ida);
 
+/* Don't allow confusion with old 32bit mount ID */
+static atomic64_t mnt_id_ctr = ATOMIC64_INIT(1ULL << 32);
+
 static struct hlist_head *mount_hashtable __read_mostly;
 static struct hlist_head *mountpoint_hashtable __read_mostly;
 static struct kmem_cache *mnt_cache __read_mostly;
@@ -131,6 +134,7 @@ static int mnt_alloc_id(struct mount *mnt)
 	if (res < 0)
 		return res;
 	mnt->mnt_id = res;
+	mnt->mnt_id_unique = atomic64_inc_return(&mnt_id_ctr);
 	return 0;
 }
 
diff --git a/fs/stat.c b/fs/stat.c
index 6e60389d6a15..e61e0172e191 100644
--- a/fs/stat.c
+++ b/fs/stat.c
@@ -280,8 +280,13 @@ static int vfs_statx(int dfd, struct filename *filename, int flags,
 
 	error = vfs_getattr(&path, stat, request_mask, flags);
 
-	stat->mnt_id = real_mount(path.mnt)->mnt_id;
-	stat->result_mask |= STATX_MNT_ID;
+	if (request_mask & STATX_MNT_ID_UNIQUE) {
+		stat->mnt_id = real_mount(path.mnt)->mnt_id_unique;
+		stat->result_mask |= STATX_MNT_ID_UNIQUE;
+	} else {
+		stat->mnt_id = real_mount(path.mnt)->mnt_id;
+		stat->result_mask |= STATX_MNT_ID;
+	}
 
 	if (path.mnt->mnt_root == path.dentry)
 		stat->attributes |= STATX_ATTR_MOUNT_ROOT;
diff --git a/include/uapi/linux/stat.h b/include/uapi/linux/stat.h
index 7cab2c65d3d7..2f2ee82d5517 100644
--- a/include/uapi/linux/stat.h
+++ b/include/uapi/linux/stat.h
@@ -154,6 +154,7 @@ struct statx {
 #define STATX_BTIME		0x00000800U	/* Want/got stx_btime */
 #define STATX_MNT_ID		0x00001000U	/* Got stx_mnt_id */
 #define STATX_DIOALIGN		0x00002000U	/* Want/got direct I/O alignment info */
+#define STATX_MNT_ID_UNIQUE	0x00004000U	/* Want/got extended stx_mount_id */
 
 #define STATX__RESERVED		0x80000000U	/* Reserved for future struct statx expansion */
 
-- 
2.41.0

