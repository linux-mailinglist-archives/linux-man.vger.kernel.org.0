Return-Path: <linux-man+bounces-5399-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id s34sAXbE7GkUcgAAu9opvQ
	(envelope-from <linux-man+bounces-5399-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 15:41:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BE2466835
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 15:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1EF7300D956
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 13:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E5F17AE11;
	Sat, 25 Apr 2026 13:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ebbXoR6v"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E62D30F806
	for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 13:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777124465; cv=none; b=DqgOboVNUofShtW6Edqv04t7fQjKwpDMkoGLsWdNicXXYcAwo1u7UeWXEXKgiEBhUyVrIYJFGYXnjv1IYSBXSkgGmSeTH7OuFnErgLdfFvup+HZjWK1cpvERJZHVPmwg5xMt8RgT100AkyGZaPPuC8r/xGZeUmWr16iBynDEh98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777124465; c=relaxed/simple;
	bh=gQPslt8GzrRWS7mWYDbbF1fnvML1zNCdRJiqxfqbDzg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eLmPmwVdWCmOt5H2MV/UHhxEuYY9Bywq54Jzk/AwQhZ7OuQ7h7DNOgV8aF8wiMjwJMMjYpFykmt6K81cefLXJ1oVYMjePj/0+TneGz7GHwYOUrmgd0w+X4T3BD015Y8kS0gLELkDnLjHHB/kn4MnekRMBQMg12NQ8uptK1wZ38o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ebbXoR6v; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-8296d553142so4931481b3a.3
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 06:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777124463; x=1777729263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h7ZuF1KIDPxt2qdGt2/32jtsrYQFSxW1oNBvpz20/tI=;
        b=ebbXoR6vHdlVkGzXloWTl+4mXZOoCrlBVvP7rMoffc3blSCj9uVPAqUB8xSQY5+4yh
         SH/4dHAxkRtO6AO11uqkDPWE/hI1AArXwLvKKNwmF73/5MHDctd5jfKXRNW4FObLcHqw
         jCzK8p9PgFanEr3Q+DtSkXI6jMD35C4etozy0Jncc0/I/DPU3Qkk9lBYn5jmPZpHCFug
         2Q7uMQ3hrxCn/GnAdt+SwUB2s/GcqA2iAmVue1fazxjki2bCx8A+qNbZ0pxKsHsJW0G5
         1neibfg8/ycdRk11Zz/aftId4jkHOk1q/y4q/ixVGMXabCL7mZkEw/pdSgbtytD+tjcE
         DEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777124463; x=1777729263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7ZuF1KIDPxt2qdGt2/32jtsrYQFSxW1oNBvpz20/tI=;
        b=jayyXgNqjQ/iH9z29hBPI0EejJVJ41U4r6Z6GsBo3h7WcWG4i4zO+jtrW98MLiBnni
         Eq+NDACSMHyTCqfmQLO+0oar21mSa9zKkhpghRzL1QvzSab53OahrHbuTKdntsushegT
         FnFZln7HBRsuSNEfgKlcd2A2KBTMRGDubPvi/M4T7iHJY5FBQLuz45RGsqcqeshvHS4r
         RslC9fCh0FqAdgLCsYrMNVeGARWV1jinkNStppXg5cIgyXR+ROOlAm1O+p03ZdhSQyrj
         Mjab7I1HaYYkGTf3mCPXtFskSpPTE0RnUr/cmmffy0vDRK0r2EbMfSLCfKehHPZpK4JJ
         ss3w==
X-Gm-Message-State: AOJu0YzUqc2YeSWP9SBlLXyaOUvXpUzrBbTgBDkTEfAi1gMyx+PB3/+4
	AUddnKSJoY9hjMNfo2s+faQtHMixCGghg2EFZa4/p9zkf+nI/kyXINMkqOlHWZleT0U=
X-Gm-Gg: AeBDieulD71ge/9TGHc/j1oWzyCdTIdvzVJw9Zys65+TONGWZ2HDjSQxW0iYHTX+qKo
	kQA3z0BJwbNIW/RyXmwMlccCRLugzLOA2XI/NS6zea3aI+LinPtF9+1NUPasER26J9p1ZodXBcU
	ZlQARbqroGlrMETE3bgi+ERUVABg6MHqRzlghlugQqp6cC/Nhe78hpURJbC7bRIRWj1EvJnyI6e
	BZGBefevSmxWd70Bq6jCbJi2s5AWAaNtGDKd/VHCBCwnvxZ1QwSJwiRMFJU/LCA4S6Lv1QzqAy+
	tD/C+Wngbidkf98ww7J547tffbmFQsMqsEV2ZD7NQhb5T16JLjqbuucHpCzYZngMbsL+vKUldNP
	UvHIX5f88nhJq589d6rybiUZ2PDaItBqhJmkGeG1erfggbHPoSIFbhAi/YLPUGQsfEaxlTRZMxw
	vG4sT9Y+NKuQM5ZvFXaAiFxDMNoSbS9pHZdc+WX33ZcV2JysT4jmlTVIyQIwaSXUFjAw==
X-Received: by 2002:a05:6a00:bd0a:b0:81d:dd3a:b8f5 with SMTP id d2e1a72fcca58-82f8c8e911amr38582450b3a.38.1777124463388;
        Sat, 25 Apr 2026 06:41:03 -0700 (PDT)
Received: from toolbx ([103.103.35.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ec0566dsm26839467b3a.57.2026.04.25.06.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 06:41:02 -0700 (PDT)
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
To: linux-man@vger.kernel.org
Cc: alx@kernel.org,
	brauner@kernel.org,
	jlayton@kernel.org
Subject: [PATCH 0/1] OPENAT2_REGULAR flag documentation
Date: Sat, 25 Apr 2026 19:39:27 +0600
Message-ID: <20260425134048.62616-1-dorjoychy111@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 44BE2466835
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5399-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Hi,
I am the author of the patch series that adds OPENAT2_REGULAR flag support
for the openat2 system call. The patch series has been picked up in the
vfs-7.2.openat.regular branch of the vfs/vfs.git tree. Hopefully, it will
make it to linux 7.2 without problems. I wanted to send the man page changes
beforehand. I can ping when/if the patches make it to the linux kernel and
then we can merge the man page changes. Thanks!

patch URL: https://lore.kernel.org/linux-fsdevel/20260328172314.45807-1-dorjoychy111@gmail.com/
applied mail: https://lore.kernel.org/linux-fsdevel/20260416-abgraben-seeweg-a44ce660957f@brauner/

Regards,
Dorjoy

Dorjoy Chowdhury (1):
  man/man2/openat2.2: Document OPENAT2_REGULAR flag

 man/man2/openat2.2 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

-- 
2.53.0


