Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3833537F5
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230448AbhDDL7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbhDDL7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:53 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7459AC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:49 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id x16so8597491wrn.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4RUXZNNPRHFOrslSAajMyr/oneUNBsE8l+hRPjLljlU=;
        b=RQ3FGdNYxPaE6d49eat0Xle32ukQfV1F5Q6hzxZiLwm+i9+ix59ImeYrbSHAglKEhs
         RnjkL37xa00rkJYqKMc/a0a/OpUl+VexZ8GgRcdQxeDstocdRsd7VTqJKnjiRx6UfeJB
         ZKHCSPWEcz7NCozpSRMVONSYSWeqF+nHjWApvA+HHko04cFT9LiNF1T0zAvD0CudnLN0
         eA5jwGWqZMpr/21lloKWQfDIpmwOsPaO0TOLFVxAC/FTeXB664VHf1M7Pp5GGdVbVi8K
         w9ipKfjZ2FjFE+IofTYKQCQCmHbeydf5FMe8znqnRy2SEcYsJENF0MI1QfEB89fa4FQi
         b8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4RUXZNNPRHFOrslSAajMyr/oneUNBsE8l+hRPjLljlU=;
        b=dy1kxDVMvE1jfabUhoy5/SDtarnu5KfHfcf4pM/dBZnYZs9HYCr4XzeCe522z2G7te
         AO6kyYZhg1sr8Td3+CZQ7k76pf9jnc62g80Zwk5PTdchLHKONJlCqe1KwYals3a2FHc9
         Bk0e3+z7xtzH2wPHH00UfCcvi11GVXq99I7xfXKm2tgX/zD8s9QrbcLpE1EZOPStX/FG
         6FqcBbFfU0/qwhkgDj9C8ucGQxmqbHRAJxYCNhcOTyEXgV1KYF9QkHP3i+dztu49E3tQ
         hBWf/T10BAQv+5HRQhBRpQOW3Vz2XP2GonRI7mZeifgbvAeoAULTylNhMSKztnhAFqlG
         laAg==
X-Gm-Message-State: AOAM533VZ4BDhOmEhewfQBxF+xHG7DtgonaMk7tp5dJxfzbVr0im416a
        O10LYRR53gcrOOZgN17Arja/93G6VBE=
X-Google-Smtp-Source: ABdhPJwmxNYd03/hXEz4G+xHqACI+y481rN5LNbHGCYciZkNiqFd9RhfRGfct12W2aFhanucD6lPYQ==
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr25167639wrt.390.1617537588323;
        Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 22/35] getpriority.2: Remove unused include
Date:   Sun,  4 Apr 2021 13:58:35 +0200
Message-Id: <20210404115847.78166-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/time.h> is not needed to get the function declaration nor any
constant used by the function.  It was only needed (before
POSIX.1) to get 'struct timeval', but that information would be
more suited for system_data_types(7), and not for this page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getpriority.2 | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/man2/getpriority.2 b/man2/getpriority.2
index e3d518028..d6744989d 100644
--- a/man2/getpriority.2
+++ b/man2/getpriority.2
@@ -47,7 +47,6 @@
 getpriority, setpriority \- get/set program scheduling priority
 .SH SYNOPSIS
 .nf
-.B #include <sys/time.h>
 .B #include <sys/resource.h>
 .PP
 .BI "int getpriority(int " which ", id_t " who );
@@ -209,18 +208,6 @@ the real or effective user ID of the process \fIwho\fP.
 All BSD-like systems (SunOS 4.1.3, Ultrix 4.2,
 4.3BSD, FreeBSD 4.3, OpenBSD-2.5, ...) behave in the same
 manner as Linux 2.6.12 and later.
-.PP
-Including
-.I <sys/time.h>
-is not required these days, but increases portability.
-(Indeed,
-.I <sys/resource.h>
-defines the
-.I rusage
-structure with fields of type
-.I struct timeval
-defined in
-.IR <sys/time.h> .)
 .\"
 .SS C library/kernel differences
 Within the kernel, nice values are actually represented
-- 
2.31.0

