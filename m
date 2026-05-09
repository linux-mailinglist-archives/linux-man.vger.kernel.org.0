Return-Path: <linux-man+bounces-5481-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJ1SLTeG/2nd7QAAu9opvQ
	(envelope-from <linux-man+bounces-5481-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:39 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D75501277
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2B1D300A3A1
	for <lists+linux-man@lfdr.de>; Sat,  9 May 2026 19:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368AD351C06;
	Sat,  9 May 2026 19:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="oaQWk0kO"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA2033A9D6
	for <linux-man@vger.kernel.org>; Sat,  9 May 2026 19:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353710; cv=none; b=oPSOGU2WHAZ79K7UNEdDv7Z1q8TSbG6emgMV3qXcJ4AlaAbpQ7P4XV8Jb+e3WwET8zTs0VrTJTj9ke7SBm0fjvG/PL/sHb8+hy8dDLopabjDO8c4mnoW46XF1kVX6HFWAJXO0lwlBv418UxKG3wztRly7gEDtwexlZYJwQI1YZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353710; c=relaxed/simple;
	bh=yNxNE9VMtMlB5pKOzxjOsZQsLLmrxNj/gxkZCBd5lSc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BmdcoYwPFI+f4Y9/0m3HB5QI4S0XlHlUBuPYgjBoAWCmcHOZO78FmzLYH0kXSFqbm9d1Sv6R5XbKbv9RBjl/Ib2qb85D/Ib5kEKomB8VvCF/2ZEgeyS3Q8JUcQxZP8L1Dhh8/+z+RfHliLFdznLtnmssRNb3bEV8m0Jru44hYMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=oaQWk0kO; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description; bh=SxsfU8X9F0JG4tpkNtQEmIo2vqo5UAuwYPwro01US00=; b=oaQW
	k0kOejhdbVaMOM2w6zk4mXiKau4zVSUG40+2a9a2X1VMD+khyc8yr69NpvF4L0B43PK+y+Bs8vw5f
	derEr6JLSP2IHJxttuVvrw71kG8Azpz4GSIa4BZ+L6OsNbnc79MuV0/169nPG7lGlSzsCcLPAjOye
	Uxdk1iyJtc6s0+AogmT2HQtPGWb8FL73bfn6KpaxWcqFc8EEy26r46mT45Evp3mBpJPFIsrP5tprQ
	IJt4Ud7COkyQyXldPJZU+mwwyefRp1Mh8SvPAOkuvDfi8SIkG59UuWQHQB3XjsagrJi+e0oKYbW64
	3LY301dI0kmcVwuWhk74FadaLibmhA==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wLmku-000Ryv-0A;
	Sat, 09 May 2026 18:50:28 +0000
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/3] */: Say OpenPGP instead of PGP
Date: Sat,  9 May 2026 20:50:20 +0200
Message-ID: <20260509185022.289672-2-guillem@debian.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260509185022.289672-1-guillem@debian.org>
References: <20260509185022.289672-1-guillem@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 20D75501277
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5481-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guillem@debian.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[debian.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hadrons.org:email,gnupg.org:url]
X-Rspamd-Action: no action

From: Guillem Jover <guillem@hadrons.org>

The IETF draft is called OpenPGP, where PGP is the original
implementation from where the specification was based on. For file
artifacts «.pgp» is the correct short term to use though, which can
be considered the more implementation neutral name to use.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 CONTRIBUTING.d/mail             | 8 ++++----
 CONTRIBUTING.d/patches/sendmail | 2 +-
 man/man7/suffixes.7             | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/CONTRIBUTING.d/mail b/CONTRIBUTING.d/mail
index f900c0a1b..84c8fbcfb 100644
--- a/CONTRIBUTING.d/mail
+++ b/CONTRIBUTING.d/mail
@@ -41,18 +41,18 @@ Description
              it, go to
              <https://subspace.kernel.org/vger.kernel.org.html>.
 
-   Sign your emails with PGP
+   Sign your emails with OpenPGP
         We encourage that you sign all of your emails sent to the
         mailing list, (especially) including the ones containing
-        patches, with your PGP key.  This helps establish trust between
+        patches, with your OpenPGP key.  This helps establish trust between
         you and other contributors of this project, and prevent others
         impersonating you.  If you don't have a key, it's not mandatory
         to sign your email, but you're encouraged to create and start
-        using a PGP key.  See also:
+        using a OpenPGP key.  See also:
         <https://www.gnupg.org/faq/gnupg-faq.html#use_pgpmime>
 
         If you use mutt(1), we recommend the following configuration for
-        PGP:
+        OpenPGP:
 
             set crypt_autosign = yes
             set crypt_protected_headers_write = yes
diff --git a/CONTRIBUTING.d/patches/sendmail b/CONTRIBUTING.d/patches/sendmail
index f0a91f993..9f2c8f554 100644
--- a/CONTRIBUTING.d/patches/sendmail
+++ b/CONTRIBUTING.d/patches/sendmail
@@ -32,7 +32,7 @@ Description
 		  ├─> [PATCH v3 02] ...
 		  └─> [PATCH v3 03] ...
 
-    Sign the email containing patches with PGP
+    Sign the email containing patches with OpenPGP
 	See <CONTRIBUTING.d/mail> for more details on signing your mail
 	to the list.  See also <CONTRIBUTING.d/git> for instructions for
 	configuring git-send-email(1) to use neomutt(1) as a driver.
diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
index 3e17afc77..4c8b3f27a 100644
--- a/man/man7/suffixes.7
+++ b/man/man7/suffixes.7
@@ -46,7 +46,7 @@ Suffix	File type
 \&.am	\f[B]automake\f[](1) input file
 \&.arc	\f[B]arc\f[](1) archive
 \&.arj	\f[B]arj\f[](1) archive
-\&.asc	PGP ASCII-armored data
+\&.asc	OpenPGP ASCII-armored data
 \&.asm	(GNU) assembler source file
 \&.au	Audio sound file
 \&.aux	LaTeX auxiliary file
@@ -177,7 +177,7 @@ T}
 \&.pfa	PostScript font definition files, ASCII format
 \&.pfb	PostScript font definition files, binary format
 \&.pgm	portable greymap format
-\&.pgp	PGP binary data
+\&.pgp	OpenPGP binary data
 \&.ph	Perl header file
 \&.php	PHP program file
 \&.php3	PHP3 program file
-- 
2.53.0


