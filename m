Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3A1231AE6B
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:11:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbhBMXLY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbhBMXLX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:23 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A805FC061786
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l12so4294245wry.2
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bkUZBRz3SmA3IJBi4OPybldLlj5FTzoQteUW3axQaWM=;
        b=ZWOy+3sGBe1i8hHYYzJqUkrueJoZ4yx8dDRLFHnQSbdFWRXxKklixsZi3EX6nMsbfE
         BEuau9+bF016z4PPe3QrZpvf/lob0Enw2b+xxa2rhRVOX+A8t9iZ8Ln9rsgBlo3glFqx
         rpJ7MY0nfCvwAGt/JSMr9ufdGD+RmAh+K26BEjqm1mrd8BK3tZHujem4TWId+H/8ge0J
         1lkR2mUV3R0pN/ZL0sV0U9cu/8r5JbHQJMILfSIEh4ebl3yw/B02MvbtZ5mM96TnPPa4
         fvJPBb+RPCQtDnVudjw6vvvqhIIPi7v00tH7Vif/iSjOU0H7SJHtqW8rf/9GM/XuiKuG
         7BXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bkUZBRz3SmA3IJBi4OPybldLlj5FTzoQteUW3axQaWM=;
        b=e1YZl5dv3UIK/gR4sk7vMQi6R1rMvk8VCkLi/OqvIley+noliwsPblerqyNmp69BM9
         hsocdk2GDxr1+B5eS58CVl6Cx+ocKhOh1Wn4271mOIG9+vrEUdIZ1Tjdsn2HKJxYUe/R
         cAUvivYY1MQ6WP45Ga05o9FQO00lxj27afxAOQ4xz08ZY/oUNK/4l7/AsrtclUK2MZkA
         SvRHB4So5sTuYPzaHSL9NDg9xzMV144rMZBiu4SrENQsWoXRMllWJwEH9t/90ghUqXKM
         tcMlL5md7ZDgkD4YVWKQKJwD7l1UHXaSWxhLMrkpnuWm+lA+WfOP/gakUYUDab8QEUR/
         9imw==
X-Gm-Message-State: AOAM530IvW/6WKAlQImMZbfG7bleIgyZdPo2Usk4qNwlvIYCstGXw49f
        dtSGTtpocnpaFwOTNYpaH2k=
X-Google-Smtp-Source: ABdhPJysEL2kpW9ovPgRBAgYtSEplHVoxlQLXINdXMIE95B4sQ6F6M5lscBqE5+jobhYbotLEetUDw==
X-Received: by 2002:adf:ea48:: with SMTP id j8mr10961787wrn.197.1613257840667;
        Sat, 13 Feb 2021 15:10:40 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 03/14] getsockopt.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:13 +0100
Message-Id: <20210213231024.440020-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of getsockopt()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype getsockopt
socket/sys/socket.h:208:
extern int getsockopt (int __fd, int __level, int __optname,
		       void *__restrict __optval,
		       socklen_t *__restrict __optlen) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getsockopt.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/getsockopt.2 b/man2/getsockopt.2
index 9e33b2d4f..9b2c6cc3d 100644
--- a/man2/getsockopt.2
+++ b/man2/getsockopt.2
@@ -50,7 +50,7 @@ getsockopt, setsockopt \- get and set options on sockets
 .B #include <sys/socket.h>
 .PP
 .BI "int getsockopt(int " sockfd ", int " level ", int " optname ,
-.BI "               void *" optval ", socklen_t *" optlen );
+.BI "               void *restrict " optval ", socklen_t *restrict " optlen );
 .BI "int setsockopt(int " sockfd ", int " level ", int " optname ,
 .BI "               const void *" optval ", socklen_t " optlen );
 .fi
-- 
2.30.0

