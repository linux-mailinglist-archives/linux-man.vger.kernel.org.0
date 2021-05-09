Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A89103778DC
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhEIVp2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbhEIVpT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1F81C061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:14 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id o127so8059244wmo.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qE+j8aI25jomSDCsRi5kLSRs+rGk7Hv03HXX6ezwg7g=;
        b=oz35RZv6d+7W9sH1yfsChfq6ppkh/iCj82VgrBa/H7bRQzYZN1WrOXPUBWZn6SWE6V
         iv90k4X/wYrPaPh4Xrs2BvCQMgqtNh/wNhHTR6RTvaSM5pD9wiWEluRZrlVdWH4LTlkl
         oLiieOv7EElxSodpp022XOY623awvHWY8fp00Vxij+sIYORz7IGCrrkJ4I6TqHu3RP0F
         QsUAQ0JjNqGSF20aWpDwah5FKOQ5hf2KdYTBncP62kvl7lp+KzJ+X3m025El2bsvxjE3
         XsSXwGY+cssk2TB12/+uKgP9t8QFIrvRE6Jp3ZgEjuKMadtGixbed0wSs34OAGB/yrG2
         Hpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qE+j8aI25jomSDCsRi5kLSRs+rGk7Hv03HXX6ezwg7g=;
        b=FQ0m7FwRKJMiuLUfmAKGlCx2guUkm3y3ChkDskXRDJrXYgSdDnlFCR9E8ry1535Y4R
         +10mqHjrZmqV1X9ENO4xH4Un+fdFweTpf1FK8vUYCztIs4rOPvPW6P+OofnhXBITIzRb
         BtvBAfKsl6JDYlqRxKOTJfZoZRCJULr5FTAztgBm+cbFLV194JB7b4LKZ/TgPmn+acrX
         eK3OkT9OT/LHwqWThomTTAZqzYV6cr+mtOsLiYPXmwRGI+mi7UwNixrT50q47htzkEyf
         oUQ/6yAxtTprdLLWj2Z5u5zPQ1XAK2u+Ji/OPUQHmybMy/B77Bh3ofzLbgpHzIwGhadx
         j2+A==
X-Gm-Message-State: AOAM533v1D+Ure+doXB+xVGD9vJCqcpyQ52b1K3tos09388EC3xiOHcA
        SqcoJR/FwVb2DSA3/7Qerax5i1DUY+UAfQ==
X-Google-Smtp-Source: ABdhPJztX3j4VJUQNlOFnJjQ6oUQ/C0CvuWcvsWoKnRqY49gkMhrNXfgWbM00n2ptOtotxEqV10DVA==
X-Received: by 2002:a05:600c:3592:: with SMTP id p18mr4194888wmq.44.1620596653592;
        Sun, 09 May 2021 14:44:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] xdr.3: SYNOPSIS: Fix prototype types
Date:   Sun,  9 May 2021 23:39:19 +0200
Message-Id: <20210509213930.94120-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use the same types glibc uses, and add a missing 'const'.

.../glibc$ grep_glibc_prototype xdr_union
sunrpc/rpc/xdr.h:315:
extern bool_t xdr_union (XDR *__xdrs, enum_t *__dscmp, char *__unp,
			 const struct xdr_discrim *__choices,
			 xdrproc_t __dfault) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/xdr.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/xdr.3 b/man3/xdr.3
index ea6359787..83f668dc9 100644
--- a/man3/xdr.3
+++ b/man3/xdr.3
@@ -460,8 +460,8 @@ integers and their external representations.
 This routine returns one if it succeeds, zero otherwise.
 .PP
 .nf
-.BI "bool_t xdr_union(XDR *" xdrs ", int *" dscmp ", char *" unp ,
-.BI "                 struct xdr_discrim *" choices ,
+.BI "bool_t xdr_union(XDR *" xdrs ", enum_t *" dscmp ", char *" unp ,
+.BI "                 const struct xdr_discrim *" choices ,
 .BI "                 xdrproc_t " defaultarm ");     /* may equal NULL */"
 .fi
 .IP
-- 
2.31.1

