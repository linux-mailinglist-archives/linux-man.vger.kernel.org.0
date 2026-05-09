Return-Path: <linux-man+bounces-5480-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGsPIy2G/2nd7QAAu9opvQ
	(envelope-from <linux-man+bounces-5480-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:29 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 272B050126F
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDD7B300F9F2
	for <lists+linux-man@lfdr.de>; Sat,  9 May 2026 19:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 374ED351C06;
	Sat,  9 May 2026 19:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="PPhDEJQG"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC88C4A3E
	for <linux-man@vger.kernel.org>; Sat,  9 May 2026 19:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353707; cv=none; b=NZN0lVcxJwf+3s2+klP//f26L8D9VwQbq0pV1UiIRKBvgjdxhFvCeU634ZC1UI+KhkztJ8nAFLWwPzsRaqAe/pf/rMumNVPyKvMau/C2CKDzg+II8NWckYtL5EtHTvwzXlJME8R7DL+HjuurkxVK9kg+3R+xFU/YdojHMU+mNHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353707; c=relaxed/simple;
	bh=e+nvRbstor6joXsuaPQQAaaQg4U+MzD5DyVFtHMYUOg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ECSZjrMUKsh5au1jsyoH07jpIFcm3DtF7nJcfsYYt/WzDOBe3Ra0kvSwnqQ+oWSRU/O9RfU7HJtE6p9RgKKNWhNRbCfXkbh3pjjIRxrYJE6v+0McHYpW+p8tdnCi0DBfh6H3LyX67GMv/sRAMBjcNtbYx/opQkxC30H20R6QDdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=PPhDEJQG; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description;
	bh=1eQZEd1stWyp4uJ2pmnQ22zG4prCj1yMLu6NW2oY5LQ=; b=PPhDEJQGWG2CQWKwONgwXjN2E6
	uXpN92N+aRS3a4o4goHkzx2rFYc/IC/Itd9vVLtiRyBiddyMBk8Xxocqq7UKek1OlZyZTbA9XDhUa
	QqN0AKeCdxJJm55sPmeBDjpZuSpgTmH/NEJDQmdp72fDz2dzNF+b5Y1zxLbp+2/+vZQKdjvQb2Kpr
	ODTGMfoxcf0OpRJBIfJsL0mv0PDaoiQGVQlOOfvluD1wpK62t8udxB7r/KY7Sh8GqRN4ILUGlMGkl
	JzCtpw92I/9HKNTi4DvUpMGi/wmQN8LQbZp7m1+b1SbMD3HyGlU4n0QNhpvk10T2w5UMOYn2vIw3O
	LCeVguTg==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wLmku-000Ryz-3A;
	Sat, 09 May 2026 18:50:28 +0000
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/3] man/man7/suffixes.7: Add xz suffixes
Date: Sat,  9 May 2026 20:50:21 +0200
Message-ID: <20260509185022.289672-3-guillem@debian.org>
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
X-Rspamd-Queue-Id: 272B050126F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5480-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hadrons.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Guillem Jover <guillem@hadrons.org>

These are very common nowadays, for example by default Debian source
packages use this compression method.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man/man7/suffixes.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
index 4c8b3f27a..8487bb5a1 100644
--- a/man/man7/suffixes.7
+++ b/man/man7/suffixes.7
@@ -216,6 +216,7 @@ T}
 \&.tar.Z	\f[B]tar\f[](1) archive compressed with \f[B]compress\f[](1)
 \&.tar.bz2	\f[B]tar\f[](1) archive compressed with \f[B]bzip2\f[](1)
 \&.tar.gz	\f[B]tar\f[](1) archive compressed with \f[B]gzip\f[](1)
+\&.tar.xz	\f[B]tar\f[](1) archive compressed with \f[B]xz\f[](1)
 \&.taz	\f[B]tar\f[](1) archive compressed with \f[B]compress\f[](1)
 \&.tcl	tcl source code
 \&.tex	TeX or LaTeX source
@@ -246,6 +247,7 @@ T}
 \&.xpm	X11 pixmap source
 \&.xs	Perl xsub file produced by h2xs
 \&.xsl	XSL stylesheet
+\&.xz	file compressed with \f[B]xz\f[](1)
 \&.y	\f[B]yacc\f[](1) or \f[B]bison\f[](1) (parser generator) files
 \&.z	T{
 File compressed using
-- 
2.53.0


