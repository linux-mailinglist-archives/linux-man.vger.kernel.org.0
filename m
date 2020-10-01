Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB91C27FD1B
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731920AbgJAKQq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731131AbgJAKQq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:46 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18879C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:46 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so4988382wrm.9
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hr8OSvIlDuqeE/vPDzAOg3U7GVTQ/0iNCjFyMuBWHQ8=;
        b=YD2I2K0M+qby85bZFeylyQa82+brNFGDaBftekbGB/7qNAn4sEqNfvQnk1qf3365hl
         CBZvmGBJXKfoMfaIvp+WbeiTARZtdMfQwL73OW8OxXRxRhxRl3suB+m+r9cZ+kqcbGwX
         o/XtWtdR44Jh6jqhzo8NmmJcpF0NO6d7xDOe9XfqSHvTHVbBuGpB2gB850sCnfQOcRxy
         m3qiwk1UV6Wip2QzwiSv0t40CvMxMhgt0rEGK5TOjrbJV6oDJrf6SfZPDb5Rsqe274Iq
         zIsMxs4/KcxVAeXl1kmSTI9nDTGOlVlwUQveDE8lsA4yY01AGswOgaxhKsXs5pduf/2I
         k3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hr8OSvIlDuqeE/vPDzAOg3U7GVTQ/0iNCjFyMuBWHQ8=;
        b=rly+IyNx8XLSh6LhY0BVohIEOFj24LYkjLpHyfs+sM5JvEO6HEG3SBmhlnyp69H5Tm
         sUIihJfo9/Kj++NHze9JRiZUiRkvl0U0HSxLB/DKPsaxzPtJa3aXKUYoYK7zE0MjuxYF
         f1hiaRwgU5CHgwakGRBuYSUJd0+y8kJ5pn2u+wnkIgtWGgAXSWPPoY2pTqP0p5etXPvw
         tXleiQ5H2N69EEWaGNg2LQCY1CqD5DhFspHkEqeudH/kISRwMAp21MxRn9FAb43hyTi5
         Ycg5KRhlZmuORv8lDek/g0IGe71cj7i+cH0aZye9jO9t31pCamS3BulodRc0xjtq8b1f
         tHYw==
X-Gm-Message-State: AOAM531VS14wmsjkJ8vOgq0BxqNyNPKyWpKoiA4vKx7VaWKYUbEWKXqh
        +XNpL+Qtd3WvKe40HM6Ccdk=
X-Google-Smtp-Source: ABdhPJxbHvov7SnWApPcTdtc7wxFuRy1AjFHc/0q/kL6VW7mqFCyP+jh7c5Vo/D2+LvdMEm8w0v6lw==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr8652873wrt.58.1601547404759;
        Thu, 01 Oct 2020 03:16:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:44 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 15/16] system_data_types.7: Add 'uintptr_t'
Date:   Thu,  1 Oct 2020 12:15:59 +0200
Message-Id: <20201001101559.77163-16-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 68 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 2632436ed..8884d3e18 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1714,6 +1714,74 @@ and
 .I unsigned __int128
 types in this page.
 .RE
+.\"------------------------------------- uintptr_t --------------------/
+.TP
+.I uintptr_t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+An unsigned integer type
+such that any valid
+.RI ( "void *" )
+value can be converted to this type and back.
+According to the C language standard, it shall be
+capable of storing values in the range [0,
+.BR UINTPTR_MAX ].
+.PP
+The length modifier for
+.I uintptr_t
+for the
+.BR printf (3)
+family of functions
+is expanded by the macros
+.BR PRIuPTR,
+.BR PRIoPTR,
+.B PRIxPTR
+and
+.B PRIXPTR
+(defined in
+.IR <inttypes.h> );
+resulting commonly in
+.B %"PRIuPTR"
+or
+.B %"PRIxPTR"
+for printing
+.I uintptr_t
+values.
+The length modifier for
+.I uintptr_t
+for the
+.BR scanf (3)
+family of functions
+is expanded by the macros
+.BR SCNuPTR,
+.BR SCNoPTR,
+.B SCNxPTR
+and
+.B SCNXPTR
+(defined in
+.IR <inttypes.h> );
+resulting commonly in
+.B %"SCNuPTR"
+or
+.B %"SCNxPTR"
+for scanning
+.I uintptr_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.I intptr_t
+and
+.I void *
+.\" TODO: Document void *
+types in this page.
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.28.0

