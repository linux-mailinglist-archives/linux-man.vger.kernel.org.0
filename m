Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 205BC28015F
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732298AbgJAOfz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:35:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgJAOfz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:35:55 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33174C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:35:55 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d4so3147602wmd.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vF0ZAxZ1F3j39rAz66U7VSfcp0neuHkHZ1PWqUGKWdY=;
        b=DTuTEgB8zfqZOdZND92sKEdhH9pNwqL4Txo2JVj8bzlOuXrkOciipmvb0j5tMFyxXn
         TWvgzK3DfBD5nIBWV3wRYN/3HWlFkaWsUbqrPYA0IB+n5bc01o4R57trNd1efk8T/A4/
         2pss3FRREgWtKFPgA8XGK5TMGwy8AzEoPl6Suk/1HdRx12ERLHMfMzfc9GYDsNB8Ld6T
         haWfWUNshS+cHlJI7ytzBI9meIJQA8eWWkTTrCagY0PJK7Q5akmhbJ3syxDvpqq57JXB
         WXLGCXwpyT7EWTG7h+gzs0JTt5W/Vs5nQ8ArnNnEyxkhW0JG+u0EiH6pFhkp7sMrAmZ7
         tU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vF0ZAxZ1F3j39rAz66U7VSfcp0neuHkHZ1PWqUGKWdY=;
        b=bu7/dPb/3LsPdVZBkzAk9oR9qwpgrjuXeCWEk663TXodl87nhyMcDfknPAHJAhkUJR
         EWMmCgZbhdYPzpdIXQqVeknc2+ivw02JtfdzTKZk4bHD4ROQE6QY5inJ7hhxlGSPO+BV
         MGqQCfYgDS626PF+x7fOL3P2kiXNIZCvXd/2qew33el0MElqSQ17L55neJo3SGqEleRv
         zgxZBnk+gBEXbqbD3HMiiy+Tj7PKmS/EJeTK20gLczTUWH4HhUuDY0ggqzgrBDHBGcBy
         cuyRNgoujaUpe2+z8oORF0KDPUgSawLgHdiwiWHwdgzTdur7bLT6Nt1HfiQeevaHJbVU
         3WIQ==
X-Gm-Message-State: AOAM5334P/whQsDTA1sS2CpAuXRsFpZkKM6xEJZ8CQFy4XmNNdA1/PBr
        iYSjgICtQZNuh3CPb50r0IY=
X-Google-Smtp-Source: ABdhPJw9ccjOe8Duy0bDiIqYP0xvr7I0ryBcvkJQvmU5lnF55vBeMmnO5XIBXfVuARLRVNA1KtYSnQ==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr360221wmi.30.1601562953871;
        Thu, 01 Oct 2020 07:35:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm209976wmg.34.2020.10.01.07.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:35:53 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 1/4] system_data_types.7: Add int_leastN_t family of types
Date:   Thu,  1 Oct 2020 16:35:33 +0200
Message-Id: <20201001143535.98990-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 72 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c130b7256..3336de463 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -406,6 +406,78 @@ and
 .IR uint N _t
 types in this page.
 .RE
+.\"------------------------------------- int_leastN_t -----------------/
+.TP
+.IR int_least N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR int_least8_t ,
+.IR int_least16_t ,
+.IR int_least32_t ,
+.I int_least64_t
+.PP
+The narrowest signed integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT_LEAST N _MIN ,
+.BR INT_LEAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR int_least N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIdLEAST N
+and
+.BR PRIiLEAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIdLEAST64"
+or
+.B %"PRIiLEAST64"
+for printing
+.I int_least64_t
+values.
+The length modifiers for the
+.IR int_least N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNdLEAST N
+and
+.BR SCNiLEAST N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNdLEAST8"
+or
+.B %"SCNiLEAST8"
+for scanning
+.I int_least8_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.IR int_fast N _t ,
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

