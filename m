Return-Path: <linux-man+bounces-5669-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tuLRKRt+Qmr78QkAu9opvQ
	(envelope-from <linux-man+bounces-5669-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:15:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D556DBDF1
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:15:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=RYySFaV+;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5669-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5669-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FAC7309548F
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 14:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D85132E757;
	Mon, 29 Jun 2026 13:59:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380E332470A
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 13:59:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741575; cv=none; b=lTruxCHG2frH88/e/v+XtVx1e5PlKmapRowHqyuXXuBL0f+G+yiIoavZ8GUV++ce1k/cNCaFX0wl0pGV0zHYCWWsKml83tJ97zy/V36LGdCxbFuU2SooY1QPKd7SfUMVLGngXOfWXEL/X6JwzTC/Vlgi2YzYvdaJQpRMg0gr6fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741575; c=relaxed/simple;
	bh=w+H1ZCcMTvws8FL56ICbteoedvAJyN6sar1sjuQxxxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mqoUNzlx4DZ/DMzGvQ4nV7Cgd5/ZsA8v1izPV1T4KKYyLImnDkMjkp8pF2jcRefTa+t9jh6ozHWlgU3zutFySRh0Phyf8TLmlKR38al4izlcJW+VwLUG9fe7w1NJY33D719IhxUhr6EkssPr+DnAOPiNu7kpVxhkR+zAZhSGvwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=RYySFaV+; arc=none smtp.client-ip=198.137.202.136
Received: from mail.zytor.com ([IPv6:2601:646:8081:7da1:4462:691a:e05c:b745])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TDxPvk370711
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 29 Jun 2026 06:59:27 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TDxPvk370711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782741568;
	bh=brzRaGiVtUBJjsBA5uAqptetg3eOg1zkqx7LzZuGLDg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RYySFaV+Lee1c2GJCcH6T1IH8B9x88s6JxekDEi2J/jK9WwHIbhPiq6XhqcEwnmiR
	 fO4PUQKdxtysBWm8hJpuAeGM5YMbNI4rTQn+PZS0LQURpIx9rr+2bofXVRqY2S9S3u
	 1BfSlaVRzATDe3P57T1V/ckQ8M6Rpr7Uq5PbuaLUBL7j+GcvGxI151IUSxDzzHTV0H
	 haTzcrs8NhMOPS7gv1jX1DVPg0kQxbKHnsBgGWKuAD7ZHCWG5bMkrXbAiCqGfqsT9K
	 J+W/r9GLpaUdRUJITQwDvwQTsjOLox81o7uQscWpe7QmWOrzVL8I7VF7IwPIKBQIQO
	 WeAqFmTtQ8Jvg==
From: "H. Peter Anvin" <hpa@zytor.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "H . Peter Anvin" <hpa@zytor.com>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 3/4] man/man3/termios.3: document that output baud rate has priority
Date: Mon, 29 Jun 2026 06:59:07 -0700
Message-ID: <20260629135910.143781-4-hpa@zytor.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260629135910.143781-1-hpa@zytor.com>
References: <20260629135910.143781-1-hpa@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5669-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[zytor.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2D556DBDF1

Many devices, including the good old 8250 series UARTs, cannot handle
different input and output baud rates. POSIX defines the output rate
as taking priority, and Linux follows this. Explicitly document this.

Signed-off-by: H. Peter Anvin <hpa@zytor.com>
---
 man/man3/termios.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man3/termios.3 b/man/man3/termios.3
index f563923fc7cf..84b10cb7d68c 100644
--- a/man/man3/termios.3
+++ b/man/man3/termios.3
@@ -1127,6 +1127,10 @@ The input and output baud rates are stored in the
 .I termios
 structure.
 .P
+If a certain device does not support different input and output
+baud rates, the output baud rate is used for both if they are
+programmed to be different.
+.P
 .BR cfgetospeed ()
 and
 .BR cfgetobaud ()
-- 
2.54.0


