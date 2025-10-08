Return-Path: <linux-man+bounces-4077-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C3EBC3242
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 04:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 377084E539C
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 02:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59511F03D8;
	Wed,  8 Oct 2025 02:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DL1ETzt9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE1934BA44
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 02:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888854; cv=none; b=ltOj+lUeFEj3wIsSljT/SVXgRlq1DRIoR9iayEH9sgzpT5T9cpU8ubT4ILu2SpfFLQ0H+8PejnW28lQ5EMVKfVPEAfJtfgEf6UWb4YIGR1QCtYS1YEv1ck6d1MT1j155k0RlpowpnMOmPEk/T1Ss5X+SAn7jGPn5npU4BEW453w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888854; c=relaxed/simple;
	bh=icUX/314n+MMhgAUwvxPDzdAjLRGWCRtH9jziYs7yoU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sq+addcyUHjzaSy1kNB96WsNqi/Y39w0LWe5aTpZtB2tTYyGLbBnTXgVMDioEitMapfyyARx1fEKXk/2RRzCtkQFl/QjQoASWi3o7FMH5/uXV5J8XfmKtkbHtBjDH6qFtMpjnheg7+MmAoOfMJHYpkU0sjgaPNICvo7JH+3rm1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DL1ETzt9; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4e4d9fc4316so85060391cf.2
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 19:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759888852; x=1760493652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwsn5mL1wxRGg2CvoLYqE38W+y12878i3nMN4ijUXlI=;
        b=DL1ETzt9YccVS8aUuG72IdSHmVrX/IoVtLJPG4ug3UHgDqCNs6qNvqVq2A2m4cGnn5
         WYHAv66JBMoTDOM5nPApWUA8+NKFjXPTxTUJ6zFKD7LIesRHAaUQ/c5ZRCbaTJ5gGg5x
         aFVeCzj77tHG9k4LxSAHp/fqveadmdx6jcqLs5vShc7lgyfQgJKQIQ+0JJI38pMxNIR+
         c8TVCvnCaPuAQ0xRNZfCHBvkcomTBc8QJpdWkRe2HC2mYsBXpNiX35GA6V0q8ySx9M7x
         h68K8akOmsfSOZRYz69BcjZjK8b9/lZCP3GLY+f2Ev/XzKyxt422kpx3NcKURM0u5jSp
         NY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759888852; x=1760493652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xwsn5mL1wxRGg2CvoLYqE38W+y12878i3nMN4ijUXlI=;
        b=cZSMyxf4dpGvgFEMcQkyfxMmYXPtOcBnHp/hAxkcsNJz4cef5OE2Gerfl0yi29M4W1
         3DFYLv4IzEtI/QjCNU3ZXroP5wUdOH/SrlwkiZ/ntwWEQD3XQLMIibQIM7gcqH9Z1Tc6
         mJ+AWwwB1wfHobH4nARmKBCaU3wufoNPbe7NFMx6rEXbyDofczYsscRJboBhO8q3ZKgg
         v4ogueKZJHazYLu3TYhrRvtXcIg0XikL+281c/Outu/Fk5ksvIX4p5o/ndAt97zBTVdh
         fY4rlWhxiXGwHvKVtibVQNyECQ5HSONfvzw0sELLZqVzeqHLTVLDdL92Uq64m/zS15Zc
         fu7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVZs465N/aR7Xbn2rZFzmCYsHiB8X0JbT8dcAL8v/kM4oKh9cKwqYwGj5XYya4OpQ/1zGxRlEmi75E=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbdnb4lV8dsyRG+/LrLnuQLgM9/2rW3U8rn1S8N/uK4w4tO+Hm
	zMYM5YOeb3x409Ru7erPtgTNt1NQ7dpAlx9FYsIaARZqUs6IeTHaUsl0
X-Gm-Gg: ASbGnctuar/ocZxLfY9uNcdgsxJfwLI3YN7rlLbRmcw+zbKUWZjX47ZmJxf6jWcEpIK
	bCMy9kjb0pXBUd070G83m1D9zU4A/5GRaTJJxox+yBYWLp6+AJ17/EUyDwLbIprIhJ4zoDiA8OU
	PjR3StyBMkTfBbax6hf9CyR2V+7bAFRmb4tqKgW/8b0hXwwVT5EFIvRKd1KQBPMk16xeBnrLidM
	6wD2EBREubWXGr3X+j/KNNidH77n1xx4zmHFknH++3aTBamy49MW4aGV3ZCfglCs1KNBZZhlHpb
	S3AjVUJCF1o5p+iAfDHUIJNnf4Xxktk4/HTBytz9ekw/sj12v6BHDQZ0SEI4gE7yKdipFiOUbEp
	t2OLfV91FCSNfKbevkwxaDRaOPRwIqyjPsCqGLcz+sf0FGBez4QRLTipbW17zkM/GT1RvEDzXZZ
	j+WQjaBYDGHl+Q7O0dDg==
X-Google-Smtp-Source: AGHT+IF12rAuBHsLI4WmzLn0DogrmBCzWzUZEdDxuSLY5+M+CSFBoPVjHExtCi2D2fp2HT3mCZABaw==
X-Received: by 2002:ac8:5d4d:0:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4e6eacc1c8fmr25603101cf.1.1759888851340;
        Tue, 07 Oct 2025 19:00:51 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-98-203-182-20.hsd1.wa.comcast.net. [98.203.182.20])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129f41sm1621920085a.3.2025.10.07.19.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 19:00:50 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 1/3] clone.2: document CLONE_PIDFD | CLONE_THREAD
Date: Tue,  7 Oct 2025 19:00:28 -0700
Message-ID: <20251008020031.1215030-2-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251008020031.1215030-1-kolyshkin@gmail.com>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Available since Linux 6.9 [1]. Documented in [2] (added by [3]).

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=83b290c9e3b5d95891f
[2]: https://github.com/brauner/man-pages-md/blob/main/clone.md
[3]: https://github.com/brauner/man-pages-md/pull/4

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/clone.2 | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 68f86a934..edccde742 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -864,10 +864,16 @@ .SS The flags mask
 .BR clone ().
 .RE
 .IP
-It is currently not possible to use this flag together with
-.B CLONE_THREAD.
-This means that the process identified by the PID file descriptor
-will always be a thread group leader.
+If
+.B CLONE_PIDFD
+is specified together with
+.BR CLONE_THREAD ,
+the obtained PID file descriptor refers to a specific thread,
+as opposed to a thread-group leader if
+.B CLONE_THREAD
+is not specified.
+This feature is available since Linux 6.9.
+.\" commit 83b290c9e3b5d95891f43a4aeadf6071cbff25d3
 .IP
 If the obsolete
 .B CLONE_DETACHED
@@ -1386,14 +1392,6 @@ .SH ERRORS
 .I flags
 mask.
 .TP
-.B EINVAL
-.B CLONE_PIDFD
-was specified together with
-.B CLONE_THREAD
-in the
-.I flags
-mask.
-.TP
 .BR "EINVAL " "("  clone "() only)"
 .B CLONE_PIDFD
 was specified together with
-- 
2.51.0


