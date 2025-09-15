Return-Path: <linux-man+bounces-3867-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B86AB57E7E
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 36F154E1FD8
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E4031D734;
	Mon, 15 Sep 2025 14:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="y4SAes2A";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VPV5bv5q"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E002F3624;
	Mon, 15 Sep 2025 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945592; cv=none; b=k1VoyIuOIoGCPk1QAuuATM+CDyOC5O2r8XfZbRBzdZ0Ph/avXvj5wK4MfAH6E29j58KYs8zz5SVSLGvrAR8wJl/7DCh/VVtb5WaBJPtehH9VDhm1oQM+uDRWvrwV7lE3eKlqoq9aeiz8NsELTryys3K6Udtw2T+HYBPgiOfdhGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945592; c=relaxed/simple;
	bh=gsRYXwnNg86WJcfbm/8nPopRQVGgrb5Pz7ENAUT1Uqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sPAZuyx8PUNxtrasicn3GbL5oz1kamd9de9ptQ08v44vY1NIgRmPqO/27MOBa2WyNNY3y7GwZoRQxGyeC/m8l8Luq+ykBknsHWMs50fvdcNZfAOjmiDqWcP1VHI6qlC0N149VYt6iiO2/DonaBuralLG6rkOkhledM0SN4gYzzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=y4SAes2A; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VPV5bv5q; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gsRYXwnNg86WJcfbm/8nPopRQVGgrb5Pz7ENAUT1Uqg=;
	b=y4SAes2AWI5N2dBCzZLM/pcinuNG7RQRWXL7eZRqNWIZJTpfdpXPTdRWsvjwnVFAMzQkvN
	xqaXjLsoDCOA/v0IeVaGHWX3BevaF3uzVyZJvF3mCNnEPXAobI07CMnf/q9CpePjkQaGE1
	oGfNmLh2XK1wR1ybTUjQWaIOkQmjexKjn2R8Z+oOXmt4rnEjxPbBz77Au19bmMRpA2rHRV
	3cM1GJ8cZF2b29BGHarZB4rLT4uqC6wqyPoxa3Lc5nfY6p1eHEFUHJauh2EQLnrQ0XeNL3
	CQPegIr3n9SP53QG85/QD13uSbWclML7NkyeZhrOZBjdpae60sjIU72ckTLIKw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gsRYXwnNg86WJcfbm/8nPopRQVGgrb5Pz7ENAUT1Uqg=;
	b=VPV5bv5q7IqISlLx1NZefGBywDG1ZNpAYZ/NEmSExT4P7eQo3CiyaxqZryLwmlRmr3COFj
	UG+oudUQGh82FOAg==
To: linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v2 3/5] man/man7/sched.7: Update the documentation references
Date: Mon, 15 Sep 2025 16:13:03 +0200
Message-ID: <20250915141305.906440-4-bigeasy@linutronix.de>
In-Reply-To: <20250915141305.906440-1-bigeasy@linutronix.de>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The section refers to .txt files but they have been moved/ renamed to
.rst some time ago. The mentioned sched-rt-group is inconvenient as
people always complained about CONFIG_RT_GROUP_SCHED.
Everything that describes CFS is not wrong but the kernel the kernel
switched to the Earliest Virtual Deadline First (EEVDF) scheduler.

Instead of updating the file links below (and adding new ones), replace
them with a link to the automatically created scheduler documetation
from that folder. This also has some EEVDF bits :)

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man7/sched.7 | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/man7/sched.7 b/man/man7/sched.7
index db7753c9e912c..935ff1fb82db5 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -1048,12 +1048,9 @@ was not possible up to Linux 2.6.17.
 .I Programming for the real world \- POSIX.4
 by Bill O.\& Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0.
 .P
-The Linux kernel source files
-.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
-and
-.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
+.UR https://docs.kernel.org/\:scheduler
+The Linux kernel documentation for the scheduler
+.UE
 .P
 Worth looking at:
 .UR https://wiki.linuxfoundation.org/\:realtime/\:start
--=20
2.51.0


