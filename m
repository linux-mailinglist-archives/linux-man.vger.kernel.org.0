Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51E5937969E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233268AbhEJR5u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233271AbhEJR5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:49 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EEAC061760
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:44 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id s82so9686799wmf.3
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AsqpkoZ/SkOKckaFhcO4bnODTkOBOXr+VJ2I/uLLJVM=;
        b=Nv1ddOoT7PSmFIcsAL5KEJAbu/MURqrvnBUH12eHQp3hibh5wtd8wy4tUqmfBIiHko
         2xJmdXvuc1KkyFFSfOUp8ZOuKc6iewqWGLDOJyjJ7yzN3qDHwPxEqVgK7sr+8D+3aEHD
         w0nwHM9KQgdYhQfH1CR0EK+ZcsDtbQZCUpXSFD9ugEDeLpbEiZoGN9CJzUv5OtISi/5J
         O1GL17R4TRBklKM/osTL2jhmOEHXTPN3itjhlwe5/CWL/3juLHWJZWtGmywkuW3+9742
         ZhArcrMy/sbQTSp2mk4WMR5f9zpwvfjBUNsxTfhFGSvQ4JQQp0X89ytQz5MQqJ/64whc
         oWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AsqpkoZ/SkOKckaFhcO4bnODTkOBOXr+VJ2I/uLLJVM=;
        b=IFuCkA9FC8lobo+6Wzp0XTMW5TDnKFVJDRql0REXPL5MuELD24oX4beRk/oAWtuaMf
         l+7TbD9wxlv2nxpiZMYMqRRGln6HMYRfeDekMJwEB0e3xR3Q7W8Y42Z/EI5+TEzKSDUP
         LmHy+92pX4prRITMJnv6WB5rAD/nSJF5npz53kztenTKPrzQtggcOFXsSaZZ92B+BQLv
         KiaUKlKczPox5q2KRlhxtwEn0kDEX6mVU2k++AcoeAH2pwnnX3wsX2E3OKLwCKqCn/fu
         Ox/M7eGU4aX1UOpuV+SOW8HKnaeVz3EkosrBiYRUhT14zDf6n1IygOH/qgDL9tUxfQVY
         fVbA==
X-Gm-Message-State: AOAM5336AeN3e0AX+Cd7bbJoETUNPL/5sMixe6DhE8hhP5X9p2er+YcY
        T1NC3Bc6T68AtK6WN6mbZXc=
X-Google-Smtp-Source: ABdhPJxJ3i6FXPdOWbwY9TtBzSQF2PsLK9u2GzIe37cpHHL0FJejjG62h0DYCOrD0PKtSEPDIu6FdA==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr373997wmh.174.1620669403079;
        Mon, 10 May 2021 10:56:43 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 18/39] lookup_dcookie.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:27 +0200
Message-Id: <20210510175546.28445-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/lookup_dcookie.2 | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/man2/lookup_dcookie.2 b/man2/lookup_dcookie.2
index 2f0559707..6c178e367 100644
--- a/man2/lookup_dcookie.2
+++ b/man2/lookup_dcookie.2
@@ -29,11 +29,18 @@
 lookup_dcookie \- return a directory entry's path
 .SH SYNOPSIS
 .nf
-.BI "int lookup_dcookie(uint64_t " cookie ", char *" buffer ", size_t " len );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_lookup_dcookie, uint64_t " cookie ", char *" buffer ,
+.BI "            size_t " len );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR lookup_dcookie (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 Look up the full path of the directory entry specified by the value
 .IR cookie .
@@ -92,8 +99,5 @@ It relies on a kernel driver to register cookies for directory entries.
 .PP
 The path returned may be suffixed by the string " (deleted)" if the directory
 entry has been removed.
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH SEE ALSO
 .BR oprofile (1)
-- 
2.31.1

