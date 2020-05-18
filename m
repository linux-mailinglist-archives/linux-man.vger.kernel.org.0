Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1471D855B
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2020 20:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731564AbgERSSX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 May 2020 14:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731561AbgERRz4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 May 2020 13:55:56 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F8BC05BD0B
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 10:55:56 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k12so396857wmj.3
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 10:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brauner.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bAdNBlANOE194kXAkMzs8wkwLbdmMZKVzS7nRAabSx0=;
        b=gzTIjf10gpIkG8zPGdhSboUtjnxE2wdlyz+lcTb6y+vDqZANzuEWOloXv/+55QJx3P
         Id/QaiwCpZNSFbDSLMi750vq3rM4sB7FtcXIFBDjtjy2r6amW5caSDAaO74p9eR7GQ4V
         GKPquEbSy/LdmHP89ioSUV5vzb6Sx6k0weZMRoHrJJpQ+llJ5Nud8Qh6SaKzJ7h9yO+h
         23wERq3aVksJk/PoeACaB0WtZD5CFPVObYqaIq/xe2qq7LPHezjXlfY7Y0i6AwqnFFCK
         zrwJkcM1+rgKkMNnGz6K9tIQrvurV+dMIBStlFk8C1ucRIddZurStfA/ui5OL38PkMQN
         CSTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bAdNBlANOE194kXAkMzs8wkwLbdmMZKVzS7nRAabSx0=;
        b=NxGYXUO08Ox6s7ICFLDIV/sIswXqirQ0DUTbxpsr9B/jKdKRfs03KtE73FWQeZSvmm
         ffIYQ249uMFsuTjTXNw1gfC0KuJr5WxwaU/cJdwyXzJyuMXA3hUddUy+8QOCAEHJGCMC
         gUIe515fCjL7Rxh9XZqo5x9tplhMbyZ7D1yIOe8ngJ7o+N0R/3M2UPwMKuuMX7Y2r6tm
         0P2iTZtEEYwIsTBuG+3r6u2U+IsE2jL7MsN1RHPTuO7yEqIc0TDS4T884j3RNVIn+VVk
         rkBcasAKdoTb/gq1sN6Kh0JIu+O/oMQ0IepjTkp/TeO3KmPo+gqOzkAdbH3lQB+9UnYB
         wGpA==
X-Gm-Message-State: AOAM530Szt0u4TjfcJLrSOsD6xaBT+/qhSPTJpQPxHszdluzLjiHiY4E
        Ac3B76nVupGrrrZZwfXAwRnvXFM1WXM=
X-Google-Smtp-Source: ABdhPJyVhEVa6wUfN5Iclx7RIJ1MPf7e+9V56eLAnJDuJP2dgTk8ixex8477YXQfniRzR3z2bqxrnQ==
X-Received: by 2002:a1c:7212:: with SMTP id n18mr555920wmc.129.1589824554821;
        Mon, 18 May 2020 10:55:54 -0700 (PDT)
Received: from wittgenstein.fritz.box (ip5f5af183.dynamic.kabel-deutschland.de. [95.90.241.131])
        by smtp.gmail.com with ESMTPSA id w9sm19178579wrc.27.2020.05.18.10.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 10:55:54 -0700 (PDT)
From:   Christian Brauner <christian@brauner.io>
To:     mtk.manpages@gmail.com
Cc:     cgroups@vger.kernel.org, christian.brauner@ubuntu.com,
        linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, oleg@redhat.com, tj@kernel.org
Subject: [PATCH v2] clone.2: Document CLONE_INTO_CGROUP
Date:   Mon, 18 May 2020 19:55:49 +0200
Message-Id: <20200518175549.3400948-1-christian@brauner.io>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKgNAkhL0zCj11LS9vfae872YVeRsxdz20sZWuXdi+UjH21=0g@mail.gmail.com>
References: <CAKgNAkhL0zCj11LS9vfae872YVeRsxdz20sZWuXdi+UjH21=0g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Christian Brauner <christian.brauner@ubuntu.com>

Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
/* v2 */
- Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>:
  - Fix various types and add examples and how to specify the file
    descriptor.
---
 man2/clone.2 | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 8b70b78a4..33594ddc5 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -197,6 +197,7 @@ struct clone_args {
     u64 tls;          /* Location of new TLS */
     u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
     u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
+    u64 cgroup;       /* Target cgroup file descriptor for the child process */
 };
 .EE
 .in
@@ -448,6 +449,48 @@ Specifying this flag together with
 .B CLONE_SIGHAND
 is nonsensical and disallowed.
 .TP
+.BR CLONE_INTO_CGROUP " (since Linux 5.7)"
+.\" commit ef2c41cf38a7559bbf91af42d5b6a4429db8fc68
+By default, the child process will be placed in the same version 2
+cgroup as its parent.
+If this flag is specified the child process will be created in a
+different cgroup than its parent.
+Note, that
+.BR CLONE_INTO_CGROUP
+is limited to version 2 cgroups. To use this feature, callers
+need to raise
+.BR CLONE_INTO_CGROUP
+in
+.I cl_args.flags
+and pass a directory file descriptor (see the
+.BR O_DIRECTORY
+flag for the
+.BR open (2)
+syscall) in the
+.I cl_args.cgroup.
+The caller may also pass an
+.BR O_PATH
+(see
+.BR open (2))
+file descriptor for the target cgroup.
+Note, that all usual version 2 cgroup migration restrictions (see
+.BR cgroups (7)
+for details) apply.
+
+Spawning a process into a cgroup different from the parent's cgroup
+makes it possible for a service manager to directly spawn new
+services into dedicated cgroups. This allows eliminating accounting
+jitter which would be caused by the new process living in the
+parent's cgroup for a short amount of time before being
+moved into the target cgroup. This flag also allows the creation of
+frozen child process by spawning them into a frozen cgroup (see
+.BR cgroups (7)
+for a description of the freezer feature in version 2 cgroups).
+For threaded applications or even thread implementations which
+make use of cgroups to limit individual threads it is possible to
+establish a fixed cgroup layout before spawning each thread
+directly into its target cgroup.
+.TP
 .BR CLONE_DETACHED " (historical)"
 For a while (during the Linux 2.5 development series)
 .\" added in 2.5.32; removed in 2.6.0-test4

base-commit: aa02339ca45030711b42a1af12e3ee3405c1c5c7
-- 
2.26.2

