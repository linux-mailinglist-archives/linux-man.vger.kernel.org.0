Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED3B837969A
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233250AbhEJR5n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbhEJR5n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:43 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A595C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:38 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so9396471wmn.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q6SqwAQCYmMULxt8LPPcAncAaNBX03J1Z11J3WZfLSI=;
        b=cbNAU+7zHy/xx0m2hHuQCnSYUd8gXj4VJTax3nyNGqqlj8MBaH64oJ5A2CiKnGG30U
         B7T77iT2prVkVtRJ0POIMQfLaKKmhaLGGja6rWH/za4wXt0Ib2IBGR1+wLaEn0rgtmq1
         7+E9B+yO3FMt2zvsiv1kQOz7NK/n+xZW/l67VAZXpuRcXbEKy5KaUqQ5ZqZjZxBr4QWX
         hQE2AGi3GBU8FjYPk/0r13Y1yduzfZQvKIG7DjaatDSkDahsqcBpZzgLutd6GnuoiYZp
         0vZN9XowNWxje4ILpcsKti37pnNTxF0C8FE3GBIVItdwwhBSUtUjSmsgQ9Cxz/+iDMnI
         gqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q6SqwAQCYmMULxt8LPPcAncAaNBX03J1Z11J3WZfLSI=;
        b=AeloMimyLT+UH/Py1Dlk5S7eWTRLj8bPszfsrQOPrv+zDaWdYJP7r6g3jHzBawTJYq
         /FbgscN52I2MDUMXeG/jlR85bfTt7ihOgYLQHHLATRXzNIu1XKk3I9Tce7rBA5f1vv+7
         dc3x5cryZN9NV2VKcLjrUI7hb0f+p8qDlh12x7lDpMhG+W8PrEmdMd9ppFd4iD/3mD15
         Joz3EOegHAWXu5TRYEcMVJ1MWrGtJEexqBa4+00gObR85xu/6KCnRe4viG+5hUvMYZX5
         R6ABNPnDX8Of3A1l+uDBO1krwWyLVn5H8/qddOQRyj6hbzXfxEHkkKftQK4oLtL0xUdD
         zZjQ==
X-Gm-Message-State: AOAM5300pEfDdnHjYweF/MAwUt6u6yYTBJe1Qta5KsMoPClIzRujxkEa
        FPI37Jl0Za7ShN/PlXJCud/neC1lj+U=
X-Google-Smtp-Source: ABdhPJzY5hDNh4X7/Seh9B/fXxLHg55dsILR1o6l02A0spTvCF6QSVahq0a6leTpoT3yV4j9yIsPog==
X-Received: by 2002:a05:600c:1909:: with SMTP id j9mr22170283wmq.100.1620669397036;
        Mon, 10 May 2021 10:56:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/39] scripts/bash_aliases: man_lsfunc(): Extract syscall name from syscall(SYS_...)
Date:   Mon, 10 May 2021 19:55:23 +0200
Message-Id: <20210510175546.28445-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 358e2f37a..102c458d7 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -136,6 +136,7 @@ function man_lsfunc()
 	|sed_rm_ccomments \
 	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
 	|grep '^[0-9]' \
+	|sed    's/syscall(SYS_\(\w*\),/\1(/' \
 	|sed -E 's/^[^(]+ \**(\w+)\(.*/\1/' \
 	|uniq;
 }
-- 
2.31.1

