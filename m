Return-Path: <linux-man+bounces-5713-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jCxzJEs/Tmp5JgIAu9opvQ
	(envelope-from <linux-man+bounces-5713-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 14:15:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0BC726311
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 14:15:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5713-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5713-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF2E43017BD7
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 12:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE3C43C7AD;
	Wed,  8 Jul 2026 12:15:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from a3.inai.de (a3.inai.de [144.76.212.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9D1433BAB
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 12:15:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783512903; cv=none; b=Nn+sRX8xKg+W9px+hnGNqpwBLQx9zUAaqfXU+ZIo/R0GWgx3sGSHEkWPtjxiMTKQlkVcg+FZhRaDyJkL8IHs/kYJTfoJGSjhut9nsHn+4vw/Yb3ixrP2VdwGaM4lZPLg91ZAKA+NOfYjdTBjg9BnkazFhajBy+2Dnf+t0qyO16c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783512903; c=relaxed/simple;
	bh=taWll8TLReWH/f2Jhw8lzr0ZI5gESLftZg7Ej0xrvjs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AYlluP6+BnmHFyIrtRLzg170oRaBxNptZ7QWODp55LX4EJmGxgdrFeKQqxJYEFEpI+DEnY9Tq2RcwkOaz1N5s7w2Iz3X1egzJZCMt3eIbJ8Gsxarq7vIYrmsI2QaSoKgGirnnbyNT2fhAJsoF79ek3w70TStZi6emcDRrGxvqEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=inai.de; spf=pass smtp.mailfrom=inai.de; arc=none smtp.client-ip=144.76.212.145
Received: by a3.inai.de (Postfix, from userid 65534)
	id DE10E1003CD494; Wed, 08 Jul 2026 14:14:58 +0200 (CEST)
X-Spam-Level: 
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:202:600a::a4])
	by a3.inai.de (Postfix) with ESMTP id C28701003CD0D3;
	Wed, 08 Jul 2026 14:14:58 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/4] console_codes.4: rephrase description for xterm's ESC ] 4 command
Date: Wed,  8 Jul 2026 14:14:55 +0200
Message-ID: <20260708121458.46465-1-jengelh@inai.de>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5713-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[inai.de: no valid DMARC record];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	URIBL_MULTI_FAIL(0.00)[inai.de:server fail,tor.lore.kernel.org:server fail,vger.kernel.org:server fail];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inai.de:from_mime,inai.de:email,inai.de:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C0BC726311

The \e]4 code is capable of modifying xterm's entire 256-slot palette,
not just the ANSI sub-portion thereof.

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man/man4/console_codes.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index e0e88537a..28ee4c2fc 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -753,7 +753,7 @@ Set icon name and window title to
 T}
 ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
 ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
-ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \f[I]txt\f[].
+ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) to \f[I]txt\f[].
 ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
 ESC ] 46 ; \f[I]name\f[] ST	T{
 Change log file to
-- 
2.54.0


