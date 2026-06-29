Return-Path: <linux-man+bounces-5670-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /zRPC5t8Qmp/8QkAu9opvQ
	(envelope-from <linux-man+bounces-5670-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:09:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BFA6DBC60
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:09:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=WuDVr4sA;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5670-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5670-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAE5130EDEDC
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 14:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B7232B10F;
	Mon, 29 Jun 2026 13:59:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3816332B118
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 13:59:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741575; cv=none; b=s1FP1nioWcnOenp9g5W8PZpwgeHWKIHEz8jS0sw9MKog9sGk02LH5ipbfAyXt8iGF5WfuZ6ncsFcLnUO+nRoJBaQhxJrJ9bu68J9zP8lZNZsZhn8wdL0Po8J7taDoDS8DAfwjbPjqvtir4ivqmzFHkGIHkem9HojN0JcRPhwpL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741575; c=relaxed/simple;
	bh=zyKoO7TyikPFB3OdGLSHi803MHfJGGdfRcWOmY+A284=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pmwUANBKqCQ/vMsvYVuJKbzIlGt1sPoZQAv/8RXq+oZQgMom+9m61UrwF7BdAX6mB+g/LGpYvkGtBtqtPlmYXZxNVfBEQ3yMOMV04WkSs/5u5ldAamCbvCqdsqdQAYUaWXVIatrpgjxJKUdJ1hP1v8C8lmChKJaGX+zgBYKpWJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=WuDVr4sA; arc=none smtp.client-ip=198.137.202.136
Received: from mail.zytor.com ([IPv6:2601:646:8081:7da1:4462:691a:e05c:b745])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TDxPvj370711
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 29 Jun 2026 06:59:27 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TDxPvj370711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782741567;
	bh=6gQSpT9Wzk+msJQo9n0jRzx+g5ACKrJDxb+2o1ikSzg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WuDVr4sAI1oX1l4RrgcAEZqkEfvQfLvh1EJ7b+okLY7pj5Hnck9J9d7drJVoqWm5E
	 5Nslupo8I5DFWqGooLUGjHGhvXUv/bVKiicOqh+nZJhYOaI1fOnoN2nVQtrYArYwdh
	 afs8boORevigJ+gcswK0p18qNO+rw3NeEoeww3Xamvyvr4k1JnIPiRmk27ZQuctDCP
	 L9vt6JrMpkYLYOsqRa/sNt4sleZwMTvbZrucVp0GFqX/9ywBSUOS4M5sayklnytYXR
	 enjQsMwPCczHc6pFi+5e4nJcU7PdtOc6QsYGJRSTVqW98F5LK9Jon0siyBZbgJAoYe
	 V8nSxKs9OENMQ==
From: "H. Peter Anvin" <hpa@zytor.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "H . Peter Anvin" <hpa@zytor.com>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 2/4] man/man3/termios.3: note that setserial(8) rate hacking is dangerous
Date: Mon, 29 Jun 2026 06:59:06 -0700
Message-ID: <20260629135910.143781-3-hpa@zytor.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5670-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zytor.com:dkim,zytor.com:email,zytor.com:mid,zytor.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A4BFA6DBC60

The use of setserial(8) to modify the 38400 baud rate was an early
hack to support baud rates beyond those standardized by POSIX. As it
is, it is a real trap for applications that actually want to use 38400
bps if a previous user has not cleaned up the setting.

Signed-off-by: H. Peter Anvin <hpa@zytor.com>
---
 man/man3/termios.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3/termios.3 b/man/man3/termios.3
index cd3f9ce4d7c0..f563923fc7cf 100644
--- a/man/man3/termios.3
+++ b/man/man3/termios.3
@@ -1119,7 +1119,9 @@ constant is defined prior to using it.
 The actual bit rate corresponding to
 .B B38400
 may be altered with
-.BR setserial (8).
+.BR setserial (8);
+doing so is discouraged as it may break other applications
+later trying to use the same serial port.
 .P
 The input and output baud rates are stored in the
 .I termios
-- 
2.54.0


