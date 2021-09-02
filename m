Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56E073FF7D6
	for <lists+linux-man@lfdr.de>; Fri,  3 Sep 2021 01:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232931AbhIBXaS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 19:30:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:37832 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230088AbhIBXaR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Sep 2021 19:30:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA92360F91;
        Thu,  2 Sep 2021 23:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630625358;
        bh=G8L+50J2bY97prOCo1Ec0nLnZFPrqF34MCjyuGOKIYM=;
        h=From:To:Cc:Subject:Date:From;
        b=DKMLNMhoL9YQKIJQSu2UBCJirB6sV7aoh9glWlDezAMjwnHhG87ozO8ktd381YSy/
         7wMK9AqtBp0tmD/RCOWzcKtTu/umD3j1JU9nvNFYF/1qY8FhxNGctlqdtumSUkjrL6
         HXqb87cZ2n5ztzyvWdIA4QoxyxFsyG2eXNRVgvE4F0NC1fkHr27XiFOuZ1Q5h48OfI
         gSSff4iH8/tRs7OmFK/VctdGf/K7HzlxFA8cy2jLjmBVWwXCChA4TfyjhG8SUMpGan
         FaZ+y+51tG0xzHRXjmsy+we4QIBOZzqnoOeByB0YGm9J8JW6lG72WCrbEuMwn1Czt5
         aPhoRjLyOJgcQ==
Received: by pali.im (Postfix)
        id 3721910C6; Fri,  3 Sep 2021 01:29:16 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: [PATCH] termios.3: CIBAUD and IBSHIFT are implemented on Linux, just unsupported by glibc
Date:   Fri,  3 Sep 2021 01:29:00 +0200
Message-Id: <20210902232900.2139-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c11937458eac..d0630fe23040 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -348,7 +348,12 @@ bits.
 .B _BSD_SOURCE
 or
 .BR _SVID_SOURCE ]
-(Not implemented on Linux.)
+(Not implemented in glibc, supported on Linux via
+.BR TCGET *
+and
+.BR TCSET *
+ioctls; see
+.BR ioctl_tty (2))
 .TP
 .B CMSPAR
 (not in POSIX)
-- 
2.20.1

