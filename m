Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF0D3D507F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbhGYWO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:14:57 -0400
Received: from mail.kernel.org ([198.145.29.99]:38218 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229531AbhGYWOs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 25 Jul 2021 18:14:48 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2846A60249;
        Sun, 25 Jul 2021 22:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627253718;
        bh=xWKDtMKp96ySUTRlkjOTp9B+OB/BgcebxLciL+8fjsE=;
        h=From:To:Subject:Date:From;
        b=eL8U7Q9Fh2lKaai+T5mNT7PLMRFqyFAWELOapZYM1jE1iqNSCT+6fFqNgD0p+Khxt
         jpwBXz0P/7xAciKJOS9AmGynDjWNjou6enC5pAmeHAwxwbYwnr0y7f9JUhSAucnS0o
         DLxT11M8qdCmj+yYZUdXtYnxuJfLqsi4dEdJj4A26ZHyqiRO0dZNSzcVAkr8cx6lBr
         2xUpjLgQpj0YgxPNYBCpDlP7otRw+EVmJg4IlqAeulVz5TDD/xbx/kV8/Bi6cDg+cj
         CADUWBKcgoPGzBG6M5p6y1I/CJaRNlp9uHNPi7jbQs1dGRsKw3ZULAQ324ELB6tJaw
         V2fDnkezQiVRA==
Received: by pali.im (Postfix)
        id 77B71AFA; Mon, 26 Jul 2021 00:55:16 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
Date:   Mon, 26 Jul 2021 00:55:06 +0200
Message-Id: <20210725225506.7404-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index c8269070180f..0c3a8ec24c76 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -77,6 +77,35 @@ The following four ioctls are just like
 .BR TCSETSW ,
 .BR TCSETSF ,
 except that they take a
+.I "struct termios2\ *"
+instead of a
+.IR "struct termios\ *" .
+.I "struct termios2\ *"
+is defined in header file
+.IR "<asm/termbits.h>" .
+If struct member
+.B c_cflag
+contains
+.B BOTHER
+then baudrate is stored in struct members
+.BR c_ispeed " and " c_ospeed
+as integer values.
+These ioctls are not supported on all architectures.
+.IP
+.BI "TCGETS2	struct termios2 *" argp
+.IP
+.BI "TCSETS2	const struct termios2 *" argp
+.IP
+.BI "TCSETSW2	const struct termios2 *" argp
+.IP
+.BI "TCSETSF2	const struct termios2 *" argp
+.PP
+The following four ioctls are just like
+.BR TCGETS ,
+.BR TCSETS ,
+.BR TCSETSW ,
+.BR TCSETSF ,
+except that they take a
 .I "struct termio\ *"
 instead of a
 .IR "struct termios\ *" .
-- 
2.20.1

