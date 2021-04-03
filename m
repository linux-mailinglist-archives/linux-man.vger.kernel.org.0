Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D15FF353573
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236848AbhDCTmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236684AbhDCTmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:13 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B493EC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:10 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v4so7456740wrp.13
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g+VwRFXtYBld7qOq7F/JsLYm3jgnuUj08yDbJ/0ktzM=;
        b=ePueieLoewHikhV73yZwvxFlWWxBeukyJOG0H6/C9AOIhLBgKY1MOxoEWKxRls39ct
         ZquvPgsBEYct1PwHLVxAdQUogIHbuF2u14QLEpEgPP0v87d0L3rTlPmSFcglD7csh0HR
         q5nd2D/3RXzzwp+0ko6lKmtxa7mN7Z4AAfkURC4dfgKVVPJtiv8idhTkaQua+M3LwC+Z
         eciWwEtTwV5kiV9wwI1J3ePoU9PHro/m5P4kQ+CsNvrm1GZt7XPZjADsgiVXEsbWQiR+
         pZ+BubppHvjZ/Muf2zIAeJMZKY2FNKnTVFnwQTHlnNbD0k2Xl0Ie0GHc42B2RfdhnDZi
         9kpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g+VwRFXtYBld7qOq7F/JsLYm3jgnuUj08yDbJ/0ktzM=;
        b=b7Kw8PkUvZbyUHMXexqAj60/daAv5rsK0NRpCE8BMWITePoVaTuFS5yYokCUQsfSEG
         g+Z1iQtgGI1Ld/R+QpOKDZmKqF67PtFbySwDD4vK8McqU8hU6KkmBQ5OP7vLzW+xhMv9
         DZkmrYvvFhC2lDuG8OAxPuboTWbF16OgsopuhqEykrVfo9l66KrSbtpZopU2gkEiPHvy
         eCHKEm/yPJ5lnTqTxkSp+kVQfz2oPjr7ZAqeyfgEBiF7vWFHjZpSG5EDQ58sjT3rm0l6
         hnsxFDmU7n/PY+zE9AOYtvXznjdNxiQl/xxFYkcIsaQ+tk5X8dlidknTLC/pVAK84Smx
         w4kw==
X-Gm-Message-State: AOAM532CClVb5llIwWVnZ0EddP228W0ZgwuzuQ0Y5yIhfXF9/adlUi7+
        6J7CH9lZiDdFPkkZ8E6L3Cc=
X-Google-Smtp-Source: ABdhPJxr2lkhppSrUoo/8AW8CAgrjCR2hygXD04YtrJK6ZWG/B2+JIHrmw7HR7qajncB1OMDcADNUg==
X-Received: by 2002:adf:c401:: with SMTP id v1mr21966692wrf.242.1617478929581;
        Sat, 03 Apr 2021 12:42:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 32/35] ioctl_fideduperange.2: Make clear why exactly is each header needed
Date:   Sat,  3 Apr 2021 21:40:24 +0200
Message-Id: <20210403194026.102818-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the include that provides the prototype doesn't need a comment.

Also sort the includes alphabetically.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fideduperange.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 1df0628d0..e924ed248 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -25,8 +25,9 @@
 ioctl_fideduperange \- share some the data of one file with another file
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fs.h>" "         /* Definition of " FIDEDUPERANGE
+.RB    "                               * and " FILE_DEDUPE_* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
 .PP
 .BI "int ioctl(int " src_fd ", FIDEDUPERANGE, struct file_dedupe_range *" arg );
 .fi
-- 
2.31.0

