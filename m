Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 528FD443552
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234997AbhKBSSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:02 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BAE8C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:27 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id u18so34679391wrg.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UWSn6kuPkTp4mqAlZctTyCkdns357p9MaGzLjx3lDs0=;
        b=Rq3CVec1E0EdKS2WRi0SB0qH+cjHh8tuhrzXJ6cgsBgtQLJbAmt6SzhdGpiiVUuYsm
         2sI7almn3aqpeLS7WkFkuUukZd8YZmZv31Kb2PIfP7QaArl09ESWD+28LTL7sWwe7tTw
         Y+OE3S3tckNrIqi3fyG42JfgFNIoUUYxZupMMRi2QaJpZQUTtpfHCF5RZghv5+LlLlzh
         DcjfvoXWf6Q8JgFJNjWpD5iCIpc58bF5yxwSaXPssQsLEUkDbxVwrgYXc5tHkN6g9GJY
         vXpbFTECXLFU9lmS8oQss455esyB+In5xyMAr4dxdjgPQ1z5n3WeLFFr/6ujuOaVKVkl
         y66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UWSn6kuPkTp4mqAlZctTyCkdns357p9MaGzLjx3lDs0=;
        b=Gmsf+TKNm75qC3avinwno0hqZv39j+afuqf9zw6Z4IYyPCjNYH58gy7xsqfMmQwdMk
         j4R4pSKt7RKi/My3xvo933jU3g+UXUmyq472vpEDMcKn6r3x7WxfFWxb5Jyui053ltn4
         P5dcvNqAotE5W9JmFVnZVg5Hwf55ElKtlsnrQsLWrl7465AIOz99jLediM3audbks1By
         g6mNViGcDH43XP9Qpu1ARgWlf3J3YPRo/TWU0vGkWvo856gg8mX+0BjKTs6Y7pFeXqdR
         nNzbnLZVgjdKyjxwA+DiUtxrXbR5ldPOg/jebJXw2P2xSJ1LtKUOvtxTqY9Z72Enj7J3
         nRUQ==
X-Gm-Message-State: AOAM530qU5RlJ8WstAxL/9rKRqcYaQJ+H6FKiPU14yiVt0+gBsNm2Ixg
        8e24jDJ+f44VC3E22PNSGFY=
X-Google-Smtp-Source: ABdhPJy0Q3dyw36Md6eiR/ik9HlQQ+KyWJRigMgLAsTuenPbNlIzeAIogbJQw0OE9M7k/8oEQaq/Xw==
X-Received: by 2002:adf:f04d:: with SMTP id t13mr35361246wro.324.1635876926242;
        Tue, 02 Nov 2021 11:15:26 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 22/37] FILE.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:39 +0100
Message-Id: <20211102181454.280919-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/FILE.3              | 26 +++++++++++++++++++++++++-
 man7/system_data_types.7 | 23 -----------------------
 2 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/man3/FILE.3 b/man3/FILE.3
index db50c0f09..57587dd5b 100644
--- a/man3/FILE.3
+++ b/man3/FILE.3
@@ -1 +1,25 @@
-.so man7/system_data_types.7
+.TH FILE 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+FILE \- input/output stream
+.SH SYNOPSIS
+.nf
+.B #include <stdio.h>
+.PP
+.BR typedef " /* ... */ " FILE;
+.fi
+.SH DESCRIPTION
+An object type used for streams.
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <wchar.h> .
+.SH SEE ALSO
+.BR fclose (3),
+.BR flockfile (3),
+.BR fopen (3),
+.BR fprintf (3),
+.BR fread (3),
+.BR fscanf (3),
+.BR stdin (3),
+.BR stdio (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 90b6f743e..672528cb4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -63,29 +63,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- fenv_t -----------------------/
 .\"------------------------------------- fexcept_t --------------------/
 .\"------------------------------------- FILE -------------------------/
-.TP
-.I FILE
-.RS
-.IR Include :
-.IR <stdio.h> .
-Alternatively,
-.IR <wchar.h> .
-.PP
-An object type used for streams.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR fclose (3),
-.BR flockfile (3),
-.BR fopen (3),
-.BR fprintf (3),
-.BR fread (3),
-.BR fscanf (3),
-.BR stdin (3),
-.BR stdio (3)
-.RE
 .\"------------------------------------- float_t ----------------------/
 .\"------------------------------------- gid_t ------------------------/
 .TP
-- 
2.33.1

