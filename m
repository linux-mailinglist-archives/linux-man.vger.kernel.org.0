Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A625A28014B
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732391AbgJAOcw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJAOcv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:32:51 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B7B7C0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:32:51 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so6035528wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ndLrLpS+gqTtCdnaAzHpyrLhobfhY5SLur0pPO8xcIU=;
        b=NM6kFKLpLoFCWfE5h0EoogU/h7NUbJXZVkU+FpiQTDPrnILk/9rmc+8b4EeE2AFggm
         pFHzSP1m2YogRBh441c/bLbG1iu2SjR37KL03hHiRtIGKBeUfohwl7TtGQu9a0zmBsqJ
         ssggon95wE7TA37lnc+Y65jN7TZOvu+Jt99cJzoCVc9M8cmB7FgVpbCyMGfYVBGCEGwC
         8KArr/zlPQVd7/3u+VyusBDyI+uYY+h3iG662Mt3hCEZbKRzKcTDeBG7Dg8efJgx+xzn
         X5xU+vxumPRWjTNpMsanBBUC3neZy8QHBVa0nxxjRonqkQw5jnhEix1qTmTFGfnX2Mah
         npeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ndLrLpS+gqTtCdnaAzHpyrLhobfhY5SLur0pPO8xcIU=;
        b=K3QGCSMCUPXTVahCxXS80mXjtKiFcbK3jYK5Tu6KeyyrXTMgRl5SiFiBq/3g9QCcEq
         dO+Gysb1Epn0BX/FJsUi1X/Hh4/nd3dfcKk+CqUZut0vIV3nDdtqOlgJW8d6XWBqxAoe
         gfhv3jPQETQCeMkFDAANb1tmWrzxgIIDly3LtswiholIub8EawK6wCTAFi2CnaZdAQN5
         iKTRan9hO8/nZNw9+blC1cF/cdw5PdNMNyMJ0pvavYiHYNOjWMDwbkpSOOrFYP9tOgKS
         n7hvQkqH5G3AfLfw8gQsq8GxqiTHFz3RecFGpoZf4ijoyEEAUkB65pWE5UWnVBJH1NIz
         QltQ==
X-Gm-Message-State: AOAM533GJp1FHvNNg2iDLYdzzUbkWZB1dL23N6WY1x325tqFkbCoBvO9
        MIsan55BG6qVkzHvmbc9kNY=
X-Google-Smtp-Source: ABdhPJxjI6hu+hBPK8YBU8ZLYvKotUpHR4RSp2GQo+gnQnm+kNdAEFnLeORQyMFGGgGdan1/kY9jzg==
X-Received: by 2002:adf:f290:: with SMTP id k16mr10004725wro.124.1601562770223;
        Thu, 01 Oct 2020 07:32:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f23sm5463654wmc.3.2020.10.01.07.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:32:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 1/4] system_data_types.7: Add int_fastN_t family of types
Date:   Thu,  1 Oct 2020 16:32:01 +0200
Message-Id: <20201001143203.98803-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 77 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4645ed5f4..c5d0b700d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -329,6 +329,83 @@ C99 and later; POSIX.1-2001 and later.
 See also:
 .BR imaxdiv (3)
 .RE
+.\"------------------------------------- int_fastN_t ------------------/
+.TP
+.IR int_fast N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR int_fast8_t ,
+.IR int_fast16_t ,
+.IR int_fast32_t ,
+.I int_fast64_t
+.PP
+Usually the fastest (see Notes) signed integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT_FAST N _MIN ,
+.BR INT_FAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR int_fast N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIdFAST N
+and
+.BR PRIiFAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIdFAST64"
+or
+.B %"PRIiFAST64"
+for printing
+.I int_fast64_t
+values.
+The length modifiers for the
+.IR int_fast N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNdFAST N
+and
+.BR SCNiFAST N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNdFAST8"
+or
+.B %"SCNiFAST8"
+for scanning
+.I int_fast8_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+Notes:
+Where there is no single type that is fastest for all purposes,
+the implementation may choose any type
+with the required signedness and at least the minimum width.
+.PP
+See also the
+.IR int_least N _t ,
+.IR int N _t ,
+.IR uint_fast N _t ,
+.IR uint_least N _t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- intmax_t ---------------------/
 .TP
 .I intmax_t
-- 
2.28.0

