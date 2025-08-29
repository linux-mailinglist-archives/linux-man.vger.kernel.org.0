Return-Path: <linux-man+bounces-3753-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E84B3C02B
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 18:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7304188237D
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60BA3326D7C;
	Fri, 29 Aug 2025 16:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="hx1xlID2";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="DELIyltN"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FA23A1DB;
	Fri, 29 Aug 2025 16:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483332; cv=none; b=BMF/EoHBxbTdl08j21dQbK1VbKe3Hkp2G/DaO7BdhLhfgbeJX/yaVstceRqJCtlnRGofmbTjNx2x+VFtR4NSK5+5Smsc4e239gZ7U2MsLFFHf0uSJK7LOHTlybKQ0Hyk1ZgU5pia3LQvgWO6ZoFU2VlYAWFl8SXts+vUypBW3To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483332; c=relaxed/simple;
	bh=ORINY7aCdFsj/IrE3PXhMTzCcqbCguL7+2xYhQkJBkk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ah//InGLJbv+1N0yZT7WeMawleKGJaneihvgHQr8+FDJnh22qDwCAdFDVwfd/s0o5fxS+2QSqhFdJO3e5yoYAzgAu6gTyS9kCkIZ/ZRg2YYNaz7Q0iCMGxuiogSvqVBDbvLemIvqlWfDBZ4hnxAsTPQM/Dsth5j96DEFutvtQpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=hx1xlID2; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=DELIyltN; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756483328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ltLdqyjfOS7bH3fiRHszejg3COrwWBQQloWm1wYMGsE=;
	b=hx1xlID297OKTYwur2rcCErvfDObXs/Z5uQEnzbw1XACMeyAgT75m77pwRE5697C3WcveM
	3S234j/rvIuNmmwvAzj5bmKSlvR2haMEPxcQJSdXyYgHXLFaT34H0TOem4ZN56Mx3HimGg
	+hYz9aHRGylFYVEFFPMVT1NGrPYiq4h7nN0yXOAO/rIkTriJZKKLKGIDX082tQ9tMpJqdj
	Qch7T4aYp3Ek0j2zGZo70xAM8oVXwA0uBS0Llzr+CeyxURaWiyiai6vwwW6y8Sb08dDGNY
	xJVFy9vsptBttzYu+2vWF84SHWz0yBh+LmXW8YMqGrcDHgCYXizjquJOGHgKQA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756483328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ltLdqyjfOS7bH3fiRHszejg3COrwWBQQloWm1wYMGsE=;
	b=DELIyltN6NL1biRH5Yk3PfNQfw1TUWu9Xr3EjmKIiV48bXLtpS/Trp6pP7UOruubYdmfjz
	onH62rXjr6pTeYDA==
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
Subject: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
Date: Fri, 29 Aug 2025 18:01:59 +0200
Message-ID: <20250829160200.756194-4-bigeasy@linutronix.de>
In-Reply-To: <20250829160200.756194-1-bigeasy@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Based on the date in the comment, the here provided URLs should point to
the mails that the gmane URL no longer can.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2/futex.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/futex.2 b/man/man2/futex.2
index 69df4036ada7f..027e91b826bf1 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -6,10 +6,10 @@
 .\"
 .\" FIXME Still to integrate are some points from Torvald Riegel's mail of
 .\" 2015-01-23:
-.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=3D7977
+.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.csb
 .\"
 .\" FIXME Do we need to add some text regarding Torvald Riegel's 2015-01-2=
4 mail
-.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=3D18732=
42
+.\"       https://lore.kernel.org/lkml/1422105142.29655.16.camel@triegel.c=
sb
 .\"
 .TH futex 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
--=20
2.51.0


