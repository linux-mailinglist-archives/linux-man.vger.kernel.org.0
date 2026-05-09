Return-Path: <linux-man+bounces-5478-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDWLICiG/2nd7QAAu9opvQ
	(envelope-from <linux-man+bounces-5478-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:24 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EA2501261
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07BB9300F9D1
	for <lists+linux-man@lfdr.de>; Sat,  9 May 2026 19:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2DF38F653;
	Sat,  9 May 2026 19:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="NJuprv85"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08074A3E
	for <linux-man@vger.kernel.org>; Sat,  9 May 2026 19:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353701; cv=none; b=dTl1f6JzK/08avPCouptciJasCAcrNauoNcLrtvVEqKrxcQTrtUTb1jU42PYTvXqoDFZ5BQX+KUhMy98U8jq/eMkx0iWb93A6iFGGKvnK8A+twXb22PJc6+Gt9Gtgm+Oc+eCV7i3U+ug1pa4TcyTP4v8+8EPVPHJpXGUM3EZfkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353701; c=relaxed/simple;
	bh=UF8u7JxSqPxl6SLoGSBDXljA4qF2abQb9uh/KbdUCu4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wpy94H0IGMz4sVN8Slr7cS0mzDZTsabgx9G+c7YxtJ6ugnvhpazW3SSs+o4LdpBGjW0V24NiVHWeR2Mjk2ohykSqpWhz0dUXvV2ZCHt2Oy+8UDjrlnW5do1m9igIjDGFEaYsViZkh0O67MfvkEXox8Lv+vWcn3kCiRbvP4c15uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=NJuprv85; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description;
	bh=WvPR1PZRrqPwklGDFos8NwcJfvOo2onavUZudRP0hyg=; b=NJuprv85YIhGHKDS+FBVVRLBkl
	Nu8DolWGPdmmmww1YWDWjFf5G/qucy3+iIg4eyIIbgKMn7op0FMeoesFtT+D10Rfxev4Ph79q+Il4
	w20iTYahkTyB6lj4oP3ozDc88eyEmJx08yXF0mW9VI2uvqJqHgvdM+PT6Q/h6Qp947DSJu5fy61fZ
	nREhvr8ZiENwUGftXUXxHNwQllVYSnVdcCNdUFJMtVCHgRKAnQB1AdG4rL5OyJ7kRW7ivnl8ctDRC
	T5VEOr0l5E4tP9ei8+H7FsXoheqBBdYoZElj9UFBRTK4aYsqRKbcXdJSYenUxElNigL689Unp1vCr
	WrHoB9pA==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wLmkv-000Rz6-2O;
	Sat, 09 May 2026 18:50:29 +0000
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 3/3] man/man7/suffixes.7: Clarify Debian artifacts description
Date: Sat,  9 May 2026 20:50:22 +0200
Message-ID: <20260509185022.289672-4-guillem@debian.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260509185022.289672-1-guillem@debian.org>
References: <20260509185022.289672-1-guillem@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D9EA2501261
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5478-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guillem@debian.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[debian.org:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hadrons.org:email]
X-Rspamd-Action: no action

From: Guillem Jover <guillem@hadrons.org>

The terminology for these artifacts was "recently" updated to make
them consistent and more clear, where both dpkg and the Debian Policy
now have matching terminology. Refer to the dpkg man pages for further
information and format description.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man/man7/suffixes.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
index 8487bb5a1..8408aaadd 100644
--- a/man/man7/suffixes.7
+++ b/man/man7/suffixes.7
@@ -79,7 +79,7 @@ Suffix	File type
 \&.csh	\f[B]csh\f[](1) shell script
 \&.cxx	equivalent to \f[I].cc\f[]
 \&.dat	data file
-\&.deb	Debian software package
+\&.deb	Debian binary package (\f[B]deb\f[](5))
 \&.def	Modula-2 source for definition modules
 \&.def	other definition files
 \&.desc	initial part of mail message unpacked with
@@ -91,7 +91,7 @@ command output)
 T}
 \&.dir	dbm data base directory file
 \&.doc	documentation file
-\&.dsc	Debian Source Control (source package)
+\&.dsc	Debian source package control file (\f[B]dsc\f[](5))
 \&.dtx	LaTeX package source file
 \&.dvi	TeX's device independent output
 \&.el	Emacs-Lisp source
-- 
2.53.0


