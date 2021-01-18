Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A98EE2F9CC2
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 11:36:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388940AbhARKWY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 05:22:24 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:34739 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388564AbhARJSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 04:18:17 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.5])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 48A92832DEF7;
        Mon, 18 Jan 2021 10:17:32 +0100 (CET)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 18 Jan
 2021 10:17:22 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-106R0065de8a803-37cc-4bbc-b08b-ad08b11df347,
                    30D6792FA97DA8DABAA366C5D1D6D327A489FDAC) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.73
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] pipe.7: tfix
Date:   Mon, 18 Jan 2021 10:17:17 +0100
Message-ID: <20210118091717.7042-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 490c58ca-ada2-4ebd-a4c8-be98e599ccb1
X-Ovh-Tracer-Id: 5921107610460149725
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrtdekgddtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeejhfefueeilefhfeefgeegteekgfdvledvledtgfduvdehueeujeegteevvddtgfenucffohhmrghinhepthhpqddrihhrnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape hyphens.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/pipe.7 | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/man7/pipe.7 b/man7/pipe.7
index 21c8fa79b..c3210320c 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -163,7 +163,7 @@ but is provided on many implementations.
 .SS /proc files
 On Linux, the following files control how much memory can be used for pipes:
 .TP
-.IR /proc/sys/fs/pipe-max-pages " (only in Linux 2.6.34)"
+.IR /proc/sys/fs/pipe\-max\-pages " (only in Linux 2.6.34)"
 .\" commit b492e95be0ae672922f4734acf3f5d35c30be948
 An upper limit, in pages, on the capacity that an unprivileged user
 (one without the
@@ -175,9 +175,9 @@ The default value for this limit is 16 times the default pipe capacity
 (see above); the lower limit is two pages.
 .IP
 This interface was removed in Linux 2.6.35, in favor of
-.IR /proc/sys/fs/pipe-max-size .
+.IR /proc/sys/fs/pipe\-max\-size .
 .TP
-.IR /proc/sys/fs/pipe-max-size " (since Linux 2.6.35)"
+.IR /proc/sys/fs/pipe\-max\-size " (since Linux 2.6.35)"
 .\" commit ff9da691c0498ff81fdd014e7a0731dab2337dac
 The maximum size (in bytes) of individual pipes that can be set
 .\" This limit is not checked on pipe creation, where the capacity is
@@ -202,7 +202,7 @@ Since Linux 4.9,
 the value on this file also acts as a ceiling on the default capacity
 of a new pipe or newly opened FIFO.
 .TP
-.IR /proc/sys/fs/pipe-user-pages-hard " (since Linux 4.5)"
+.IR /proc/sys/fs/pipe\-user\-pages\-hard " (since Linux 4.5)"
 .\" commit 759c01142a5d0f364a462346168a56de28a80f52
 The hard limit on the total size (in pages) of all pipes created or set by
 a single unprivileged user (i.e., one with neither the
@@ -220,7 +220,7 @@ no hard limit is applied.
 .\" The default was chosen to avoid breaking existing applications that
 .\" make intensive use of pipes (e.g., for splicing).
 .TP
-.IR /proc/sys/fs/pipe-user-pages-soft " (since Linux 4.5)"
+.IR /proc/sys/fs/pipe\-user\-pages\-soft " (since Linux 4.5)"
 .\" commit 759c01142a5d0f364a462346168a56de28a80f52
 The soft limit on the total size (in pages) of all pipes created or set by
 a single unprivileged user (i.e., one with neither the
@@ -238,9 +238,9 @@ The default value for this file is 16384,
 which permits creating up to 1024 pipes with the default capacity.
 .PP
 Before Linux 4.9, some bugs affected the handling of the
-.IR pipe-user-pages-soft
+.IR pipe\-user\-pages\-soft
 and
-.IR pipe-user-pages-hard
+.IR pipe\-user\-pages\-hard
 limits; see BUGS.
 .\"
 .SS PIPE_BUF
@@ -342,9 +342,9 @@ Portable applications should avoid reliance on
 bidirectional pipe semantics.
 .SS BUGS
 Before Linux 4.9, some bugs affected the handling of the
-.IR pipe-user-pages-soft
+.IR pipe\-user\-pages\-soft
 and
-.IR pipe-user-pages-hard
+.IR pipe\-user\-pages\-hard
 limits when using the
 .BR fcntl (2)
 .BR F_SETPIPE_SZ
-- 
2.30.0

