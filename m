Return-Path: <linux-man+bounces-5659-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dg1VITMWNWpNmwYAu9opvQ
	(envelope-from <linux-man+bounces-5659-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2026 12:13:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A986A5252
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2026 12:13:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5659-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5659-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 942D63009F94
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2026 10:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7629363089;
	Fri, 19 Jun 2026 10:11:57 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from a3.inai.de (a3.inai.de [144.76.212.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B752F363F
	for <linux-man@vger.kernel.org>; Fri, 19 Jun 2026 10:11:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781863917; cv=none; b=PF0UTeIrAtjHUw6b1x4mRTSKQQZx5Fq0Vzskn2cGx2bfOsQTO+8rpjVRWBJR8xYpd7bF1GqJ93t3UkVz7Gkw/B7bkH1G5/L6zT5df8VeLHr/rNjqdYut9FYrzoGE6aMRvXih2nTBSKv3AC9qBW5QZZV5lvjdcvsUY8rAXLUW4fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781863917; c=relaxed/simple;
	bh=XnjNqZxLvPcxJRxHiQceb+/jikzHsn+yF5PAmWZNUog=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XoKUjeGiw11jxrJX9W/rgSynZty7Z4EedUokXBeMjfQ3xxPaO8UE8Rge/zcKCdtE4k3K+gWTfrrsQtw+W7xxyAOuwphpgjB7zd+FgwqejJ7sYL2YwEPDarlAXNdTVnDnYsMNqTL3H60llTcJnKqjhZVqNrHtnMdgeXjAqkCJBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=inai.de; spf=pass smtp.mailfrom=inai.de; arc=none smtp.client-ip=144.76.212.145
Received: by a3.inai.de (Postfix, from userid 65534)
	id 23F4F10040BEAE; Fri, 19 Jun 2026 12:06:17 +0200 (CEST)
X-Spam-Level: 
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:202:600a::a4])
	by a3.inai.de (Postfix) with ESMTP id EB97F1004094BB;
	Fri, 19 Jun 2026 12:06:16 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] console_codes.4: document more xterm codes
Date: Fri, 19 Jun 2026 12:06:16 +0200
Message-ID: <20260619100616.73786-1-jengelh@inai.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5659-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[inai.de];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5A986A5252

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man/man4/console_codes.4 | 48 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 44 insertions(+), 4 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index a742cf36f..2d5328059 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -753,14 +753,54 @@ Set icon name and window title to
 T}
 ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
 ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
-ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \f[I]txt\f[].
-ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
-ESC ] 4 6 ; \f[I]name\f[] ST	T{
+ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) to \f[I]txt\f[].
+ESC ] 5 ; 0 ; \f[I]txt\f[] ST	Set the color for bold substitution to \f[I]txt\f[].
+ESC ] 5 ; 1 ; \f[I]txt\f[] ST	Set the color for underline substitution to \f[I]txt\f[].
+ESC ] 5 ; 2 ; \f[I]txt\f[] ST	Set the color for blinking substitution to \f[I]txt\f[].
+ESC ] 5 ; 3 ; \f[I]txt\f[] ST	T{
+Set the color for reverse substitution to \f[I]txt\f[]. Because xterm still
+reverses fg-bg pairs, the effect is that only the background of a character
+cell is colorized this way.
+T}
+ESC ] 5 ; 4 ; \f[I]txt\f[] ST	Set the color for italic substitution to \f[I]txt\f[].
+ESC ] 6 ; 0 ; \f[I]val\f[] ST	Toggle bold rendition: 0=bold, 1=substitute by color.
+ESC ] 6 ; 1 ; \f[I]val\f[] ST	Toggle underscore rendition: 0=underscore, 1=color.
+ESC ] 6 ; 2 ; \f[I]val\f[] ST	Toggle blinking rendition: 0=blinking, 1=color.
+ESC ] 6 ; 3 ; \f[I]val\f[] ST	Toggle reverse rendition: 0=reverse, 1=color.
+ESC ] 6 ; 4 ; \f[I]val\f[] ST	Toggle italic rendition: 0=italic, 1=color.
+ESC ] 10 ; \f[I]txt\f[] ST	Set the foreground text color to \f[I]txt\f[].
+ESC ] 11 ; \f[I]txt\f[] ST	Set the background color to \f[I]txt\f[].
+ESC ] 12 ; \f[I]txt\f[] ST	Set the text cursor color to \f[I]txt\f[].
+ESC ] 13 ; \f[I]txt\f[] ST	Set the mouse cursor foreground color to \f[I]txt\f[].
+ESC ] 14 ; \f[I]txt\f[] ST	Set the mouse cursor background color to \f[I]txt\f[].
+ESC ] 15 ; \f[I]txt\f[] ST	Set the Tektronix foreground color to \f[I]txt\f[].
+ESC ] 16 ; \f[I]txt\f[] ST	Set the Tektronix background color to \f[I]txt\f[].
+ESC ] 17 ; \f[I]txt\f[] ST	T{
+Set the background text color for reverse video (provided it is not substituted
+with 6;3;1) to \f[I]txt\f[], which in effect becomes the background color.
+T}
+ESC ] 18 ; \f[I]txt\f[] ST	Set the Tektronix cursor color to \f[I]txt\f[].
+ESC ] 19 ; \f[I]txt\f[] ST	T{
+Set the foreground text color for reverse video (provided it is not substituted
+with 6;3;1) to \f[I]txt\f[], which in effect becomes the foreground color.
+T}
+ESC ] 46 ; \f[I]name\f[] ST	T{
 Change log file to
 .I name
 (normally disabled by a compile-time option).
 T}
-ESC ] 5 0 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
+ESC ] 50 ; \f[I]fn\f[] ST	T{
+Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" resource)
+T}
+ESC ] 104 ; \f[I]num\f[] ST	Reset color for mode 4;\f[I]num\f[]
+ESC ] 105 ; \f[I]num\f[] ST	Reset color for mode 5;\f[I]num\f[]
+ESC ] 106 ; \f[I]num\f[] ; \f[I]val\f[] ST	T{
+Exactly equal to 6;\f[I]num\f[];\f[I]val\f[]. (no "reset" logic)
+T}
+ESC ] 110 ST	Reset color for mode 10. (The pattern repeats until 119.)
+ESC ] \f[I]mode\f[] ; ? ST	T{
+Query the respective property/color/etc. (modes 4,5,10-19,50)
+T}
 .TE
 .P
 It recognizes the following with slightly modified meaning
-- 
2.54.0


