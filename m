Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C92037968F
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbhEJR5a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbhEJR52 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:28 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 944BEC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:23 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id l13so17507215wru.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3zKKMYASUcVP4nPH+4KBOAeF2koIXkEiHM2YxnppnRo=;
        b=VxN2KXlz4cu4Ot8/XMU95i2stUJdXHyNupPOwV9G2B6V3W8umLhpB2hiQfJEXpNTVv
         wdEgJk6DAKhEzYxfxvQITeQqHGS6nDfK1OwhB+982pMrE3NtozvIEfTC5YgbbG8QM0Yo
         8ewKEsMjFgUbKGN+sE3WRnfUUx/efFoar0F9VRCoap8E2dl6r6HCRjE8xyXupoefR4tT
         CBnc22pWDxijytshLYJt3MsxnV/8pRQeWtAFCkMlBBIu9empqz8F5zaElENqK56usdGy
         2CjbxZ+QFQ7QspHBtI/eFo/TNa03ZxIEgyLyFoi8fuHDSuZg9PvRJBKjZvYoztpIRlko
         NJRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3zKKMYASUcVP4nPH+4KBOAeF2koIXkEiHM2YxnppnRo=;
        b=TyGUbZc2+seDGyx2xh6lGguNYYiSRpZqJfkb3wZrgpj4/nlui+7ZvwrLun4g4chdYO
         IRDIITWe63ut65Lhjl8VfTrMsh1dK51wa8yh4u1Y0jWLE1cBDU6NVvngtyNb+VvgZmoJ
         bg+jmxqRBGpv0Ts6I8PA7iv9EUIeFDqa2KE1FtrwpBsJ6YzwnQActyIcZyhGP0uATB2n
         Eso47z2QV5jsWQQNDv87Ckkeouka9kf0BYPHAFhOsM+AMnrItxP26R92PbwJsnFwo5zm
         W/bOGydqVylxTF4CmcRC7SfvPWRTNVBdEJZ7ZwkPhXf60Crcf/nJ/UmXxP1v0cBxx9tC
         kWzQ==
X-Gm-Message-State: AOAM5324eqvqaVpBJx8mONyBR9kS9fnUVCpU0jWEct1XK7aeQmMeHL6r
        0Bk6LR49SprO5JKm9DJTqWA=
X-Google-Smtp-Source: ABdhPJxPpbonAxUmun27UjxOkBBCvwt1baKQ3b60yNiazwpNvHu9tfE0TptVvZp1nfyHj6xcmyD4Xg==
X-Received: by 2002:adf:f1d2:: with SMTP id z18mr32444064wro.245.1620669382303;
        Mon, 10 May 2021 10:56:22 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/39] ioctl_userfaultfd.2: SYNOPSIS: Add <linux/userfaultfd.h>
Date:   Mon, 10 May 2021 19:55:13 +0200
Message-Id: <20210510175546.28445-5-alx.manpages@gmail.com>
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
 man2/ioctl_userfaultfd.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index a3b8f737d..504f61d4b 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -31,6 +31,7 @@ ioctl_userfaultfd \- create a file descriptor for handling page faults in user
 space
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
 .B #include <sys/ioctl.h>
 .PP
 .BI "int ioctl(int " fd ", int " cmd ", ...);"
-- 
2.31.1

