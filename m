Return-Path: <linux-man+bounces-4759-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C03FAD076E2
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 644C3305D9B9
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439D72DC792;
	Fri,  9 Jan 2026 06:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HX4CK8kr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FE92DEA9D
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941005; cv=none; b=lei0NQAkFVyrbAs5zYuHX+mhhgOrdzIKTzYTzmLb6un0HXjBh5tFxPqm+WH82Dadxn/qKwDRYsoq5ro+798H9yQNflbVIsvbdRjNnD0Q/u2gL6ssO7yYCgOBC3DLXJyy9KA6f1cavG2Xo9uzVr05G61z8goCp0vkGR7/9kiSIAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941005; c=relaxed/simple;
	bh=b8CTdkns/9LVbRyt5lCIGYoRZmombVnxtP0UngwzcCk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nbSseifx6SZZZK8bwvmdG7Ei+T0wIrX+pjhMsROo6A3aTIZEFuQAIksrAyS5L/XB6K1Bod1Cm8V+8QIAQgSI4K5TLAEgfETbMpJeH3eLIst/xKAxaXdwsY26H5+xt1+QOYV2JyOmhwLZUerHvJYfvqQJQ3n3JbqDdUXBMyVrIwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HX4CK8kr; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-81345800791so2135522b3a.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941003; x=1768545803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BITrItK8K7RFtU4w+H/vgXqSdWO242DRgzFxv7lmP7s=;
        b=HX4CK8kr4H7mCM5/65WkEu/4n6mw0yFovDqIKzxNjTm7C77isnrVd98x8R15EvfiAG
         klqs89QE/VHwJ/5cpzxvd+u248dY2RgGQcqs34rv6nYrggpKpGyMAxlubs+7X+WpA+Tm
         afrglXN3/HLh1ZMLSttuQdrUOZn3TbEtwAy6kbFRK0FOOr+pZZawDWZsis5AOthNNc8D
         bPapdIoE+SGO+GsJ9CD4PIfzB4Letgv5Sp7nx66JyWY2cRnx7DZn40w5SwQPFk0ZqIxu
         a2eNpAqPXf2smn30YgaFgjRMw5WA1G9EFPWHDNuSRNM8+VPiWbrgtvVCWvis48i+9wVf
         YAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941003; x=1768545803;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BITrItK8K7RFtU4w+H/vgXqSdWO242DRgzFxv7lmP7s=;
        b=VfheJM0Ir4htZ38Wu9aaDZv0eg2rhysst0IROf+tXkkcA8nNOO5o745jaN79Vvj+Jq
         FTmtZ/VuBRaMUAIv5djbEwKElhhYuXwNyOTAiF1wGZvBjRpzGuyzLhMPLqtk2qC1Etmm
         ZrYguTOa6TuV645QhKGZpKR2mejgD36r+Lhk9OVlwMcePudiO6a+bMS+enpuXE6uUT83
         kCj0zg6eWa8tyN+p0W2vK+qDPisPG9EXmtCt0CTpKgUkuZS41Y3b+WAiCr72tOGgsqRj
         FWpDDj0EapqBuElJiNf8EXXdgg4CJuDggJoi3ag7IPE5+TOK031lg2ho/Ap6SXTRCaEK
         tFrg==
X-Forwarded-Encrypted: i=1; AJvYcCXqikt4dAieJAMukbkGU2KgRI2SWftLQpXUft0P2wXVPGI+OVJ95iw1Og61RXUEobMZzXxPMrzzHhg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8eThQaStGfHePZVH+s4gmEc5qPAK7QN+zpBJZpV2ooZFBQ90X
	cfJocuxJ6T1Scl5Yph3akBSgMUndys+SmxzwvqjrCvcjHewGWq8MZKgMfQNStZ0F
X-Gm-Gg: AY/fxX5FAa4+5+ehOsN4xPOIRdnmaswSQsb0bg5a/C2PkbIetIvwUFyZF394VMMuZIk
	KDsAE7c0Pii9+0woB9OCA16hVKIvyOnwIYQWItlJMXNitmz81qZJpQ22XOWua/l/FL1rOLDoHsl
	k3scDtBqBTKcaovvkxF4L+qOqsLH4cafwYkhFu2z9i2N1MaCXlBCThqIAA+3CXrBT8tJkYYVud5
	ny2Aj8IxsJ757Oi386eA50zFfDLXByZT6LRWIH8Mz1BoZcfl9k75AS+iaoM2qzf1wwj1cIMZvGp
	3W9A/feSxtaqYtoD5wlgUPsCWNjE8uVgViHDwTjZlyGpgSUg72hq/omS/jXGjGaQTZztgnuDmgT
	j7fW2n28Vb0cHtqUXfabyKoXSmwYOdPJ3/BERZEM8TU0uZ9ru1xfuuSA9BcENI9gxvYVqaEvy5J
	cXRDhvxIQCQTvh/7upAWoY7e2rA/RKyTrFMYvK8fnL/yEiPzuc7qvZyYsLm8gBUmaqozEZoRDRS
	bn/iLQRhWU6nG/K
X-Google-Smtp-Source: AGHT+IEOhYohnTJtj0qMiVLLAN/a6cOIEXQirX1+RPSMNISV5ipohaOlScDGJwZ/9BF13FrAHIIv6Q==
X-Received: by 2002:a05:6a20:2454:b0:366:19a5:e122 with SMTP id adf61e73a8af0-3898f84815dmr8135042637.2.1767941003122;
        Thu, 08 Jan 2026 22:43:23 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:22 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 14/25] man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of time_t(3type)
Date: Fri,  9 Jan 2026 16:40:32 +1000
Message-ID: <d1a047ff7ec86f12101321808c39c8f947571f92.1767939178.git.sethmcmail@pm.me>
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

time_t(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 2.8.1 "Symbols From The C Standard".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/time_t.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/time_t.3type b/man/man3type/time_t.3type
index 28205755f692..6bfad6ee3f3e 100644
--- a/man/man3type/time_t.3type
+++ b/man/man3type/time_t.3type
@@ -53,7 +53,8 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .I time_t
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1988.
 .TP
 .I suseconds_t
 POSIX.1-2001.
-- 
2.47.3


