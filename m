Return-Path: <linux-man+bounces-1193-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5CE909B03
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90AF8282C24
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CAF154C18;
	Sun, 16 Jun 2024 01:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqJWPKBl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AE91527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500773; cv=none; b=hs4d72mDpU4OUnk8JaKUcyzMoja8eRc7eXFUJ4kCA6PrmQv2+fa9tQZUYiwdTDZqkoGR4ABNLZWrAzvY0AN+DDFWPIZWzZNR2aL6+ddDyVzIYutec5qZfPMzmx7Os7x1jeWQy0CMMnr5Y1WgnXnvPN0PYEWTYvE2B5rUNkkiqVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500773; c=relaxed/simple;
	bh=5cPzzZ/g421+r8+aWgAqQWtkn3ea7EC93sZ8p0mf+co=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CMKXPW5nktwkZnichyCKErTRvw6DbAuI0o0YjmxRXDgjIDh4lhJTAGnbsTBrUe8wWwZ643pzqVhRQtqGj+WPIHEy5DKx1zpi92lazn0Fh4uUY+E1GF6hu6cko9NNGYsyBH5Uxv2I1PNG27DwuvHVRSkh6b3IyEQVZh3hfE8M9Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqJWPKBl; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6f98178ceb3so1883899a34.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500771; x=1719105571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohIJUZzplUxFC/c6SMs7OLSyP/mucsOpa6xI7Bv1LjM=;
        b=FqJWPKBlSVKzKnG90V4rjgFHbsfBgw7w1d9/qVEVeobSuSnqQzYa59rLyw8SrfaQTY
         il8hTY2ps6drXAru1GrGWRaLDy3DFi5VcA3PqVVbAxTaxN3UOaFonTNphYuoSuQWT/wg
         w6nGCXhOWORQTDhsmojHDyg8aZwcXFu81lCLhwrVzB5FGv6x3vqy0jeuuXSUiA/npUve
         xHJFXL+sw1JKBf/4J2cwGYugcg4JOcHekkAMNBoAGIr8+mhTguUbGpHzdeWNG0uqiws2
         OALOaBBzLWcegvL/RR1n0GLjTg/rfoWuINqJbHw1+/VlKsJbW1TM+km2n9qLYcsFlNW7
         zjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500771; x=1719105571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohIJUZzplUxFC/c6SMs7OLSyP/mucsOpa6xI7Bv1LjM=;
        b=e/NJopHx7/X/FsOlYXshassqQI0Fqe8J1RCgLXjrh/Gwr00wyBpYBOfnsGGpAXmi8L
         1alPAEbk7FqHjWBI578Ek74AoVz7v0ua3jMqDTIqHsk/B+JbWMzLViB4JGlwUV2hQN9H
         avO+5zDPkT9Ea6u72PtHk+C+rZI2ibfqb8tjL7YPndQOWiToNFPDkRqfbXA7XgcLFDok
         8DVmG7q4sZ2XAjvii3U2OVlHT+1i4m5498Vxb8StZbJ0/jgs10/0UM2VwzieGyK0lXOl
         VjO8OnXVMdcuoX7XoYqPRKBtSKNyhQqedrS6VZGG10GopvZrWMQwlYK0tJujVEcg0ldl
         Ujdg==
X-Forwarded-Encrypted: i=1; AJvYcCW1OqPs4dbo125+WQix6vc7W7QsBP2HZRA4dr0v3hUMalVtps6eOu4yHH7cAkepYNAX3Xq17IjiBBICXjZV1QdqJCQoQfb32A91
X-Gm-Message-State: AOJu0Yy4ihEGQKNJ/bx/TmWGirpxJVtgap0vELyRU3KDU5FhahKsccEH
	eqPLvn4IY2KQDLv8xAy2zeGxWT3fDjOYbc39oGkQ3oEzoySt5VxD
X-Google-Smtp-Source: AGHT+IEqBOzP2DqqY/uQP4rhMeps3j1Dn5vk39dy5hzHQY+79CsL4OUx5y5zNKHlC3TiHyz9ueaGAg==
X-Received: by 2002:a9d:7d82:0:b0:6f9:5e9b:66e4 with SMTP id 46e09a7af769-6fb93767ba0mr6967045a34.15.1718500771287;
        Sat, 15 Jun 2024 18:19:31 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:30 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 02/11] posix_fallocate.3: fix section references
Date: Sat, 15 Jun 2024 18:18:55 -0700
Message-ID: <20240616011920.1627949-3-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are references to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/posix_fallocate.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3/posix_fallocate.3 b/man/man3/posix_fallocate.3
index 46ce6ac7f..7222b6232 100644
--- a/man/man3/posix_fallocate.3
+++ b/man/man3/posix_fallocate.3
@@ -86,7 +86,7 @@ .SH ERRORS
 .I fd
 does not support this operation.
 This error code can be returned by C libraries that don't perform the
-emulation shown in NOTES, such as musl libc.
+emulation shown in CAVEATS, such as musl libc.
 .TP
 .B ESPIPE
 .I fd
@@ -106,7 +106,7 @@ .SH ATTRIBUTES
 T}	Thread safety	T{
 .na
 .nh
-MT-Safe (but see NOTES)
+MT-Safe (but see CAVEATS)
 T}
 .TE
 .SH STANDARDS
-- 
2.45.2


