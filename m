Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51F2431B09C
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 14:48:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbhBNNsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 08:48:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbhBNNsm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 08:48:42 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAC01C061574;
        Sun, 14 Feb 2021 05:48:01 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id v7so5357060wrr.12;
        Sun, 14 Feb 2021 05:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RbmGRai9khpzA9lGPDc0qiZjCQHwpScfyjwp7gSkoB8=;
        b=MttG9Q4RYTaZ6h3CGegxb8ZEkEwgN+o4NFrz6FqPHj1pjv1Awsf9DBqHpIBxvYc5tL
         H1aMPn76hTsZ2oKDKLlDXmBvFTt8R59vSa9+qvmgtL//MzGAPcNItzNq7bJTcO9KIfvM
         Q2CL5r0MfaJw2DzIRvQgNfaLMLbhSck5egWgnBLmg6wSF9MG/3fJWfK4FhFsFwpn5OqK
         Kx5PYUU+2+VwX0k8cEbqYKVbYhW/CVR+Zki3E0R642kKD+moZ8/Jw2ij8a9tp5stIJG1
         mtR3Iv/EnQLUyMUDiAapvl/OtpWLya6W6D2zNMNVdE3EGrxxc5wTENJJeFJkgRFVzhGv
         i2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RbmGRai9khpzA9lGPDc0qiZjCQHwpScfyjwp7gSkoB8=;
        b=CEvPDbxMPjb2Dr9dXe4ppBcLcXq4FBzt29Rjb7z84nt8HG9sDXoOIC/51Q2u1cWVdy
         QrLJB5cgo50aQOVz3GJl5vLvLpjyOBq5XHetUmC9lVNx81CD3+boWyr7LHN2Q/RfjZc0
         rahHWoVZwaT0dkfv7rCrE74QlYNYIQ3OTj8s7vOtVLsT8HqHBPFsNQDkRQ6gIsC4PFWj
         W/ZmzSS0IDJUB5kijuxeEeEx1eChC1Oz4pInQiKL7eaqRT0nTpHYZ47wI9OxvbLOlgsd
         0THSluOKs/4U3mCrs+6mUbbTighgY3GmYWqVyD2n4clKlcfn8vhfBzZ/OFX6ituSIjbK
         /nkQ==
X-Gm-Message-State: AOAM530LwaCJqzS8BeVm3/OCTAi1lzRtVP9hdCBmvTOguKVV9qOG9b2F
        AiZPD6dz29QWNPQ3JC5+mLQ=
X-Google-Smtp-Source: ABdhPJwE/OcdZtUsKR+ObA23qr6mcRPy6c1CFectqeWEng4CxUFZDkB3rh5LeQmOwL1/NObjx9CSpw==
X-Received: by 2002:adf:f6d0:: with SMTP id y16mr14080936wrp.351.1613310480352;
        Sun, 14 Feb 2021 05:48:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z8sm18795278wrr.55.2021.02.14.05.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Feb 2021 05:47:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC] execve.2: SYNOPSIS: Document both glibc wrapper and kernel sycalls
Date:   Sun, 14 Feb 2021 14:39:07 +0100
Message-Id: <20210214133907.157320-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Until now, the manual pages have (usually) documented only either
the glibc (or another library) wrapper for a syscall, or the raw
syscall (this only when there's not a wrapper).

Let's document both prototypes, which many times are slightly
different.  This will solve a problem where documenting glibc
wrappers implied shadowing the documentation for the raw syscall.

It will also be much clearer for the reader where the syscall
comes from (kernel? glibc? other?), by adding an explicit comment
at the beginning of the prototypes.  This removes the need of
scrolling down to NOTES to see that info.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi all,

This is a prototype for doing some important changes to the SYNOPSIS
of the man-pages.

The commit message above explains the idea quite well.  A few details
that couldn't be shown on this commit are:

For cases where the wrapper is provided by a library other than glibc,
I'd simply change the comment.  For example, for move_pages(2),
it would say /* libnuma wrapper function: */.

I think this would make the samll notes warning that there's no glibc
wrapper function deprecated (but we could keep them for some time and
decide that later).

While changing this, I'd also make sure that the headers are correct,
and clearly differentiate which headers are needed for the raw syscall
and for the wrapper function.

This change will probably take more than one release of the man-pages
to complete.

Any thoughts?

Thanks,

Alex

---
 man2/execve.2 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 639e3b4b9..87ff022ce 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -39,10 +39,18 @@
 execve \- execute program
 .SH SYNOPSIS
 .nf
+/* Glibc wrapper function: */
 .B #include <unistd.h>
 .PP
-.BI "int execve(const char *" pathname ", char *const " argv [],
-.BI "           char *const " envp []);
+.BI "int execve(const char *" pathname ",
+.BI "           char *const " argv "[], char *const " envp []);
+.PP
+ /* Raw system call: */
+.B #include <sys/syscall.h>
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_execve, const char *" pathname ,
+.BI "           const char *const " argv "[], const char *const " envp []);
 .fi
 .SH DESCRIPTION
 .BR execve ()
-- 
2.30.0

