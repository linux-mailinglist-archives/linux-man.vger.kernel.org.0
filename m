Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F6F63A4DA2
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231161AbhFLIex (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:53 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:40644 "EHLO
        mail-wm1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229819AbhFLIew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:52 -0400
Received: by mail-wm1-f46.google.com with SMTP id b145-20020a1c80970000b029019c8c824054so9917224wmd.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KZWw4Zzdt42s/980dqYtatfovJfhW11EXVzv3Q6PZdw=;
        b=Z6jHebazCr0Va70nyCaycrjjIsz4TqQjlA+nYfx/eVNp5+FR+480um2Zlqq07O3VmU
         Awve57otFlHfJFjXKmzc+6T0xzgv2kzDzBk7G2L98tNnRivEnUfLiIVUanwaDvOXx9Jn
         N/VD6OUh/RIf9XxzPK9EaOWenfgYYFaHNHxojBBpFl94qOp4/Hi0iIPc5ENZztu8jvRQ
         Bgpi7e3kfRR+X1t7YXAYCvfg0+COnke+tazUxyYu86npXzC7UhfcY1nRHeoPWlnycl41
         2Q13VZmRQZxFbraUpMUlGtgbw4rxVr++0YqI1pv629mKn+VJjWr8cBBaIUCcbrUmgIhz
         NgPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KZWw4Zzdt42s/980dqYtatfovJfhW11EXVzv3Q6PZdw=;
        b=BN4pqY7tK/QgxDUifIKIcvrKLY81kYBdrsACxd1ve0eBdVH+LGyutD7IzrQ9LRVbEu
         TvDlbpz8tczZeZYVnACm+djH1wAFLS3FTCe+Ba8KtgZJA3VusmeihHx5nSt7xhjrEIwF
         jPgl53ytJBTJJSab4FHPiYnAZVNww1LF6cgzFhcouvWe1axbA1q62fXpe+eE/30aWc+o
         9IbqafuL24xSY4I6o5sQfGO+Nty2/DLwb0PfkRDGSHRcJYSHeCL7Qdg8Q+r6MZcVW3LG
         nCRNmE3CKVaYLHT09IhXF35axWeKr3UArthkRmqi5XRWMl9Loav54KEmRM1K5X16PjBB
         ynIQ==
X-Gm-Message-State: AOAM530s9fN0EJU0EM8Cxbi9YAg/6Dhez9pGSwcimq/TSQF+qQLfjfTQ
        fI0ZfB0o46yzQEM7ZsFuT6I=
X-Google-Smtp-Source: ABdhPJwmE8cp6Wia9DazMYAp40omi38ZjYAginysrCbYMWCHTsF5WtSKJV9ZBsUL+ko1/dOiQ1DCOg==
X-Received: by 2002:a05:600c:8a6:: with SMTP id l38mr7352259wmp.108.1623486712278;
        Sat, 12 Jun 2021 01:31:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 06/28] spu_run.2: Use syscall(SYS_...), for system calls without a wrapper
Date:   Sat, 12 Jun 2021 10:31:23 +0200
Message-Id: <20210612083145.12485-7-alx.manpages@gmail.com>
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
 man2/spu_run.2 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index def974772..d5fdc2280 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -28,13 +28,18 @@
 spu_run \- execute an SPU context
 .SH SYNOPSIS
 .nf
-.B #include <sys/spu.h>
+.BR "#include <sys/spu.h>" "          /* Definition of " SPU_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
 .BI "int spu_run(int " fd ", uint32_t *" npc ", uint32_t *" event );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR spu_run (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR spu_run ()
@@ -195,9 +200,6 @@ This call is Linux-specific and implemented only by the PowerPC
 architecture.
 Programs using this system call are not portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-Note however, that
 .BR spu_run ()
 is meant to be used from libraries that implement a more abstract
 interface to SPUs, not to be used from regular applications.
-- 
2.32.0

