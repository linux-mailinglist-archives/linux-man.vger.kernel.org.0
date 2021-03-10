Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD5503346C9
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233357AbhCJScg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233257AbhCJScL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:11 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E26E7C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:10 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id f12so24449969wrx.8
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fdohn1pb1rZi0D62QJtzqKxiCptxB5fPp9OXm6eHGlM=;
        b=lZvLYje93U1hU9EoQBPF5PSj9NTUlRrF/XcLcMU45w5Yvdo+W8FokVhWj6jdnzY9+i
         JOYDEjgPYPs24utW4DYLOS1M6DqRMB3F1GKNOkq56Xynu2b0FCozlxmpsl9RndoA8KFd
         g2qYQeBCBGgW9q3Rhvjje69KdyBZGDC3tPKnrsxUXRwqCYBHlTxZPi758RpNq5YoB0P7
         FYwgwwvBGY9RybftobZa8/vrc7OyJ1zgozgBTjqubjwUmVNSGUi8PnFuPhOi+OTRFhTw
         PpzvbuHkH2JKZiBO5L/qylXodKyie6rqqHRq/OK67iZp+JBpPtW0hIWSSF5HqaxU2gNz
         /8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fdohn1pb1rZi0D62QJtzqKxiCptxB5fPp9OXm6eHGlM=;
        b=cN3LAr9CdhGUkAc6SBulo6IkuDiljOaHv8ZEceEfGRXbK9GgnZUFoEEzZuCX+aBAUU
         tK4JkIPeLst7/A8dfWENUUSR67GUopKoRvrpW291IPTypQg+pjgdEpR6tFXBYSOqz/g0
         X6rJVdMRTj8ZJI2EX7jmMaVsHNGhVjIvB2BZrER3+9ay/CkKtwLBAZQwIQJ7Oxc/HQT6
         KSrdV8R0p0HKmJjBj7DIPR7CexNKufcKhsnYnCoF3e2qbs5+miVEZawwJucGUnp7T91R
         bpl675CDnUsFgZG30CTH3e+vXoH9j55lNdZiWwXUjgBkxtnXfmG5O7XSCHJsZ6Lfupv4
         plNA==
X-Gm-Message-State: AOAM531ZLCifMxPEc+XrNviOBfTpDrinkWAUbncwq03eB49bfV75TU2k
        DXpOQreY2S5Vjdpq0KQ+m8k=
X-Google-Smtp-Source: ABdhPJy2W1N0HAl+XMFPPoZICa8B7nNzmjaito4c6qpxVBfxLDdkM3HSHw/9QZTYXvCha+2qHu3jcQ==
X-Received: by 2002:a5d:6312:: with SMTP id i18mr4937816wru.149.1615401129769;
        Wed, 10 Mar 2021 10:32:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/24] setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:30 +0100
Message-Id: <20210310183149.194717-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in setbuffer().
Let's use it here too.

.../glibc$ grep_glibc_prototype setbuffer
libio/stdio.h:314:
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
		       size_t __size) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setbuf.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/setbuf.3 b/man3/setbuf.3
index ccfeb83ba..ac73bb06e 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -56,7 +56,8 @@ setbuf, setbuffer, setlinebuf, setvbuf \- stream buffering operations
 ", size_t " size );
 .PP
 .BI "void setbuf(FILE *" stream ", char *" buf );
-.BI "void setbuffer(FILE *" stream ", char *" buf ", size_t "  size );
+.BI "void setbuffer(FILE *restrict " stream ", char *restrict " buf ,
+.BI "            size_t "  size );
 .BI "void setlinebuf(FILE *" stream );
 .fi
 .PP
-- 
2.30.1.721.g45526154a5

