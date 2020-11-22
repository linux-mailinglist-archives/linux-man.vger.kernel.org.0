Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 527692BFC90
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 23:48:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbgKVWsF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 17:48:05 -0500
Received: from buexe.b-5.de ([185.37.144.146]:52300 "EHLO buexe.b-5.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726698AbgKVWsF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 22 Nov 2020 17:48:05 -0500
X-Greylist: delayed 641 seconds by postgrey-1.27 at vger.kernel.org; Sun, 22 Nov 2020 17:48:04 EST
Received: from kirmayer.de (aftr-62-216-203-174.dynamic.mnet-online.de [62.216.203.174])
        (authenticated bits=128)
        by buexe.b-5.de (8.15.2/8.15.2/b-5/buexe-3.6.3) with ESMTPSA id 0AMMbC06016549
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 22 Nov 2020 23:37:16 +0100
Date:   Sun, 22 Nov 2020 23:37:07 +0100
From:   Sebastian Kirmayer <man-pages@kirmayer.eu>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] getnameinfo.3: Fix _POSIX_C_SOURCE value for getaddrinfo()
Message-ID: <20201122223707.GA7261@kirmayer.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The minimum value of _POSIX_C_SOURCE for getnameinfo() was mistyped as 201112L
(not a real POSIX version), it should be 200112L. This is the same typo that
was fixed for getaddrinfo.3 in commit 94db8ae1824ada8561c3dbbbed88a8a9175c4886

According to the current documentation, this file should not compile, but
it does:

    #define _POSIX_C_SOURCE 200112L
    #include <netdb.h>
    int (*mygetnameinfo)() = getnameinfo;

(If _POSIX_C_SOURCE is changed to 200111L, the program does no longer compile.)

man3/getnameinfo.3:

@@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
 .RE
 .PP
 .BR getnameinfo ():
-    Since glibc 2.22: _POSIX_C_SOURCE >= 201112L
+    Since glibc 2.22: _POSIX_C_SOURCE >= 200112L
     Glibc 2.21 and earlier: _POSIX_C_SOURCE
 .ad b
 .SH DESCRIPTION

