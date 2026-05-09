Return-Path: <linux-man+bounces-5479-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DOsLCqG/2nd7QAAu9opvQ
	(envelope-from <linux-man+bounces-5479-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:26 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4494B501268
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 21:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7182300F9E9
	for <lists+linux-man@lfdr.de>; Sat,  9 May 2026 19:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687A234753B;
	Sat,  9 May 2026 19:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="m73SAa85"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D0A4A3E
	for <linux-man@vger.kernel.org>; Sat,  9 May 2026 19:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353704; cv=none; b=NDOsQObCsYyXqHAkF6BLfZxeLXxHBHyWofWFie/jIS8M0jE+cKLASNVnFKPsRvFOBnCXGsOqqU2BToC/CdWir53oOqLn9bhew9e/FqWuxUPr/rfNh0zH2u3KX699sgTyh3QwotN+4KKI7LE5DchisxIlgVn6VIlTKQuYPWyd3QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353704; c=relaxed/simple;
	bh=uz+l1+Gvoj3fnMIbJyB14UlzCwCoKJhvz3+tsnFCZPI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WCxrWNt/7tKqgbW+izF2g3L0I/eCv+xKnQfizdNiHA4rC8gy+J7T1cWtTaticVMn095DUZua5J3KAui6361pDFLQvBVRdzPP/Gtk2x2ZHhmDUH6hEYU2p2vDyfVn0GsKsUNipwuFED9DNKhneP1BWyNnxDVl1a84KAifvHU04yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=m73SAa85; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=jowajpFVZ0xeH87bj/2T4o7Ff2RSPd1B+ie8rwQkTRk=; b=m7
	3SAa85s+SlyYuIKsfvUMBnk5TU3GAnkqVIbEncLJuFuB0urfzDw1dbb8nHrgM2TK0IMBXuQfdeZY8
	r3cmuOCV6s0IgZ7xhNYsHjPIo/e96eLn2YKT+ge+mQMyLPazY230uALlSHWG06iD15tcMvJqCO+MN
	QCy6GzMVzUD0QOeds8le45UYdQOYX/OgoKjIUpDpr1WWxKjSdIrMgLyxp874uJaIILRLsyjFBhm7E
	IqgBvTM7MfBbxdGUaf7j2wtCJO1iUIrX9CIrbUpGTt4fmz6GctJfdfQahJm8sHzHgq154UQOBhEWC
	4Kz8XPmUmYpORj4ROdNokwLMWUzAt5EQ==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wLmks-000Ryr-2b;
	Sat, 09 May 2026 18:50:26 +0000
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 0/3] dpkg/Debian related terminology improvements/fixes
Date: Sat,  9 May 2026 20:50:19 +0200
Message-ID: <20260509185022.289672-1-guillem@debian.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4494B501268
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5479-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hadrons.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Guillem Jover <guillem@hadrons.org>

Hi!

This series includes some fixes/improvements to dpkg/Debian adjacent
information and terminology.

Thanks,
Guillem

Guillem Jover (3):
  */: Say OpenPGP instead of PGP
  man/man7/suffixes.7: Add xz suffixes
  man/man7/suffixes.7: Clarify Debian artifacts description

 CONTRIBUTING.d/mail             |  8 ++++----
 CONTRIBUTING.d/patches/sendmail |  2 +-
 man/man7/suffixes.7             | 10 ++++++----
 3 files changed, 11 insertions(+), 9 deletions(-)

-- 
2.53.0


