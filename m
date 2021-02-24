Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB3532412B
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235748AbhBXPnZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237411AbhBXOtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:22 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B522C0611C0
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:02 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id w7so2004444wmb.5
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TKb5SxYeSQZIL/cLkRICHkolXAAl+45MgBm7VlSyIC8=;
        b=FvCwYxxH/MDzAFLXrG3eaq/m9RG2acaKgE9n8Ud86YLl/K5pirPpG1Ug5t0g+9vBFC
         jj1lRMeWhR3EIaVpqK6ixTGrzjbdNi0aBW3ghBoxlwzg2Ms/UFX5SBWprpG3wJaFfyn3
         QsdYZ642hWgfu5QdHeyGQfRHCeFeg0dNipFg4/AKYbkYzJpXaeHlLfUAlYdqOCXe0cX8
         Vr4jDwBMwoAM/C8aNfzunQmAWLekENvsGx6Bf6QdFdtPIdljvK+1d4MekPDVBTkpYubX
         qfXwQ+gi9nQ+Giq6VDvNSHhJh6QM4Srvn+T3CMdb5HQVsLTHq3fpIhl2frtzUIl+EdPY
         Qj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TKb5SxYeSQZIL/cLkRICHkolXAAl+45MgBm7VlSyIC8=;
        b=ulKcvNYmVrsasdcLHVbgMfsLealqdxcGb9EEUU7Xdx9gg6jp7mwpcEx6FLta+sXbU8
         PXClpxvXIYs3nAPYjdPACowk6tEwffcaPhzAYxNBtkDL7TnwE5OnWR1HJ28agMfn8bj2
         HdtOGRRlC9OHeaGZBdrIlSkfkSAYXh30Fp2vU1pwZWmrNGkHigD0th1k+z3IPN3UINna
         WpOKcwahv5WxfrfEdMIst6Rk6hIKlBUlGcd2Kl1pVnT504wWqWPsfTwBfvImPxbFZbrO
         fqiUwtQG+x2EIoYPfaJOfdTrdezGRQRgnDElJFI5LzH483nJs7or89U86On/jUbbcwX2
         Mvlg==
X-Gm-Message-State: AOAM532uEoFuvVYHv55Z8aG1IG2HotYMGFkSX8/H3Ai7QXCJT000tGqI
        le4H28b1Y32wM9yL61jrNWE=
X-Google-Smtp-Source: ABdhPJxkOkJ+EwNcb0UEZbItCQ7f2qkd86LTQFehnftinWZeRFfscxgzmukLpJfeR38umvHVv7/+3A==
X-Received: by 2002:a1c:7501:: with SMTP id o1mr3942531wmc.105.1614177840853;
        Wed, 24 Feb 2021 06:44:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:00 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 07/20] ctime.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:58 +0100
Message-Id: <20210224144310.140649-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify ctime_r() to use 'restrict'.
However, glibc uses 'restrict'.
Users might be surprised by this!  Let's use it here too!

......

.../glibc$ grep_glibc_prototype ctime_r
timezone/private.h:504:
char *ctime_r(time_t const *, char *);
timezone/private.h:712:
char *ctime_r(time_t const *, char *);
time/time.h:153:
extern char *ctime_r (const time_t *__restrict __timer,
		      char *__restrict __buf) __THROW;
.../glibc$

Cc: <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ctime.3 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index cd0ccc98d..7e4baa390 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -44,7 +44,7 @@ localtime_r \- transform date and time to broken-down time or ASCII
 .BI "char *asctime_r(const struct tm *restrict " tm ", char *restrict " buf );
 .PP
 .BI "char *ctime(const time_t *" timep );
-.BI "char *ctime_r(const time_t *" timep ", char *" buf );
+.BI "char *ctime_r(const time_t *restrict " timep ", char *restrict " buf );
 .PP
 .BI "struct tm *gmtime(const time_t *" timep );
 .BI "struct tm *gmtime_r(const time_t *restrict " timep ,
@@ -381,6 +381,12 @@ as obsolete,
 recommending the use of
 .BR strftime (3)
 instead.
+.PP
+POSIX doesn't specify the parameters of
+.BR ctime_r ()
+to be
+.IR restrict ;
+that is specific to glibc.
 .SH NOTES
 The four functions
 .BR asctime (),
-- 
2.30.1.721.g45526154a5

