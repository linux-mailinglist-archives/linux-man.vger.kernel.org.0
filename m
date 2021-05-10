Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D825237968E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232253AbhEJR53 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233136AbhEJR51 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:27 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E3CC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:22 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id l13so17507158wru.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y1VLOq171M10g1rh5psGYSCTYnG4i566l1+++qkNDHY=;
        b=J/eT2JrKGhx/NznBTuMkDzH51GKol5k2cKS6ESXPa22+2iACSfMy198hatbhAhtBkk
         1FaNxC6BmgXJ72Ne25nNXe1xQk2vMK78PMzwjpRBq69W4Iu3wzkNuYfIqrScIYuyMpTG
         wQdh9YiSRyU7tIAoqQ9E/JOKzfjA3HpMidfeM4ZlxYUFXMFR1BN660Doj+woqaAaKKkc
         ks7eOiFatQeaYYTsG2miJ/So7tIIuAzjYn3gReNdVRzP4S5RcT5+CTwA0zk6qSSxXuAM
         4VbD8lAiSPtJGUkNzuKYDUEZm2wjXFq10AXlyeGhxIU8/nCQ+ez6xmpaF7OjMnmQDosq
         LADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y1VLOq171M10g1rh5psGYSCTYnG4i566l1+++qkNDHY=;
        b=KuHHYTfZoxdEHHD1IUKbqleh9W8E8/JAMDlPFaRRB4WAeuauGgijkBbVJ96KsjpWYA
         WZ38oI4mX4WoYB9HlZUEKaUM2OZj5XtFAfd2QHxjMjbndpTgvHkJj7KS9+UelRACReLW
         IxTKhCM8pSvrVHTtw8u/dD9RhdqhsU5NFSrABFUEp4T562tm+9WnqHVhyoRby5BhdOKo
         6GSxCV+/zlN1gj93EARzdwULIplqT5mRf5nx50vLzNOdR2Kr/6/PDJEMoFeXY2y/8UR5
         xtGcas3zUiSFFKioamk0/u/xVxXDtvVooIf4eSKKnoh7kJRMm+4HW4IC/ZhgO27UWPsK
         gXVw==
X-Gm-Message-State: AOAM53313jmd2sWxbixO1xn6StWGsvfTA2/CPlHV8CajmTuUtKukIAoN
        K+bg1CaeLgE8eh9+tT8ZFhQ=
X-Google-Smtp-Source: ABdhPJyQAqAh13jO3r6w8/jJPe84a/3udOQtKkWPdGVpS6ndUcrL5242flEkHNgT1iUiAMAwW2sHxw==
X-Received: by 2002:a5d:64e4:: with SMTP id g4mr31833026wri.366.1620669380968;
        Mon, 10 May 2021 10:56:20 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/39] ioctl_tty.2: Fix includes
Date:   Mon, 10 May 2021 19:55:12 +0200
Message-Id: <20210510175546.28445-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/ioctl.h> is needed for the prototype of ioctl().  That header
also provides most of the constants used by the function.  Only a
few of those constants are not provided by that header, and need
<termios.h>; clarify which constants do need that include.

......

$ <man2/ioctl_tty.2 \
  sed -n '/^.SH DESCRIPTION/,/^.SH/p' \
  |grep -e '^\.B' -e TIOCM \
  |sed 's/^\.B[^ ]* //' \
  |awk '{print $1}' \
  |grep '^[[:upper:]]' \
  |grep -v -e '^CAP' -e '^E' -e '^SIG' -e '^O_' -e '^[TR]XD$' -e '^POLL' \
  |sort \
  |uniq \
  |while read f; do \
	find /usr/include/ -type f \
	|xargs grep -l "define\s$f" \
	|grep -q ioctl.*.h \
	||echo $f \
	|while read ff; do \
		echo "============ $ff"; \
		find /usr/include/ -type f \
		|xargs grep -n "define\s$ff"; \
	done; \
  done;
============ CLOCAL
/usr/include/asm-generic/termbits.h:142:#define CLOCAL	0004000
/usr/include/gphoto2/gphoto2-port-portability.h:127:#   define CLOCAL  0x00000800
/usr/include/x86_64-linux-gnu/bits/termios-c_cflag.h:34:#define CLOCAL	0004000
============ TCIFLUSH
/usr/include/asm-generic/termbits.h:191:#define	TCIFLUSH	0
/usr/include/x86_64-linux-gnu/bits/termios.h:70:#define	TCIFLUSH	0
============ TCIOFF
/usr/include/asm-generic/termbits.h:187:#define	TCIOFF		2
/usr/include/x86_64-linux-gnu/bits/termios.h:66:#define	TCIOFF		2
============ TCIOFLUSH
/usr/include/asm-generic/termbits.h:193:#define	TCIOFLUSH	2
/usr/include/x86_64-linux-gnu/bits/termios.h:72:#define	TCIOFLUSH	2
============ TCION
/usr/include/asm-generic/termbits.h:188:#define	TCION		3
/usr/include/x86_64-linux-gnu/bits/termios.h:67:#define	TCION		3
============ TCOFLUSH
/usr/include/asm-generic/termbits.h:192:#define	TCOFLUSH	1
/usr/include/x86_64-linux-gnu/bits/termios.h:71:#define	TCOFLUSH	1
============ TCOOFF
/usr/include/asm-generic/termbits.h:185:#define	TCOOFF		0
/usr/include/x86_64-linux-gnu/bits/termios.h:64:#define	TCOOFF		0
============ TCOON
/usr/include/asm-generic/termbits.h:186:#define	TCOON		1
/usr/include/x86_64-linux-gnu/bits/termios.h:65:#define	TCOON		1
============ TIOCREMOTE
============ TIOCSTART
============ TIOCSTOP
============ TIOCTTYGSTRUCT
============ TIOCUCNTL

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_tty.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index badd58e50..c82690701 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -10,7 +10,9 @@
 ioctl_tty \- ioctls for terminals and serial lines
 .SH SYNOPSIS
 .nf
-.B "#include <termios.h>"
+.B #include <sys/ioctl.h>
+.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
+.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
 .PP
 .BI "int ioctl(int " fd ", int " cmd ", ...);"
 .fi
@@ -119,8 +121,6 @@ Window sizes are kept in the kernel, but not used by the kernel
 update the window size when the size of the virtual console changes,
 for example, by loading a new font).
 .PP
-The following constants and structure are defined in
-.IR <sys/ioctl.h> .
 .TP
 .B TIOCGWINSZ
 Argument:
-- 
2.31.1

