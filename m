Return-Path: <linux-man+bounces-4383-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFECCB2EE8
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E1943005FC5
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BB8324B2B;
	Wed, 10 Dec 2025 12:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJOtoR0K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767AE324B23
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370410; cv=none; b=nYp2GXXZO388UEHN0MQkwvRD8ZjLZQTgnmOERvC8ZV4U4mZSObszFeXth9zWmSYJ6AYhCYK7GWS7dPkSz9XPCB/sdCuE0JLyGHbnE+x5woz7fA/o09HSW5mF+dPFVftgBq1PJcuHPARSEHo+v1MNMpI8r9QQOePVwmj94PBNlV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370410; c=relaxed/simple;
	bh=wzgYeae0a4p7i4/X1vcvjlBkRS+QqwleotupN90AynY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QBbaFa1vKdyeR302a33Sqm7WBDywweQ35GQ1BtD723VCRmNzZyHTH7iMSC22ZjlDxSY2Y9pQPK21uQlc+JZLQQkVpdN/3waOC2uQfsmgJoKMi5ibAVaiaYhyKuZbesYu40gyaSyOqTcQ8mZA8jQF0YTvap2Q6xtBafIBfSQNUAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJOtoR0K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0E9C4CEF1;
	Wed, 10 Dec 2025 12:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370409;
	bh=wzgYeae0a4p7i4/X1vcvjlBkRS+QqwleotupN90AynY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aJOtoR0Kx7RbqKOP18ZaNNU3ls8zAIqKTePKJdpNsY9zsseOR8V5xIgOnYG94k/5N
	 f6I54k5fV7JY5nmxdX8dXbhCT+TwNMiCgJa17N/gCNH6Lukec4YzmY9cwXzYfG6HfJ
	 9MAI5M3x4SiVWWHe2iKltdJkE4931ahrbgw61gBNrks08tIwNMxaSF9sT1dj3eYkPl
	 xeUFje/WxLHu6NahRXtmj5Go5UoRdZpf8RLHFNS+S5L8x95Qugf1aKTLHOVZ6hqSTi
	 HWPN1BWvO0GZtyhY52G/6LfSYcb5jHskJW/tow3L+xZWP7pvfT4ERlHrX0imMArdnQ
	 1gzr0eXMCq6YQ==
Date: Wed, 10 Dec 2025 13:40:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 03/12] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() conforms to ISO C17, not C11
Message-ID: <95f523f48d25885fea6d1af0eaf4023bd1e21b0d.1765370035.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

ISO C17 removed a restriction that was in place in C11.  This
documentation doesn't conform to C11; it conforms to C17.

Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
Reported-by: Seth McDonald <sethmcmail@pm.me>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 4cf63d283..d0adaab01 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -162,7 +162,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR aligned_alloc ()
-C11.
+C17.
 .TP
 .BR posix_memalign ()
 POSIX.1-2008.
-- 
2.51.0


