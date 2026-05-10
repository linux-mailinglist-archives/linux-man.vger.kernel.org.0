Return-Path: <linux-man+bounces-5483-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULGdEOC+AGoCMQEAu9opvQ
	(envelope-from <linux-man+bounces-5483-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 19:22:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8423F505637
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 19:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0453300914E
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 17:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642AC3B19A8;
	Sun, 10 May 2026 17:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="yj5Pwi38"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DAE3B27DB
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 17:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778433733; cv=none; b=mwOcKCXQlYMryeMNlK94pTsuY/GlM5UB1Ti7nZtrejrMbWCz660UIphn61I2Gy5GxEBKJyLXrv70u6Ync11jVbEwlRnBqKVU8cIpb+jLdmb1nn/hzIvxpOQMvXTFWh1uX5G+mc3XxG/+Cfj7e7jhOsAIzHvh31LeB9pd3yRfGDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778433733; c=relaxed/simple;
	bh=LzlNMrhFiHlkT/+lttkkkJvSqLPqxi53bLjzkzBnJaM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=l2Ct4NC4qI3UE96RlNOqSKFTLYMBUHTsRRAq+kXOizm6rQKPdQzFau0wAOejRNo3H01mI1uncFyTWod60WEFgLw9AHNeyIlj+FBpeFle7TrQ3FfE6pfeOohTGEP82oCNk6CiF3WRYWUyEQSmtLO6+DFjoFFdpQ6kstJ0jDT8i9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=yj5Pwi38; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=rzXl/K5jzbywmrO46Zrd5pXMuJ7dJu6CyF9uREfFvY4=; b=yj
	5Pwi38jfTySi77xkFZ/P8QcsYeku+ZjSaZH8vlmubU8gDVoqQUBsP96qjAjVRPyRdO86G5wf75OuM
	rQqYm8qpppY8GzulhAMpWb2S9naYJsVBjnyRME//fz+YNqReOVE5J/GS+S+iIu/3RqtuVxLmIKB/E
	AFlaf7Sdh9pIvWbu8nk/2zTK9igdMH8ABaLcnM3QhGoe8jTi0qPO4WWZthUvDnlXlDUqWWJcKDp9U
	DN22l3vlggqRZLyXi+ZcujJTwDQdBgzHOt5oO+lcn9u+ukXs0/+Jleiq3csUV+IMoQBh+YWfGGIJL
	UOlPKPV3G0L3oAlEmVXTBYDmSip280tw==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wM7qz-001jyq-2l;
	Sun, 10 May 2026 17:22:09 +0000
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding issues
Date: Sun, 10 May 2026 19:22:04 +0200
Message-ID: <20260510172205.350001-1-guillem@debian.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8423F505637
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
	TAGGED_FROM(0.00)[bounces-5483-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gmx.de:email,com.org.es:email]
X-Rspamd-Action: no action

From: Guillem Jover <guillem@hadrons.org>

It make sense to use this file to fix spelling and encoding issues that
otherwise show up when checking the git history. It also makes sense to
honor name changes for people, to avoid dead naming or similar. As well
as fixing up local mail addresses that have never been valid.

It makes less sense to remap valid addresses at the time of submission
that represented a specific hat or organization, where the person is
no longer affiliated with, because that breaks the historic trail and
provenance of the changes. And is what require a continuous update
burden, which seems to have been the reason for the removal with
commit 2231a1659621d281a2fbb0d75bad5bccce538f96.
---
 .mailmap | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 .mailmap

diff --git a/.mailmap b/.mailmap
new file mode 100644
index 000000000..d58482666
--- /dev/null
+++ b/.mailmap
@@ -0,0 +1,7 @@
+# Fix name spelling and encoding issues.
+Adeodato Simó <dato@net.com.org.es>
+Américo Wang <xiyou.wangcong@gmail.com>
+André Goddard Rosa <andre.goddard@gmail.com>
+Bryan Østergaard <kloeri@exherbo.org>
+Nicolas François <nicolas.francois@centraliens.net>
+Reimar Döffinger <Reimar.Doeffinger@gmx.de>
-- 
2.53.0


