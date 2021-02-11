Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87D4D319187
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 18:51:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232659AbhBKRuh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 12:50:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232631AbhBKRsZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Feb 2021 12:48:25 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB89C061574
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:47:44 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id n10so4714498wmq.0
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BswofYRnQPXlZXkkbuhNKPFUknFT9R0DM7XdgJ5qO/g=;
        b=g8IXOi573bhSlm3wJ1TzbXRv6eSnt1qwm2DPQohOEgfHLK105rDCsaQ5BiaUJSUqoq
         zhkeEwHVe9kTrVehwM0wVjXoz0gJLRRtj+AejC6VE0usyye2Cb0vz9H9ow7G3YbLbDYi
         9aKqs0GHFmHSsn2noSRhVAdijVOyBLIncalkWvBDoUUtlBwKsLy1U1TYAAV9wPEiwBAs
         w+GDT8oJGJEF2JAjCRS5/Xbe3ZaHwpEbdT3CcwPifqTEjOJqR2BA52bNFIebn/5ZIl9h
         BOlN9uncXpv5pj1BedJJym5beLvkwvFBp8zakWjJWpOVCtuk9G2t8XTQIzgRpjBfJ1pz
         d2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BswofYRnQPXlZXkkbuhNKPFUknFT9R0DM7XdgJ5qO/g=;
        b=iCQXTy6E5VIYUoPdWU9Xh3K47zOi6PzpfVybZL3v6hVhqYRaaCD8seA5TDg78GEgeR
         kIai3Q2gLSIwHyTDCoPvLJQMCHABkSoCTrIJM0eJWZnrFRm6pkH0aGOUuwR9Wm1qGh/P
         h1suSQagXMcWzU4GVCv1VYq8yzBQiF7tsKB25BVQsJLmiwwRRgORr7o4D7U2E1tveqmD
         Zd8i9Gy/jsTd01TVVvbLUcMFvbBwnN8WJuEG4CXX1nXiY/2xOL/SGrr1wUgRlXOfXF43
         9xpKhVMmUJrPj0WwY4PWR+YLMxSXYdMuNnOYBXFB9HTADYP+K5bGCl2Hx1ZjQtK70BWI
         xA3g==
X-Gm-Message-State: AOAM533JccCjA8b5MT7QajoCEdwPblzJo7JFpvono1YjKlBFhLpx3Mbi
        eDxSzQzGC/6MMs2G8DqAoSw=
X-Google-Smtp-Source: ABdhPJwLdomDlgCIpPpOI7tLVLqBiFMOLEIBrzBMjfYApkoHbmj8HpANB2LTOG8fASbvbarNhFEd7Q==
X-Received: by 2002:a05:600c:35c5:: with SMTP id r5mr6373791wmq.81.1613065663781;
        Thu, 11 Feb 2021 09:47:43 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o14sm5223113wri.48.2021.02.11.09.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 09:47:43 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] process_madvise.2: Add note about missing glibc wrapper
Date:   Thu, 11 Feb 2021 18:44:55 +0100
Message-Id: <20210211174454.48112-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27380>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/process_madvise.2 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index d33c32f63..9dc90ced1 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -36,6 +36,10 @@ process_madvise \- give advice about use of memory to a process
 .BI "                        unsigned long " vlen ", int " advice ,
 .BI "                        unsigned int " flags ");"
 .fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
+.\" FIXME: See <https://sourceware.org/bugzilla/show_bug.cgi?id=27380>
 .SH DESCRIPTION
 The
 .BR process_madvise()
@@ -218,6 +222,9 @@ Support for this system call is optional,
 depending on the setting of the
 .B CONFIG_ADVISE_SYSCALLS
 configuration option.
+.SH NOTES
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH SEE ALSO
 .BR madvise (2),
 .BR pidfd_open (2),
-- 
2.30.0

