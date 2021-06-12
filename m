Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA823A4DA6
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231166AbhFLIfC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:02 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:36607 "EHLO
        mail-wr1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230400AbhFLIfA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:00 -0400
Received: by mail-wr1-f53.google.com with SMTP id n7so2341736wri.3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zXAobAi9r6NTUzD+Dyw8bP1W0jU7/kGkSFitJz3no7k=;
        b=dFuG7wuB0W1naU+ePmAk+CQxyEBR+F+THuM8AA7dGkafQ3zKkd6J2Ylalwy5fWHDY5
         7Qjm41moGopxDNRo6O22yxDZsYe91D1OjNCy8VG8hYlDDcQAAkjsAnH7Bborhpl3wYR7
         dqTLQNBVMSspPaZSAkGPhNEPq4os0qtBYQ6NIX9je/CwLp4IAriwdxjiF1COqlolcbsR
         v3Xo4VPnJQdC7VFtwveKrekZal0pQYr7qpiCM2r+1iyt/GyqQFdQBznVjrwNIMZx6yFf
         +1jkxp2/WNebIys7tq+5bXp70/ecPm56MnT+q+z5884bcLkhYn3sIdn+0hRmEgdEsFrD
         5mVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zXAobAi9r6NTUzD+Dyw8bP1W0jU7/kGkSFitJz3no7k=;
        b=RKWRbAJgrwHLJlOkzI/uYJDbWvjx4QaEmW3v7shlbQNPFdRDh6lCLOba/L7OldbTLa
         78Nxn2NWexFBQtlXUT9GkNtcPXAzlUNcTdHdwSPgRezUGEyQ84vvOlcWTAMw9DzveaEn
         OXQ95slfb8uJR6A18U+EXdvDWAU6PhvVBSz7McQo0jWAYTadp2A2qRisf8qeXC7CP91F
         pbQAuP3hnHJvfr2JmHJqoSuSXItUI1UdvaoX09JlR/xQn8+Zb59ahzjsPkS/IffO9FBJ
         io2RXjW6w7x8u/qXnVzVauuWR1hc8oIAbI/vuEEDHijS1Tstb8tD9WeTFuv/bqygGa/C
         +fqg==
X-Gm-Message-State: AOAM5326ECTFBMsWHryf0+AL6pHVWsukbrBkUHbU6mFhD/Yd8hJ3PTXZ
        9NYp4tlB52XENKQHFU4+yn0cW0AS64c=
X-Google-Smtp-Source: ABdhPJxbGMEprk5I4+wlDIaQ0HjjyJ0wj2JhS+aRDBib0NzGhRJNomFpVSJm42Bqxl5O7RU22nmcnw==
X-Received: by 2002:adf:fe86:: with SMTP id l6mr8375374wrr.106.1623486720474;
        Sat, 12 Jun 2021 01:32:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 18/28] tkill.2: Use syscall(SYS_...); for system calls without a wrapper; fix includes too
Date:   Sat, 12 Jun 2021 10:31:35 +0200
Message-Id: <20210612083145.12485-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/tkill.2 | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/man2/tkill.2 b/man2/tkill.2
index a6752591b..6ff930e17 100644
--- a/man2/tkill.2
+++ b/man2/tkill.2
@@ -31,14 +31,22 @@
 tkill, tgkill \- send a signal to a thread
 .SH SYNOPSIS
 .nf
-.BI "int tkill(pid_t " tid ", int " sig );
-.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
+.BR "#include <signal.h>" "           /* Definition of " SIG* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_tkill, pid_t " tid ", int " sig );
+.PP
+.B #include <signal.h>
+.PP
+.BI "int tgkill, pid_t " tgid ", pid_t " tid ", int " sig );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for
-.BR tkill ();
-see NOTES.
+glibc provides no wrapper for
+.BR tkill (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR tgkill ()
 sends the signal
@@ -138,10 +146,6 @@ in
 .BR clone (2)
 for an explanation of thread groups.
 .PP
-Glibc does not provide a wrapper for
-.BR tkill ();
-call it using
-.BR syscall (2).
 Before glibc 2.30, there was also no wrapper function for
 .BR tgkill ().
 .SH SEE ALSO
-- 
2.32.0

