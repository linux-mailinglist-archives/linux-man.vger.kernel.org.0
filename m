Return-Path: <linux-man+bounces-3752-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34011B3C027
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 18:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDDB95806BB
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904A9322DA6;
	Fri, 29 Aug 2025 16:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="uAShmqO3";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="IS/pdxQp"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8616321427;
	Fri, 29 Aug 2025 16:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483331; cv=none; b=HDEBrPKMZw2HWFRbNOlFMHg201HD9TB/AwwCyainHVus1rnVUImx+lrFM9Iq0HXroGLYMXnarlSlsdTeBMxEmMbVmaQkw+UNZW3A1LE2XCoapZWXi+fM3vfXVxgMi7yODRP1W2P7lGf2UZajWbgEgR6nxgLn/C2g527QL8y3kUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483331; c=relaxed/simple;
	bh=RezZKOflT2Ut76JF4U3Om+el9vf/LXRuEmmU33V2JVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SJOHaFHVeLha3qkNE6r1pyPK57JGF1u5OoZsMaSo8xIstRgPRIZQlfL2sv+YHMxeZHtzxMgKO77RyJQhJIkGNC3y40wYnYbzG5hc/drwUZZy1qsipHjB1AP/nUQGGGKaOpgeWZDeX2W7XADc0yJz9VwsssnLecgbbbbfMqwe29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=uAShmqO3; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=IS/pdxQp; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756483328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RezZKOflT2Ut76JF4U3Om+el9vf/LXRuEmmU33V2JVE=;
	b=uAShmqO3dFLAd03IsevyLHOwsizI9tI1ED8GkvxRlbkpHlvor3WnYmOhtdI4j1Nm6JqdYO
	x+CftcJcpDsyT2oM/xUs5t5Up16rqGx1i2y3/DtwO5lujWJEcO787lJkIDX/EjcIo1Az6h
	lgXhCJVl7P+7AMv3EyBeN/zWEr1ALytyENvI5ZF0uN02fDuyElW1WAKvVRkt6pLo4si7hY
	ZeynSPst/gOc4yi91qjiK1sbRxUsYA2/EbZEJ1YLJkolKHDTnHdIaYVYf6Q5PqYXoinw7W
	z+4PRGMPmpw0Mz4La+7LRvKI27vn8WZtcrasIyuW9FTmkslhfOa5m8arVymhng==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756483328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RezZKOflT2Ut76JF4U3Om+el9vf/LXRuEmmU33V2JVE=;
	b=IS/pdxQplqOQDUvCgRQq24falgn430rhIvW0WMXpSezENVeziL/9UlkShIqTMKuHG2CJpb
	f7QaYkRgeREtZJBA==
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
Subject: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Date: Fri, 29 Aug 2025 18:01:58 +0200
Message-ID: <20250829160200.756194-3-bigeasy@linutronix.de>
In-Reply-To: <20250829160200.756194-1-bigeasy@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
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
 man/man7/sched.7 | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/man/man7/sched.7 b/man/man7/sched.7
index 5da631c310636..2f0cb1792d02a 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -1048,12 +1048,8 @@ was not possible up to Linux 2.6.17.
 .I Programming for the real world \- POSIX.4
 by Bill O.\& Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0.
 .P
-The Linux kernel source files
-.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
-and
-.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
+The Linux kernel documentation for the scheduler
+.IR https://docs.kernel.org/\:scheduler
 .P
 Worth looking at:
 .UR https://wiki.linuxfoundation.org/\:realtime/\:start
--=20
2.51.0


