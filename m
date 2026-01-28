Return-Path: <linux-man+bounces-4993-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLyvLvVJemkp5AEAu9opvQ
	(envelope-from <linux-man+bounces-4993-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:40:05 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28058A705E
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46AB4300FEDF
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 17:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FE3284665;
	Wed, 28 Jan 2026 17:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lSwYlwrI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F8028B4FA
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 17:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621760; cv=none; b=YNX/4QMU2x2nLtvKejdZbZZ7qY5Ee1M8aLZuE9Y2rY5k692jMxZKHLTORBM8G6lHQslbdcMcl5xSCbAhODUNnk5i1RymjGkyNaJci9l3VOKyOklwXL9+UtuUXCHWqWxi003WTxOCum+r2nF8n4iV5mlyUoGnrVNMf5CVwNPzSSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621760; c=relaxed/simple;
	bh=tsz0wryqBlsMBav+eZnlssY8RipslLHJSDsr50nuKao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U2GAYlAY5nUMx939r8PPvdCuchcnZfhHk52LmSn7EDULH3dzF4o7evhJC+t5e+NeVqHw3QEChk7CAX/oMOPyiPn1xLzBfSTioPRgRrlEe7o5+ceQdMq4hqLCbndiFd/6CrVSQ+k/WH2OboeccK17notn5NXuCbjRfAWb0evWtE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lSwYlwrI; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b6b0500e06so153022eec.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 09:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769621758; x=1770226558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ph4Az9AGtSRd0vIbBjO3XGq84/n4DYf22axzWIhwE/c=;
        b=lSwYlwrIUASC2ZLNc4ZjTOWtqWqOvAINkWd+RXByFcXIU2n26R4T5ZUU6xSMo+w+fx
         UiurlZljW0eeRx+oqo5pG+mbTaEhdEvH/n3Bdy7vGrI2bwn2XLrUswExjWvhKavMxJ/E
         ORnaoxCCaup1AYmkfqG70XNLd6MM1E4ouMjUTl7Zq/pCYc+dHjoM/oYPTDUp2Zbqf0cC
         HaVpaLChXz5RA+94AufkSLkYgqR+JV6aZJcvTe9anRVVwwjH6OkrUZEuokVArywoh299
         HcEtQK8jhuGH6TX5KcUuiPt84G157ujkJuqMDiPaL96FTSD4UOmdxpw9KMerTHyCg8m8
         pMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769621758; x=1770226558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ph4Az9AGtSRd0vIbBjO3XGq84/n4DYf22axzWIhwE/c=;
        b=USg3q886WMiOQXtaTZnPGFpCHsUNUh5Y34UdQpDSH3EL8+fL+ns5cSTdiNoADjwKCB
         bpqTnowmcAb9LPtjEaQKTIyl4/6B21yDxPlJ+7AI2+kwqj557ySluGIFeBXIsC+hoyCU
         7TjwvnS47tKKwehGcMVaoTjlKElHHaWPT5Z2NCZzgSHnMS8oVI/4O1/2dolhvIQIX5/+
         +dZ5vC1HFfTrRa/rarMlCpMEIO67PxTMZXgV/xo+EQAhOukELeZ436J7Kv25B8nvfAAM
         /Efl1A5d/cqoSl9ZXrZMfPRbuvxghMpLp3qJzlQsvECckms+oB9Vg1+vZ3jQLzYafhSj
         KlxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP/qfTxVB2tOUvERfuXtARdwzObaRya2bZly+t7rcLrBWmLxVM3SLAK41ZHotCjz5MtapdclJUXr0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzoD8ysEh0y42Yuv1Vt2RJi6YlpDov51ymiGr+s6c2q1O1umaIJ
	iY73O91nIDw9Byp+F/pcxDFqjf8WDa1b7ciRgznexBbwL20fmGxC+UsM
X-Gm-Gg: AZuq6aKS+dsYAXOa2R0ZjkG7ubCzxqtmi2do5GCNXZzC5bx4sOGHtzRqc5Het2y6Qtm
	YGSkO5izQww2Nfw7LL8BQBOFaufm+uE7a3ScVsPml6MOENPr4geiFCdtJ+nMD9c132gUBS0fZn1
	yjeSTcJYaJal7oxbEZbGnpb5jwQl0dqcn0rGqMoNCb1+mVJJeHMMt/d5/OctgnuoMJMUVxH8AKK
	3dHVeYJ1IAJO62UoVWCvohQBreTliTlg3cAyVUf/og2IRouPIJJzjy4l7VlpxcEeqBFX+v0Mdn6
	zYU7H01qMcQIP0vOk1gwXjJaaVGcqWUBh9EftdvyMpw3X5SP9ouPtfIxcCIXkXz3OaVFVSOW1sh
	O5hPq91Z9Besihkc5GDvhmlextECVxLVwaXXp67Pkb62W1C6FHhxGMuoXnykI1s5PXL3ZDqxG3y
	uVQarcoXXq9X+1EkKELjpPr6PgzMTy6KDyPKGJHUls
X-Received: by 2002:a05:7301:1e91:b0:2b6:fcc5:a9b9 with SMTP id 5a478bee46e88-2b78d90c3bamr3963605eec.13.1769621758212;
        Wed, 28 Jan 2026 09:35:58 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:dd54:61d0:1c69:1eda])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1addafesm3545813eec.25.2026.01.28.09.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:35:56 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] man/man3/timespec_get.3: Refactor to prepare for new time bases
Date: Wed, 28 Jan 2026 09:33:03 -0800
Message-ID: <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4993-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 28058A705E
X-Rspamd-Action: no action

Add Feature Test Macro Requirements to document functions and macros
that require ISO C11 or C23, and arrange supported time bases as a list.

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
v2: Split into two patches, add time bases to History section

 man/man3/timespec_get.3 | 32 ++++++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 79bb82226..1c89865d5 100644
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
@@ -78,18 +96,16 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR timespec_get ()
-.TQ
+C23 (though ISO C doesn't specify the
 .B TIME_UTC
-C23 (though ISO C doesn't specify the time epoch),
+epoch),
 POSIX.1-2024.
 .TP
 .BR timespec_getres ()
 C23.
 .SH HISTORY
 .TP
-.BR timespec_get ()
-.TQ
-.B TIME_UTC
+.BR timespec_get "(), " TIME_UTC
 C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
 .TP
 .BR timespec_getres ()
-- 
2.52.0


