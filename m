Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E00CFB328
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2019 16:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727813AbfKMPFQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Nov 2019 10:05:16 -0500
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]:43807 "EHLO
        17.mo3.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727730AbfKMPFQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Nov 2019 10:05:16 -0500
X-Greylist: delayed 2189 seconds by postgrey-1.27 at vger.kernel.org; Wed, 13 Nov 2019 10:05:15 EST
Received: from player758.ha.ovh.net (unknown [10.109.159.139])
        by mo3.mail-out.ovh.net (Postfix) with ESMTP id 057A023149A
        for <linux-man@vger.kernel.org>; Wed, 13 Nov 2019 15:28:44 +0100 (CET)
Received: from jwilk.net (ip-5-172-255-68.free.aero2.net.pl [5.172.255.68])
        (Authenticated sender: jwilk@jwilk.net)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 272C3C17EEEF;
        Wed, 13 Nov 2019 14:28:42 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: wfix
Date:   Wed, 13 Nov 2019 15:28:40 +0100
Message-Id: <20191113142840.9469-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 1376975586603358077
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudefuddgieejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecukfhppedtrddtrddtrddtpdehrddujedvrddvheehrdeikeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedt
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix comma splice.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/strftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index d6e6e3407..cea27072c 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -562,7 +562,7 @@ complain about the use of
 .IR "warning: `%c' yields only last 2 digits of year in some locales" .
 Of course programmers are encouraged to use
 .BR %c ,
-it gives the preferred date and time representation.
+as it gives the preferred date and time representation.
 One meets all kinds of strange obfuscations
 to circumvent this
 .BR gcc (1)
-- 
2.24.0

