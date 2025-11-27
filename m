Return-Path: <linux-man+bounces-4339-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 41157C8E728
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 14:23:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9289B4E81FB
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 13:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF4A248886;
	Thu, 27 Nov 2025 13:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VN+VRPiH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42102144C7
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 13:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249787; cv=none; b=Oqp2ihEY/QEQIiIyonQUUtDR7oXB+EqCo6c9GquAMbCgp7tvDoH8eIjm0iO99guz92kVj1FS60V9BafRgfb9MYCJs+Th6bQVxj5KAILumP+PZwRNjpLbb0/OfxFL+fxx1IojLBz5bVK73LiJJFPGmZT4s8ynip14N0tI0gWZKSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249787; c=relaxed/simple;
	bh=app+kRXjGtb8eXzEVjr4+LGbABIFNuDZq0yJyowyzQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tEcGOq2FGGqDscPgnSAYCnKmcF4vsfBw8K2G+vdwPdBffw2mFvXRdQvj5nTykqqv6nfGlnMoP5ZId6t9lxWRtJ9LDGSw/hVXINIXmq1dkur+nQzUbBS8Q52WLSnpCzlKQVYVCfHHjqR8Uva+f+uEi1s2ekhFVMXPkVVbFBI7Xd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VN+VRPiH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso743837f8f.1
        for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 05:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764249783; x=1764854583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=adQqtuGtOkh+/XizIELgIypa/bLr4iuxw07EkkDfkV4=;
        b=VN+VRPiHUKvtSMjm9dM61v3GNdG5oqBDs2Ympgr8H1pqGmik0WFlHpq+Bj7u0ibBiT
         Sa2BcD9zQLrfp3vSd1MBKDq6rZdZAOWn+fu437BgwH/FEv3/INV2JMi+G2S5p9ZckzMO
         +ldwbm9hSHfT1i7oI3+yDtcCxrASmH7oDe2J/cCaj7IFiQxcrmKfAOrxW4VemJ+ntbfM
         5Eh5LgsPM6FLcMdqIggRABqL36dzuax2cA0dm9dqnhf0QQjzfYgd+hHoDrQbntFYHs7L
         7pp+4dVwZRFAFvF2dXLVYBZsPljCdwgDOmkTzp2tEnj2/GttkBCFqOy55dP3T2ri/8ie
         HEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764249783; x=1764854583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=adQqtuGtOkh+/XizIELgIypa/bLr4iuxw07EkkDfkV4=;
        b=KvRDIHSheU4ICnsMGn7/D9xqAFHrdJvhaz/iwPflRfuaAqZynW4RCGy+wDT1VgtYYU
         9ZO0QU8oynvIZAvy8s9drAfuh33cYc9r6BALEHMu328aM++l2ZZOQiu3xFcibp3Vrh5T
         DvM+cQo9zTFPvnRIxhLE9/Rhob8BZrfIMMDKm+yDEk7KNjAsRaXbF+lagkzw3VAVdzFA
         qxcdwVcUhvsslDdGNB8tRnuiFwsv7HjbKFjomlXGhWsUXczPqAWFAfrh1CdHL9cGgjOl
         bSlbsSghN2n7tT/7X+vZulPPIuuLwcaBZJ7VsRggi6PQ7Owj/FLMrQRbjAuQqmOiMa/8
         4YEw==
X-Forwarded-Encrypted: i=1; AJvYcCXszQs1Cjp5NmIYCxbxFW/VPOKGgop8K9jcdz60BZNQWgM/38zjb4KWHPYT43xY3NZcKERGpiwlabY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyTCDOmLfjgzy2kswtLrdBcjhi7Kn7cgshW8O7LKX2Z5bgeaHiA
	h+ouXL/fDQwlYjf0tFdoxqZ5jfjCQogp2Oxo2/FWQRGnl794v6sSNNUQ
X-Gm-Gg: ASbGncsKlPrIE0lZp/ZOhT+bNzmld5EpdoSKFVrnXEscUZiq7JJ16TC4tzNpHbkarzD
	oEWNFp7QSygUwj5j7WP8ufsW6lIPbBeDxNIvjUVQ4EpwFNfvEduU5Rl6wxnGKHbCPEjLamZKO/3
	q3YSAX4O3MK6UoHUFJNfpjm/qMd/+drIEWWU7IrLJZ+7nwp4AWsHiDtNZkUJZtFzeiyltACsG98
	W1h1U/KJ93yJdLae3+ZHrp6t4IvVtLu3c8mzkDV8YYpDIT2FrItKjhT98HNRFQYG0ULnXUMZOJx
	knXYS+svemdm5wLPrd/zOJwmlbi1OCYRROQ3sQdV/3VpItBiaa4gE/mGP7+hiLq0JB8kUyKqltN
	BmJyXiz1XdE7tsJAh+DH9CH2oIF1ygT0rxWPbPPKnDBKyGryxSg0SQ49Wue3pypc91QikoBfxJk
	iccRSjBVQeme3IvvxbufYjEWrtz4Z1vKbX4dFN
X-Google-Smtp-Source: AGHT+IEs2Rm3F7SifeMXRn28E4D53v/F0z/shJrXQlmicxSpMIFFaX1JNjOQmUwdSPyKLjmYIqt3Tg==
X-Received: by 2002:a05:6000:615:b0:42b:3d5f:ebfb with SMTP id ffacd0b85a97d-42e0f34405dmr11547961f8f.27.1764249782877;
        Thu, 27 Nov 2025 05:23:02 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca9aea3sm3492286f8f.35.2025.11.27.05.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 05:23:02 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alex@manpages.org,
	linux-man@vger.kernel.org
Cc: Simon Essien <champbreed1@gmail.com>
Subject: [PATCH v2 2/2] man3/getgrnam: clarify error behavior when entry is not found
Date: Thu, 27 Nov 2025 13:22:32 +0000
Message-ID: <20251127132249.3566-2-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251127132249.3566-1-champbreed1@gmail.com>
References: <20251127132249.3566-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man/man3/getgrnam.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man/man3/getgrnam.3 b/man/man3/getgrnam.3
index 87eaf39d5..1a2143d47 100644
--- a/man/man3/getgrnam.3
+++ b/man/man3/getgrnam.3
@@ -156,12 +156,15 @@ In case of error, an error number is returned, and NULL is stored in
 .IR *result .
 .SH ERRORS
 .TP
-.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
+.BR 0
+No matching group record was found, or no error occurred (POSIX behavior).
+.TP
+.B ENOENT ", " ESRCH ", " EBADF ", " EPERM ", or other values"
 The given
 .I name
 or
 .I gid
-was not found.
+was not found. (Some UNIX implementations set errno in this case.)
 .TP
 .B EINTR
 A signal was caught;
-- 
2.50.1


