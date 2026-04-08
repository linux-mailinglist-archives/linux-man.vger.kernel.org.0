Return-Path: <linux-man+bounces-5310-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OApQLPcd1mluBAgAu9opvQ
	(envelope-from <linux-man+bounces-5310-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:20:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D9D3B9C83
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBE7A302BE2E
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 09:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8A9397E99;
	Wed,  8 Apr 2026 09:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYTbN+TM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1163F2EACF2
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 09:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639931; cv=none; b=p5+Nqx+z0P+/BG5FBihtLe1dOjnwN/ohq2qyAUKsMTUOSzSc/krx8masbCuubfecd98jI3xqqxbFKuwXWkvbzuapR/l17q7mVYWOMipAv7OTN9B9HFgotlqkW47jHXQfT/BidK5WKJEhFo06X9AySTUqmCsO7toeh4PmcHr65N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639931; c=relaxed/simple;
	bh=YabhF7Ed6uCPjz0w+AElT2oTSHd9flZCtUhdUMRAk8U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPgEjsfsh4gOmtzee2nNeS6HAJX10NtiVoMOT4UYZ8qMD0Gba0hS8Or0O2OnJ/Wfb4pWaFirQmuGYDcfGmqQxNK+AuOHDhKFhHVoN1Qon910HvHvxn2G5P3DJOLNRgcyvFZMp9fTPGqlJf09Dum1yP4j8EdckQYr1+qT2SKbPqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYTbN+TM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A711C19424;
	Wed,  8 Apr 2026 09:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639930;
	bh=YabhF7Ed6uCPjz0w+AElT2oTSHd9flZCtUhdUMRAk8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bYTbN+TM1j65PtCwI5FAr3GfEMoIpa2xDA7jnDmgZsLHpAcMvGe4FHC5ARF107YEZ
	 pCU531BUykgQqOzRNfH6rp+O49VdY0M4tK6ZuwRw1q/zXYCAstXPoZLKJJsJ3S8Txh
	 l4PNYT/pW1aCSKZPoL/FUniT1ImQ+Lpnsj7+5mJ+zpv5q7qFDuWsBxbrUU12Sngd4S
	 Hg77p0IcJfS8iSqfwovlpFiAiYZUMnMTfotbGtjD6bovQpQ6Szmyck0+rjVcDjSP7P
	 9dcmr3yuL/0X/nXVu5528kVqlpUfGMOEhl6ZyF2hbtrhg9YX4ra+mFKIUk3o2OOdIG
	 WPSzYGk04lvYQ==
Date: Wed, 8 Apr 2026 11:18:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@debian.org>, 
	linux-aio@kvack.org
Subject: [PATCH v1 5/6] man/man2/io_setup.2: Use syscall(2) in the SYNOPSIS
Message-ID: <7811fd45149427135d6f35938c10ba258e885b0a.1775639353.git.alx@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5310-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 22D9D3B9C83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

That's what we do when there's no glibc wrapper.

Also, remove the comment on the existing include, as we usually don't
comment when includes are needed for types; we only comment for
constants.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/io_setup.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/io_setup.2 b/man/man2/io_setup.2
index f2f59c61..398101fb 100644
--- a/man/man2/io_setup.2
+++ b/man/man2/io_setup.2
@@ -15,9 +15,11 @@ .SH LIBRARY
 see VERSIONS.
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
+.B #include <linux/aio_abi.h>
+.BR "#include <sys/syscall.h>" "    /* Definition of SYS_* constants */"
+.B #include <unistd.h>
 .P
-.BI "long io_setup(unsigned int " n ", aio_context_t *" ctx_idp );
+.BI "long\~syscall(SYS_io_setup, unsigned int " n ", aio_context_t *" ctx_idp );
 .fi
 .P
 .IR Note :
-- 
2.53.0


