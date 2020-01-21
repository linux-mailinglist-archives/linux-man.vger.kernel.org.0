Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3DEB143C42
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 12:48:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727817AbgAULsJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 06:48:09 -0500
Received: from 4.mo173.mail-out.ovh.net ([46.105.34.219]:41947 "EHLO
        4.mo173.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728655AbgAULsI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 06:48:08 -0500
X-Greylist: delayed 600 seconds by postgrey-1.27 at vger.kernel.org; Tue, 21 Jan 2020 06:48:08 EST
Received: from player693.ha.ovh.net (unknown [10.108.16.103])
        by mo173.mail-out.ovh.net (Postfix) with ESMTP id E705E12C985
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 12:28:38 +0100 (CET)
Received: from jwilk.net (ip-5-172-255-76.free.aero2.net.pl [5.172.255.76])
        (Authenticated sender: jwilk@jwilk.net)
        by player693.ha.ovh.net (Postfix) with ESMTPSA id A2FDEE6B282F;
        Tue, 21 Jan 2020 11:28:35 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] keyrings.7: ffix
Date:   Tue, 21 Jan 2020 12:28:32 +0100
Message-Id: <20200121112832.9064-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 16169611516326303613
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudekgddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddphedrudejvddrvdehhedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/keyrings.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/keyrings.7 b/man7/keyrings.7
index 4270d2e91..3367149ef 100644
--- a/man7/keyrings.7
+++ b/man7/keyrings.7
@@ -146,7 +146,7 @@ that should not be readable from user space.
 The description of a
 .IR """logon"""
 key
-.I must\
+.I must
 start with a non-empty colon-delimited prefix whose purpose
 is to identify the service to which the key belongs.
 (Note that this differs from keys of the
-- 
2.25.0

