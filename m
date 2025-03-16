Return-Path: <linux-man+bounces-2602-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE77A634C3
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 10:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 995FE3AD494
	for <lists+linux-man@lfdr.de>; Sun, 16 Mar 2025 09:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A525F157E99;
	Sun, 16 Mar 2025 09:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aX9IASPz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01648C1F
	for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 09:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742116082; cv=none; b=ZJhrJ7fz8lmS9HEoWRH/IN6LO+h+fd2prKx5L0I0WQqXZfNNM93pY6C4ut/gVnWCd2z+CZmKogKKoFa6U15/O5GYAgkv78ElUW15fBxWUqiW7M8PKkZ2ALfX4sdBSTPduX68niRf48Xk1LVuYswRaMMC/Hvmb+R0oLuorLB5CJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742116082; c=relaxed/simple;
	bh=ycyQ0mHyY8AWWeBNWs+B4ZwguGY9+hJM8Y/zvh6UbXk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RBv4R7RKSuXKPACZhMxr3aZzQ+YRNzLcQQ/eIaWCiJr4D9rsKTATO3ZIFjptMZlxC+MCmGGKaHODQZbLVRdjMHm63oFZOJ+U1vtLYqBdgPKbQZ0YkBUKcT185CQgbTW/u3POaxKHiM/MkoXAv8zA+QU6P3m6BZtVGg23We/0FrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aX9IASPz; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e686d39ba2so6772582a12.2
        for <linux-man@vger.kernel.org>; Sun, 16 Mar 2025 02:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742116079; x=1742720879; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XmzR0pILeubEE+paL0+QMuPr0xYr52RMOpKggPl+g7o=;
        b=aX9IASPzMo1pkyRoTa8UosAAYKgx6LsonjF/7LAZECueempwe9nsDbJjFiuvHqmlhe
         rrTNfh1DnTaCRvuCdo844/7Gw5Q5Kmejm5OeQhuwojXZraVnt+1CEUJb0g8O5GwfcIKN
         Ld765YSqdeBDexivfIBzAXcLkz3G1bfwy63at1VCAfDb3nuB4I6ZhIvXCCCfqCw6ZtJp
         z6JxB3PgPhziTc1sk/VnPRHn50OP5oZeVzcwCgs3JbM563Srgxy0YQQcxDz7QmyUdnr3
         YUb14n37Pn9S7iG4MWT72ztc9Wa6HCDQutJSQzwvo7DofQEaWwvGBeY6vKOLuNrTaBsb
         YksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742116079; x=1742720879;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XmzR0pILeubEE+paL0+QMuPr0xYr52RMOpKggPl+g7o=;
        b=akdniQeoTgkR85LTD3c+vczWgnhpY3LbzNyY3Tx3bp917VT9oQAQxrbydk+Ko+fUeU
         7s+dQ9qGTWlsmNXgjueuyM4lAnSbQPEUIWos+PC1gxpMBg0+/HKp423gUbKcy+wJuova
         0xeSC1mNpidQsAZOZbsHFERTitGw7IBzehm+o6vjU9i0XBjn1QY3HEyJaYoLyrBGBnaO
         Llr5PXDk+U6oBchbA1KlYdePUCIj4CS1E+8HDCSD19FVB/U2NVkP8BQ++JbHN+zyYhct
         dVc42dY+RgL+30TirNlm9hGhs+8yb6+2KOLHbVEWncVFLC+Td4zDeqUkJuT0LQMkEvgV
         ChUw==
X-Gm-Message-State: AOJu0Yw7cYfMOrajw0w9Beeeap5YFJuQXrbAGKCB46pOH5jRziqDxvUi
	Mb8bgxobBnPy+hAtZ3X5vHMXjJ5oJOdajc5wVyubLcDEJNofkcE2N3XUX55yzwe+RgZhe/LGaBT
	bUXU4SSmpSFvE5o0+Tl7u18m1Nzw=
X-Gm-Gg: ASbGnctxNeJ6WjMrlG9yNJ0IZOmA+cYmyUZTLUWSQM1yzW+gckwaXlaP8vGv5lRy0+V
	NL1SBlNfKPpbCke6J2Mc+ZPMpZKT3LRv0apck56TYmdt7zDRhvWB1niyFDt2IfeWoyV6GBWX7XE
	ajAYaeuTzAHT+D1m3HY4bIJ4O7KfI=
X-Google-Smtp-Source: AGHT+IG52Txj4Ie2HPHW/UUCrzLCz+Y4yZ0ipPV2SHo035T7rkR5t4lh9ZO0n1bd69Gw/IjbpwFTW/CcixT4GcTpdMo=
X-Received: by 2002:a05:6402:26c3:b0:5e5:e032:e820 with SMTP id
 4fb4d7f45d1cf-5e89f154919mr8908922a12.12.1742116078946; Sun, 16 Mar 2025
 02:07:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
In-Reply-To: <CADDzAfM1HVMkyQY-zhv81NKS4X-neCTGETQec-f9X4acgpZApw@mail.gmail.com>
From: Kang-Che Sung <explorer09@gmail.com>
Date: Sun, 16 Mar 2025 17:07:48 +0800
X-Gm-Features: AQ5f1Jqrify_gq5-w0seIbfauVsR3Vle6mfT2ww2elbhZQO_MDT82G-hyudvN8U
Message-ID: <CADDzAfMq3X=u7+Sk_gTxOKA0O+4OgXw8XD3KifnQKSNFwGtG0Q@mail.gmail.com>
Subject: [PATCH 1/2] man/man3/wctomb.3: Rewording to MB_CUR_MAX requirement
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"

The "must" wording on the MB_CUR_MAX length requirement could be too
strict for what the standard allows to the "s" buffer length. If the
programmer knows the wide character to convert beforehand, they can
allocate the buffer whose size "just fits" for the sequence.

Signed-off-by: Kang-Che Sung <explorer09@gmail.com>
---
 man/man3/wctomb.3 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man/man3/wctomb.3 b/man/man3/wctomb.3
index fce54cb4b..f6aefcd0d 100644
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
+bytes can be written at
+.IR s .
+The programmer must ensure that there is enough room to store the
+multibyte sequence at
 .IR s .
 .P
 If
@@ -68,6 +70,9 @@ function
 returns the number of bytes
 that have been written to the byte array at
 .IR s .
+The value returned will never be greater than the value of the
+.B MB_CUR_MAX
+macro.
 If
 .I wc
 can not be
-- 
2.49.0

