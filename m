Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C85C5037D3
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 20:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230302AbiDPSXq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Apr 2022 14:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232746AbiDPSXp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Apr 2022 14:23:45 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE377E582
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 11:21:11 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q3so13475043wrj.7
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 11:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=215VwteWtqqgiTtyAA01w8+X4fUc3TXzAqchJbtX12A=;
        b=lO494CzBDd5P7D7fXKObH5drj8ByzOSZVljLL5/O5npUYtr9C+4ZDQEpuJhTaSLA25
         e1AqxheMYmsIb8DqJtY+pKu6eQ9VJ3+Om1kMJjASXZAHBUDjl+7OyzA/LLSAQ/qbQOzu
         jscRonRquvRuJCSj98D+L69RYDVlhb7npNWZ7eK2w+F4kH8EFNC2PU+N5E27e/bAfvac
         UfHOXJF7lsgHJEWf1rAVX2VpHiUDtdDp7bABTcjXHoEHSw69znloPEMqZOg80th1k4mU
         3ENdW4tDsegflIURRWnmyBpLDG30l/WN2uX9GqFdPDYy57Wqq3iUDfEBK4LweFpLjvo4
         GFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=215VwteWtqqgiTtyAA01w8+X4fUc3TXzAqchJbtX12A=;
        b=GViDEr3B3AdY5i0H0woAiVDYVU2iLyIvkexqwfo9FXYoPlzel/QVILCOBHIrfonHxk
         CjjVihIJePhMRBerSAPXqD8jiHyVik33FC9X+UI+MlXCtMbE1mLi00hZX0NjmCF7XGqC
         XjXq0qVrcHYH/y95ii4U+m7EASRZ6Xd+KZNx7a7cgcV7PFUj0iOFrO0fnlP+KPVeYiZt
         YEHzH1/UG8ZL2CdM91qEPMv9Pdectm/4Ml0TNxzUz6WTuo2t7u9uqPjy8B6aQxe7IxLF
         h0ZIyqWAihCKDA90clG1pc5FP3rr7gnmOUUGIVPUv64M7tNNOdbyh91YTZFHH5SFVhZG
         5NWg==
X-Gm-Message-State: AOAM530gYIHYiEGtP+0LaPgF3QmajeIX7qNdcuIQ6NWGj+f9fRvdIGtd
        SVd5LK8kjIsCaPC9afwSd40CM1Cv4jU7AA==
X-Google-Smtp-Source: ABdhPJxJyaupuI7m2FxKCJFjUSEL7vRIaULxf8PgaU/X2r2MAPpFleAhKQqPlGQ7nQTX00b5oEisrw==
X-Received: by 2002:a5d:4e49:0:b0:20a:850c:2f77 with SMTP id r9-20020a5d4e49000000b0020a850c2f77mr3114711wrt.246.1650133270191;
        Sat, 16 Apr 2022 11:21:10 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o8-20020a5d6488000000b002051f1028f6sm7450585wri.111.2022.04.16.11.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 11:21:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     bugzilla-daemon@kernel.org, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Avinash Sonawane <rootkea@gmail.com>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>
Subject: [PATCH] [Bug 215844] scanf.3: Clarify ll and L modifiers
Date:   Sat, 16 Apr 2022 20:19:43 +0200
Message-Id: <20220416181942.5464-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Relevant documents:

POSIX:
<https://pubs.opengroup.org/onlinepubs/9699919799/functions/fscanf.html>

glibc:
<https://www.gnu.org/software/libc/manual/html_mono/libc.html#Numeric-Input-Conversions>

ISO C2x:
<http://www.open-std.org/JTC1/SC22/WG14/www/docs/n2731.pdf#subsubsection.7.21.6.2>

Still, from the documentation linked above, it seems to me that
"%Ln" is supported as a glibc extension, and doesn't fall into
"either no effect or undefined behavior" as says the GCC warning
shown in the bugzilla report.  I didn't modify the documentation
regarding %n, and recommend investigating a possible GCC bug.

Reported-by: Avinash Sonawane <rootkea@gmail.com>
Link: bugzilla <https://bugzilla.kernel.org/show_bug.cgi?id=215844>
Cc: glibc <libc-alpha@sourceware.org>
Cc: GCC <gcc@gcc.gnu.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/scanf.3 | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/man3/scanf.3 b/man3/scanf.3
index 55058f3d2..199c8a19a 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -308,10 +308,6 @@ and the next pointer is a pointer to
 .I double
 (rather than
 .IR float ).
-Specifying two
-.B l
-characters is equivalent to
-.BR L .
 If used with
 .B %c
 or
@@ -320,12 +316,33 @@ the corresponding parameter is considered
 as a pointer to a wide character or wide-character string respectively.
 .\" This use of l was introduced in Amendment 1 to ISO C90.
 .TP
+.B ll
+(ell-ell)
+Indicates that the conversion will be one of
+.BR b ,
+.BR d ,
+.BR i ,
+.BR o ,
+.BR u ,
+.BR x ,
+.BR X ,
+or
+.B n
+and the next pointer is a pointer to a
+.I long long
+or
+.I unsigned long long
+(rather than
+.IR int ).
+.TP
 .B L
 Indicates that the conversion will be either
 \fBe\fP, \fBf\fP, or \fBg\fP
 and the next pointer is a pointer to
 .I "long double"
-or the conversion will be
+or
+(as a GNU extension)
+the conversion will be
 \fBd\fP, \fBi\fP, \fBo\fP, \fBu\fP, or \fBx\fP
 and the next pointer is a pointer to
 .IR "long long" .
@@ -683,17 +700,17 @@ floating-point conversion specifier (and is unaffected by
 etc.).
 .SH BUGS
 All functions are fully C89 conformant, but provide the
-additional specifiers
+additional modifiers
 .B q
 and
 .B a
 as well as an additional behavior of the
 .B L
 and
-.B l
-specifiers.
+.B ll
+modifiers.
 The latter may be considered to be a bug, as it changes the
-behavior of specifiers defined in C89.
+behavior of modifiers defined in C89.
 .PP
 Some combinations of the type modifiers and conversion
 specifiers defined by ANSI C do not make sense
-- 
2.30.2

