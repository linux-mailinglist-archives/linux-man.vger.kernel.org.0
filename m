Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A2B3280331
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732694AbgJAPuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732287AbgJAPuG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:50:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E5F2C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:50:06 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s12so6379020wrw.11
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vcW+t6xj9+Dm4yGVPjVNhDwJEHalSJR6T9zUqBAu4Rw=;
        b=nrDUmYBkUjtibMURnRSegjqoWVia4qP2f5r1Obkx3IYC/LHJyCQHJgarlReP9SmTmX
         3AfYKQSmZBGqJaGzJJmybt0Lq/XT2vVkOGNHkjwWXZj3E0uueCYzQdX+D85hI/X6yUik
         fBmeeGuAmfMBwd6OBqY3OV5gp1lZlQezP1AU2zDlONNDGgRH33QStxAj8UYxkwLITW/u
         QEu4xedg3rg5tVfeYxs/Lpy+qCUZPcXTs4VyLYLnt99aaRxQDkzMii2I4cT1EGRnSWHz
         DnDXZ0KBugc1tMazZ41DnZChDrkT5vIJLG1mb3oKlI5cSaMejdPDMX1ROgR+TpI6MLJU
         euBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vcW+t6xj9+Dm4yGVPjVNhDwJEHalSJR6T9zUqBAu4Rw=;
        b=BVAKnUzMvGxCo1DHImkjKgqxrdKSu6KIiaQ/XMgizraIq52ZePeH7TVxaiJqy3S/lI
         Uvhq3GwNhSBywfFOWJCADMYzGFNXNxDfenaxhAahnSutFGbFtxy1OfAhIAWCMimvu6dY
         oQ0Huumvl20yTGhVvhFjuonb7HlX8ZO9jPfA1pWORJW64/6zYkhom6rydD9v8h5MfMK3
         wCIcKVksgzCOOza36s6nvQp2oWNV6CPWLGWE/WfpNOYK7hGZHsHtldbFuDaWav1IOw1G
         GtB/kx4rsRCmx9LHVJZDzJX9KKknwdrKzKiZ1fQ4GatSXA/EdBnZnxgTj/UPOnd4f93E
         idiQ==
X-Gm-Message-State: AOAM53393aGxqbjjhhDFTFw4FdgyTEEMgU5MJQEecvxhRycdwy5ltXXc
        iQ6xlxLb9gEtDbD/Ytq9R3zur1wqJzqTsA==
X-Google-Smtp-Source: ABdhPJwg/JUDQuAPMpnQlxK9ShXzdnvIL21BuoVwwRV5Njhao/aGeME2A+Y+1dFJHy6MT6iYt4sZhg==
X-Received: by 2002:a5d:5090:: with SMTP id a16mr10409341wrt.247.1601567404681;
        Thu, 01 Oct 2020 08:50:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t4sm10019933wrr.26.2020.10.01.08.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 08:50:04 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 1/2] system_data_types.7: Add 'void *'
Date:   Thu,  1 Oct 2020 17:49:46 +0200
Message-Id: <20201001154946.104626-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 47 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e42cf2557..e545aa1a0 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -679,7 +679,6 @@ See also the
 .I uintptr_t
 and
 .I void *
-.\" TODO: Document void *
 types in this page.
 .RE
 .\"------------------------------------- lconv ------------------------/
@@ -1781,7 +1780,6 @@ See also the
 .I intptr_t
 and
 .I void *
-.\" TODO: Document void *
 types in this page.
 .RE
 .\"------------------------------------- va_list ----------------------/
@@ -1815,6 +1813,51 @@ See also:
 .BR va_copy (3),
 .BR va_end (3)
 .RE
+.\"------------------------------------- void * -----------------------/
+.TP
+.I void *
+.RS
+According to the C language standard,
+a pointer to any object type may be converted to a pointer to
+.I void
+and back.
+POSIX further requires that any pointer,
+including pointers to functions,
+may be converted to a pointer to
+.I void
+and back.
+.PP
+Conversions from and to any other pointer type are done implicitly,
+not requiring casts at all.
+.PP
+A value of this type can't be dereferenced,
+as it would give a value of type
+.I void
+which is not possible.
+.PP
+The conversion specifier for
+.I void *
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR p ;
+resulting commonly in
+.B %p
+for printing
+.I void *
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.I intptr_t
+and
+.I uintptr_t
+types in this page.
+.RE
 .\"--------------------------------------------------------------------/
 .SH NOTES
 The structures described in this manual page shall contain,
-- 
2.28.0

