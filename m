Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61AEF36754D
	for <lists+linux-man@lfdr.de>; Thu, 22 Apr 2021 00:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235004AbhDUWqB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Apr 2021 18:46:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235190AbhDUWqB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Apr 2021 18:46:01 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D42C06138B
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id g9so26845474wrx.0
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 15:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TBV3lzdeBKywsP3oOhk/jWWDiZqdQXkgjglV+hJqsE4=;
        b=UYCX0vUIrKehMk3Vse3UPyVynhWIrw59G4na7H7z6NPH7Da3rXJ0uzq5ItUhTwJlDX
         FPTll3JXk7dOqxXt940UIT8w63Zad20kIXGQj6b9GIrDlKXXasAEpcmzKcDJnqTeOcrR
         i1M18Usb2KR7R6Uc0pqlvm32i1lFqngQLJZEQmhEyEiJR4QRaOfgkmavjTEh0648gC6a
         6lX775MKZ2rnmN9qUq2uBdlPMmf4auZVPvcnxgDljUNkztCGe7vJXf6xfQHPltNGKM6B
         O3QQg4QjQA1AYTECoVYz2fTd1orG8TTdOlJ7cb/s5X30NGfjU9AeeUEpASZXBPkcUWeX
         eT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TBV3lzdeBKywsP3oOhk/jWWDiZqdQXkgjglV+hJqsE4=;
        b=pZlrgBWyJ8uQ6gRDKaNdM3ufXVqEVvf26e9wVfnLFKBHL4/uFzf/LoIsjeoPFXJm3z
         qDZnVBe8Zl0ctsx2QCjfL2RiTcYoynGMVnUApOAmeRcl8kyKXRY7VsLoDwfKEr2fmkFO
         ot0eufbXgJmj4v9dcMJ6qw+viaLf4r6btGXoCsqIVlQmHLs+Ze87fnAge2WDeai5dc8D
         TtnqpHIX/zJ4zW75xTyOabco0SyLxAlZ+rRFGQpZxzlPo5FJGKHTTLFzpnBd9IqtAyfV
         m2+dpTt6YoFHe3VVMllJAEJZMvu2gSlqe6Me/fwcf8+9T6GwF/M6CDsNcmF8HlJjkqas
         uLbA==
X-Gm-Message-State: AOAM532b0ScycQXyn6SSQ+ifBXKDI3TvobQaJTi/VB+xLXuEsm0QNsLT
        kmhyfH+Y6StpjM9l60w5tSc=
X-Google-Smtp-Source: ABdhPJzAkq1+A4BK6bEFwkEKZnCcncbKGhnSO18pjKhzL4neqqYf8xzgVu8eE/vLVif1ir3C+iUKeQ==
X-Received: by 2002:a5d:51cf:: with SMTP id n15mr438914wrv.30.1619045125056;
        Wed, 21 Apr 2021 15:45:25 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l13sm781800wrt.14.2021.04.21.15.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 15:45:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 3/3] open.2: Remove unused <sys/stat.h>
Date:   Thu, 22 Apr 2021 00:44:19 +0200
Message-Id: <20210421224418.143065-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210421224418.143065-1-alx.manpages@gmail.com>
References: <20210421224418.143065-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I can't see a reason to include it.  <fcntl.h> provides O_*
constants for 'flags', S_* constants for 'mode', and mode_t.

Probably a long time ago, some of those weren't defined in
<fcntl.h>, and both headers needed to be included, or maybe it's
a historical error.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index bac1ee806..1bcd995f4 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -53,7 +53,6 @@
 open, openat, creat \- open and possibly create a file
 .SH SYNOPSIS
 .nf
-.B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
 .BI "int open(const char *" pathname ", int " flags );
-- 
2.31.0

