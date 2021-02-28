Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07365326FC5
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:50:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbhB1AuE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbhB1AuB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:01 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5480DC061786
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:21 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id b3so12277563wrj.5
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IaAt1Agd9M4XX865v3NQMgwHkszrOMBh2uoYAhzIKdU=;
        b=aP22PJvU1HQdZdA4F6mTdb54WP/efOEqB4+Q53/8MB8JlGgnZMM8oiUaAfLNPav2YT
         zXqD1rRxnuqHURozNdQRo3sCNxvqpNdeXmpEyBGhoamWdyt94I6Sq+08BdYjNnd1rc5U
         IiIpDkO3Ysf8itcEBUOZEA677AeMOz5F4//72JIhbNhky9xoxtt5xS23SdpQNPYFizQp
         e39joH6B7jCSZuCVLoVlO0/FnTB7wHG8Cn+DxkW8Lwi3Leka0nuKJWRIdCu8VbzoIy8n
         Ap4dTmcjTA9YSmOVH/PLdo+81rdRdQxQfW/5GIJb/2tUYO9trY/+qKO7AXiqPSToOTc1
         q2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IaAt1Agd9M4XX865v3NQMgwHkszrOMBh2uoYAhzIKdU=;
        b=OvaAonAMRYoir1QJYgvUneBsDgMhQg/APTXR0smfNiEXpFEkDJrUJdqX59fx8/H6ck
         1ZFQaVt/ZIfk66FycLKtLV56cQE/AxEo5E5Ukmp6xIjfaiJ/vRTTR81KFSiVYO5jCEkC
         Uagbx2I94o7pMaUk+HUbhT/Hp2etOXNLqg/EMOFsZ998epYIXS5orAeQE4QK01uXRa+Y
         IbRLQAQVMJ1s4DpuxGCv0Xb1xqePh11wS3AvhoTbK1XmUgly0Zy16jwi4fV+YRmY3fiE
         IPNYsYn5Dq+x14KocImzmEjeC141/pjmZ73zpt3ssopmv45FZgKNm/gVLD1zPG7LeQll
         fzsQ==
X-Gm-Message-State: AOAM5321JfOz6toLdvN5R4ylLZNxIfM2wceyFa32Ey8tKc8D+kr1ZmpC
        WWkAaiTx+zcjZu+JsPSRre6ttw+VTwjEWg==
X-Google-Smtp-Source: ABdhPJydkCAW1qGwJFWgE0WeIHFE1lfXj97IgG0OV6UmOYcT42aQkgrsZoNmjeTK79bOZ/HWMg0Zow==
X-Received: by 2002:a5d:6a49:: with SMTP id t9mr3993603wrw.131.1614473360147;
        Sat, 27 Feb 2021 16:49:20 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/14] getaddrinfo_a.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:06 +0100
Message-Id: <20210228004817.122463-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getaddrinfo_a().
Let's use it here too.

.../glibc$ grep_glibc_prototype getaddrinfo_a
resolv/netdb.h:690:
extern int getaddrinfo_a (int __mode, struct gaicb *__list[__restrict_arr],
			  int __ent, struct sigevent *__restrict __sig);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 416904437..0ddb8a76d 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -36,13 +36,13 @@ network address and service translation
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <netdb.h>
 .PP
-.BI "int getaddrinfo_a(int " "mode" ", struct gaicb *" "list[]" ,
-.BI "                  int " "nitems" ", struct sigevent *" "sevp" );
-.BI "int gai_suspend(const struct gaicb * const " "list[]" ", int " "nitems" ,
-.BI "                  const struct timespec *" "timeout" );
+.BI "int getaddrinfo_a(int " mode ", struct gaicb *" list [restrict],
+.BI "                  int " nitems ", struct sigevent *restrict " sevp );
+.BI "int gai_suspend(const struct gaicb *const " list "[], int " nitems ,
+.BI "                  const struct timespec *" timeout );
 .PP
-.BI "int gai_error(struct gaicb *" "req" );
-.BI "int gai_cancel(struct gaicb *" "req" );
+.BI "int gai_error(struct gaicb *" req );
+.BI "int gai_cancel(struct gaicb *" req );
 .PP
 Link with \fI\-lanl\fP.
 .fi
-- 
2.30.1.721.g45526154a5

