Return-Path: <linux-man+bounces-4768-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F834D076F4
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D13823032134
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC11D2DCBEB;
	Fri,  9 Jan 2026 06:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e35gUrCA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD292DC793
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941022; cv=none; b=hYqNn8XXSAaIvJDW9CrqoypaRiTVMfjmURnBtJ77SsPkmlJXLNgvqeyRshMx6tYPEPnwAFbPUcNTtTemIcZQObLHrn23Bhmk5jz+k7DN7IKxL2JgnbFFUUERGR7P8gaKAZ5IEBciaTqvK+pZqBkLpInmX96U5gnE2ZeNtNWCV80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941022; c=relaxed/simple;
	bh=I88zDg/g+ryAxRcdsN0rWqWw9el5LaIWtqc9fjqyA9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CViNwWdQkSzuBMsDIFvl1SiKtYN2H7JKT7nIN/3aVRwdUZ/Y7tT87cAiGZibfgcUC2zPoHORy4TqBYfETIkt7SkhzxaweEVGOZfPgUSf7HMPSNxkx8RyjNTugEbzCV9A6WgG2YImIesjjXAsxfoUH7tBgrZ4PrVzkSu+R8LJ2DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e35gUrCA; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-34ca40c1213so2202691a91.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941020; x=1768545820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9MUlwBEKbThUk5uG5jVLDSgAPvTXAxTPV2PZCvccJqI=;
        b=e35gUrCA9Eio86uvekb1fvNtQvN4SDO0kUlSLHGSvK+4oXEzdsY+lkvZpWqUenkSEt
         tBqtXHNCOmx1Phh3iAc1rtK7pkYU5rS+o2wQsWPHWJbSgM2SvbWHlsSyFnxpmrDilu8i
         T232naZ5Pd5HSfjrakUyLpw+SALOP6ao0P+yd7OnpFIEQX+S+E6UBrCTOnt8laLcZnE8
         MDSiBpqQTmv8xK7JYT6AZ7b+CP5cHG6YX4ihVWFVqlXeWDLuj1g/1mE/4PgJmbdegd9Q
         Xk+pzAFkEY3L2VGF0gh2hGIeQfgtBmZYe7WQAbgWGrCRZ5WAV9UWwoZwwgikaxjcXf+x
         Entg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941020; x=1768545820;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9MUlwBEKbThUk5uG5jVLDSgAPvTXAxTPV2PZCvccJqI=;
        b=W3+ZiISQybylHghsJrapCktOJkadLNfQadF9si8BkXehlgxfImfeIrFx/KN4CiMr4p
         WHy9IQLUgCDKu71Q62NFEuW+6/qtUU7xvXsPpGIL4MStOe/X1Z4ZIXFtRaMnq79mxPZw
         2Xi1TtK68Lggpu303p1OJQkA1zRNlnad2S0wobVDEOWxquqCGm0QulQxx4GoVeD5n4wO
         /FmKbzYDoseS4AHoZUhvRfTCdGWfkaRpOokTjokXBj7JS7mT+qmKHBn9oqSUHKGMNhVT
         OUbvVDDcPqVHkLMLzL3qvozhWU+o1s6iJRq0ceSaSht4KOfy4RwektMKR1ey6gPXQ4n+
         y/zA==
X-Forwarded-Encrypted: i=1; AJvYcCXB5s1Qe9rH8bFR9zv/kDNHIt9fnDIIwsN7tcTqKqlZa9ZwPwu93F4ZXnsJwdmVAcvJezMpyjapxbk=@vger.kernel.org
X-Gm-Message-State: AOJu0YxdpMZLLPpRuo0DImqVUDHzplP6z6quNAdsUAINmmbxyAL0aZoU
	IwMubQ9tsAXDiSrCw8XmxuC8NP2Ns+8pqNedacfInUOkVJ7e5ssniqBhkDXdu7vF
X-Gm-Gg: AY/fxX6zXUET/wErKH5i7vpUEZmdHI6+MuH0VAG8UspkjivMehOPYPGr+F+RQGRb1dz
	5rN41Zmq2FPkkr6BjJ5zLKXX/mqYkzAHOF7fOucKCeM+u2kPhYIJvZzV87/fdT8iSa/UVgmfaPG
	NuHK2cf4DEyOzL0OmaSiIdrWS692BJ3djF30vJF1joH2NWrEcvAixexfOKIqNGb/8wUKInfOum3
	7J3Ep8R9Kh69ospb2wq0ig5xZtzvC5rLpn/ZSMhlk9Vsv+An7weN91gIla4pTB7W5k1bbBTTd1i
	1EjawdFzfKT4sFCKz5YYrxHfxsmayMDbWKBSI7Bp/AQdvY4+ioFwEnXmiAZ0+ygMuBrXzN4HdD5
	xJlJDXSWpRDND2J3sk8rspN82oSlyiZrZKYVrgV8C0tBZaNQhR/MU3UlUY0+T837EIvC9nuoe/z
	jhwo9HQ7II3SQG5RAe+mXX3xmFz052LWgSYMP9ZfB9QtOHeouGTudqRDICdrwz/PlYXY3p0lGDG
	j/AZMO5GdzUGLd9
X-Google-Smtp-Source: AGHT+IH/1tnyg4MUw6xrt/UyajjF/juI+HKaICsNsc+NKacBc3nfpWTxVFmM2rj8UYtJG8YD4us0Cw==
X-Received: by 2002:a17:90b:1a81:b0:32e:3c57:8a9e with SMTP id 98e67ed59e1d1-34f68cc2973mr8690301a91.35.1767941020582;
        Thu, 08 Jan 2026 22:43:40 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:40 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 22/25] man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of WCHAR_M{AX,IN}
Date: Fri,  9 Jan 2026 16:40:40 +1000
Message-ID: <fb806a50acd63efcb126d20a3f6d51083ba90926.1767939178.git.sethmcmail@pm.me>
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

WCHAR_MAX and WCHAR_MIN first appeared in SUSv2.[1]

[1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
"Headers", p. 1213.
<https://pubs.opengroup.org/onlinepubs/7908799/xsh/wchar.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/wchar_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/wchar_t.3type b/man/man3type/wchar_t.3type
index 503ce31c5a34..84995a846dc7 100644
--- a/man/man3type/wchar_t.3type
+++ b/man/man3type/wchar_t.3type
@@ -38,6 +38,7 @@ .SH HISTORY
 .B WCHAR_MAX
 .TQ
 .B WCHAR_MIN
+SUSv2,
 C99, POSIX.1-2001.
 .P
 The
-- 
2.47.3


