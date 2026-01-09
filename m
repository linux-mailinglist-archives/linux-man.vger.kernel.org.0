Return-Path: <linux-man+bounces-4750-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 046F9D076A6
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC9F53013E83
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906982DC79B;
	Fri,  9 Jan 2026 06:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C8tsI+3I"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CDC2DC792
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940983; cv=none; b=n6u4JBcN26kxrOe53PF6EDvIBKpc2amFcAn7wTeyo5ex622tDvWwBHBoVkBQLjjtrnNy7rRu7TxbZZ8zaGjdBVJX4hYoZfKntmGZ8h1kk7ff0wFihrjyZVDomiIW0QwO6mRaPYYWRfdaNDmxbJv4BfUjXr2dWForKUkH1Cjqqo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940983; c=relaxed/simple;
	bh=yZPIoff5yoLnjXhE7dRzCMJi/qEsJOCA/xa+3ePNdpk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mpPq4/PHeb5VSvxenYmVdSZ4/KiKPH/s0p8odyPhop+W9CTuYGOHdbyVDw9dtlHQI8TiJJs712RW5Bv+8efPEUaowPsM9Y9DE59yyrMhwgXJ9xGaFUMRQz+o3CGKKhPVIudFMQ8WAktWepc1ENKP8HWNiDdBYwjvrvYM8QfXvjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C8tsI+3I; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34e90f7b49cso2413992a91.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940981; x=1768545781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PJG4EzZnnDJbF2YwKUN2QIKdi3CLA0jpKUjGwyqywl4=;
        b=C8tsI+3I3HOGEN0ipW7F0nzkH4dUuzjcX1ghFQgFcNxvJ82dGdVgrs/Dt/5Kfgk8lY
         X9bcB7vfcdCMdOhKwiQcFYAWhl6VOQbj2iQUM0vp52gHnLVIFdFuqPI+mHFf6hyiOJlf
         UIIQP9xDxlJnTwC5DS2Sgq6YreCtHZ/Z31g5FC918cwTZRjNZGJL6eQm5axl7iRjbQbo
         XA8nlPjyAWZtMUuF4gLiKZkZ1p+RXrpHeufEbVctuC60YIRuAx1u3IjaODDtWekv9OIf
         1dQdNA+r9HQEepdtfK8c7DDW9uEtvZ5Q3giJ7raOK7/QU/C4Ce2bxzpdulHD9gkkSISq
         dLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940981; x=1768545781;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PJG4EzZnnDJbF2YwKUN2QIKdi3CLA0jpKUjGwyqywl4=;
        b=UbarsnHO5ADaew8HBWy871a5YF2rxBv2tx1U/xAVkDZjXu/btxw4mD4ZcJ1fR+Bnvs
         dT4Ro0XnH3TvTmdKa+do26JitP/BGf+RuO0UC55yvY5Ze8nyyZ9rJ1LAa/97X3As8ePM
         3qZ/+58cu0G57CzzIVclb1dnL1N0UUZ0Ed+tRZSFSVEWdVVgAZApFOuTngh+1KA/KrOw
         7L77MwWFkmZhFXclWBymk3k7f06/VlT2ZaDFBjlbZ75wEkqiKOz/JQSI/dF1kFfXgBTX
         OowgAbu/2aD5NiJKFul9QdCyEPsCy1hvZhH7MfB/PSH6N5J03wMReBwGbtzp6UU6tV/g
         E2Ng==
X-Forwarded-Encrypted: i=1; AJvYcCUizfNECk1YvZig3FHyKiCRjtFFU94ipXxqIVL7zUgP8+PtyOcoHZSfG4WpH016rT//ZZ5+onYMif8=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz5NKuMru8+VhrRA6HqKcj+06JxuuV6VPZEY3r4neH4/t/lrQE
	bvV2DJ1WNJBU+JTkZgPCGX9rMfPDVl/r61+fHENgCus8o6bIKIZ9GXwP
X-Gm-Gg: AY/fxX58bNsi8oOSCJwRNT3+CXLvBf1ZsGgj0LfH5g7z211138bXDjv1eOPOzO+t0Y9
	zGefXnrhRCsNenfKQBLNEoPfviiNcBeIPQc8E23IamxvND7LhwYJcy+PA/oL+gnPwnejK9aJox6
	+FukrDxQPDuv2bFVc3vJWiluJIuZGmwNto1pAac2OfJsIDGQveOrpWDSTIwWKGl1wc2cLf0AQMs
	w2TiszHsU7gCNnU1DY+YTPH83CcDu1AzWUEDG901IYnXX78Oci/jtSxA2X1EsM+T+0VclHcEnBS
	l6hdVaRffO3rgyMHAMXd6kqL51i1RYmyuyNuWh4P1B6gqpZ9US/lEAyACq//70c0XY3imcObf17
	PRDJocTCPi/JqNx+/jTqWNxjKBAjDhAJfCOc6NKHy5k8GhShc8bfwg+6WquhirzpDafFGcYNH8k
	kXVO4I0cYDerr57Th4lRbUsqQMH3Ry5l4ugtiikvudcMhWiUrA8pYjSHuXy+oH0Kjztac13N4j3
	6w4OlOioAhyJTIozczyC8BssYE=
X-Google-Smtp-Source: AGHT+IH2j/c8RoIT0lWJX0b6PFi8hp+vFujZ6O+CV81UFLkWoCqm8rYOnK/Nj4vVcpPUkbpSgExfYA==
X-Received: by 2002:a17:90b:1d12:b0:340:e8e9:cc76 with SMTP id 98e67ed59e1d1-34f68c4ff6amr8450345a91.11.1767940981429;
        Thu, 08 Jan 2026 22:43:01 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:01 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 04/25] man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of [u]intptr_t(3type)
Date: Fri,  9 Jan 2026 16:40:22 +1000
Message-ID: <c587540f97c4d4e8bbb6ba4db9afa55c84718ebf.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

intptr_t(3type) and uintptr_t(3type) first appeared in SUSv2.[1]  The
types were added to POSIX.1-2001 when POSIX and SUS merged, but are only
mandatory on XSI-conformant systems.[2]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1089.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/inttypes.h.html>
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 316.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/stdint.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intptr_t.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index 05caa0a057a4..680553c2de25 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -98,8 +98,9 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .RI [ u ] intptr_t
+SUSv2,
 C99,
-POSIX.1-2001.
+POSIX.1-2001 XSI.
 .TP
 .RB [ U ] INTPTR_MAX
 .TQ
-- 
2.47.3


