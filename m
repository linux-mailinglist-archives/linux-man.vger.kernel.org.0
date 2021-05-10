Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A138379691
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231827AbhEJR5b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbhEJR5b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:31 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24EEEC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:25 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id l13so17507309wru.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d3zHX7Dlp02I5BnX6mFdOXVUY5GkHLAIfSnGnLi6sLM=;
        b=id5eHyIBsAllvzGu3zpb70ERqQHdFSi8lKaXABcvsPCg/bWP0N8X8FL+d963U087Pq
         2Ja5jupeqY2IcOKDgHgXnpMqlOCAiHAX4t4RpKHD0adnKFUCpXNEKsX4zbzAYHFVtiM2
         7RuI1ik6N6Pe6iHxocBIaAFyveySxht9qtTOj0N1yqv1mZOxeYWb2xll6oAJLRULtW9Q
         YKVUWJnpf73UiAYC4iT82psvRiXeTYwKnJkW7macqeUn4+A4wPQD/6VcqTsQTOg6pYK7
         LKj/T0qllMhTGwpLjCwcTQPSfRN1xqGjgtMms/B6IS0s/VmRzAvgatf0E8aUkTI6OodT
         bZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d3zHX7Dlp02I5BnX6mFdOXVUY5GkHLAIfSnGnLi6sLM=;
        b=pZmEfFc1v+Bi9VV25NmfOoKUtFeoLxJS3UKIbsP7PV5vlHGevw8u6J8el7O1Cosp0J
         gYfPZv5YDW2y8ZbmrRovv3AERgbL65KyXe2T2giStqbAK7V5i45m0pU9bMlW/Q77bRZq
         vNGBrRIcIrI6QxZ93RJlIkVAZZmXhxq/xIE1o9bz8aVXaV8a1JFOgUcLX97AfgcW9AWi
         3u+mT7kZcoqH9UhyKf+EUzIVsuMfw/+Grwv401RHjX1/+7XvAH2tN629of7cTuoVM956
         sKS8z+Ajarq1BKGHermtmbwJNxxJ4eho97nX+SH/E0l7HM3T/h223yk9ow9xvVGNL5gy
         uDDQ==
X-Gm-Message-State: AOAM530lK1E2g5Y03YDErPYNF9A+6OjZmEa7A572GKKji9KAgcYoGttN
        QIywiKJ38E9F+VwvIWxI4yA=
X-Google-Smtp-Source: ABdhPJyW3xPlmH48LxB56tuI0zi6sScxLMoCpFesl/Fo/Rt+F7h4joPND+JyWU61Pkx0BCvavAgcrg==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr32480587wrv.254.1620669383917;
        Mon, 10 May 2021 10:56:23 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/39] io_destroy.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:14 +0200
Message-Id: <20210510175546.28445-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In this case there's a wrapper provided by libaio,
but this page documents the raw syscall.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/io_destroy.2 | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index b439f1184..c9418336f 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -9,13 +9,18 @@
 io_destroy \- destroy an asynchronous I/O context
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
+.BR "#include <linux/aio_abi.h>" "    /* Definition of " aio_context_t " */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int io_destroy(aio_context_t " ctx_id );
+.BI "int syscall(SYS_io_destroy, aio_context_t " ctx_id );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR io_destroy (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .IR Note :
 this page describes the raw Linux system call interface.
@@ -57,10 +62,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used in programs
 that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
-You could invoke it using
-.BR syscall (2).
-But instead, you probably want to use the
+You probably want to use the
 .BR io_destroy ()
 wrapper function provided by
 .\" http://git.fedorahosted.org/git/?p=libaio.git
-- 
2.31.1

