Return-Path: <linux-man+bounces-5668-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXk+EnB8Qmpr8QkAu9opvQ
	(envelope-from <linux-man+bounces-5668-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:08:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6B56DBC23
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:08:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=ftWL7fvf;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5668-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5668-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9979630EDB17
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 14:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B731F0E25;
	Mon, 29 Jun 2026 13:59:34 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381E932B133
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 13:59:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741574; cv=none; b=KugEcZDZnvFG7gh4KnVItsTawPV0lG2iaMzYPaP1juDit8Ea6wkzFf9w1wXS/Sx9ED6KbAEQZz6PdDZzhKwVGIy9FCxpjJyXuQP2Q1PlQhjJE3WyTy52oI1GPpg/xEst9cDPrsYFYHiqxkiITtMDEscBpZnMoZeAqFkL+LVmteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741574; c=relaxed/simple;
	bh=eY0QYg5gze/9RrZGVk6CutZOqjRGEjeikjR6lSleSRw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hMJLTqYoTcSg3XuM4am2VJ0xPcA/wLayU45s2/MGyBvQtJHY8Eu1iTTU0wGHsRNTJ3SyK0kMk+NYOURb4SZ25gfW2ZkF8iOMrbXfnnnVEnIRFH4L4EKljJnIar34AtW0anjWTH5q00uwwORSIjCdOEBZbdeiCRGtkefWUm1CgPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=ftWL7fvf; arc=none smtp.client-ip=198.137.202.136
Received: from mail.zytor.com ([IPv6:2601:646:8081:7da1:4462:691a:e05c:b745])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65TDxPvl370711
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 29 Jun 2026 06:59:28 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65TDxPvl370711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782741568;
	bh=M0eatyd4tNjX5UVlYDXyq9iXu6WOoIPNjgsDNhUiH34=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ftWL7fvfo05b8Htl3Us/p0XrvvPwJ1j6YVt9cIvcHAXA0lGJurIoNI6YQPEEsNFI8
	 rVafntSpBSPu4RZc91KNdo0iUcAiGii0HXD4P50FodNQeSW2wGk71Dvf5qqPOeZzA3
	 w4RfnI+e3h+wk+xFjRBzRoU7jqh60miCLuG6NSTWMGaCa2hKvQE6MXrokF/x792iRh
	 Tzsffqm6XHY3l8VncDkBSLlvm7n4do6SxR9ap5eIQwvXJLLKw4dUkXf2tCUQszASDZ
	 8mGXlEbK2Jd5K3ipkBfySalI/UbjheDB6prmpN49cuP9c67IglgUiTUFz4owHVYOqU
	 1qKVfHu0zxAPg==
From: "H. Peter Anvin" <hpa@zytor.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "H . Peter Anvin" <hpa@zytor.com>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 4/4] man/man3/termios.3: document that cfsetispeed(..., 0) is deprecated
Date: Mon, 29 Jun 2026 06:59:08 -0700
Message-ID: <20260629135910.143781-5-hpa@zytor.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5668-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,zytor.com:dkim,zytor.com:email,zytor.com:mid,zytor.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF6B56DBC23

POSIX.1-2024 deprecated cfsetispeed(..., 0). This was always rather
confusing, since all other uses of speed_t use the Bnnn symbolic
constants, although B0 == 0 was largely universal.

Document that setting the input speed to numeric-zero meaning the same
as the output speed is deprecated, and applications should explicitly
set it to the same value as the output baud rate instead.

Signed-off-by: H. Peter Anvin <hpa@zytor.com>
---
 man/man3/termios.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man/man3/termios.3 b/man/man3/termios.3
index 84b10cb7d68c..9a606e689e80 100644
--- a/man/man3/termios.3
+++ b/man/man3/termios.3
@@ -1182,6 +1182,9 @@ even when using
 the input baud rate
 will be equal to the output baud rate.
 .P
+POSIX.1-2024 deprecated this; new code should explicitly set both the
+input and output baud rates to the same value.
+.P
 .BR cfsetspeed ()
 is a 4.4BSD extension.
 It takes the same arguments as
-- 
2.54.0


