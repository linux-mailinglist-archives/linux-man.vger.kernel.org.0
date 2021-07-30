Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3B623DB72F
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 12:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238461AbhG3KdJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 06:33:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:52428 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238400AbhG3KdI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 06:33:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 246CC60F5C;
        Fri, 30 Jul 2021 10:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627641184;
        bh=UVvCJtzFGrnDrJ2pOo8wCw2HpLT+GoEpbpnx0bGGOhA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=nRk4Ye3sNIpxG7TtAuEeslw3kSHzE6nkfN7mWd5k9rze/G1eouQ1OcyBSBYBYhoo9
         /JiVU+M/Mvl3Li8K4KY+AGOsnUQeLR/A3ZDzHMhRXYbxHg+68XAfHNDmNcQQjPxZyS
         +2Cripi9Uo7YCscyi/+3DkxHVFA9Q3r4GeXkmqlHGxODnTRXqrPrKY2WVew8wI8Ld5
         /jdOElHjluyH6nV0LN2cDIuTd4JNbTkUoNjZ4DXYqE5tFYny/+ID8XrvrEa8/8pkh/
         IolIGBKO2B1QxovmaALaXK8yi/fImKzpMkCYikFDNBoWVh/Ytbnyr/90aegTbQQiGO
         19RpWvMcZlNGA==
Received: by pali.im (Postfix)
        id 53EE3772; Fri, 30 Jul 2021 12:33:01 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] termios.3: Use bold style for Bnn and EXTn macro constants
Date:   Fri, 30 Jul 2021 12:32:47 +0200
Message-Id: <20210730103247.9079-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210725225453.7341-1-pali@kernel.org>
References: <20210725225453.7341-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>

---
Changes in v2:
* Do not use inline style
* Fix formatting ellipsis
---
 man3/termios.3 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index 01c20994424d..b7cdec507524 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1068,8 +1068,14 @@ and
 are nonstandard, but available on the BSDs.
 .SH NOTES
 UNIX\ V7 and several later systems have a list of baud rates
-where after the fourteen values B0, ..., B9600 one finds the
-two constants EXTA, EXTB ("External A" and "External B").
+where after the fourteen values
+.BR B0 ,
+\&.\|.\|.\|,
+.B B9600
+one finds the two constants
+.BR EXTA ,
+.B EXTB
+("External A" and "External B").
 Many systems extend the list with much higher baud rates.
 .PP
 The effect of a nonzero \fIduration\fP with
-- 
2.20.1

