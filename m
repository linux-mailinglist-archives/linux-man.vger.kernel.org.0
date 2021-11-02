Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1F84443545
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233509AbhKBSRo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234957AbhKBSRn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:43 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ABCFC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:08 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id z200so49640wmc.1
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N88zPpJ4sGyVGR2cMIqR2up4CbVthmqQoqZx6VVWp7w=;
        b=eqeJb5loX4BQZbipjHlZ03GcjPcDLGAsJ0vCACIm5PokVyxHcxrFQkuQvG7D/eLg86
         1RamNOCk4IEI/XPZwKxTKatCz00Lyz1GKf0wuHFUEH+iB4A1FFrODaqyiO3viCG1t3mh
         2KPK8OCEEVEu92iAtvAy8yOL4vU8e9OIBORbFUcA9u0S7n4KvwSxfmkf7iE3SJWF4jBm
         fq/VZHzBNcyCr0MJ5JQg6FRqYPtWx8k3twkvDQzvDAlQMmKwZCNmC5BC25iumWQOPjka
         Up3+a72PPufJNwDhPA6ItwQMxAlgPAZuj+HBKPliQ0ZZ4Qf2gdHkFH+3+aiemUdLpch6
         2F1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N88zPpJ4sGyVGR2cMIqR2up4CbVthmqQoqZx6VVWp7w=;
        b=Z1/Royw+vGTn9oztspcNyBjCGA5aSlkGgu52xOkrHwe5TX59HuCPuwTYh60Xbl5AsB
         uOTJp5ENx2Qq+cWE0UPlLsoZ9ME9CMJcOFVZGIArNTzwydBzuI+YE+OEN9wz8cXJtqDP
         pcvjlTYtbO4Rb1WKSCiLILYwEkMgVqiCVA9yJonK0NCph4Ldz8HbSOiR/nGrjnjqxuW/
         v6zsCRFFckxzwGJXN5XnW208EpZWKNRR26ZI+P9DTP/7V5RpNfLLUuMCB+35EsNHV6SP
         ilbDUORi7iBCOBCAS2mpTilFPK2zeu0Nx1Qa0CUHP7D40GEAEUNHvQ3C7sBQHvdvvhze
         AfnA==
X-Gm-Message-State: AOAM531LbhNwsxy29KBhRKLxeVctlNs1Xr2/oEYt2cCZxA1tiCAy5vQY
        Y+2+YntBLzgFCcMW40OrXeY=
X-Google-Smtp-Source: ABdhPJzkCjI8kGfjiTjEdj9eEw3LZYS2Dou8dSBZ/2cI6tcI4GZsuQ3ZFbWO/vqgoL0+gEfigVAPuQ==
X-Received: by 2002:a7b:c76e:: with SMTP id x14mr8873477wmk.27.1635876907160;
        Tue, 02 Nov 2021 11:15:07 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 09/37] aiocb-struct.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:26 +0100
Message-Id: <20211102181454.280919-10-alx.manpages@gmail.com>
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
 man3/aiocb-struct.3      | 32 +++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 34 ----------------------------------
 2 files changed, 31 insertions(+), 35 deletions(-)

diff --git a/man3/aiocb-struct.3 b/man3/aiocb-struct.3
index db50c0f09..7026f10f1 100644
--- a/man3/aiocb-struct.3
+++ b/man3/aiocb-struct.3
@@ -1 +1,31 @@
-.so man7/system_data_types.7
+.TH AIOCB-STRUCT 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+aiocb-struct \- asynchronous I/O control block
+.SH SYNOPSIS
+.nf
+.B #include <aio.h>
+.PP
+.B struct aiocb {
+.BR "    int             aio_fildes;" "     /* File descriptor */"
+.BR "    off_t           aio_offset;" "     /* File offset */"
+.BR "    volatile void  *aio_buf;" "        /* Location of buffer */"
+.BR "    size_t          aio_nbytes;" "     /* Length of transfer */"
+.BR "    int             aio_reqprio;" "    /* Request priority offset */"
+.BR "    struct sigevent aio_sigevent;" "   /* Signal number and value */"
+.BR "    int             aio_lio_opcode;" " /* Operation to be performed */"
+.B };
+.fi
+.SH DESCRIPTION
+For further information about this structure, see
+.BR aio (7).
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR aio_cancel (3),
+.BR aio_error (3),
+.BR aio_fsync (3),
+.BR aio_read (3),
+.BR aio_return (3),
+.BR aio_suspend (3),
+.BR aio_write (3),
+.BR lio_listio (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 2dae2f7ed..92565d730 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -51,40 +51,6 @@ system_data_types \- overview of system data types
 .\"
 .\"		* See also
 .\"------------------------------------- aiocb ------------------------/
-.TP
-.I aiocb
-.RS
-.IR Include :
-.IR <aio.h> .
-.PP
-.EX
-struct aiocb {
-    int             aio_fildes;    /* File descriptor */
-    off_t           aio_offset;    /* File offset */
-    volatile void  *aio_buf;       /* Location of buffer */
-    size_t          aio_nbytes;    /* Length of transfer */
-    int             aio_reqprio;   /* Request priority offset */
-    struct sigevent aio_sigevent;  /* Signal number and value */
-    int             aio_lio_opcode;/* Operation to be performed */
-};
-.EE
-.PP
-For further information about this structure, see
-.BR aio (7).
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR aio_cancel (3),
-.BR aio_error (3),
-.BR aio_fsync (3),
-.BR aio_read (3),
-.BR aio_return (3),
-.BR aio_suspend (3),
-.BR aio_write (3),
-.BR lio_listio (3)
-.RE
 .\"------------------------------------- blkcnt_t ---------------------/
 .TP
 .I blkcnt_t
-- 
2.33.1

