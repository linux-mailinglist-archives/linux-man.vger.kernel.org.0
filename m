Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC3293346D0
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233057AbhCJScg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233065AbhCJScO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:14 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE2CC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:14 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id u14so24450332wri.3
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XCSDsp2q5xXoeQUsWa0c7bkMZ/kpYfI6jEnJNon/iaY=;
        b=rflTr/IZsJnarqXifdAaG+S/iKGVjQCMaInd/Tfzu8FwbO6G7LjUPwRU+m98NwDRZg
         5jka60/VEDgEcXxQ7+FPpcFeDiP6bmPkkuwS1xAf9OqNoKiZz3RmxYn56cM0DIwQHOoK
         nmA3+m+queVuorxm0GywLNqYvu179q5eOLIH0FweJqPVEOY+cWjjh1/PjSmnqhrJaSqt
         EZLlncwJSkeZeUPPF2v1WM5UmGN5CC7XmAhEe0O2NePk4qfwmIT/BN/71wdjHawX4QfK
         u3PO9sKPO2tls7swN9PcP/fKGjHNrSyveO6talj54SwF8JnGvHrrLUxujK5mZ6n0wYdR
         IMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XCSDsp2q5xXoeQUsWa0c7bkMZ/kpYfI6jEnJNon/iaY=;
        b=T/LWzV1zFUAPt4p9rsvq2aF56hv7+Go5QvKPQaDlJYCg9RI3YJjUlB3id59A22OzQQ
         4VZtMScJxFi9mv2JYlrGUom7t3NC7YsNHAYfj7oU9eHfwzdhSIZa+qWRAvT4BMxyIDCw
         BMgLr+FkcX+tdQsX36phs1DznglptKXOjl2id42HFoCK5Ew0sT/DC39/Gr4THqpr6MU3
         UvipslNdxH6FNWqNrjZzHkJkAvv4gDr5ZWkPczu7ezjGb4QwsmzrRAZzHdLTij3Z3q2l
         rLTFo1JIddeNzXRw/kpspIvXIHol/mxObG4ePBQzoDmYaRPX8eprW/+RMZC/6x+kckaC
         y7Ug==
X-Gm-Message-State: AOAM531JjXTymNt8XFqzJL81PPHxFvKteyXeSLe2sWv9SKlovphgKnoK
        Hkpt8pSFeADtaq5kcio5+W0=
X-Google-Smtp-Source: ABdhPJxFK+knhX+ENxqJsN+g/RId1RD1cxTYdPA0P9GIv4dWM0QwHP1eGierKCWQiYYyfMa+px2Jgw==
X-Received: by 2002:adf:fb05:: with SMTP id c5mr4999718wrr.302.1615401133035;
        Wed, 10 Mar 2021 10:32:13 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:12 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/24] statvfs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:34 +0100
Message-Id: <20210310183149.194717-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in statvfs().
Let's use it here too.

.../glibc$ grep_glibc_prototype statvfs
io/sys/statvfs.h:51:
extern int statvfs (const char *__restrict __file,
		    struct statvfs *__restrict __buf)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/statvfs.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/statvfs.3 b/man3/statvfs.3
index 4f2788614..6fbfdc719 100644
--- a/man3/statvfs.3
+++ b/man3/statvfs.3
@@ -34,7 +34,8 @@ statvfs, fstatvfs \- get filesystem statistics
 .nf
 .B #include <sys/statvfs.h>
 .PP
-.BI "int statvfs(const char *" path ", struct statvfs *" buf );
+.BI "int statvfs(const char *restrict " path \
+", struct statvfs *restrict " buf );
 .BI "int fstatvfs(int " fd ", struct statvfs *" buf );
 .fi
 .SH DESCRIPTION
-- 
2.30.1.721.g45526154a5

