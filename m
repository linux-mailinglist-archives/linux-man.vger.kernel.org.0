Return-Path: <linux-man+bounces-2499-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B302A3F7F9
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 16:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AC2B3BFA56
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 15:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725A0208960;
	Fri, 21 Feb 2025 15:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NVBFKwqC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB34C2066C3
	for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 15:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740150262; cv=none; b=hREhvBWFjI2IXaRtS0G0jvyWBrwv0HElqUq9IGs1SnNop90UVDpO44zn0XP9Mtbd3IhhxJmR3b053wqJ5QuOihwNW+iLxw8GnG2l3G8bOoUqTTa56+ZCRH7tosrQ2OL3kBU7ZVxmIuk2rdAlkaF+2rEkpVdNPbDV6Q74hdhpzCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740150262; c=relaxed/simple;
	bh=I0aftH0LSrz8xinohNOV+/1W+PrFa9yMoJswLu+u8N0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NgwMN6MShjl4qlXEJ1WmcwgT+g2qADDRCiPL194BhYNVC7RaELrcAQ4itNWuAI4YJGALJoyHNcr6tCOi46VT9K1rH/IQMRCqtJr71DNuPbkuWGbn3T5TURg+kSk9oNdinci5qn8S6FHxV6p+lHDKREcwq/jHQcnumIdDnCMSTGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NVBFKwqC; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-471f16f4b73so18352101cf.1
        for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 07:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740150259; x=1740755059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TeGrvK/EVpvv5+Po9MInDQ8HBmiP0S2Pk4l780CiZHQ=;
        b=NVBFKwqCkEI/oyq013EaKaf4iYuar9GQCuC5HYQyviBai4W19B0ROIcMEAVV65aKj2
         9nGiAwxHf8VLPpnQfgCb1fvKVV8XhFxvgKBUgWrnDJ72Ijzsaza8nAeEhF6bxZxkGMDK
         WCZopOK6rJfSIqIY+0Pfr7AofJFXQURSxX/YeJ8teB3MMzMw2On401tdUCj0YAEpm+L7
         kyxnoq8jvWHPsiA4RTNlufu9dT/6HnS7c6vDskHW8xjjp+apOdIeD2nx5BAcP/oa1AdG
         lZEm34QmtD/1exWy3EJj9fV8OQQReqNc5QrhXE/p1Xa5vb9Vx9z76wONttB2lnA+nkjj
         ToUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740150259; x=1740755059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TeGrvK/EVpvv5+Po9MInDQ8HBmiP0S2Pk4l780CiZHQ=;
        b=VP7datsEIrDf+WvfreG8NCEH8qe14NaFsOBeSl+Xqi2TyS8/ZarODVVe+yUJ9WjAhG
         x9LKGp4gwmJ+bmyUy+SsG4o/fkkKbN2Uk7gf8Yw/n2k+mCFuVXkmaP/HyVRlUceFQqiE
         e2cqR2XFcMg19NQuDcwF+lN5kAMPmNF+nLXNIuwyAYSagFQRgIMYxHHz+J58gDRRvL29
         jLI77aAd1zfGMsx48Ws26RXIGFDcg8ZG3ec1z757hpzPH137u8UWTca2cRk9PcQ3p3EB
         fKcTuZvkn6Gi5ZlSjEYTpd4RIhkLf5RhY1AYyxVHnwCOVIv1/CdU9+5Z6ohgxNdRsndU
         AU6g==
X-Gm-Message-State: AOJu0YzDsnYNM0QrnWjUuaVQdXQYgD085irx8W2y/WA+/vX/F8xauvWo
	tZJhHLeMhFJ4Vumu8/DMiAK5dQnLAhZZ1XsH0Og+k371O0Lu1kGC
X-Gm-Gg: ASbGncsFxdymaRloTQCIHDfFy+qEij1IGdmUIkamrs8TnpQ/drw2feANKyyy1c063Ap
	InSo2ABlsTwslnp1oFTIcmNSt3zA/EdoON0kHcMWFrVAc+DrHoEQQwtQaQS7T4EpxGbQ2LdNESu
	SSWxwZJ8ArtKMXm0QDM9nSF7HDJZF0QlL2OJyv0Ep25IIp1AXu5I2ra+295FiDjI+LHe4GguBI5
	XT+Q8XP+BKF03icA3xopHeF4dJITE6zNFlPqWDoQ9XOT2WZ4mhjmXot0VF6Cy8Wt3fS6Iw2RBS9
	FoIbI15yNyTmqd0uGTd8PUkjqJjf637IyNl3+HmgFis56Ufbb7AI1gP/rXIgoJZh7sqC
X-Google-Smtp-Source: AGHT+IFziGUXgAJn/oKz3CHyYwR6FPxluHVe0D4z01ZOzV/NrM8DMHN8e+P6cjqMVXnFAFN9bhn/DA==
X-Received: by 2002:ac8:58c3:0:b0:472:744:e26d with SMTP id d75a77b69052e-47222944f84mr51336891cf.39.1740150259544;
        Fri, 21 Feb 2025 07:04:19 -0800 (PST)
Received: from localhost.lan (syn-024-171-058-032.res.spectrum.com. [24.171.58.32])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-471f73c89cfsm50662011cf.34.2025.02.21.07.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:04:18 -0800 (PST)
From: Matthew Cassell <mcassell411@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	dave.hansen@linux.intel.com,
	mcassell411@gmail.com
Subject: [PATCH v1] man/man2/{mbind,set_mempolicy}.2: added mode argument MPOL_PREFERRED_MANY
Date: Thu, 20 Feb 2025 16:52:32 -0600
Message-ID: <20250220225232.2138-1-mcassell411@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Browsing a header file in the kernel source and saw the memory policy
enum used for mbind() and set_mempolicy() using an entry that I didn't
recognize.  I man 2'd both system calls and didn't see an entry for
MPOL_PREFERRED_MANY.  The commit on the enum entry:

linux.git b27abaccf8e8 (2021-09-02; "mm/mempolicy: add
MPOL_PREFERRED_MANY for multiple preferred nodes")

The commit message gives the rationale as to why the
MPOL_PREFERRED_MANY mode would be beneficial.  Giving the ability to set
the memory policy to target different tiers of memory over various
NUMA nodes.

v0 -> v1
- changed text width from 80 to 72 characters
- added Cc tag for commit author
- improved source readability with semantic newlines
- changed mbind() to refer to set_mempolicy() to avoid unnecessary
  duplication

Cc: "Dave Hansen" <dave.hansen@linux.intel.com>
Signed-off-by: Matthew Cassell <mcassell411@gmail.com>
---
 man/man2/mbind.2         |  6 ++++++
 man/man2/set_mempolicy.2 | 14 ++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
index fd1aca4ad..a060e1401 100644
--- a/man/man2/mbind.2
+++ b/man/man2/mbind.2
@@ -107,6 +107,7 @@ argument must specify one of
 .BR MPOL_INTERLEAVE ,
 .BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
+.BR MPOL_PREFERRED_MANY ,
 or
 .B MPOL_LOCAL
 (which are described in detail below).
@@ -277,6 +278,11 @@ and
 arguments specify the empty set, then the memory is allocated on
 the node of the CPU that triggered the allocation.
 .TP
+.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
+.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
+Specifies a set of nodes for allocation; see
+.BR set_mempolicy(2)
+.TP
 .BR MPOL_LOCAL " (since Linux 3.8)"
 .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
 .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
index 2d0b1da19..32c360f22 100644
--- a/man/man2/set_mempolicy.2
+++ b/man/man2/set_mempolicy.2
@@ -65,6 +65,7 @@ argument must specify one of
 .BR MPOL_INTERLEAVE ,
 .BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
+.BR MPOL_PREFERRED_MANY ,
 or
 .B MPOL_LOCAL
 (which are described in detail below).
@@ -234,6 +235,19 @@ arguments specify the empty set, then the policy
 specifies "local allocation"
 (like the system default policy discussed above).
 .TP
+.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
+.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
+This mode specifies a preference for nodes
+from which the kernel will try to allocate from.
+This differs from
+.BR MPOL_PREFERRED
+in that it accepts a set of nodes
+versus a single node.
+This policy is intended to benefit page allocations
+where specific memory types
+(i.e. non-volatile, high-bandwidth, or accelerator memory)
+are of greater importance than node location.
+.TP
 .BR MPOL_LOCAL " (since Linux 3.8)"
 .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
 .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
-- 
2.39.5 (Apple Git-154)


