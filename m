Return-Path: <linux-man+bounces-2606-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3F1A63700
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 19:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF27C16E056
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 18:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A3C151991;
	Sun, 16 Mar 2025 18:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CER/IhC3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785B1EBE
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 18:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742149948; cv=none; b=VQdjGbqksTl9G7+KGhgDCxhalP8jgfII6Pn1KdjsBklYleu2ZwQmK/yt6nIxefMiAGby1v0azX0+8eL+q3wLG89MOpvHXvlTaIJHIECUfOhpQWO6TzElYMA0sEzNgRQPlLYUVfRHA+6Ic7ng5u36B0GyaDP522QhY31PgrERSQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742149948; c=relaxed/simple;
	bh=hGzsFRG96iNrEAwV9ZE1ezoTbrFA0K9bvuySsZ+g/Aw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HBvJu9Jib/bJN4+3p0nDIVs+upY9ljwYrb+xFgVhKYb0Jga4lif1QPFQ06LLRnz4W8NIQdwKXe388yxSMGO3HW+DKam/YOshj4QZuPcuBVwA4m0NHU1TQ70cYc2xFiB2enIq42GDAzfdBhk+byIm/XmSBd/hyrulAH1Z3NuzXMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CER/IhC3; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so6521292a12.0
        for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 11:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742149945; x=1742754745; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BZm9a50vG8fN4sSOfP0MNTHLDfutQyXWro1TRXDvqV0=;
        b=CER/IhC35p5zhWOviO0CU1WXPAvavGSAFoKedrPsjXXcvnvIDxM3kGrc3o/DM35GTO
         bG07VLmpIswtBf3TW41CZj1xksjKVzbhiSkxpOz174E3uATpJ38E6tgcK+mY4XJ4RokE
         DqzsD6I3yx5vUCfC/7j03NhhyEWoxTfXadj0884CSR+JulTwKZ5GYngbuHknKLT2z3Mh
         XxecH0YWWZH+M6eKxQkXKHQgG2IT4+W3hobd2KDoNTlMZVdnVzF2A2Q2JJwRj1Bk+ypp
         +B49XXTFC7f0MB3z+6FD+LCO6g1w13HzH0ARWKVRK9IrHBv2iUlRvQFo+PPPtuXuppSK
         pcPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742149945; x=1742754745;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZm9a50vG8fN4sSOfP0MNTHLDfutQyXWro1TRXDvqV0=;
        b=kEUPCD+ZFSMCpqSaHYWVDjCxddd15xJDs9vxiduPFk9bab4NXURKT2VFHq5kPfZ3Eu
         4u0eQJxCWkcHu5nvDhaVdy65MWPWDAaKjOoM7RAI+Lhy/ixCp8mJWnvZg9cU1WLaeiM6
         +vG1uYOW9JfF8A7JlBr9OmlNE7UiQyUcBPWgbiKUlz/PfHg5csR+fAotuCjpkrMDMFAI
         /BuMAJkPbUvyVaDiil1z5eZpUmY6gARFuuM6Efhwct/SNMuvPutI3doE0NjF5xh4lRGP
         hsfxpU/IVt/c6wwJA4UYnKbmAOr+7E5FTFNzRThW8zNdoav/t+JlYu4zbIxQUfuBVydr
         vttA==
X-Gm-Message-State: AOJu0YwyGnwKkiY7fcAeua7L0LCSDcSsRpisMgT6CtFG2Vo2FrFbkOzf
	J+rM+nehBvkOJlBkdrlDoaGdvPNcUNCwSzxndMsAJM8alL9WgS3b99dcN2sEUl4bFnX/p/eeUNt
	mvhaNy9NKQgFj0MkoAFxr/VfPiAK0ENt5
X-Gm-Gg: ASbGncs2TqJWe1jeMwrwbHn6jKQm1M3/UyRtQNpC+0NqI7KW57PR+FQZ61Dzm5b/kml
	xGaIHHq4u6LXCFzzxafryCXdjlvOW6VgoDKH4MYerXYG8u0fF0TiXrBkl9dFS/5S0vjttTAENfz
	JkstToKuWVQj+J0Uveih2GsvldyPm3KHX7LQfOQQ==
X-Google-Smtp-Source: AGHT+IF2C9ajbzu6eHhTmv65p57CfJoggSG8ytS95Yc/Xy9kzu/2UjzM0oMroSP7qHwCwzdcTd7IR+72kLz/PQWVBfo=
X-Received: by 2002:a05:6402:26cc:b0:5e0:6332:9af0 with SMTP id
 4fb4d7f45d1cf-5e814f2a935mr13404642a12.14.1742149944347; Sun, 16 Mar 2025
 11:32:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
 <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com> <uxualrxjgtb4cld44fvt7lr6blpltiflnjzertpkctk3s2jwx7@ei4h74ueqzc4>
In-Reply-To: <uxualrxjgtb4cld44fvt7lr6blpltiflnjzertpkctk3s2jwx7@ei4h74ueqzc4>
From: Kang-Che Sung <explorer09@gmail.com>
Date: Mon, 17 Mar 2025 02:32:13 +0800
X-Gm-Features: AQ5f1JpdzkasqBQAfq7LVjZt2vStr2ljnSJgObTU5uYK73iLopxylPIaGt3qRlE
Message-ID: <CADDzAfN7_kdv4iQtH=OpgSWtRuqOZXYhxsBiz_OF8Zqf-zy4_Q@mail.gmail.com>
Subject: [PATCH v2] man/man3/wc{,r}tomb.3: Rewording to MB_CUR_MAX
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"

Add the missing length requirement about MB_CUR_MAX to wcrtomb(3).

Change the wording on the MB_CUR_MAX requirement in wctomb(3). If
programmers know the wide character to convert beforehand, they are
allowed to use a buffer smaller than MB_CUR_MAX bytes, as long as it
"fits" the sequence.

Signed-off-by: Kang-Che Sung <explorer09@gmail.com>
---
 man/man3/wcrtomb.3 | 8 ++++++++
 man/man3/wctomb.3  | 8 +++++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/man/man3/wcrtomb.3 b/man/man3/wcrtomb.3
index 967a1a0f6..162d97df8 100644
--- a/man/man3/wcrtomb.3
+++ b/man/man3/wcrtomb.3
@@ -94,6 +94,14 @@ is NULL, a static anonymous
 state known only to the
 .BR wcrtomb ()
 function is used instead.
+.P
+At most
+.B MB_CUR_MAX
+bytes will be written at
+.IR s .
+The programmer must ensure that there is enough room to store the
+multibyte sequence at
+.IR s .
 .SH RETURN VALUE
 The
 .BR wcrtomb ()
diff --git a/man/man3/wctomb.3 b/man/man3/wctomb.3
index fce54cb4b..643e2e677 100644
--- a/man/man3/wctomb.3
+++ b/man/man3/wctomb.3
@@ -42,10 +42,12 @@ that is, the number of
 bytes written at
 .IR s .
 .P
-The programmer must ensure that there is
-room for at least
+At most
 .B MB_CUR_MAX
-bytes at
+bytes will be written at
+.IR s .
+The programmer must ensure that there is enough room to store the
+multibyte sequence at
 .IR s .
 .P
 If
-- 
2.49.0

