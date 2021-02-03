Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 416F530E381
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 20:46:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbhBCTqY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 14:46:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbhBCTqX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 14:46:23 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B53C061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 11:45:42 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id c12so612921wrc.7
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 11:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E8WvLiadF9C2jr4Z+T3VLTsZX0Aneasf/j7biIOKuRI=;
        b=gK0eEBOat5u8I0gWTGahEMYKF0A12dLsICPUq+8xFZLztC36jYN0jTVOr3MMFsBvnL
         oCvPbxxe3wN3smE+puHI3vP4nSgxpMSCc2NSHqT4JnpcwgcIFA5Pmmmk67AjCoqdYx2Z
         VboBXmCIow+jzf7vUuAg+zntsPZEeZ0RYKtQp2WL7MnbnSx4IuNlwrqVjVkIdGjINqt+
         WrUBw89A9V8OOoEm/x4EAQU0Yo4exrB2skiFqcLsEh3lG1sfv3tA3UhBVgm/HaIlKoDB
         ORhwVv/AIti9NSNl7AMsHgQlFWT3VoOzc29TO87+Ap4V4uyY9EFBN9gAewHuc1dkMKm+
         9K+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E8WvLiadF9C2jr4Z+T3VLTsZX0Aneasf/j7biIOKuRI=;
        b=GPTfK98GiOpHawNben1XjBtsAfH83LDjygohXIwsi4d/kRmJGidw1RPTIDCVpmJcPp
         K0TbXh0uHUMkZ7OIQ5YNRPa75IJXdafEQUGAzl74jIivm0Wzjj8axdMSgkfiwGzL3Enm
         wBJw4q/Ckodc+xPoJkc+kN3ynfO9NWrFJmW7sep550Ya3zcJ3zhLV1kCaiwJVR9bWxud
         EwRO4fcxBnJv5fjL5xQuwRR3mFzpb9SdI1xTA3+OVnjXxxLegnAJeYg/c1CNlCr1DMpe
         CeaEMd7BCF/COzoCJj27oZ622GwLA3UhhcPmw9usi08dJ5XsAyNi5z2eUkKEaWraOfmt
         EhBA==
X-Gm-Message-State: AOAM531wH0D8j/Lei8XCb1y57Pl22kC2a3of9DMS6o5S9JuJKqcPQH3M
        svYJizrR8CZczEizZY/v3Dk=
X-Google-Smtp-Source: ABdhPJz5iFFOs20IpKCna2QgjyEYoMNb2iMIbJFQRR6MCsqOznTVrFl6PnK0HR43/nT225KwTe3Q/g==
X-Received: by 2002:a5d:654f:: with SMTP id z15mr5388010wrv.46.1612381541415;
        Wed, 03 Feb 2021 11:45:41 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h14sm3381335wmq.39.2021.02.03.11.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 11:45:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        libc-alpha@sourceware.org
Subject: [PATCH] getitimer.2: Use restrict in prototypes
Date:   Wed,  3 Feb 2021 20:43:55 +0100
Message-Id: <20210203194354.158439-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the 2nd and 3rd parameters to setitimer()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_syscall_wrapper setitimer
time/sys/time.h:129:
extern int setitimer (__itimer_which_t __which,
		      const struct itimerval *__restrict __new,
		      struct itimerval *__restrict __old) __THROW;
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
	  "^[^\s][\w\s]+\s+\**${1}\s*\((?s)[\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getitimer.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/getitimer.2 b/man2/getitimer.2
index b435c343e..9ec32e836 100644
--- a/man2/getitimer.2
+++ b/man2/getitimer.2
@@ -18,8 +18,8 @@ getitimer, setitimer \- get or set value of an interval timer
 .B #include <sys/time.h>
 .PP
 .BI "int getitimer(int " which ", struct itimerval *" curr_value );
-.BI "int setitimer(int " which ", const struct itimerval *" new_value ,
-.BI "              struct itimerval *" old_value );
+.BI "int setitimer(int " which ", const struct itimerval *restrict " new_value ,
+.BI "              struct itimerval *restrict " old_value );
 .fi
 .SH DESCRIPTION
 These system calls provide access to interval timers, that is,
-- 
2.30.0

