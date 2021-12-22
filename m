Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D09A47D65E
	for <lists+linux-man@lfdr.de>; Wed, 22 Dec 2021 19:16:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235800AbhLVSQZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Dec 2021 13:16:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233546AbhLVSQZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Dec 2021 13:16:25 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15BD5C061574
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 10:16:25 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r17so6604004wrc.3
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 10:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b4OxtBi8ZX29rOXVdQhavC/nD0eh4IKYy5EF2sgHkKs=;
        b=HlFXGBFZVImBqSvcH8R4o9KFI3Af0WtMPw0n7LsbzAp12YhZI1OGgpf8n7+/X6UXv/
         3krrG+3JDtguWWve7Z5+npgwuj0/hc+GRAB4mOHj5g1JoHFjLD5AZ0+CNNSZ3K0/2vaZ
         NA0HWibtBjH7AXVEbLnMMx4Kf8l5pumvyg1QlTctw68FG98HfZIMqjanGXOykiqT7ImN
         uCRsRKyNUowPm2lWnUJn0S9PHvN3MinocUTbhczs7BQR/RdYXfZnCSB3nrgOqdtZIflw
         Z1XlABvTD5Hh825wevqOXXgRjWgXgUaljfmYrdUFF+tG/P3wVZs6bq2N3AI3VFxVp5q0
         EiBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b4OxtBi8ZX29rOXVdQhavC/nD0eh4IKYy5EF2sgHkKs=;
        b=4ATjYuhTzKxFWfXQ05FLa8SNuitJGhE7HPDS4N4Zp8dG6zJDi6LPvTG9VUtwdFrLri
         dlcouihqki6XD8gPhw3rsRSBkSQlHgjij9sPGps9mzQRztSCFmwZQm4sC3xjk/wKMGnL
         EEl8yBpyTv+V38Cz8suOOSBpcBXmt1OsrN4ZgER8bpJFf5FrcqnplzUgFZNqlZbfjC5T
         GfHLJdvyRty6wMceKXazOzgs9qMUhfqnzNRHQWv5ax72V1410TVPxIEgL1WRp945aTh+
         HY1md36KF4mEhRfcXSuC6oJy3FVgNIhDzz1JcH8AcHK5rWCrj37RcqZ+e+QeoVmwMQW3
         YTMQ==
X-Gm-Message-State: AOAM53153ESONfA8/S9Yo0/B5iCTPlq43BYQyjlyoKF+AtNG0yciBniv
        qUrxXSnjv6odhQ6B3on5vgDv6Xend80=
X-Google-Smtp-Source: ABdhPJyg+/I2MlyBvmaBqHrbJEJYD9NR8MzVhhHJx8FLFAX8/MTsczHGckBZ+zD1ZLJ1GXhPQW8igA==
X-Received: by 2002:adf:bc89:: with SMTP id g9mr2779930wrh.578.1640196983707;
        Wed, 22 Dec 2021 10:16:23 -0800 (PST)
Received: from ady1.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c13sm2487001wrt.114.2021.12.22.10.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 10:16:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>
Subject: [PATCH] printf.3: Document %#m as strerrorname_np(errno)
Date:   Wed, 22 Dec 2021 19:15:40 +0100
Message-Id: <20211222181539.3262-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: libc-alpha@sourceware.org
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
---

Hi Adhemerval and Michael,

First of all, happy new solar year! :)

I added documentation for "%#m".  Could you confirm I got the
glibc version correct, and also have a look at the changes?

Thanks for the report!

Cheers,
Alex

 man3/printf.3 | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 4fa1f11f3..1e2bac4df 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -301,6 +301,17 @@ and
 .B G
 conversions, trailing zeros are not removed from the result as they would
 otherwise be.
+For
+.BR m ,
+if
+.I errno
+contains a valid error code,
+the output of
+.I strerrorname_np(errno)
+is printed;
+otherwise, the value stored in
+.I errno
+is printed as a decimal number.
 For other conversions, the result is undefined.
 .TP
 .B \&0
@@ -853,7 +864,10 @@ any flags, a field width, or a precision.
 .B m
 (Glibc extension; supported by uClibc and musl.)
 Print output of
-.IR strerror(errno) .
+.I strerror(errno)
+(or
+.I strerrorname_np(errno)
+in the alternate form).
 No argument is required.
 .TP
 .B %
@@ -974,6 +988,13 @@ and conversion characters \fBa\fP and \fBA\fP.
 .PP
 glibc 2.2 adds the conversion character \fBF\fP with C99 semantics,
 and the flag character \fBI\fP.
+.PP
+glibc 2.35 gives a meaning to the alternate form
+.RB ( # )
+of the
+.B m
+conversion specifier, that is
+.IR %#m .
 .SH NOTES
 Some programs imprudently rely on code such as the following
 .PP
-- 
2.34.1

