Return-Path: <linux-man+bounces-1235-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B58B990BF99
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9D2C1C21B7D
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98771993B5;
	Mon, 17 Jun 2024 23:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EvGMD23H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A31993AF
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665864; cv=none; b=dyH20DzVA6GqktfhXcglacyBBPLY1WiyYnf46dKoNm15yYjzG6XarBMJP6ObKa7NMC16NcK2+TXJgGj0TwkMTcb5ql6owtNs0SkxW3Rcoa6BiIP/mCWVvU/RjdKxBDrANLPHa6oIUYbWp5bH9k+UiWEX1D/gkQdfwD3H5EsMrZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665864; c=relaxed/simple;
	bh=My+Oh+bwVoyNP3wAxCinSOIDA0U9DhS1ZrC4xUFY8Qo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lxyjpX1e5AvKhvgLc8QyI2XShAN0lhNSugJjuntwGz959P1qxR4Yh1IH0ZTlQq2G4KJyiBLL2zRTfQRPGvDINAnza7YvFoL5JJ60CSAcRJA200TxoxIINCjxzU0bQhDCAecdwNFuXKC4GsDr1GUDVX9t2xRCrLdvyYKuWGTJZi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EvGMD23H; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-79a3f1d007fso202853685a.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665862; x=1719270662; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5B+gPZfGbj+2kpJ5PfPjDoEPFZCxgmkrO8/iSEQKOdg=;
        b=EvGMD23HkYfgaFURy0ROqk31GseDd6LbiyT/VUIZJAyKrgEJhZJmwDmN2+rwxZqUWD
         jmTnQBb+LHhi2sCnNmoaKhqrK0E+Cyo6Jsm0rhKBkOHz+rpui2GvIpof85/UCIe3t31o
         3bcu+G5ASsUzngn1uz5OsOK0qEQFZwyeOS7IhUqUybmuYjXibVW98rVTaQjlLIqsM1fO
         d5q1Eh3/cij/1DcTsmcW1xL6RPR6yOVb+mBElDUFGOcZyOOVfeHSMsg9gxtwXa95YHwV
         0KWk62m+o9qiB28/sY69DZJJ6qyqlg1nUwca9jIGT6h9/KKJygScc09Xs2EKjmMxiKS1
         bhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665862; x=1719270662;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5B+gPZfGbj+2kpJ5PfPjDoEPFZCxgmkrO8/iSEQKOdg=;
        b=FNaxh+cbm3VxffHW47tTDfFeF7WJ5+RQBrQRXzumTGyqAyZzHbgiun6TVMVn9dPBQN
         uQ/P4Nsg1uKq35u3HkSp3odlm2NACigdWtNA9Khq0Pp0bedQXFYdNhP95I3auslZVX3+
         VntbbHhYpiN/Q/XathJUy1DYwVj4N7KrEGUtQskcSOMqkaDKNK5Y6DGvAr2zKWBXfovn
         TTYfnYVBiM+BpdcYHRLQD5E/r869fdNuW94TFAghg/vK0XHgcUqyWyP+oXYpWsONUwZ6
         W8plBGKgSzDzE629m6UI7vN6apuH/pt9oa+QIrDQWB+xAC6g/yRQ3lnWVXha/2uCPhLW
         csUA==
X-Forwarded-Encrypted: i=1; AJvYcCX+/nP723vY88OVr0cMSHU4828TRaqkezsYwAWPW5C65rpEM+GHLHskMfkKwjDaBlbI+PiKakrSQcLWMD2k0hPX72vtzxHte/Xd
X-Gm-Message-State: AOJu0YxzWZdXdyZxgUT7TvdftMoxGILCXAL+GGzmsSUCL4supZkrqZZ+
	jJge4SrjqpiNqx7TKaW7HypINXoOYKFNnI3kzEtt2y84XF23Vcnv
X-Google-Smtp-Source: AGHT+IGJk9eZppON2qWXpQCobPuSmmAkZ9kPsvTxUfqmvqP70eHecuDYjkYmn4Y2Od4UaFoh4jBxEA==
X-Received: by 2002:a05:620a:244b:b0:795:5e4b:c90b with SMTP id af79cd13be357-798d26a8cd0mr1268286185a.67.1718665861973;
        Mon, 17 Jun 2024 16:11:01 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:01 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 08/16] kill.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:20 -0700
Message-ID: <20240617231035.1766780-9-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> (Historically, the rules were different; see NOTES.)

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the historical rules moved to HISTORY.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/kill.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/kill.2 b/man/man2/kill.2
index 16500fba2..8a9317930 100644
--- a/man/man2/kill.2
+++ b/man/man2/kill.2
@@ -77,7 +77,7 @@ .SH DESCRIPTION
 .BR SIGCONT ,
 it suffices when the sending and receiving
 processes belong to the same session.
-(Historically, the rules were different; see NOTES.)
+(Historically, the rules were different; see HISTORY.)
 .SH RETURN VALUE
 On success (at least one signal was sent), zero is returned.
 On error, \-1 is returned, and
-- 
2.45.2


