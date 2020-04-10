Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B1051A4551
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2020 12:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbgDJKll (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Apr 2020 06:41:41 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:35758 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbgDJKll (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Apr 2020 06:41:41 -0400
Received: by mail-wr1-f65.google.com with SMTP id g3so1899701wrx.2
        for <linux-man@vger.kernel.org>; Fri, 10 Apr 2020 03:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brauner.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6QLdzKbUmCzenyVGneMFCV9bfKtlfDEGB2GO2r8hJWg=;
        b=RlDv/0oQA02ldjND6rBeHExH4DYeBwroQFO6VsXB7oPjn82aw7DE07jOJwamw79Dfw
         1QDYIJHtvE/Jz7D2sYlCZbKWpcYNbC66gpHtKKIgkZmE2trjcI6BzQZWIoMOCaFgEANN
         JFDUF2l696jXsGCPituOu4pCIg5LhTtzHohm0yYuQQ9niuDn0FTSOu0L2PJuM8kOtNs2
         glB3izUnxmDMea8RJxv2VXkUHVwUjLJei9XBOhihEWGkWvDFwvcJrZmlYEUaV5S3JQlp
         xy4spya55b7BFw5sZB+h11dt4sMgBOadYNHoGxRXu4dwA1jAq/nFyot69yPGoXllofPl
         Ky8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6QLdzKbUmCzenyVGneMFCV9bfKtlfDEGB2GO2r8hJWg=;
        b=CFe0en5vGb6Zeg2FnDQHZuKTieamsUbJciddtJbbtuKmysLZyhl/ioapxN8IK5Inc7
         FmL9tfSpSgxtcIdKzt2BrKQqX6Io1NAxIWR0iP5sktS80EDYSVtGT7xYh0omIldPwury
         rO31LbisTS0nbzUTwU0+E/Dc4ag7+0NIXDAa595pu3arjBb7Nr1uWqd067PHVyjnqI0H
         Qgerbo29RSFV8sfKC/2RwKIgP7O7N6E7Y1QkhfnSxIPJiIVbO1QkcRDo9tquGjbTHqSC
         dIdHsTuq/J2Ouo9MyyEmYZDA5nZSaPR+DevaTHc/PXvcSXFryVn4U2idro6PDUoZFhp2
         KSTQ==
X-Gm-Message-State: AGi0PubnjyA3MBz9S1Q4v1LUxbcIdmW7Ps5jk7THw+0/slJJyemofGeB
        vn/4JtFhQKfdEl8hLPtfn8GWRg==
X-Google-Smtp-Source: APiQypJnyYw9Xx4D1lPATDBy+l4SIGQVgf2MNMD0X/0FRhYmNKG+qjDW7935nGlXVwfSRsc7tlplHg==
X-Received: by 2002:a5d:5045:: with SMTP id h5mr3844621wrt.86.1586515298588;
        Fri, 10 Apr 2020 03:41:38 -0700 (PDT)
Received: from wittgenstein.fritz.box (ip5f5bd698.dynamic.kabel-deutschland.de. [95.91.214.152])
        by smtp.gmail.com with ESMTPSA id u16sm2345546wro.23.2020.04.10.03.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 03:41:37 -0700 (PDT)
From:   Christian Brauner <christian@brauner.io>
To:     mtk.manpages@gmail.com
Cc:     cgroups@vger.kernel.org, christian.brauner@ubuntu.com,
        linux-api@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, oleg@redhat.com, tj@kernel.org
Subject: [PATCH] clone.2: Document CLONE_INTO_CGROUP
Date:   Fri, 10 Apr 2020 12:41:32 +0200
Message-Id: <20200410104132.294639-1-christian@brauner.io>
X-Mailer: git-send-email 2.26.0
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
 man2/clone.2 | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 39cec4c86..8d9aa9f99 100644
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
@@ -448,6 +449,25 @@ Specifying this flag together with
 .B CLONE_SIGHAND
 is nonsensical and disallowed.
 .TP
+.BR CLONE_INTO_CGROUP " (since Linux 5.7)"
+.\" commit ef2c41cf38a7559bbf91af42d5b6a4429db8fc68
+By default, the child process will belong to the same cgroup as its parent.
+If this flag is specified the child process will be created in a
+different cgroup than its parent.
+
+When using
+.RB clone3 ()
+the target cgroup can be specified by setting the
+.I cl_args.cgroup
+member to the file descriptor of the target cgroup. The cgroup file
+descriptor must refer to a cgroup in a cgroup v2 hierarchy
+(see
+.BR cgroup (2)).
+
+Note that all usual cgroup v2 process migration restrictions apply. See
+.BR cgroup (2)
+for detailed information.
+.TP
 .BR CLONE_DETACHED " (historical)"
 For a while (during the Linux 2.5 development series)
 .\" added in 2.5.32; removed in 2.6.0-test4

base-commit: ff5de6ecc4338f4b62c3459c99bd1a3a75ee2808
-- 
2.26.0

