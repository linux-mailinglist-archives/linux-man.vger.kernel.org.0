Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 700733346D2
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233425AbhCJSci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233475AbhCJScW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:22 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48574C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:22 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id i9so7746121wml.0
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EXmvdA05gwvklwcoqJ0X5FCRQW8+WlZ6BE5TEg8JlFw=;
        b=CGMXt3YOemWl2i8TyMZv7zXNHFnV6s+VsfrflFGui4KEl33WL3cNXoNGx0HiMAou+B
         2XE0uxKNMYTpPz0zjNV/U3+32fDPUe5c8AvBIaOdJoG8VPxXud1fpQt/WAffPLwU0jZ7
         XVj+eBkIgIr5nRy50njoRs9rWDqoAfToqra4bSMChkFg1hcwKVGs1U0hoVJ1maVVZO8B
         ZVLiu43LJYOiTWb57lEIS4eTfKUXYYRMeN7WaOb9tiuezCU0ZWX7ZoVy7hsM9HDH69K8
         2BTyklbrcxCa5RKgKGTXMGxdbDrTnO0Gr5jfQio5SQdSO+vA/XQ/+qnzinNiY51INASH
         coOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EXmvdA05gwvklwcoqJ0X5FCRQW8+WlZ6BE5TEg8JlFw=;
        b=oaSEe1SMPtB4DVL/jyn7nnMJbpd7/1td0I7i8xD7yeG4PPRln7KtnIC6e862Fm8i20
         hbBt0HLZZgtiuhX/jBJHx2Qr4zkz7nCWtM9A21jQWyeltP3LOK93pr2VRaBB0JEhPG9g
         0eU8TmP5+D868slH081GZyq4Pu/qgx5FpOkZf0qoaO5UN7zcNPGisFsllK349cxBto0j
         UBMJVXVdMkx3cp1qpM30dMUTh2X51IIZ3qpzXIUikQPPhjrGGgA0djsfjZLMXhmfnVoR
         tdePLISINlB2+rL1w2AS7v6E0H8i1LC3StpSGhFZHcVPwSWookp90GuirraJaiYhAi4W
         5RzA==
X-Gm-Message-State: AOAM530ld5C4COJeJRCX8ldMMmhmQTi8OvgKuLwJwbFpL53S49o1LO8E
        KMdp+nuBLp0DtUQEO4PLojBpLY6nuEmVKg==
X-Google-Smtp-Source: ABdhPJx9KaA8iy/s8seJmvivCGPKPNWw/7McuXz8zVPY56ru30Du1YUoshFPD8U/SFTM1bAIwFsJ+Q==
X-Received: by 2002:a1c:7fc9:: with SMTP id a192mr4500616wmd.15.1615401141086;
        Wed, 10 Mar 2021 10:32:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 18/24] strsep.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:44 +0100
Message-Id: <20210310183149.194717-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in strsep().
Let's use it here too.

.../glibc$ grep_glibc_prototype strsep
string/string.h:455:
extern char *strsep (char **__restrict __stringp,
		     const char *__restrict __delim)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strsep.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strsep.3 b/man3/strsep.3
index 9d40e208b..91c379bdb 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -37,7 +37,7 @@ strsep \- extract token from string
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strsep(char **" stringp ", const char *" delim );
+.BI "char *strsep(char **restrict " stringp ", const char *restrict " delim );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

