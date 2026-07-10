Return-Path: <linux-man+bounces-5739-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i4+FOBlvUWp4EwMAu9opvQ
	(envelope-from <linux-man+bounces-5739-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:15:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A673F73C
	for <lists+linux-man@lfdr.de>; Sat, 11 Jul 2026 00:15:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5739-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5739-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D65043044714
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADD8346FCA;
	Fri, 10 Jul 2026 22:10:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from a3.inai.de (a3.inai.de [144.76.212.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F963CC314
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 22:10:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783721447; cv=none; b=aPmSmtpJCwtO0WY58SNahectZ1IK0v6ptKdmIriR1kWm7RFWYaY5sFjVGkgiwH6K2k8QdPvPiPm5aEj/f5mDA+nA5T7vddsRu/1HRR2zmoQIs8XKeWkryaUVdXfoCy66G/Y75uKulTcpayiV944e76mLkn1GU32xzaxDvOs08kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783721447; c=relaxed/simple;
	bh=fF97sf0D12aZE1WooOYr2xSYpIwBBtoiLoStgYidqAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kMH39CU+WF1We4PuppikhpwyNTXIOJkUZQ8U+vKLiAqgjKObl9e0Ap4BdRSJim5gNCIP8XEQ9vsia4TRaH5663Tmvkk6xwCiu24b8hxTjnD4iKLWzvhTiHwQUHu8VWpxELXuki2GnfUlv2v1nXBxOtvBnXLFiso6xW3SiVPlhbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=inai.de; spf=pass smtp.mailfrom=inai.de; arc=none smtp.client-ip=144.76.212.145
Received: by a3.inai.de (Postfix, from userid 65534)
	id A406E1003C3517; Sat, 11 Jul 2026 00:10:35 +0200 (CEST)
X-Spam-Level: 
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:202:600a::a4])
	by a3.inai.de (Postfix) with ESMTP id 8240D1003C4C30;
	Sat, 11 Jul 2026 00:10:35 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/2] console_codes.4: document more xterm codes
Date: Sat, 11 Jul 2026 00:10:35 +0200
Message-ID: <20260710221035.26529-2-jengelh@inai.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260710221035.26529-1-jengelh@inai.de>
References: <20260710221035.26529-1-jengelh@inai.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5739-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[inai.de: no valid DMARC record];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jengelh@inai.de,linux-man@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,inai.de:from_mime,inai.de:email,inai.de:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D8A673F73C

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man/man4/console_codes.4 | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 534510a4b..526d743a3 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -754,7 +754,30 @@ T}
 ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
 ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
 ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) to \f[I]txt\f[].
+ESC ] 5 ; 0 ; \f[I]txt\f[] ST	Set the color for bold substitution to \f[I]txt\f[].
+ESC ] 5 ; 1 ; \f[I]txt\f[] ST	Set the color for underline substitution to \f[I]txt\f[].
+ESC ] 5 ; 2 ; \f[I]txt\f[] ST	Set the color for blinking substitution to \f[I]txt\f[].
+ESC ] 5 ; 3 ; \f[I]txt\f[] ST	Set the color for reverse substitution to \f[I]txt\f[].
+ESC ] 5 ; 4 ; \f[I]txt\f[] ST	Set the color for italic substitution to \f[I]txt\f[].
+ESC ] 6 ; 0 ; \f[I]val\f[] ST	Toggle bold rendition: 0=bold, 1=substitute by color.
+ESC ] 6 ; 1 ; \f[I]val\f[] ST	Toggle underscore rendition: 0=underscore, 1=color.
+ESC ] 6 ; 2 ; \f[I]val\f[] ST	Toggle blinking rendition: 0=blinking, 1=color.
+ESC ] 6 ; 3 ; \f[I]val\f[] ST	Toggle reverse rendition: 0=reverse, 1=color.
+ESC ] 6 ; 4 ; \f[I]val\f[] ST	Toggle italic rendition: 0=italic, 1=color.
 ESC ] 10 ; \f[I]txt\f[] ST	Set the foreground text color to \f[I]txt\f[].
+ESC ] 11 ; \f[I]txt\f[] ST	Set the background color to \f[I]txt\f[].
+ESC ] 12 ; \f[I]txt\f[] ST	Set the text cursor color to \f[I]txt\f[].
+ESC ] 13 ; \f[I]txt\f[] ST	Set the mouse cursor foreground color to \f[I]txt\f[].
+ESC ] 14 ; \f[I]txt\f[] ST	Set the mouse cursor background color to \f[I]txt\f[].
+ESC ] 15 ; \f[I]txt\f[] ST	Set the Tektronix foreground color to \f[I]txt\f[].
+ESC ] 16 ; \f[I]txt\f[] ST	Set the Tektronix background color to \f[I]txt\f[].
+ESC ] 17 ; \f[I]txt\f[] ST	T{
+Set the background text color for highlighted (selected) text to \f[I]txt\f[].
+T}
+ESC ] 18 ; \f[I]txt\f[] ST	Set the Tektronix cursor color to \f[I]txt\f[].
+ESC ] 19 ; \f[I]txt\f[] ST	T{
+Set the foreground text color for highlighted (selected) text to \f[I]txt\f[].
+T}
 ESC ] 46 ; \f[I]name\f[] ST	T{
 Change log file to
 .I name
@@ -764,6 +787,18 @@ ESC ] 50 ; \f[I]fn\f[] ST	T{
 Set font to \f[I]fn\f[] (the escape code is normally disabled;
 consult the xterm manpage for the "allowFontOps" setting)
 T}
+ESC ] 104 ; \f[I]num\f[] ST	Reset color for mode 4;\f[I]num\f[]
+ESC ] 105 ; \f[I]num\f[] ST	Reset color for mode 5;\f[I]num\f[]
+ESC ] 106 ; \f[I]num\f[] ; \f[I]val\f[] ST	T{
+Exactly equal to 6;\f[I]num\f[];\f[I]val\f[]. (no "reset" logic)
+T}
+ESC ] 110 ST	T{
+Reset color for mode 10. (Codes 111-119 map to resetting modes 11-19,
+respectively.)
+T}
+ESC ] \f[I]mode\f[] ; ? ST	T{
+Query the respective property/color/etc. (modes 4,5,10-19,50)
+T}
 .TE
 .P
 It recognizes the following with slightly modified meaning
-- 
2.54.0


