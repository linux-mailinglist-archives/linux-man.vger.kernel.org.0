Return-Path: <linux-man+bounces-5306-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F3zLXQd1mluBAgAu9opvQ
	(envelope-from <linux-man+bounces-5306-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C973B9C13
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65A26302292D
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 09:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C6639C00C;
	Wed,  8 Apr 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuPkTYZt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA31390220
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639913; cv=none; b=pFV8qSQHca+9UGxju7tMjaAqTseoIgHwCV0Xj5edezRT6Wds4F/kTkzlwmgD2wbvlt8JJiANrQJIgZpWV53QHsRd5h8dQ6KeHhx6k9GEgxmiTXYWceRdldriNEKr1gSkneSoiw25qiw3WHinxl6trSImzVLgeKYyLJBtgwPRspE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639913; c=relaxed/simple;
	bh=ZFmmFGWyWNA4NzmpuEJSddLl5GcJesrvvOY9F5nrTDw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VvR6kEpwK2yW/Bqe1nihGf6uL/FoG6FBaJio05ALxiT9Ug96cvOBd2WzctYsm/bT88MckE0EjvbVLzy7CRcgphKm8gF5ZsqZl3acS65Y7mTVP6HlQOya2XGnw2H+7Rf8f6sQ96rXB7HCernVfGhnEApeXgKpdo8LAR/5x8SHG98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuPkTYZt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333B9C19421;
	Wed,  8 Apr 2026 09:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639912;
	bh=ZFmmFGWyWNA4NzmpuEJSddLl5GcJesrvvOY9F5nrTDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fuPkTYZt3yhL61ky86ytM/uV1d//9KVMDsbynM2q7BnIZSh3JeUPVtgBiIm62IAL/
	 XUUJ6TOGfunNTPZT8h8zv+9nTD0HEyGP0bw/bx6Je8nK/LXjuo1FIyHtT0m8ZJ7uiV
	 Z8rfLua8TCHNruxthfoyuBEPmq4iRZ6w09jAV43+IFjlHC38P59TMWnlw1eRj6uwly
	 oZ+9Bogb7iBKe23f7l9zoxPIe9qtXBVPqpwWfFVaWwqBJu+5r305RCqPKtHANoDhFo
	 TB7N4i+yKf1Wpc2pSKBGE9Oi11iGbwzucMl2zgQY7hsugFJOqDAWBQpGS4irt/O4Qo
	 WG0nY8lEpVyCQ==
Date: Wed, 8 Apr 2026 11:18:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@debian.org>, 
	linux-aio@kvack.org
Subject: [PATCH v1 1/6] man/man2/io_setup.2: Reduce parameter name
Message-ID: <6e23fd87b5f9db2ed09f4e90a33e1fcbc203910e.1775639353.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <cover.1775639353.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1775639353.git.alx@kernel.org>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5306-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 32C973B9C13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/io_setup.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man/man2/io_setup.2 b/man/man2/io_setup.2
index 3d52103d..43d9a631 100644
--- a/man/man2/io_setup.2
+++ b/man/man2/io_setup.2
@@ -17,7 +17,7 @@ .SH SYNOPSIS
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .P
-.BI "long io_setup(unsigned int " nr_events ", aio_context_t *" ctx_idp );
+.BI "long io_setup(unsigned int " n ", aio_context_t *" ctx_idp );
 .fi
 .P
 .IR Note :
@@ -37,7 +37,7 @@ .SH DESCRIPTION
 .BR io_setup ()
 system call
 creates an asynchronous I/O context suitable for concurrently processing
-.I nr_events
+.I n
 operations.
 The
 .I ctx_idp
@@ -56,7 +56,7 @@ .SH ERRORS
 .TP
 .B EAGAIN
 The specified
-.I nr_events
+.I n
 exceeds the limit of available events,
 as defined in
 .I /proc/sys/fs/aio\-max\-nr
@@ -71,9 +71,9 @@ .SH ERRORS
 .I ctx_idp
 is not initialized,
 or the specified
-.I nr_events
+.I n
 exceeds internal limits.
-.I nr_events
+.I n
 should be greater than 0.
 .TP
 .B ENOMEM
-- 
2.53.0


