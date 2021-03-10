Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92E193346CD
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233201AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233182AbhCJScQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:16 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5EA4C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:15 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id f12so24450215wrx.8
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GwmJUFdVmQpqJBDhv4YOalGN2rFIVkaI+KfkWvD0mH4=;
        b=Y9IdxGAq8B6Ir4MqWUi66rY8mLgZzcQCo14cwQLei6u5rpiqEqdhnEjJvBtNRQ/OLg
         djQehnt/U7SrTAivdhYfm+ORgKcMED5lcxMAk1+K/zYk3r3M6H6sjmysxl+qYujWyhQY
         D/PXbAYOYlUQvJZV/ZZVoTJ66k0sNJhOGHyKUI+mtw1Z7MJdE2+InzC0v5LOf2jkAmZ/
         Hr0ErAUcCLOmO37BzYDy9DVGKy+fg5gbZcwm1VldTa53TXWXy+IiVQaxpQgUdMgp1qP6
         vMocdtYmhpwBbiHUVtzDPbcUOi6CoGEJUzRYgNm40q3xq/3QGTWa+TAsY2lNXT5L9Ovp
         TWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GwmJUFdVmQpqJBDhv4YOalGN2rFIVkaI+KfkWvD0mH4=;
        b=oOsXP9B5iT9jWRY20VkKBdPuosR1vxQ+OxIW8k0p5K703i0wbDw0iqVWwKxGlplVpO
         f79GVSJIQWzW3eixRgkqbzLlloDk2Vi384Rwidt/ydIC4/QFt30Pyp2YahiBzLGwnlHO
         KNSrejtGxJLgedWzp7jyhpyo0sd+5kegJMZZUu6K01pXn7Hg0nsBMNtB+K8GPJjcUZqb
         IBwL6sAQ76+c4enNtHVdKE4T/XmKdUq84iBj3UDCRbL4CQzw5sVL5p1aeRZoMQEYGj91
         K/scQELw1Ef2Cs5N8htAOPSCgyOLNNKmZTRU3Al8JFK3901q5g1ov73o+4OcdYgKJV+8
         9pnA==
X-Gm-Message-State: AOAM531Nn26D06x9CnlK1TmZwgo69F7IeyHKfLgs1s3mwrh9MAPBv/M/
        rJP7hdubXbRZcnxvt2Tuhjk=
X-Google-Smtp-Source: ABdhPJy/4S7XL76Fk3f7Mpp3vg3EX5cmQtH7KXgzUAMIye2lNfNFVmf9YAOAARlgAwsoFxK91Lof5A==
X-Received: by 2002:adf:ee8f:: with SMTP id b15mr4802359wro.314.1615401134611;
        Wed, 10 Mar 2021 10:32:14 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:14 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/24] stpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:36 +0100
Message-Id: <20210310183149.194717-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in stpncpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype stpncpy
string/string.h:483:
extern char *stpncpy (char *__restrict __dest,
		      const char *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/stpncpy.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 3adc5f426..493d42378 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -18,7 +18,8 @@ stpncpy \- copy a fixed-size string, returning a pointer to its end
 .nf
 .B #include <string.h>
 .PP
-.BI "char *stpncpy(char *" dest ", const char *" src ", size_t " n );
+.BI "char *stpncpy(char *restrict " dest ", const char *restrict " src \
+", size_t " n );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

