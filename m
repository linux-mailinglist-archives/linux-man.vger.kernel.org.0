Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50DCC31BA28
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:18:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhBONSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:18:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbhBONSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:18:02 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A81C061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:17:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id r21so8814886wrr.9
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=31rx3l2PdJGOAJEv+e3vpfr+GldWHWiMGTLLOSAaja0=;
        b=Ld3h/JVszdaD8IYKljvX/PHoAMM1QMdIVqLKQxENMxyMF+bAlQ6vq7U7BPziMlK/y+
         XBrbTeMvmrReEmMx+3LOfd5K5JM9Q6D6ulX8QbQip9hmPks0LjG3aNlV58mMixA6mHc5
         BMVy14O6RBAwGfyhqthYQkon6asqnfOmwf9xvhJ/21KUgRjlki/2y+CaBMOnZeTIX3B+
         /Dg4dGoJJBS5PLLO2bHH2n8KYiDvYmvCvIeHHROzRTJv6lvQR6wEe8h5OJ+ggqp8ks7A
         gk7ZsnCXXQoTmudgmZYJiLXH77bm2qHIs57/BEiWUByGbAsfCaSrKdrUINBiIKlPDCXO
         t65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=31rx3l2PdJGOAJEv+e3vpfr+GldWHWiMGTLLOSAaja0=;
        b=TAgdJb+ATTIcNT5qJuhVpPLiFHR+0mjdz6jsjbmeldr00VuC+PD6OPQ7kSvLoLggeg
         6pZRKzHDpCd/ToXjxnjXBSW99IcYItZXeGM48IPHdIMXt7BmvV6EsDrxA1QFpQWHXE3i
         qqV2N6fLOLnd23TJujmm5M/t9sofwcnewyM+ipJnVagDX/M/gxm4d8kvTI/DsJLxjTod
         GD9O6+k2JT2iqwEY/AvRDDRQ79S398jgPVRyomLygzmri8kH3YnK+8FyB6jm2Ds5rWXZ
         AwKOdvJMuj2wJ4Xdof3IrgNF4z6k474V+uKjLtSZTgpnmySQby3nESpB9ngIMCKnLjL8
         cdUQ==
X-Gm-Message-State: AOAM532PGmRNg4eAEGL0N+s0ehLkbAnBlNrXDgpT8s9t69uu5Aov7OfK
        KQgBZyEZzeZdAX8lrEG8BdY=
X-Google-Smtp-Source: ABdhPJyN3TXFtB17JJM6gn0RLJqUg5kxMHgEGdncWu8Ec/wGhKDLXewUlFO8PGdCW/VPYeYpZqZzWQ==
X-Received: by 2002:a5d:6d0c:: with SMTP id e12mr18200286wrq.136.1613395039575;
        Mon, 15 Feb 2021 05:17:19 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:17:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] splice.2: Use 'off64_t' instead of 'loff_t'
Date:   Mon, 15 Feb 2021 14:15:18 +0100
Message-Id: <20210215131522.450666-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The kernel syscall uses 'loff_t', but the glibc wrapper uses 'off64_t'.
Let's document the wrapper prototype, as in other pages.

......

.../glibc$ grep_glibc_prototype splice
sysdeps/unix/sysv/linux/bits/fcntl-linux.h:398:
extern __ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
			 __off64_t *__offout, size_t __len,
			 unsigned int __flags);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/splice.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/splice.2 b/man2/splice.2
index 6e9029281..d07639810 100644
--- a/man2/splice.2
+++ b/man2/splice.2
@@ -31,8 +31,8 @@ splice \- splice data to/from a pipe
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <fcntl.h>
 .PP
-.BI "ssize_t splice(int " fd_in ", loff_t *" off_in ", int " fd_out ,
-.BI "               loff_t *" off_out ", size_t " len \
+.BI "ssize_t splice(int " fd_in ", off64_t *" off_in ", int " fd_out ,
+.BI "               off64_t *" off_out ", size_t " len \
 ", unsigned int " flags );
 .\" Return type was long before glibc 2.7
 .fi
-- 
2.30.0

