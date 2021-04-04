Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 008963537FB
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbhDDL76 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDDL76 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:58 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E32C061788
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:53 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so6443743wmq.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cjP+0WLA+OK4vEf2vwLQ9Kext4PONnX5i2wBNqV4HN4=;
        b=AoB/Lw0yMrR3VCD8mjJPeteHzpC1qO8gZTxZjfZRMaYcFgRPhAjRJyGH0BebIWzash
         FbMwEe5/jfq1mX87czH5J5sm8dly4R+36Ldz4Bm3Gq0Oc8XJ89hNACtzSLyTJIfO4jyE
         G2qLSS99hsTLhPXo3qZhyOIBlYEncu9F6F2vtbl6Y+SnhZjFuwBqbi1/kC5O2bu7ytJG
         AMNbjc7bYpe5+S5ayf8l3qVwOIZiLlk0IvVrtY3PNNpGWumE5pMOnMlY89pJdaDBdx6N
         rn5QMIvGZ+I2YAVJzFDEv+lNzC5BBty5dxFBg2cmPKeFgvr4HM15mSNORSeMoVwB04le
         Jm2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cjP+0WLA+OK4vEf2vwLQ9Kext4PONnX5i2wBNqV4HN4=;
        b=R3VHcaBkY139pyCS29+X0RbSi7GLtnDwUxOMc1uuenVQMs0uHLkrQ8xcjcgKlRbPIx
         T9wrYbh6dQ0rk8d3Noz0uqUYEwbIKewdkzuUVhnD934//5ve2qNwoPMNTqZZZhInjU62
         7xvpE/u9AFkcTU5lIcNX1p/kZ3r9450BgyvVbBkrHsj2owbKgrnV9mllss9I0sOSDVLA
         9BtFoqmWvDeL85GpoLWfaVFLj5yKLgEKUnkM81yZlWWSapjpO9U+0saV+RIUjpQxRKp5
         VN8EzAh9TY8ZdEZFnDaivhYCAb8xKXp+uXyytYNtrMofQUvnt2Zv3xmPoXVPfkY8tmlV
         zfyg==
X-Gm-Message-State: AOAM532nkPuOJ+sEPgaDzP24TpMxvbG5yEVouj7IlqCODSII2syG28Xi
        BnugtWRNGIMNw1y174EXd0A=
X-Google-Smtp-Source: ABdhPJwrYU10nioOR/dTl7z+GQqr7Mw6ggby9DGqrhtlk4T5e6tCfNkauDviTHsJSj1tuboBUzD5/Q==
X-Received: by 2002:a1c:9d4d:: with SMTP id g74mr20613904wme.77.1617537592634;
        Sun, 04 Apr 2021 04:59:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 28/35] io_cancel.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:41 +0200
Message-Id: <20210404115847.78166-29-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In this case there's a wrapper provided by libaio,
but this page documents the raw kernel syscall.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/io_cancel.2 | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index e09984ecd..248fe5791 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -9,14 +9,13 @@
 io_cancel \- cancel an outstanding asynchronous I/O operation
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
+.BR "#include <linux/aio_abi.h>" "    /* Definition of needed types */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
-.BI "              struct io_event *" result );
+.BI "int syscall(SYS_io_cancel, aio_context_t " ctx_id ", struct iocb *" iocb ,
+.BI "            struct io_event *" result );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .IR Note :
 this page describes the raw Linux system call interface.
@@ -68,10 +67,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used
 in programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
-You could invoke it using
-.BR syscall (2).
-But instead, you probably want to use the
+You probably want to use the
 .BR io_cancel ()
 wrapper function provided by
 .\" http://git.fedorahosted.org/git/?p=libaio.git
-- 
2.31.0

