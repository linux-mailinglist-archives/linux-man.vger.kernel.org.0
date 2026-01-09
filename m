Return-Path: <linux-man+bounces-4764-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C347D076EE
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 776C33019B96
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6CF2DC793;
	Fri,  9 Jan 2026 06:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XJ0Mny/o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D7A2DC79B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941013; cv=none; b=UA9zgBg+jzdIZUBHGLbzhMsMHyH1mwExOGWsV7jPIQCOxef+05XjiJ/8kKcNgQQB3GWTTsBJk8gs6tMEUG2BOk4x751pyamY7lZ2yfllpJu9bWrY8fbkEcUBRBMWu9ynOGY42+CLTFM1P9/zYdJRXsCC/LrHLxV6niEC74siKrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941013; c=relaxed/simple;
	bh=RFpmteMZeiK10QQ2Zbfe5F8LhV+EblCTHY0US4IIF8Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XuZKupNSZOyy5I7zSL6u/L7u67Y3+wItp3IL/3HAB8vURacost2nwArSA0ScJF7IZ4cbwXT+c1n+ASpuf9R27rGclGsrtymEuq/eD8xSpRstrT+5ihFpUT08KtyJFEsJ/x6KiDHIR0B2zglye3rHbFLpLHOiCIOLT0fT47ufDag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XJ0Mny/o; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-34c84dc332cso2369963a91.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941012; x=1768545812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m3yFL4wYJ/TcjINaHFHtWZ015SeMogpCKZdVIHgM8So=;
        b=XJ0Mny/oGvB662pcgVVTPkq5VYY3zZ6hF+zYbEDi1eDpp0bxWb9hCouDz3oOfrtT65
         L/WhWKYYFLNulMjaf5mpHPYzuwqGBCvhLQHzULJZVXodBqKM7kKr7iZGfyoN07+X0vi5
         j6AfKDSkk9LzugF1ZSD+42AkgV/UvCt2c9T0ST+x7DsY82YuO8vKnNiWhGDWIaOsxFhA
         QaGw+UyjwVYx+ixA8fmKrV3ac+FoSIojR5MRWTQK0BrcptDm7M+jKCKq+YDgiuYMFGMd
         xMetZBYuce1neOYdF4QbfH6RmoPPzfHSH8W9kQqn7YWZxuWRhwl+PKm5UYQuhmH0KmJB
         28LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941012; x=1768545812;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m3yFL4wYJ/TcjINaHFHtWZ015SeMogpCKZdVIHgM8So=;
        b=FmuyVGd9Fsd7Jb/hniQMU7PHjZkuTNI7eaC8Ssh+uColWBLrYOvCO5eIWV5Kdaj+Wb
         AHyLYNmA0XHRyREvLE3cRnsqgfa0SLHzKjV1MLxdZiGWJXMjF8GxdKMWS0xzBTbFhDar
         aUy1qhRPoPKGDclWAjbLqNShut3Bnc7762fq4y41rySL7CxDpMnDAYusXKw58iEMpEwW
         o1MQlkDXwAi2Iqf/SUsidqtYgcIW+ZYZtSahJYBlzzFKg8wk4TYvh5foKF1WEEgFOc7P
         S+POqKYgrNLXjXP7cpQR+j1uMuPZZoRsbsf2og5R20tLrxQovqceqKL0RBKlDBrgIPIz
         ywPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGOX3mkTe2d+EBjbHy+BhHh1fl3fWn2XkfbEv9vt9JLUbZPA7hEDhdxlFLe0yJFLXOvnrpp/CQyVU=@vger.kernel.org
X-Gm-Message-State: AOJu0YwWgMJABp50wSFhKDEQtz0BUiRzlezUioC6XoLZwEcFBLr491Dk
	QMECOJvfznKNftKLphyq3UGY+QLlr88gInowW9Yz2BlQ45iBpeyWATDk
X-Gm-Gg: AY/fxX51wDzIEH5D0hUdICUL/1iWj6cH9vwr3PVja20FRLQhz0aRlPc/N0nMdSIr0Bl
	KBOnkfP1s6syz+mEfGjtMJUHnaiuaxIB8DbhnB9FxZl/YZJ+EaL8KuWBjXz+PApHmhM9yjWOBev
	zwkgbHm5+olrCdIxMoaXMQcZB8U4TT0maAWp7IGUgLkn142egv9A1cr5wI1lHaeyEBWc0evoopZ
	60+9P2qXf/iasLYeAKkB9wXtfYwUdVXoXAwX/GNR91UVSLbYR4+Ir3/EaIfZTrmU7AvI1oH7BcZ
	DElfO2cWgdSF2CiT6UwlrDncaoGCHOh6kI3KoHZa1plRZXVutRDT2AXqWcBDzhZQZ5WX7+xSywH
	E71jx1foOb6S6kI9mV8bL6QnQqo4jPtzJvkN1tJBmpw569os+JniFkH4MZh/kHkxqMnYaRwHX38
	nHjRGKeCQLjgwhdrcIisU0f+E5MK8F9isahnLNTTG9V13gair0btNONYJf4iO27OrflBvexpkkm
	EnJXF08N1Bin7jQ
X-Google-Smtp-Source: AGHT+IEvvrpc2GLRY7OxgiZ5Jvnq9QyU8z/X9uNNP5nUDYa/ddgh0PFIoJ6t88D5T2k6+vArtXgDRA==
X-Received: by 2002:a17:90a:fc48:b0:340:5c27:a096 with SMTP id 98e67ed59e1d1-34f68c023d4mr9250215a91.6.1767941011802;
        Thu, 08 Jan 2026 22:43:31 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:31 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 18/25] man/man3type/va_list.3type: HISTORY: Update first SUS appearance of va_list(3type)
Date: Fri,  9 Jan 2026 16:40:36 +1000
Message-ID: <9a9b76c452feb3ed2fac7bca80eb105fda007bff.1767939178.git.sethmcmail@pm.me>
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

va_list(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 801.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/va_list.3type | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3type/va_list.3type b/man/man3type/va_list.3type
index 96973ef180c7..2a2d4b2be637 100644
--- a/man/man3type/va_list.3type
+++ b/man/man3type/va_list.3type
@@ -28,7 +28,9 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+SUSv1,
+POSIX.1-2001.
 .SH NOTES
 The following headers also provide
 .IR va_list :
-- 
2.47.3


