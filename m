Return-Path: <linux-man+bounces-2480-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0304A3A2A8
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 17:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41E1D3AA3A9
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 16:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6863A280A50;
	Tue, 18 Feb 2025 16:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z3/Vgpij"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DAC270EAF
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 16:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739895586; cv=none; b=fGqhoNThBAkF+oVPxay+MWpiyjhwSCSNHr5JBAqPBmAOe5MePR0PDbu61k/viqZDm5p6YjYTqtQdX3Z8YMAAlynYUCqpex7+qlYhnEl9i6OZv9osCEDgVEDwcqLSAfiEXJjFs7feIyVi13vWAvrUkNBr0xP8xvwwvJU+HiJ+FXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739895586; c=relaxed/simple;
	bh=XsrzJtbljSInJq74hXng9cgp74Pebl3kgG3d1ZISPYU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=s5IO/KY9DdRE1Bt7+PEc0BuNJg1bN/tfhbFjFCclUNH8VteGpFWlkJs5Ym7GeiFzGBsAr0J2u/WU/eXBOyyNoOrpLrLehlyvdqkDzkIsLyGIup9evW4ftpk/CBXIgzEBljeV9/4ktuq9nJ/jxkRTNHGLrfYV1UVeTQsor/jzuvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z3/Vgpij; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e67bc04a3bso27517336d6.3
        for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 08:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739895583; x=1740500383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QFNrvDA4bNxfR+m323riqa7kCvW4mjE41V6BMzRf6Zg=;
        b=Z3/VgpijyNQL/J+2xiLHdu36xK6lwzarYvvO5mnMSMDVqpw66p5L5TJBwzYNLiXywr
         3/MBCmWm8ATSWwPfNDkvh2a4v1/JByAP0H7Wcn2CREdkRfJiDVJEHPrM8/qYN3ThIEVf
         hZvaAZPCkNsUlIkftsVhiOcpdW5xjpHqm9CqBVq2kVQAztLAF04QJmKcHgwl5d3tP5mE
         kVSQj4zOOprnpxEdL4BcoU4gYamg22xUJNYqFoy9qFJgfL8alIUQuedYl7UT75zxjS9R
         eC+DObYNlJJu7SC+OPO5yPH6E2FOYfGMW/U6CE4/B2Ak7vnSjMV2SpqHPP8YxTaX28Di
         P7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739895583; x=1740500383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QFNrvDA4bNxfR+m323riqa7kCvW4mjE41V6BMzRf6Zg=;
        b=TqCPFvhyd9jwyDNybMBRg2jYaIc9L3WrqPTUL3Wv184n2ElwHc0jPpL3cIo8jB0hqW
         m8VqF2Wp3g4IeDMoEAa+ewBWcULCuuqzEaWIiAyWOs9wQw/S/cJEi4kd8ad2OMpxJfJj
         opyTI9J/BqhCtbng6N8599fj/eYHQLjT26KJTcwTW91tKzNuYj8jt1Yq7H7kTdAWMn4E
         0/njMj8q+bLtobr5ZPBfV9v+xw/Mt1VbWLsE6OU2baBGQrEFvx9+N9YTeUh48ov2su6w
         MVzd1LOhB4SRWf8H7NGudQYc5Zua1ST94QpPeI4ogOX11dZVBldid3qCqcoxpLtLozHm
         gHgg==
X-Gm-Message-State: AOJu0YxN9C09XjfTgdV4FC3uuQ+/Z9VGEWmeSPV34oakB6Xslxx9gocB
	/TvTBY5iQDC67F1jpHQrguf9XXu0xFu4pqd+o3fP71rfSzt/PVtvVztox3sL
X-Gm-Gg: ASbGncuBE+BAQ3oe6+sqDdBsm+xAlZI4oQHupBoN/HDorMHLVurHzaJHTZUtDPMDo6p
	jG9aHptSnmDhnZCXWtoHCq9VJY9euoAq2v05cYAGjrnD81bS/qDmR7P0zj29crk+umZzp6CxoMX
	PAg0Sk1aIGD5aLoOoTFn/0W0I+l3ZdgXvoitqG5/a23uKnO26O1bEdF+J+y0LHHJs1xvN0usNAr
	b4O61zY144zQWKo+uqmLfuNOqpIE2h8Aj+4wnGaPD35U/u8sc/sALvNgZuFjFQnS5n7FES089cn
	81nmZbQFjKvjjBpsagfyEXDrVd30DaWU8JT7LWxfjF2gOYAxISNNy1m0bA==
X-Google-Smtp-Source: AGHT+IEeqrWLMsLD3d71s1U4FZMq3IZHjvRrTHQGGrx0TuJaYnnOEp4LfJkhIavQ2BuAhWmIoxm2mQ==
X-Received: by 2002:a05:6214:2a47:b0:6e4:3eb1:2bdb with SMTP id 6a1803df08f44-6e66ce32853mr169736846d6.43.1739895583274;
        Tue, 18 Feb 2025 08:19:43 -0800 (PST)
Received: from localhost.lan (syn-024-171-058-032.res.spectrum.com. [24.171.58.32])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e65dcf869asm65243816d6.120.2025.02.18.08.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 08:19:42 -0800 (PST)
From: Matthew Cassell <mcassell411@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	dave.hansen@linux.intel.com,
	mcassell411@gmail.com
Subject: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument MPOL_PREFERRED_MANY
Date: Tue, 18 Feb 2025 10:19:39 -0600
Message-ID: <20250218161939.1934-1-mcassell411@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Browsing a header file in the kernel source and saw the memory policy enum used
for mbind() and set_mempolicy() using an entry that I didn't recognize. I man 2'd
both system calls and didn't see an entry for MPOL_PREFERRED_MANY. The commit on
the enum entry:

Commit b27abaccf8e8 ("mm/mempolicy: added MPOL_PREFERRED_MANY for multiple
preferred nodes")

The commit message gives the rationale as to why the MPOL_PREFERRED_MANY mode
would be beneficial. Giving the ability to set the memory policy to target
different tiers of memory over different NUMA nodes.

Signed-off-by: Matthew Cassell <mcassell411@gmail.com>
---
 man/man2/mbind.2         | 11 +++++++++++
 man/man2/set_mempolicy.2 | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/man/man2/mbind.2 b/man/man2/mbind.2
index fd1aca4ad..a5a7f4bdc 100644
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
@@ -277,6 +278,16 @@ and
 arguments specify the empty set, then the memory is allocated on
 the node of the CPU that triggered the allocation.
 .TP
+.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
+.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
+This mode specifies a preference for nodes from which the kernel will
+try to allocate from. This differs from
+.BR MPOL_PREFERRED
+in that it accepts a set of nodes versus a single node. This policy
+is intended to benefit page allocations where specific memory types
+(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
+greater importance than node location.
+.TP
 .BR MPOL_LOCAL " (since Linux 3.8)"
 .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
 .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
diff --git a/man/man2/set_mempolicy.2 b/man/man2/set_mempolicy.2
index 2d0b1da19..f4651ccd3 100644
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
@@ -234,6 +235,16 @@ arguments specify the empty set, then the policy
 specifies "local allocation"
 (like the system default policy discussed above).
 .TP
+.BR MPOL_PREFERRED_MANY " (since Linux 5.15)"
+.\" commit b27abaccf8e8b012f126da0c2a1ab32723ec8b9f
+This mode specifies a preference for nodes from which the kernel will
+try to allocate from. This differs from
+.BR MPOL_PREFERRED
+in that it accepts a set of nodes versus a single node. This policy
+is intended to benefit page allocations where specific memory types
+(i.e. non-volatile, high-bandwidth, or accelerator memory) are of
+greater importance than node location.
+.TP
 .BR MPOL_LOCAL " (since Linux 3.8)"
 .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
 .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
-- 
2.39.5 (Apple Git-154)


