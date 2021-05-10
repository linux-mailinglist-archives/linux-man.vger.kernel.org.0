Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 354603796A2
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233074AbhEJR54 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233277AbhEJR54 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:56 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F4AC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:50 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 82-20020a1c01550000b0290142562ff7c9so9388537wmb.3
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VOvnkfvqobjkJ/yFT9Ru9ZutAmQOD6w5LaM3IZOTU3s=;
        b=DoVcQqsFYn5PPBnMBbQ9vDNVZ123VzCDRJD/R0pQN8/B4iMqtHUCSRGSjF9wBSHnO1
         ksDOr/jszuOy3VPDwVElhDbDoqpSge+0zW+sVYbJbVOWv4bk9ob1ZaJ7Ba5FoD9mnAlQ
         HBJirRh2KVN1K/D+druPnXRjQfkF2HbWu+/8tVas5ajdwIronMkYxofnrOVncVtdEo69
         kc/qy35+bgSLexWBxZASRxlRKj76ry0FakhbdEbqt2c91u8aqTKUdAMa8fh1Pi/obqV+
         DZrwqsfTx8mukpv9+QSAcenTpirdDY2L5C3TX6Lh/MU4NUJIQjoFBQgDSzSJ5qNIvPW2
         MzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VOvnkfvqobjkJ/yFT9Ru9ZutAmQOD6w5LaM3IZOTU3s=;
        b=cx7mq2P6Sqsi3cHhMjfI04BjPev0UR7ZkSjz5ijoWAoo/X4O+qCIjaZsE+oib0qllp
         O5At8sa+NwuRWIZKqH475FqdSbmCxMZsKoYRf3/j/JacyttnqWfJHNaGpcNNjiZMlLzy
         ma5Cgl9latoFjuLsiaWWnFpJNa+npvGFi6bOKXb2N84AAgzKkoUiM62Wsq3EPx28ICDe
         Zx0VP6IffLkFomZtT9+3c2HtTOt0Kwd2GyH0UmPvTM8Y4bG8HDrJ/rWemqOc4NWvKKEh
         SzC6wvloImNmB2Qn8sNuImt9IRlmUKU0ruUrZNbdNyiznZOm6w3YMpphXwCBSVcJh64O
         ToYQ==
X-Gm-Message-State: AOAM531ZN/xg/FVdfhAc5rNeULe3ix0+Ku2HdHQ56iJWY38X8HaDulsC
        nAUSb+ejqEZiU2U4tDrZ2sg=
X-Google-Smtp-Source: ABdhPJwa4jQwccBTa7z74FaAh+g2aLTb4oEfQhpIDlpGxFhkJVtbUGma1Oax9+P+ilrHSdGDRCYqHw==
X-Received: by 2002:a05:600c:4ca9:: with SMTP id g41mr396022wmp.70.1620669409734;
        Mon, 10 May 2021 10:56:49 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 22/39] mmap2.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:31 +0200
Message-Id: <20210510175546.28445-23-alx.manpages@gmail.com>
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
 man2/mmap2.2 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man2/mmap2.2 b/man2/mmap2.2
index 6545a8f52..d579a285d 100644
--- a/man2/mmap2.2
+++ b/man2/mmap2.2
@@ -31,11 +31,13 @@
 mmap2 \- map files or devices into memory
 .SH SYNOPSIS
 .nf
-.B #include <sys/mman.h>
+.BR "#include <sys/mman.h>" "    /* Definition of " MAP_* " and " PROT_* " constants */"
+.BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constants */"
+.BR "#include <unistd.h>
 .PP
-.BI "void *mmap2(unsigned long " addr ", unsigned long " length ,
-.BI "            unsigned long " prot ", unsigned long " flags ,
-.BI "            unsigned long " fd ", unsigned long " pgoffset );
+.BI "void *syscall(SYS_mmap2, unsigned long " addr ", unsigned long " length ,
+.BI "              unsigned long " prot ", unsigned long " flags ,
+.BI "              unsigned long " fd ", unsigned long " pgoffset );
 .fi
 .SH DESCRIPTION
 This is probably not the system call that you are interested in; instead, see
-- 
2.31.1

