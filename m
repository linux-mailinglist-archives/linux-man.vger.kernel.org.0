Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C539A44355B
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235012AbhKBSSM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235009AbhKBSSL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:11 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16584C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:36 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id d5so19357507wrc.1
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sMULyLXKVX61lkO10TGJEF+Y8jYZk0cj6D2+We7X5+4=;
        b=e5CdfKaQ7KWLIN6mMsyCFaxoMcxXe6LNIEu72wIPzYwEi9SwdfNoq1CtxQGX8TE4L4
         tKrOo4o7YSgCTRZLw97U7s4sEmKKhYUkpn70uGPySRuM4Gkxkg570osRn2101JuLCLkC
         INO/GpyV4+oGk1rRDiHyRLS9BUbj74c1suf4VVKNa+koVNdm8HCALVI3y29FThbIOU+b
         9VYMqq7dWcHR51Y/UaY1z4+cqlpCYTy9QGkikTsrnAGLNaMdRHNyVRypV+1tC1KwCCYl
         SuOn0umMiqmknOD1NUJVimHinOWIpu0HcTXDYTZy/ewP4h3heYXcaiTny8Kr9knEYhMS
         rXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sMULyLXKVX61lkO10TGJEF+Y8jYZk0cj6D2+We7X5+4=;
        b=GTiRGHTghKLVydP/L2djRjmg/JTO0VVTfoAGP8Fx4CwzQeqtbgPjdq3inuTBVq8/7i
         noeLVC9MQNSbVUq8bPL9w7sQgRFA4KdfDN3N6DM9NzjFOiD8+OjG1sCjhQs5cHRI8HTj
         O/y2iCmRwcFklcJfWY88P1TsFG732KbABTi+qPiQJk5KHNkm3ta4vdIUWMvOmUHCi7Fq
         MUD1gmWt4KuiBPUeICqmBY9JCDAtFj95fEZ8aKdYuFhidAq7RF3LZB4idN7En2YbE5bR
         JC25xDjpq5Ln2XDVfdWwzFzPVruJ/bj1fwE+/so9ZIgQvT66jXCyqYbcZGviBdtdvbWN
         IGIA==
X-Gm-Message-State: AOAM531LQVObVzGZLiuLazk4bJvbjhuyp7fDeUWXxgvqUaZiTaz8/y4Z
        3Zmclc7g5UWvXwm6iwJZS7M=
X-Google-Smtp-Source: ABdhPJz5Hfi95kqqlqvyKr/hmS7P1GSWQPSqvLVthvEmdi3C39wDJi0hWKgnphVo/iLiFKU4bj1QBA==
X-Received: by 2002:a5d:64cf:: with SMTP id f15mr48543334wri.40.1635876934689;
        Tue, 02 Nov 2021 11:15:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 30/37] intmax_t.3: Document the [U]INTMAX_* macros
Date:   Tue,  2 Nov 2021 19:14:47 +0100
Message-Id: <20211102181454.280919-31-alx.manpages@gmail.com>
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
 man3/intmax_t.3 | 41 ++++++++++++++++++++++++++++-------------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/man3/intmax_t.3 b/man3/intmax_t.3
index e470c2d3a..3b7db7e5c 100644
--- a/man3/intmax_t.3
+++ b/man3/intmax_t.3
@@ -7,6 +7,16 @@ intmax_t, uintmax_t \- greatest-width basic integer types
 .PP
 .BR typedef " /* ... */ " intmax_t;
 .BR typedef " /* ... */ " uintmax_t;
+.PP
+.BR "#define INTMAX_WIDTH  " "/* ... */"
+.B "#define UINTMAX_WIDTH INTMAX_WIDTH"
+.PP
+.BR "#define INTMAX_MAX    " "/*  2**(INTMAX_WIDTH - 1) - 1  */"
+.BR "#define INTMAX_MIN    " "/*  - 2**(INTMAX_WIDTH - 1)    */"
+.BR "#define UINTMAX_MAX   " "/*  2**UINTMAX_WIDTH - 1       */"
+.PP
+.BI "#define INTMAX_C(" c ) "   c " ## " \fR/* ... */\fP"
+.BI "#define UINTMAX_C(" c ) "  c " ## " \fR/* ... */\fP"
 .fi
 .SH DESCRIPTION
 .I intmax_t
@@ -26,20 +36,27 @@ According to the C language standard, it shall be
 capable of storing values in the range [0,
 .BR UINTMAX_MAX ].
 .PP
-The macro
-.BR INTMAX_C ()
-expands its argument to an integer constant of type
-.IR intmax_t .
+The macros
+.RB [ U ] INTMAX_WIDTH
+expand to the width in bits of these types.
+.PP
+The macros
+.RB [ U ] INTMAX_MAX
+expand to the maximum value that these types can hold.
 .PP
 The macro
-.BR UINTMAX_C ()
-expands its argument to an integer constant of type
-.IR uintmax_t .
+.B INTMAX_MIN
+expands to the minimum value that
+.I intmax_t
+can hold.
+.PP
+The macros
+.RB [ U ] INTMAX_C ()
+expand their argument to an integer constant of type
+.RI [ u ] intmax_t .
 .PP
 The length modifier for
-.I intmax_t
-and
-.I uintmax_t
+.RI [ u ] intmax_t
 for the
 .BR printf (3)
 and the
@@ -53,9 +70,7 @@ resulting commonly in
 or
 .B %jx
 for printing
-.I intmax_t
-or
-.I uintmax_t
+.RI [ u ] intmax_t
 values.
 .SH CONFORMING TO
 C99 and later; POSIX.1-2001 and later.
-- 
2.33.1

