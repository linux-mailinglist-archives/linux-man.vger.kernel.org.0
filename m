Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3540E299970
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:16:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392697AbgJZWQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:16:38 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:54200 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392613AbgJZWQh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:16:37 -0400
Received: by mail-wm1-f68.google.com with SMTP id d78so13187227wmd.3
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AVHYeEmHpGo/CvjFiXgZb0yoxLpl9XVxMI+jltBQQTA=;
        b=lkrfEOovWGa9b82duZNOBrCjk/xYxTR1xWXmzqOvJ5H15J4nMZJgSixc/f/veohCUn
         IYS7VhWeTizeHGbdDzLMdIMPYz0RMyDqAKqd5X09FnauB2hTgg9mMcnQrJKCp1yTQY/5
         G+kCbb/m+obvVuHkRycSQT/LLnZ5w5niinwBqSsdJnPl+a1NLOWE0IXdjCWxg+F8NeUg
         vWV1FVxHlMpw4TBvB5m6jiJQNxQZvzDp8uAz5y9mGKZMMwM2gFwLf0VTvlUTVX6YNxWl
         H9CxYkJubJnGIklu3XEe82PmLfmNRILVF+BmtbBZO9LZoQFCdUgui8KoeXfUL2uhRvGP
         QqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AVHYeEmHpGo/CvjFiXgZb0yoxLpl9XVxMI+jltBQQTA=;
        b=K9ntYP5JUXuPurPR5XkPt1Mh0poDqlTlJct8JYwcMJ+kxASkOwEfs5999ZymCVEYwc
         PS/EVMoxYTSZkJHeo/IaY1uOWQQk5DqvecRUdVgxMEl38Wc98qe0aNHzFRaWCrJdl4av
         HvTTPwzEZAzF7h6+PBMvJ2c40ZzT72D5UERtZp+I1otros8bOl8ia8Umm+01xQaWhXqf
         /Wk03dInHnhfR8Rgo1Q8jjhk3Pvx6ScOYZ65AB1MdfAamASlTEiYzhHqniSGWEfdbAuN
         KYMXsaXxXy6u5QI0DwllKmSxqxdU5pp4X0ImCEMDGT5/NVDJ6j8okDM6JFKvjqRXssjT
         Vnxw==
X-Gm-Message-State: AOAM530obTTkpC8JK0D5djFO8OYmasnCIZOhaCovgHvCbYLqK7LeH8ea
        qjOQkQ1q3FQSQN9RfTBYsB0=
X-Google-Smtp-Source: ABdhPJzJ1Av88JWTK6AqT4xwhfYk3uDYWVVYhrr4Tov0VyaWZqlVsQ+UrT8ALUsWrX0O5dUNxePhjA==
X-Received: by 2002:a1c:e045:: with SMTP id x66mr18269029wmg.104.1603750596306;
        Mon, 26 Oct 2020 15:16:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id j9sm24875492wrp.59.2020.10.26.15.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 15:16:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org, jg@jguk.org
Subject: [PATCH v2 1/2] system_data_types.7: Add 'error_t'
Date:   Mon, 26 Oct 2020 23:16:21 +0100
Message-Id: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 49ca2d8e1..4930aac8b 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -199,6 +199,45 @@ See also the
 .I float_t
 type in this page.
 .RE
+.\"------------------------------------- error_t ----------------------/
+.TP
+.I error_t
+.RS
+Include:
+.IR <argz.h> ,
+or
+.IR <envz.h> .
+Alternatively,
+.IR <errno.h> .
+.PP
+An integer type
+used for error reporting.
+A value of 0 means success, and nonzero means failure.
+Portable programs should use
+.I int
+instead.
+.PP
+Conforming to:
+Present in glibc.
+It is not standardized by the C language standard nor POSIX.
+.PP
+Notes:
+C11 standardized a similar type as an optional extension:
+.IR errno_t .
+However,
+.I errno_t
+is not present in POSIX.
+.PP
+.I <errno.h>
+defines this type if the macro
+.B _GNU_SOURCE
+is defined before including the header.
+.PP
+See also:
+.BR argz_add (3),
+.BR envz_add (3),
+.BR feature_test_macros (7)
+.RE
 .\"------------------------------------- fd_set -----------------------/
 .TP
 .I fd_set
-- 
2.28.0

