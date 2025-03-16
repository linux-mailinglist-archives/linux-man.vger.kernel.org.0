Return-Path: <linux-man+bounces-2603-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42563A634C4
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 10:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B5143AEC44
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 09:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC60199EBB;
	Sun, 16 Mar 2025 09:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ga4EcnXP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C663818E750
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 09:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742116134; cv=none; b=p/1TGpMjHUEeX5y7Pr+uKtTmQOUgHuQ2O4iCcIzAKZxe2TcjVO/gcEbK1UZTKDbKa/rPkZSfMR58QpjQU27X1nFjaKw4oGNCbG7xjjvaOj/vEOcFWsRIiH/iLxaUA2hIBYv8At/c8YGaesiKW01BrDfVylK+w0TI5XwAbBL+VWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742116134; c=relaxed/simple;
	bh=HsilT7Hm9JDjXM/FOgIfzUJPNN0lEuhiH50f9aewlIQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dl1SSeDYucZt1jjW1a5eUODqzLS4htYgosk/hhVSphl7hQopsWdv/UWSm550LjKffLRoMav2LK5VbQRW/kIvmjRHwKd5IL5nbAKwJ/C6mKmA54HELcQWUUKpXczRCVnpqLh3LCkItfEPW2o+hfDFwKMhBtWG69OkFpOA74/qnUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ga4EcnXP; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab7430e27b2so654540366b.3
        for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 02:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742116131; x=1742720931; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uvZL6T06ni565xp6hM9b+BgwBsxUBSCq4caPOLXOUzU=;
        b=ga4EcnXPqeVdGYuI6HC4GTqOetZGFr90eG7+lalaQ2wd0SQHiaZRqEEA7z3rHF5NYF
         HZZKSNABRU0dxJGvqbu0O5bTllWd2BjN8zz7BfcMp9naRFmXmKR23W6TzXyj7pxvulDN
         6iVMF9ZiV9x4EWJS5ugls4eKO2TQrPmHBZTC57lpnwM2mWvpmfrL+mcmrCwGTW+usu0u
         AGP2T+VFM52q+bV/fGlLIBmdlQqtonvECevUem8ojsJwUJZm8lWphKXn3cQzh37yFxRu
         wKwg/Nu7cnOZxU7NmjGctO9JfU6o5s9ETeLTTOAE55L/uIkP8zehUfPK0uSz47tXHzFz
         JVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742116131; x=1742720931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvZL6T06ni565xp6hM9b+BgwBsxUBSCq4caPOLXOUzU=;
        b=eaAhuaSs9HoR7MCTJle421aZ2YOwFx4OV4GLIqe8kYkGchqfXj4PDp63GF2g9trgq8
         PRjZRAygUvPtC3Db/egxqjS4KqB0PQDTibbhPyp4665VuDESPFdYy0amk0+3GLMCIqUr
         1wA2yQDdGuCPOEtQCcbmsfb42P7hlvellFjaSPSgSKOyojHv8kt4RQJmp5uUgK1KZWN3
         gpYk1H+VJsevDv/WxX+eWNFGB3cNdCsqq0P4UqyRsvBilulULkcFHHoQT4dta8TLLfPr
         QNRvrvU5o54ZEBwo+P2uxpv9LY4YUl8m7b2snWLLzFd86TR20hDj7Ql0Y8d8hpD7z/cX
         BAZQ==
X-Gm-Message-State: AOJu0Yz09R2yfgvwbnPIxdYTTNqYCuXxgiK1mvvP+O0KpVV2fzpinbHe
	rwMwxk05i+6XV/tCMJuXXEUQnHYeIrN9U/6MUL6dohUpk5A+1hI0Ax9vJdLXxAy0edmMDR8MeZV
	jJk4jKmdJjFNHU9iGX1hcmjiGheKQRN/T
X-Gm-Gg: ASbGnctj830v4XPpICgYMrEi3egK2bgvC+Hj/t9dOfzfjMuGM2rQhxf30JeXt0si64c
	QCTNg0iNhbrcNf+CzY2FoZLoJuM32BNIjZ/b/KOgu4DTNRVQPdeTVTlZ6bwTKK9lwlbqeGtOXXP
	9XStyrxciKTTBgjG6mh+tSbNsr6Cw=
X-Google-Smtp-Source: AGHT+IGowfcWRUi/f6of1jC76ReUT0O06Ouc+TSLm4JiyEt7fvPGV8maLmzD8Xbxi+tLibeggg85K2nHaEat9QUOGaI=
X-Received: by 2002:a17:907:86a2:b0:ac3:4c24:8648 with SMTP id
 a640c23a62f3a-ac34c24d69fmr428167966b.55.1742116130818; Sun, 16 Mar 2025
 02:08:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
 <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
In-Reply-To: <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
From: Kang-Che Sung <explorer09@gmail.com>
Date: Sun, 16 Mar 2025 17:08:39 +0800
X-Gm-Features: AQ5f1Jo34Y6svthvwSHGxzvP10QY6AWBTq6wFW1DhkfTIOVwbxwi9-iP7RsVbh0
Message-ID: <CADDzAfMfQ0Tg+Xy_0Moe2oQ6SC5BgXhCa8oBDPgrmMRb2RPnUA@mail.gmail.com>
Subject: [PATCH 2/2] man/man3/wcrtomb.3: Document MB_CUR_MAX length requirement
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"

The wcrtomb(3) function, like wctomb(3), has a length requirement about
MB_CUR_MAX. So copy the wording about MB_CUR_MAX from wctomb(3) to
wcrtomb(3).

Signed-off-by: Kang-Che Sung <explorer09@gmail.com>
---
 man/man3/wcrtomb.3 | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/man/man3/wcrtomb.3 b/man/man3/wcrtomb.3
index 967a1a0f6..27b5bd9c1 100644
--- a/man/man3/wcrtomb.3
+++ b/man/man3/wcrtomb.3
@@ -94,6 +94,14 @@ is NULL, a static anonymous
 state known only to the
 .BR wcrtomb ()
 function is used instead.
+.P
+At most
+.B MB_CUR_MAX
+bytes can be written at
+.IR s .
+The programmer must ensure that there is enough room to store the
+multibyte sequence at
+.IR s .
 .SH RETURN VALUE
 The
 .BR wcrtomb ()
@@ -101,6 +109,9 @@ function returns the number of
 bytes that have been or would
 have been written to the byte array at
 .IR s .
+The value returned will never be greater than the value of the
+.B MB_CUR_MAX
+macro.
 If
 .I wc
 can not be
-- 
2.49.0

