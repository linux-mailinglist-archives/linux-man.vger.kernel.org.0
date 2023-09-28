Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE0A7B1D3E
	for <lists+linux-man@lfdr.de>; Thu, 28 Sep 2023 15:03:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbjI1NDa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Sep 2023 09:03:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232605AbjI1ND3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Sep 2023 09:03:29 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F01B1A6
        for <linux-man@vger.kernel.org>; Thu, 28 Sep 2023 06:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695906118;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=mK7muDvbuwqZAV3QEAYNGQadrKd1oX00byk/Uab1QWg=;
        b=WeRf6N1YORzRn3EcOwBf5kfaMNsn3IbLibu2Gt6iouaDv/3a7ahmVyH2nCiVIRxGEMbSaU
        zXTNtZd3kscRou82Ogo8qJPqAfvjlGGxnSsiHLDyWS/ZWUZEVZd4vZPk8ezsXQjFOwZOSh
        u9PuTK0CRDpFNM1nNokd1k/pAALIrvY=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-7-odKYfihzNjSRxYAJzCIv1A-1; Thu, 28 Sep 2023 09:01:56 -0400
X-MC-Unique: odKYfihzNjSRxYAJzCIv1A-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-99c8bbc902eso1134549866b.1
        for <linux-man@vger.kernel.org>; Thu, 28 Sep 2023 06:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695906114; x=1696510914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mK7muDvbuwqZAV3QEAYNGQadrKd1oX00byk/Uab1QWg=;
        b=SFDPp60txeP6JdesZQ5pcsOAsawIUaJSCln0HT5dnu+njIGN56GCWgkiDz2W+JAmUE
         UmbytHh5czD9vvYjxro+x7ict0V9sTnooR5yfeczk7hTv4/Wtdkb7fkFlYfN+OMzsot2
         VzHlWVbFKhwSlWaHaj8jVvLWPgErkYhNWAZ6BPsxR9uj+9jPwVBtv7xgqFU/GbxcJh7D
         i96qwm3qX8weR/fR3ISgZwLclwTdzU3iQdqT3MGvUD0eez7lRvbqzW+c9AesJQ3/siW4
         xEBwNvZ6AbRVh5R56Sqz49HBqdLIQxGKryLbT1ggR3GOITeZ/4UDvvdzmOkM9GgXxBY3
         5YBw==
X-Gm-Message-State: AOJu0YwHDfQuhhIAIeF9kx/UGw/MJKuddA+vwDSCMMBFo8gNrmj2r55b
        6E2YLZU0qinxWmbTVndX8IZ+v73XlgdhfsMCgIc9Fv4zC+l9Nvpsvjo8IlMCt5G4hdVss/kR/Vw
        XzXBjET6dG33Q8WXe6v1j
X-Received: by 2002:a17:906:319a:b0:9ae:7943:b0ff with SMTP id 26-20020a170906319a00b009ae7943b0ffmr1409855ejy.27.1695906114324;
        Thu, 28 Sep 2023 06:01:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJjQiIjJVuDS3g32mRy//SH9vwKSEPCf6FjkZoTcZfx77rovjUrCRFJp0QcgV0Zb3CqzJbMg==
X-Received: by 2002:a17:906:319a:b0:9ae:7943:b0ff with SMTP id 26-20020a170906319a00b009ae7943b0ffmr1409778ejy.27.1695906113300;
        Thu, 28 Sep 2023 06:01:53 -0700 (PDT)
Received: from maszat.piliscsaba.szeredi.hu (94-21-53-31.pool.digikabel.hu. [94.21.53.31])
        by smtp.gmail.com with ESMTPSA id v6-20020a170906380600b0099c53c4407dsm10784863ejc.78.2023.09.28.06.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 06:01:52 -0700 (PDT)
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
Subject: [PATCH v3 2/4] namespace: extract show_path() helper
Date:   Thu, 28 Sep 2023 15:01:44 +0200
Message-ID: <20230928130147.564503-3-mszeredi@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928130147.564503-1-mszeredi@redhat.com>
References: <20230928130147.564503-1-mszeredi@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To be used by the statmount(2) syscall as well.

Signed-off-by: Miklos Szeredi <mszeredi@redhat.com>
---
 fs/internal.h       |  2 ++
 fs/namespace.c      |  9 +++++++++
 fs/proc_namespace.c | 10 +++-------
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/fs/internal.h b/fs/internal.h
index d64ae03998cc..0c4f4cf2ff5a 100644
--- a/fs/internal.h
+++ b/fs/internal.h
@@ -83,6 +83,8 @@ int path_mount(const char *dev_name, struct path *path,
 		const char *type_page, unsigned long flags, void *data_page);
 int path_umount(struct path *path, int flags);
 
+int show_path(struct seq_file *m, struct dentry *root);
+
 /*
  * fs_struct.c
  */
diff --git a/fs/namespace.c b/fs/namespace.c
index e02bc5f41c7b..c3a41200fe70 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -4678,6 +4678,15 @@ SYSCALL_DEFINE5(mount_setattr, int, dfd, const char __user *, path,
 	return err;
 }
 
+int show_path(struct seq_file *m, struct dentry *root)
+{
+	if (root->d_sb->s_op->show_path)
+		return root->d_sb->s_op->show_path(m, root);
+
+	seq_dentry(m, root, " \t\n\\");
+	return 0;
+}
+
 static void __init init_mount_tree(void)
 {
 	struct vfsmount *mnt;
diff --git a/fs/proc_namespace.c b/fs/proc_namespace.c
index 250eb5bf7b52..5638ad419f52 100644
--- a/fs/proc_namespace.c
+++ b/fs/proc_namespace.c
@@ -142,13 +142,9 @@ static int show_mountinfo(struct seq_file *m, struct vfsmount *mnt)
 
 	seq_printf(m, "%i %i %u:%u ", r->mnt_id, r->mnt_parent->mnt_id,
 		   MAJOR(sb->s_dev), MINOR(sb->s_dev));
-	if (sb->s_op->show_path) {
-		err = sb->s_op->show_path(m, mnt->mnt_root);
-		if (err)
-			goto out;
-	} else {
-		seq_dentry(m, mnt->mnt_root, " \t\n\\");
-	}
+	err = show_path(m, mnt->mnt_root);
+	if (err)
+		goto out;
 	seq_putc(m, ' ');
 
 	/* mountpoints outside of chroot jail will give SEQ_SKIP on this */
-- 
2.41.0

