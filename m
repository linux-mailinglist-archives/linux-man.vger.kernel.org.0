Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 933B93537E4
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbhDDL7m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbhDDL7m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:42 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 395AFC0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:36 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b9so722271wrs.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kJYH9tpAtDL4EhejYbDB+JwVoNY7pJbsuEmcLrJV8zQ=;
        b=XhRUXeKgPO4VcClhu/j2htaza2ezPc1y5dQXzInszp9cvNNx5hpmMj2y72BVbQzNJQ
         psaqvOUcmV2Znlt2nImBWlTA+xz4ssg0mDpaGPtSJihwnw84TxXPudHc2ewIXodAW5Pb
         +P5bBFS226ICMTOYIOoXOqBBgY7xMw567XAGtyWTHk0pWZjd2ePa5ZO8qWwp2GDCWIjt
         F3XGE007LnoEgwuCakq5ha26WXnKamnGr1VSR55dBHdO99LlpwzzuUDE5/MHdrfTL82s
         idPosCX+/avJtP5vbzMrot8+xCQIDuLyaJRPpVco3Rcwxwh5nPul8rbytQf6rt9AGiKT
         RbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kJYH9tpAtDL4EhejYbDB+JwVoNY7pJbsuEmcLrJV8zQ=;
        b=tgdAzawnH7ywtAtHLG0XDpXQSgC5f1pGEYP20c904PDg/r5VMi7EnIx8XcWPvIeCdK
         tGWghmCpgKehU5LnTIXuxUOpOTkt9m9icZzw7tRLRWudU/RFW3+fiH0jgO81PQ/Gw6Sb
         FBxQstR8FyRkJ97q/R2nWXm4iNNwH8+9ZXD/VgXZrwZUjFqTvOqIrZ0PUpl7jGEV+7Aw
         ozqq/Fwr0MbJMF+WgcEhEljJNNvblazhjTLnWNL4tG7YkIsWGCG4jrLagRvFeltdxhd8
         dXRDt/qSk3KF+0kr2wbkGEmTgkcIKGO+HN2mtKz8Ve0aF3L+siFV0JtDZR+QndO4GTXA
         +WTQ==
X-Gm-Message-State: AOAM533SzxquW+y+TIPZSFbn6VRsue7X9ptNOfq6dElixs7aw6ZsaVA9
        k6vB9fCpf11ZXfPuXK7oBa5yluEdb0s=
X-Google-Smtp-Source: ABdhPJyuzyvtipAGjyOeop94s+/iBnybm0vdNzYMhZv9V6UXWf0+O95ymUunVwlIqbbB9VBXxxo2ZQ==
X-Received: by 2002:a5d:5152:: with SMTP id u18mr5972825wrt.289.1617537575077;
        Sun, 04 Apr 2021 04:59:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 03/35] system_data_types.7: Add 'socklen_t'
Date:   Sun,  4 Apr 2021 13:58:16 +0200
Message-Id: <20210404115847.78166-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 93c723a2f..e038aab1e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1251,6 +1251,34 @@ POSIX.1-2001 and later.
 .BR getsockname (2),
 .BR socket (2)
 .RE
+.\"------------------------------------- socklen_t --------------------/
+.TP
+.I socklen_t
+.RS
+.IR Include :
+.IR <sys/socket.h> .
+Alternatively,
+.IR <netdb.h> .
+.PP
+Describes the length of a socket address.
+According to POSIX,
+this shall be an integer type of at least 32 bits.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR accept (2),
+.BR bind (2),
+.BR connect (2),
+.BR gethostbyaddr (2),
+.BR getnameinfo (2),
+.BR socket (2)
+.PP
+See also the
+.I sockaddr
+structure in this page.
+.RE
 .\"------------------------------------- ssize_t ----------------------/
 .TP
 .I ssize_t
-- 
2.31.0

