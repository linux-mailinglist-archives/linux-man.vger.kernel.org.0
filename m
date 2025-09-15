Return-Path: <linux-man+bounces-3866-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BDB57E89
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 352B84C2C57
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E114731B810;
	Mon, 15 Sep 2025 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="caYXf9D5";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="OdZ4xYKt"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D410B31C570;
	Mon, 15 Sep 2025 14:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945591; cv=none; b=M7/hZPitOMRQ/QEaUf4453DNONrTBiYuXqnLR/yW6hmWHAwgM/6cuoXOVrnvVqGTqNyQDxfXWXaaPPLEo7eOihkYlHiJoofwjdpJ1EYIaJOmOfo59l+m1vRTJV/HK9Nh2w+3KhC5eKZAjKk2mdFXr3TFVtV1xGLOZ0J0y+mWvVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945591; c=relaxed/simple;
	bh=1BLnblQJwq/UClc1wfdQ7Lvlue7Sd0NW+Fx6i2xHPvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CFKpfI7Ek/qqbDzSh4ndsuMRiY1P3KXH1J7fl6YrphUOwrZl6pGTD2cFxt6YUhNHQ2Y+MKExEoay/Z0gKpJqSYsmzmWZg0HLDikP65V7qZHjicnocfvmhsQT3CpSjXVsjHTWUGV8tZyXq9gl6eXjZKwfcHW8AjspZjA2f+wfSAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=caYXf9D5; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=OdZ4xYKt; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D63VAdF1221Ei3EYJCGYIEiLPIfe21aX7zZS/4205RI=;
	b=caYXf9D59d52H+BTnbUYD/kpQErDzF/qACRwQOqo40K7ze0WRs3dIN1PNNzdz6vnMiz9ZP
	AyHjf0yZzGLY1FXrV0/wBFZlazIY+R6T5q0EalUtUESwz8x+RnMnr6DzfmdnboXGihUuhZ
	g/hgcIG3xpX/8la9yvyp8GhDKXFzZEjpDW1go2r5VOUWZ37FKK/LnBUUDpoQBjHjv3FMVn
	ziJScyOsXWEZc5HTPyP9ezUvf55t3Qi0LoodkadPrJ1U1PyVEy6vdB14l7nUgoW9Uls2yW
	vQdTfoU0R6XNpzgUD2GGltnZo0bBislrDesfP79TgiEGmiF4/JbH0o/gDIvi3g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D63VAdF1221Ei3EYJCGYIEiLPIfe21aX7zZS/4205RI=;
	b=OdZ4xYKt7VpdfXIEQgqSWlYHGNKYtCDGDE4zYN64yZppammEM6L2vvWavCtf8RBTrb8/rA
	2UmHb7WkDL7Y7eCA==
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
Subject: [PATCH v2 2/5] man/man7/sched.7: Update the real-time section
Date: Mon, 15 Sep 2025 16:13:02 +0200
Message-ID: <20250915141305.906440-3-bigeasy@linutronix.de>
In-Reply-To: <20250915141305.906440-1-bigeasy@linutronix.de>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Update the outdated information:
- The PREEMPT_RT patch is merged. The patch continues to exist (as of
  now) but is not mandatory.
- The patch can be still downloaded but most people use the git tree
  these days. Add a reference to it.
- CONFIG_PREEMPT_DESKTOP was never thing as far as I remember. It was
  always CONFIG_PREEMPT and its description referred to "low latency
  desktop".
- Within the PREEMPT-RT patch there was a brief window which introduced
  PREEMPT_RT_BASE and PREEMPT_RT_FULL. I am going to ignore this.
- The introduction of PREEMPT_LAZY in 6.13 moved PREEMPT_RT from a
  preemption model to an option.
- The mentioned wiki is deprecated. Update the URL to the new one.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man7/sched.7 | 58 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 41 insertions(+), 17 deletions(-)

diff --git a/man/man7/sched.7 b/man/man7/sched.7
index 3299c21dc1ad8..db7753c9e912c 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -933,16 +933,12 @@ the following to modify the autogroup nice value for
 .EE
 .in
 .SS Real-time features in the mainline Linux kernel
-.\" FIXME . Probably this text will need some minor tweaking
-.\" ask Carsten Emde about this.
+.\" The archaeologist knows about v2.6.9-mm1-V0.1-realtime-preempt
 Since Linux 2.6.18, Linux is gradually
 becoming equipped with real-time capabilities,
 most of which are derived from the former
 .I realtime\-preempt
 patch set.
-Until the patches have been completely merged into the
-mainline kernel,
-they must be installed to achieve the best real-time performance.
 These patches are named:
 .P
 .in +4n
@@ -953,24 +949,52 @@ they must be installed to achieve the best real-time =
performance.
 .P
 and can be downloaded from
 .UR http://www.kernel.org\:/pub\:/linux\:/kernel\:/projects\:/rt/
+.UE
+or cloned from a git tree
+.UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/rt\:/linux=
-stable-rt.git
 .UE .
+The individual releases are maintained as long as
+the matching LTS kernel is maintained.
 .P
-Without the patches and prior to their full inclusion into the mainline
-kernel, the kernel configuration offers only the three preemption classes
+Since 6.12 it possible to enable the real-time preemption
+without the need for any patches.
+The
+.I realtime\-patch
+continues to exist and contains support
+for not yet integrated architectures,
+drivers and features that are in development.
+.P
+Since 6.13 real-time becomes an option
+and not a preemption model.
+With this change,
+the following preemption models are available:
 .BR CONFIG_PREEMPT_NONE ,
 .BR CONFIG_PREEMPT_VOLUNTARY ,
+.BR CONFIG_PREEMPT ,
 and
-.B CONFIG_PREEMPT_DESKTOP
-which respectively provide no, some, and considerable
-reduction of the worst-case scheduling latency.
-.P
-With the patches applied or after their full inclusion into the mainline
-kernel, the additional configuration item
+.BR CONFIG_PREEMPT_LAZY .
+The real-time capabilities can be enabled with the option
 .B CONFIG_PREEMPT_RT
-becomes available.
-If this is selected, Linux is transformed into a regular
+and the preemption model be set to either
+.B CONFIG_PREEMPT
+or
+.BR CONFIG_PREEMPT_LAZY .
+The latter model is less eager to preempt
+.B SCHED_NORMAL
+tasks in an attempt to reduce lock holder preemption.
+It does not affect real-time tasks.
+.P
+With
+.B CONFIG_PREEMPT_RT
+enabled,
+Linux is transformed into a regular
 real-time operating system.
-The FIFO and RR scheduling policies are then used to run a thread
+The
+.BR SCHED_FIFO ,
+.BR SCHED_RR ,
+and
+.B SCHED_DEADLINE
+scheduling policies are then used to run a thread
 with true real-time priority and a minimum worst-case scheduling latency.
 .SH NOTES
 The
@@ -1032,5 +1056,5 @@ and
 .I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
 .P
 Worth looking at:
-.UR http://rt.wiki.kernel.org/\:index.php
+.UR https://wiki.linuxfoundation.org/\:realtime/\:start
 .UE
--=20
2.51.0


