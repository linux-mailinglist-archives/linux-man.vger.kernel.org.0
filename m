Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43E51F5E20
	for <lists+linux-man@lfdr.de>; Sat,  9 Nov 2019 09:56:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726402AbfKII4Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Nov 2019 03:56:25 -0500
Received: from 3.mo177.mail-out.ovh.net ([46.105.36.172]:36664 "EHLO
        3.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726136AbfKII4Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Nov 2019 03:56:25 -0500
X-Greylist: delayed 330 seconds by postgrey-1.27 at vger.kernel.org; Sat, 09 Nov 2019 03:56:24 EST
Received: from player746.ha.ovh.net (unknown [10.109.159.154])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 1E39E10F321
        for <linux-man@vger.kernel.org>; Sat,  9 Nov 2019 09:50:53 +0100 (CET)
Received: from jwilk.net (ip-5-172-255-131.free.aero2.net.pl [5.172.255.131])
        (Authenticated sender: jwilk@jwilk.net)
        by player746.ha.ovh.net (Postfix) with ESMTPSA id 5AEF2C056B87;
        Sat,  9 Nov 2019 08:50:50 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clone.2: tfix
Date:   Sat,  9 Nov 2019 09:50:46 +0100
Message-Id: <20191109085046.704-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 9073627349786089341
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddphedrudejvddrvdehhedrudefudenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeegiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedt
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 02422b82f..db1ab586a 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -78,7 +78,7 @@ context are shared between the calling process and the child process.
 For example, using these system calls, the caller can control whether
 or not the two processes share the virtual address space,
 the table of file descriptors, and the table of signal handlers.
-These system system calls also allow the new child process to placed
+These system calls also allow the new child process to placed
 in separate
 .BR namespaces (7).
 .PP
-- 
2.24.0

