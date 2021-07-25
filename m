Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E97E3D507D
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbhGYWOa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:14:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:38178 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229531AbhGYWOa (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 25 Jul 2021 18:14:30 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B7F260249;
        Sun, 25 Jul 2021 22:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627253699;
        bh=CVpoAAe404FdROZZJHb8WZel2X2s6mzipWdLSqZxn34=;
        h=From:To:Subject:Date:From;
        b=qzXhOl1AodZJN19F6krRXfLxJm1c4bDCiISTsZWuW/2Rnu7YbpCIWdCEmCuSxlsjq
         aH9+CVtu1MRhc+iFRkC3dpkGws1ne9KR7YCv0wBq/Y0/whcoYj3XHClJ90QgjbAd3J
         cKVCOcyYuR2Cd/FHT9jvvzCpZgl+lvY0x4QJCZ4qFC5f+QOv49Yxn01Zzh/VD7DnhN
         s1VHfBgcSoR4PoQtmXkSrA88ihDbgA9PpE1FQto5B9TIcs2xXufTYYvw/TQCLegKV3
         GHVTJ9ayNToJfWWZnA1T6YSKYnId+hPUq4Dgw1G8xOHw7lQGxqo1chRPBqpfWIGBGk
         vVEyLKo+RWPeg==
Received: by pali.im (Postfix)
        id E626BAFA; Mon, 26 Jul 2021 00:54:57 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] termios.3: Use bold style for Bnn and EXTn macro constants
Date:   Mon, 26 Jul 2021 00:54:53 +0200
Message-Id: <20210725225453.7341-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index 01c20994424d..e603879e18d4 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1068,8 +1068,9 @@ and
 are nonstandard, but available on the BSDs.
 .SH NOTES
 UNIX\ V7 and several later systems have a list of baud rates
-where after the fourteen values B0, ..., B9600 one finds the
-two constants EXTA, EXTB ("External A" and "External B").
+where after the fourteen values \fBB0\fP, ..., \fBB9600\fP
+one finds the two constants \fBEXTA\fP, \fBEXTB\fP
+("External A" and "External B").
 Many systems extend the list with much higher baud rates.
 .PP
 The effect of a nonzero \fIduration\fP with
-- 
2.20.1

