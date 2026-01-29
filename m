Return-Path: <linux-man+bounces-5007-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPXIEsyRe2nOGAIAu9opvQ
	(envelope-from <linux-man+bounces-5007-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 17:58:52 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68040B28DD
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 17:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A559300E143
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C103446AF;
	Thu, 29 Jan 2026 16:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eAAl2bhi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A88296BC1
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 16:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705928; cv=none; b=L4guzEzqvr8fCt30jgvzAyKNq3ekaiCeNTVNUE3bd3nIO94xHHYHeNKuqw3nwYjXzbcdPCdtKphpr9+35vYF2wRPLq89Wn+toC3BmTqndQaQzI1nhly1Oi2Zt4pKOnpMzi1zWJZe3zZ8c0nktFdftTWnjPrA1zjDzjSl1h/OMF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705928; c=relaxed/simple;
	bh=Cr2B93EZRlncDPFJAObBAigN33ajjmldRBPlz10Luas=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AZ9tT/tnfzy492CbXMDY89Watga3bnZFvsfBVVBSYNmXlUH/tIMPpVxXDJzL9/WvdTwEbiWtKYi35VPJ4QBKkaeAIyE6dfD2m2YSqKhYhuyn0hz1Xm3SbPe0JfVlOi1jGlYZq82k44bUu/JhWBgfBn6EEjgP4xyHmek82GOi1yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eAAl2bhi; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-124566b6693so3214101c88.0
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 08:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769705926; x=1770310726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LjHdVGvORgsw5sxbjn9kqu8QvfHRdWNKecWA69mK8Dc=;
        b=eAAl2bhiD3eLtblaZnHKZqThrmJMbXGPmz1HTiEQHit06BsnSx1iVmq/PwKEYsuOhS
         fhhhcUy5/qnT7BihAIXunQ9FpDshSo6/QVOcvb4whX26BOG9Fz+bKtqHuHIDloyWnxy+
         BhE4mlghJrlFvYqdcWxZnCqI/S628+uM0Ld0C9NsCy6DDKE6M8syjCK5cv/8ampdZe1S
         Zm9N85AhO5rGrxvDR9/aYWUQmqbG7ZmbJ8VG4VS7X+5IZyfOO5Twi/VsLO9nW2gwIxid
         0ywHYoGMcM2m1YkH5k3vy3nK5J3+iGdURn06ltT36nOk7Vfj7ZH9k0DlxcLhRaRrhYef
         H+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769705926; x=1770310726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LjHdVGvORgsw5sxbjn9kqu8QvfHRdWNKecWA69mK8Dc=;
        b=HedxOemqhyenWiYegCTO2Wo2J6aoNMEgRppbmrGVWFc+6hI8AlbPPolRaupQXVi5o9
         KLyn6fpQfHubaB0OQZVBUP+jCs8J02qab0sLDaUXdvcgq8cqbwwcdNYpHYM6aayhDi80
         rPlxYYFRG/pRsAIaV/5umFBG4jNnAC2/yLfzDc6NfAQBiga8YfCe4m14VLXllXbWVaZl
         n/k8I1sBPTgYBJ+N0CwCUHUquPxT7SVQY/+luINyBF9kN4LovdrW+htpsEkxdVex5up+
         oEo7dmBZsHkUfp+BV73rgdcbko6ayYVtNpTBYji5Z67onFhPy1eAoR71NxpL7K5BoH2y
         VAHw==
X-Forwarded-Encrypted: i=1; AJvYcCW7GqOPMv/z/yJNDbpKodRegVJWfXS19n3HbRi4RU2sDlPPEcP3iIQNeqlUefso3RmkhPpves6AD3M=@vger.kernel.org
X-Gm-Message-State: AOJu0YzdNjvuX6c1ZIEApNKE8fib81+fBntIgFOATg/GH1acR40GyW0X
	jRlaNpwIrobq63d7bAbAnzss4/whI5VsAefbs0lkhPirp7t0IlOx1bo0
X-Gm-Gg: AZuq6aIOUvplcz31QGfy+RtV2fearzpSjZ4lm9gKPYanT2kSA6ddxrS7ZIGGPB9g2Nu
	0ZQaa0Q6bJg6WddVOaM0cFvkk1b85vl5fgCJUMHmcx1rfKhWzweMjWUqDVZ48gerE93JsfOamqC
	H3CzBtMmXvugDZIg3WFa7jCfl4tCJKCl8t1wjxO5DMcZkxQmSlKB5nD5xfEgUpuX2+O0MtzX9up
	HKxSkQcMLMyJjya9Tw9UBYH7nA2nOwyWA8kfMlU+xrWQ3bVfOR7O80ytGlVAa8itJQEdyNwgNxV
	3hpl0f8qVihWv9BBtQALoNgZPk0cKyTMgmZ+YzwVNkVDzbhZp6McHx/oxBDMZqwbTTxClHF7ygH
	EGYf2w1x2b0PyEhOYtUT4OmmnjEVfphV+vWkbOhGYo29lTEEmdwPJTeTT1E24y7yI2HvUhFjxJ0
	bPZHXLrkDHj4sK+xcR/NPWB6j8dQE=
X-Received: by 2002:a05:7022:2219:b0:11e:354:32cb with SMTP id a92af1059eb24-125c1059127mr68276c88.49.1769705926303;
        Thu, 29 Jan 2026 08:58:46 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:c9b:f7d:bf05:d23e])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16ee7d3sm7422015eec.11.2026.01.29.08.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 08:58:45 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] man/man3/timespec_get.3: Refactor to prepare for new time bases
Date: Thu, 29 Jan 2026 08:52:23 -0800
Message-ID: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5007-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 68040B28DD
X-Rspamd-Action: no action

Add Feature Test Macro Requirements to document functions and macros
that require ISO C11 or C23, and arrange supported time bases as a list.

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
v3: Use .TQ for time bases in STANDARDS and HISTORY
v2: Split into two patches, add time bases to History section

 man/man3/timespec_get.3 | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 79bb82226..67da4858c 100644
--- a/man/man3/timespec_get.3
+++ b/man/man3/timespec_get.3
@@ -17,6 +17,22 @@ .SH SYNOPSIS
 .BI "int timespec_get(struct timespec *" res ", int " base );
 .BI "int timespec_getres(struct timespec *" tp ", int " base );
 .fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR timespec_get (),
+.BR TIME_UTC :
+.nf
+    _ISOC11_SOURCE
+.fi
+.P
+.BR timespec_getres ():
+.nf
+    _ISOC23_SOURCE
+.fi
 .SH DESCRIPTION
 The
 .BR timespec_get ()
@@ -39,16 +55,18 @@ .SH DESCRIPTION
 For a particular time base,
 the resolution is constant for the lifetime of the calling process.
 .P
+The time base
+.I base
+is one of the following:
+.TP
 .B TIME_UTC
-is always a supported time base,
-and is the only time base supported on Linux.
+A system-wide time base that measures real (i.e., wall-clock) time.
 The time and resolution in this time base
 are the same as those retrieved by
 .I clock_gettime(CLOCK_REALTIME,\~res)
 and
 .IR clock_getres(CLOCK_REALTIME,\~tp) ,
 respectively.
-Other systems may support additional time bases.
 .SH RETURN VALUE
 .BR timespec_get ()
 returns the nonzero
@@ -78,6 +96,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR timespec_get ()
+C23, POSIX.1-2024.
 .TQ
 .B TIME_UTC
 C23 (though ISO C doesn't specify the time epoch),
-- 
2.52.0


