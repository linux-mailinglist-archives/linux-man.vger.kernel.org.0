Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E15B230E508
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 22:37:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230033AbhBCVhU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 16:37:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbhBCVhT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 16:37:19 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C65C061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 13:36:38 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id e15so1114388wme.0
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 13:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kx8NGJiBIi72E4NKGiiEGQiOpzxMdWHRQf3WoOmsyh0=;
        b=mHSNdHeapn0rl5BH3Upme2/GbuuIZ3H8qqh7k0a9Tp2XtsCdOnvi0XDH4IDm576uaA
         fV3RtwKCE6XmR6S9D4AkkTzp+uSdKMqLEMst91P6evwwhsdSsP+8NayU2/6nizsuRrfO
         ib8RrzH/dHmEkfL3xj/kiqLzlEfYQ90RY7H/ptMUbejmKln245mnaHY+bN7w9NL+KOMQ
         TUaWSFHlxEkyRytnsbzeEUsorJ1cCFtfWZpji0WDfwmvtEPV3+NPfjGj62HMOqtAcGhl
         epx6NzehioauGwNNeqRq7a1d284N6MmWYu5eJV1SSN+lG7A3l6cdhhF+zvjht8KK2fQl
         o1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kx8NGJiBIi72E4NKGiiEGQiOpzxMdWHRQf3WoOmsyh0=;
        b=FfkUpdnVqIcTeszFI9oJC+xEYksUUZzjP1xclAZL+GTBOR4AvbA8+KlJanRqUzG4JL
         1OcAWaffUlcBOYoq3wWki3iEsEhJVVONZMm3H4+FabQyFqmZD8btVJ/BJf8EsMu+06f3
         DWlT3Q/eUSIhMRYac3szrM4lfkoPMBSd3ThmtbHEbXSkYUZ0cajQBN0M0y9Ay8bJEAUh
         cKue2OcEjs7c1GoOQca1VSTbmjujncvozcJNW9mSiT4BrDCqOp7l+maAUMf/lK1jOg/p
         rDM8azraHKKwCZzWRjLi/sfWwjWJBR6Kjnbjo84M+sKApdg043IdbW9T2TxX+p7pSHq4
         HlDw==
X-Gm-Message-State: AOAM531uWeswI5993ICGCHdtq1HIDmzNK5+mU8zthi4LTQk7k9giiRlC
        7p0ivAoZUbr6/9fDGlYz8A8=
X-Google-Smtp-Source: ABdhPJzelOgzeSxuNeVXX55G/BsPCFbqBl0xI1KnPxIm8PTPrEj3u2VVkzarMLXwMzc9GJjfBktuCA==
X-Received: by 2002:a05:600c:19c7:: with SMTP id u7mr4530602wmq.122.1612388197567;
        Wed, 03 Feb 2021 13:36:37 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d30sm6140717wrc.92.2021.02.03.13.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 13:36:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH v2] getsockname.2: Use restrict in prototypes
Date:   Wed,  3 Feb 2021 22:36:00 +0100
Message-Id: <20210203213559.165019-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <07cd0609-31d8-adbd-2549-dc4ad54bbd34@gmail.com>
References: <07cd0609-31d8-adbd-2549-dc4ad54bbd34@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the 2nd and 3rd parameters to getsockname()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_syscall_wrapper getsockname
socket/sys/socket.h:116:
extern int getsockname (int __fd, __SOCKADDR_ARG __addr,
			socklen_t *__restrict __len) __THROW;
.../glibc$ grep -rn '# *define __SOCKADDR_ARG'
socket/sys/socket.h:58:
 # define __SOCKADDR_ARG		struct sockaddr *__restrict
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

v2: Add restrict to 2nd param.

 man2/getsockname.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/getsockname.2 b/man2/getsockname.2
index 55db4b84c..bf36e260b 100644
--- a/man2/getsockname.2
+++ b/man2/getsockname.2
@@ -44,8 +44,8 @@ getsockname \- get socket name
 .nf
 .B #include <sys/socket.h>
 .PP
-.BI "int getsockname(int " sockfd ", struct sockaddr *" addr \
-", socklen_t *" addrlen );
+.BI "int getsockname(int " sockfd ", struct sockaddr *restrict " addr ,
+.BI "                socklen_t *restrict " addrlen );
 .fi
 .SH DESCRIPTION
 .BR getsockname ()
-- 
2.30.0

