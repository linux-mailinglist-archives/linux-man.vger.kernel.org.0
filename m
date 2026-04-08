Return-Path: <linux-man+bounces-5307-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLZxMnQd1mluBAgAu9opvQ
	(envelope-from <linux-man+bounces-5307-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A65263B9C14
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 58FD43026C9C
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 09:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC39C396B8B;
	Wed,  8 Apr 2026 09:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/7akop4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AFC2EACF2
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 09:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639917; cv=none; b=lkzUam/Hr6EfTjJaDmodKG4XtE8BBXLZJXtwf3lUiAUEcHOrczFz4rQYJY44cXDK/rQ33XcyhVUBtwhsX15OR0xoUFFHb7Y2qSWrzVcDJMTuEBUHdZclAGz3rJW3DDzLJSlhRw+m8XF/uYmlYhpDI5Y6xSewJ3xxhPjxmP/pVKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639917; c=relaxed/simple;
	bh=SAq5MIrOpJFPui2lUFiXVaN51nURTe1+VGaZ9DmQWvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UUQLQPqTsmpAfjcqHIuPCddI99Gy74lrbec2RrA1LddjftH0UMP+yR2+KqQH5dKRbPg295wF+JYPV2rRMYqNF6XtUwGz9bWyEddZ0Vax6km9JhsYGow39MaQ1X6As032QNUT4RROIOpAgzSvelE0pXmbGeuPW6ZFyvtHWCx+6m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/7akop4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97012C19421;
	Wed,  8 Apr 2026 09:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639917;
	bh=SAq5MIrOpJFPui2lUFiXVaN51nURTe1+VGaZ9DmQWvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T/7akop4epLg0rzugvil+WUoG+OyUThE4qAaC5C//2j/vpRNny3iY64giHx8y/9EH
	 taV8z8sIht3dPe81fAtYymyKtNxjkuznFJhYGIvwOM00umpXI2cNu+7UWr6THnsoQz
	 mtdgo18ASBdNc7GEJv6pVNDxi27a56OmtIkAmJ3pGWmmXVaqVmotul+3NnCco7AyM8
	 ZOb1TVHP2A1tyvDQGJaljhm0vdTd2OGzoCr2+q2OQoINXh0ywOY2Ldgt0y2dEJl1lA
	 KzTrrCkQ13T57+uZm5/HAZAZSWXXy4ph7FzUlKd1Za8PAPRuU0ThRJjKPArudhvEh7
	 zdt8M7RLbPTLA==
Date: Wed, 8 Apr 2026 11:18:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@debian.org>, 
	linux-aio@kvack.org
Subject: [PATCH v1 2/6] man/man2/io_setup.2: Update reference (proc(5) =>
 proc_sys_fs(5))
Message-ID: <978c3109c2e18e74f9edf23e0e966c7534e803b6.1775639353.git.alx@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-5307-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: A65263B9C14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/io_setup.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/io_setup.2 b/man/man2/io_setup.2
index 43d9a631..f2fa4af8 100644
--- a/man/man2/io_setup.2
+++ b/man/man2/io_setup.2
@@ -61,7 +61,7 @@ .SH ERRORS
 as defined in
 .I /proc/sys/fs/aio\-max\-nr
 (see
-.BR proc (5)).
+.BR proc_sys_fs (5)).
 .TP
 .B EFAULT
 An invalid pointer is passed for
-- 
2.53.0


