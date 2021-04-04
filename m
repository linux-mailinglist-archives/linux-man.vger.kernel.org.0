Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E11673537E1
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhDDL7j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbhDDL7j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05571C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:35 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v4so8574458wrp.13
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GrWMJ+RJ9gg0brZt9cDUsUVd+Cv1ihZ/2NnN94O5JCg=;
        b=g3ZqRcYmUBCc1N1DcFWrOCU5pgYkSY5iAXB52hQWB2zCLfIzZIFc6KBNSUkoyF/aK0
         pS/LRSohv5EbjAE/sl4oxu7FDM7w5RboJbzlpwq0cap75r6DWoNmT5Z4rBwlUodi8OsR
         3IWtI9X4LPv1QNJehryv0Himy1BDlqrjCAXIw6UtFsxT4HGnOMT7DZBCxHVfdGDIQPlw
         t1hcOGJwU32L1ZoFSmwuOgTLEaH0Il3R1OFG21A8FckUdWkqeeVSOnj6rUEWfQWsQ0ra
         w+v3lL1/YC+yRjz+UPgYa6gBTnCkxvKsVmmAJ3M2puV2brS9xRardiD9s0ReLchtTjjR
         EJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GrWMJ+RJ9gg0brZt9cDUsUVd+Cv1ihZ/2NnN94O5JCg=;
        b=ICczDfl3g9XXFYv5YlL30LHjoRhQ6ECPDQhNCsp4phyFjYY16S+NhBgVvrPMzKiGZY
         OSDHZYm7bCkxoYqi7nYpGt+ijxMff5eECg3fMdI3QwW9xnu7CWat3SUIMwbRjtSU/rUp
         rGRknmLDS/u/cwsT1vOvSYf04CUSIHBcArQ07oWgMJfffUCcCFWQQWjIbqVElIMAW9wk
         kAJ0qwqt/m+biRZe0ggxtOB4XBUnFwqb8XrKb1UUJc6BaL2MyhduZcYSnsP8sDbQ0XI1
         sfsi/uT/Mw2YcfsL8yT6D1UTBK0qede2To672KDJfNFNYLUG3oM+MfvoQ3GwrSEjmscm
         kbmg==
X-Gm-Message-State: AOAM531xxcJjrna02N/ZTFmscIw8K0cfHyMAdH9fEkHfL93q/lv0lU8Y
        ipZkYFIqId5kmlURmC07VIY=
X-Google-Smtp-Source: ABdhPJzxiXSz4IjHQCR35yRLIUwRVIY0FZbW4rmddTr1stOyOyvR8hcB9ZFb8hlFhzJMpdlM0yTPVQ==
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr23827316wrx.208.1617537573769;
        Sun, 04 Apr 2021 04:59:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:33 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 01/35] system_data_types.7: Add 'struct sockaddr'
Date:   Sun,  4 Apr 2021 13:58:14 +0200
Message-Id: <20210404115847.78166-2-alx.manpages@gmail.com>
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
 man7/system_data_types.7 | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 5648ae500..93c723a2f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1226,6 +1226,31 @@ and
 .I ssize_t
 types in this page.
 .RE
+.\"------------------------------------- sockaddr ---------------------/
+.TP
+.I sockaddr
+.RS
+.IR Include :
+.IR <sys/socket.h> .
+.PP
+.EX
+struct sockaddr {
+    sa_family_t sa_family; /* Address family */
+    char        sa_data[]; /* Socket address */
+};
+.EE
+.PP
+Describes a socket address.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR accept (2),
+.BR getpeername (2),
+.BR getsockname (2),
+.BR socket (2)
+.RE
 .\"------------------------------------- ssize_t ----------------------/
 .TP
 .I ssize_t
-- 
2.31.0

