Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90BE7353555
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236725AbhDCTlx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbhDCTlx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:53 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1433C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:49 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id y124-20020a1c32820000b029010c93864955so5735478wmy.5
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GrWMJ+RJ9gg0brZt9cDUsUVd+Cv1ihZ/2NnN94O5JCg=;
        b=V0So52neCtGLpiciR4Q96u1fVUwUuneKPYFXdkPSvYRdKYCAWUPKiNpfs5bgllI7q5
         cLqUErn5noryTJ8hV8N9aavXauEWaPSPlmmsCk738+xuYq3e9BLgujabDCfV+rpjTHY0
         xoV2Uh0L4l8RP6FDykA0imgZtwtd7ZAXAA1LXrsNVbGWmV30kwSZnxajunbrBxYT9+fK
         DUcabqfBM1CH7WhBlexhNQwD8ovUDCrMOWw0Mv/XvKt+i4GpdWe3XIXJn6uSlqBtnfw/
         y9d6FHQLX4bHBvHAn9F1AppRLM4G9u3Vsy0dqZgbUbLqFnF8qUARYY9DkFgEUEigjtiC
         ABeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GrWMJ+RJ9gg0brZt9cDUsUVd+Cv1ihZ/2NnN94O5JCg=;
        b=E7ofBqRt+8PQDxur3jg4czuxQBKMWqSGNnFqw8NNOIuhvD4watDO9WauBGiRQLXpbS
         7jCpCN/Hox39U8FsGd51gVO5SS/E+FwVhhz0QAGzNAcilxBKIIWT2akhHcC1RqS5uXoA
         ZQPN+eRXSXpOqfu5rKLdUqT52cm4LhFInHItX+w0wxwimnOcfbUy0EGEjZ2x/Fptzo8l
         qheQG7kFF2mlq9orvBYQNZ71WBIfrqrexciIxLfy6MPpjMU+COGdlawAX3m+cfn1HPyt
         OrHmdlOeOMdhEKoytxl7298mlx0Tp4DO5QpMD2Fps/ro82JKYsPK8q4CLWmRbsDKzSwt
         sFxQ==
X-Gm-Message-State: AOAM530DX3X5wUFMZDayWifga0fRrKd6VeYGqqaowTo2HNChofTsvix7
        e6uOQ4i9Rnd1568omf/1rU4=
X-Google-Smtp-Source: ABdhPJyu7MUTY9ydTHuPlh4H+TfcqnBEhFddhSrvLd+mRWRoHFU43oelf+vpBH7IUjRzcc5MjMjMMQ==
X-Received: by 2002:a05:600c:358c:: with SMTP id p12mr18080552wmq.19.1617478908615;
        Sat, 03 Apr 2021 12:41:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 01/35] system_data_types.7: Add 'struct sockaddr'
Date:   Sat,  3 Apr 2021 21:39:53 +0200
Message-Id: <20210403194026.102818-2-alx.manpages@gmail.com>
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

