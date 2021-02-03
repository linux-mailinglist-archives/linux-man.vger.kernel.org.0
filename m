Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 519C230E59F
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 23:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233038AbhBCWGc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 17:06:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232949AbhBCWGS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 17:06:18 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A65C3C061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 14:05:37 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id v15so1086621wrx.4
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 14:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jQrGB0KLmwesqmY6ile7AdH+RI87jH2kiJYqFu8Nhc0=;
        b=fb7dknQcuOwJr7qEZBtQ7h8NQ9PGmyVTjoxIvVnUKlIdHIrHo0MCy2hlYjZfNy9/+C
         SgLT6lKhr/+APwRJ0Ah8LjTA842Lr72HWQPEsh2niKtNXmWvOLs2DOZjLzjS6CE5jm6p
         WXbcYtXJ44x8C3CVbB+ptsCN/h+oNoiTH+TFhL30jG+VemHfND+otjgFv+Tw57pLSDbP
         AzHhHjD1ZNGwt/+Wvl/wGzrpXayGzTOLqnqai4DlcWIWRT3rmNvTlkw3VBFPkzsKuy34
         /g/JxMBwoHWMCbcNUfcNZMqzh+UdURXYwr8YSjabAjusRH3bnBwzF+r5EWenYaY4Cn1c
         07aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jQrGB0KLmwesqmY6ile7AdH+RI87jH2kiJYqFu8Nhc0=;
        b=BjwYgO5daMsqikxExQatuvaknm9bPRTsxcnANUaDr2SpgMhH95acO1YCHaxvoYQv7d
         I0Zp1HGb2p6wcIVUdo90RunvnKAQotszmhhFlbjbuD9l1iiXFmYbd85iufxVXBF/o33k
         /NtgnWOjb9C9P27kwyh+LklWjTta+h7o4Hs5YJcvIwWQXChNlATrUif4ZDd76Vud2CHn
         lFc7IJfvVcSMIqP6EOTtjA/ymBm0xEvroVJWBDuXnm+isRttJu3MiwxSXU5PDiCuYsxe
         Tq65UBVM79mjoBEHO+zlZDeQMHJuWxGEA4uMnqjMsWpqSaYjKD1AKP5et9ta2RBzdAcf
         LCSw==
X-Gm-Message-State: AOAM530SC75g99iSDVBQhUzOTbG+mf4tvLRiWmoXzf3Amoz1DZLM8R5D
        Jczs6tjvaSfAohdaVeNulhw=
X-Google-Smtp-Source: ABdhPJyHHlyQrCPLP56Ieqe1RQB/0ZGufEEyo7PzQVVuJdb9CCNwMKirlgFI4saJklfb/NlIVNlh7Q==
X-Received: by 2002:a05:6000:1252:: with SMTP id j18mr5723585wrx.232.1612389936461;
        Wed, 03 Feb 2021 14:05:36 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f14sm4096842wmc.32.2021.02.03.14.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 14:05:35 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] gettimeofday.2: Use restrict in prototypes
Date:   Wed,  3 Feb 2021 22:52:06 +0100
Message-Id: <20210203215206.170532-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of gettimeofday() shall be
'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_syscall_wrapper gettimeofday
time/sys/time.h:66:
extern int gettimeofday (struct timeval *__restrict __tv,
			 void *__restrict __tz) __THROW __nonnull ((1));
.../glibc$

function grep_syscall_wrapper()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.h$' \
	|sort -V \
	|xargs pcregrep -Mn \
	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Actually, both POSIX and Glibc specify the 2nd parameter of gettimeofday()
to be 'void *restrict' and not 'struct timezone *restrict'.
However, I didn't fix that for now.
You may want to have a look at that.

Cheers,

Alex

 man2/gettimeofday.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
index 085b86ad0..7e2726ed9 100644
--- a/man2/gettimeofday.2
+++ b/man2/gettimeofday.2
@@ -44,9 +44,10 @@ gettimeofday, settimeofday \- get / set time
 .nf
 .B #include <sys/time.h>
 .PP
-.BI "int gettimeofday(struct timeval *" tv ", struct timezone *" tz );
-.BI "int settimeofday(const struct timeval *" tv \
-", const struct timezone *" tz );
+.BI "int gettimeofday(struct timeval *restrict " tv ,
+.BI "                 struct timezone *restrict " tz );
+.BI "int settimeofday(const struct timeval *" tv ,
+.BI "                 const struct timezone *" tz );
 .fi
 .PP
 .RS -4
-- 
2.30.0

