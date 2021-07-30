Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B51EA3DBE7D
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbhG3SqW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:46:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:42326 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229921AbhG3SqW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 14:46:22 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id F32C760249;
        Fri, 30 Jul 2021 18:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627670777;
        bh=KWDEhtZz3X7bQlrqdxsIOOzK+Is7r0rbnq9xL4NtHBQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=lgubSLQb8UePhYFT7uNwx/UN25s4euOVqNuZXIjnpL61v5F6qzYyffEQ6GSUqpaJZ
         edJu4bhJ0pQTSVn/0qzZ/dmrGjtThrPlzTNjEGABWOiJ0FZJ2WBPKBOFpLE5vNX4l8
         aiFv7X00vyWEXTv4v5+gZjDudD5Niwgg+8/F32kJ3CO4hlQxSsh6gHM15m0BVEgKKj
         ADnDBb8BAVyhbvXP4r/prYAXy37djkUpL0ic0TE4Hbo2TotG53Ot3/Z0FmfdJxdjOW
         fuZnEJaVw5w1vinxH6DB7u5E1vd4jRGXzPPRHIlEzpZzdMEVC9ybTIegm5wEirYTyJ
         SO4DOyM7N2/xQ==
Received: by pali.im (Postfix)
        id A1011772; Fri, 30 Jul 2021 20:46:14 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] termios.3: Add information how to set baud rate to any other value
Date:   Fri, 30 Jul 2021 20:45:36 +0200
Message-Id: <20210730184536.13620-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210730153044.23673-1-pali@kernel.org>
References: <20210730153044.23673-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index b7cdec507524..7b195c95912b 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -968,6 +968,13 @@ Normally, this will disconnect the line.
 for the speeds beyond those defined in POSIX.1 (57600 and above).
 Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
 .PP
+Setting the baud rate to a value other that those defined by
+.B Bnnn
+constants is possible via the
+.B TCSETS2
+ioctl; see
+.BR ioctl_tty (2).
+.PP
 .BR cfgetispeed ()
 returns the input baud rate stored in the \fItermios\fP structure.
 .PP
-- 
2.20.1

