Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A2C0265260
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbgIJVQU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:16:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728070AbgIJVPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:12 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D365C0617B1;
        Thu, 10 Sep 2020 14:14:35 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so2084088wmb.4;
        Thu, 10 Sep 2020 14:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0rmRvieIxW6w6Hujt5CiR0Rwq1pQq0cocC0G8EaOjkE=;
        b=Lrf/nS2wudBHaIRCI6azYCYMZ+8s/X4Ec3o/uNo8iU89ykB2ev1ibIGe1wmkUKQmrn
         aYYwsYgTxv0GuJqazaU1fo2rq5nikDob0pS2p3mkgwTmZ7ppjXUreLVIIvKqj0gzLNdf
         GwQowtnhIrwSylUXAvNTr4rZ66w9QM1ysuIcRezq+MXqrpDQMSy6XQGDMqJvXRpyhuq+
         ShXG4T8cHoIoYQu6ZRDaFJEusN0qyVRtP9Tldhdro+pCx9lkqMEybafRgZMOJi1RwZRN
         7gVqarjdPHO5kg/uEEGcp3HT8PvlmQtD6GBW7Iy8LRTJgiBinYZ4AciF4usjPJd+jc7C
         cNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0rmRvieIxW6w6Hujt5CiR0Rwq1pQq0cocC0G8EaOjkE=;
        b=YQbiBQBgrF6dB2G51xgp8yXOnpb3EQSOtQmCVGJIPaHRMJwdUOpK9VuVacCjv/N/6b
         MZ/4pzxVZmicpDuLCFHqSuQOtVs0eKjyqMjxznVIYk7M7ZsYbjoPfOrCkN/v6/BBMHux
         k+fXj0ilsKfC6qamsrZIKHFXQFeP7OWwvsoSUSC8I0HwiCtF8xhdwbDYRl6f4seJ6su4
         6e9OrQaOhQIt9dEoX1E5hCHHjF7+uweNZ3d4VUaFFj6sxcw+rvlduegelUNcfSZ7Ogg1
         zMpGj3Xa5oRWml4OByu6embpNwQmRlUcVcQB+IExNen/CJsgme7OZAE0Cp4svcs75P4p
         8yCw==
X-Gm-Message-State: AOAM531I7oUe3oAXM5KmTEG6tBhXnccjhPgGrAjrqsZoJlQ3VJD0tL/+
        GHBR9+Vaf4OCm/D4Vcnc4XisnbiWbjxZpQ==
X-Google-Smtp-Source: ABdhPJxkO127Dd8c0CWq4p8iMgimgA8Gt8rCKHI8qRygPG1kKnxfptqFXCeDu/JSucjOXlGqR9V3OQ==
X-Received: by 2002:a1c:b407:: with SMTP id d7mr2029134wmf.59.1599772473857;
        Thu, 10 Sep 2020 14:14:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 22/24] membarrier.2: Note that glibc does not provide a wrapper
Date:   Thu, 10 Sep 2020 23:13:43 +0200
Message-Id: <20200910211344.3562-23-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Notes: I copied .nf and .fi from futex.2, but they made no visual difference.
What do they actually do?

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/membarrier.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 8825de71e..f65c6be5c 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -26,9 +26,15 @@
 .SH NAME
 membarrier \- issue memory barriers on a set of threads
 .SH SYNOPSIS
+.nf
+.PP
 .B #include <linux/membarrier.h>
 .PP
 .BI "int membarrier(int " cmd ", int " flags ");"
+.fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR membarrier ()
@@ -270,6 +276,9 @@ Examples where
 .BR membarrier ()
 can be useful include implementations
 of Read-Copy-Update libraries and garbage collectors.
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH EXAMPLES
 Assuming a multithreaded application where "fast_path()" is executed
 very frequently, and where "slow_path()" is executed infrequently, the
-- 
2.28.0

