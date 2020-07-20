Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0317B22575C
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 08:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725872AbgGTGMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 02:12:05 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:49223 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725805AbgGTGMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 02:12:05 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.41])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 382044777CA0;
        Mon, 20 Jul 2020 08:12:03 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 20 Jul
 2020 08:12:01 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G0061878276a-2b3c-4ad4-809c-f1c76127373c,
                    AF8CF44B929B90A6AE2E96008DECA72944AC5276) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] proc.5: use "pwd -P" for printing cwd
Date:   Mon, 20 Jul 2020 08:12:00 +0200
Message-ID: <20200720061200.5449-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ad3e91ff-6e72-42c5-aada-d70ddd65824e
X-Ovh-Tracer-Id: 3869436508487866333
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrgedvgddutdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"/bin/pwd" happens to work with the GNU coreutils implementation, which
has -P as the default, contrary to POSIX requirements.

Use "pwd -P" instead, which is shorter, easier to type, and should work
everywhere.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc.5 | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 0dbc05228..55f425dcd 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -588,19 +588,10 @@ for instance, you can do this:
 .IP
 .in +4n
 .EX
-.RB "$" " cd /proc/20/cwd; /bin/pwd"
+.RB "$" " cd /proc/20/cwd; pwd \-P"
 .EE
 .in
 .IP
-Note that the
-.I pwd
-command is often a shell built-in, and might
-not work properly.
-In
-.BR bash (1),
-you may use
-.IR "pwd\ \-P" .
-.IP
 .\" The following was still true as at kernel 2.6.13
 In a multithreaded process, the contents of this symbolic link
 are not available if the main thread has already terminated
-- 
2.28.0.rc1

