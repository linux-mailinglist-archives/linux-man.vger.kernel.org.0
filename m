Return-Path: <linux-man+bounces-4746-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE09D0769D
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 720BE3012BED
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0DC2DC787;
	Fri,  9 Jan 2026 06:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WlzJ1h3h"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7614A2DB7AC
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940974; cv=none; b=ecEpnU2SQPSSZe4fTVcVrtFPInfmqo2HhlhKnh9rOSKeOIdbOKY4NJWtRJxSXreMNtM8N/PsrDolk1nBi7rcrpdjG7Zx22sOcgBtfJn8GHWekBALYPTR0LhWgwv/ElHXfCViza+f5WELoFFbiS91oNMsIH7vNey9fEUutbuvCHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940974; c=relaxed/simple;
	bh=zeBETOtlNwMwYRUQxGqiNZVupL01uk/Epz0cQXIyjxo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zvke7hTri1npsiUdqDnilIHyQCn1mfxb6MUWrqrumsCNqvLRHkYpMftAurXeP27CAbUJJoGqgQzjl6mTs3dI51cgKQPCVrWHpWNWMwuHGNzS3Xdxw5zuLJsBSk9Ww2HkFQXA2VOrPC5/13AipZri3IUHNPkP9UMQhnKWQpvTGik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WlzJ1h3h; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-34e90f7b49cso2413937a91.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940973; x=1768545773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xtUcTnGKbwk9i3ZWonXpoA2JKe9c6wExdbOeJ+O2vSs=;
        b=WlzJ1h3hnitmNQYmYpebqBoi47tMsqfjhawOmthOMRsKAWsRN5RNnZaSFZgyN4v8FS
         KXurl2QYnNf/Tc9VjyNBf1Tz5ErrzGMxRYxhkpwm7PL0Kvw0sdknUtCs/pXb9nmFoguj
         3FfXyMMw2bKK2U+ZD1fmK7hCwyX1Mk8OAr1l74jFjxY4opbJW9ECr/2VCW/aiQQ4bpUx
         Z0XUdqJ6KZDYZjASYUZqmc+HgOoS93o2a2tiZP7/hJ17SRv0/+jO/VnoY8JJk2Wg4O3E
         BjzABEaWXkDxn1TEoQgoi7PNWbBUnJcmljNLdvRstwekUn+5N4KJwVRlXhPyncaygVb4
         RjeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940973; x=1768545773;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xtUcTnGKbwk9i3ZWonXpoA2JKe9c6wExdbOeJ+O2vSs=;
        b=cSwPwcNgKq7O8/hKlZa9Fyy9e+ng2WnJf3Rxsu7qyIucRjEioGKEgCNG2tZpYn/0W1
         a8f+TTUIOZfqABRW1zN12H3GFhfL9D9y4C0Frey3hRvL9ioxYziLna1u1J16VS42xKGn
         UNsEO4m8frWcdLAeiApDVAtqfn+tXnfQRQtY/2X0TiS+xrKoMFpTbGPS1TzzWKcMSi1s
         ULaBY1o77/OdDV8A1nbe7Nkpt9ELjh8xDdlfYbsvn7fE7aFMsMcYkvs9Sx1fmYGkcFuK
         PZISuxY48EYhTtKJLTLGNeqanHWcNQZTVYc4CR0jkSfEcB1q3oa4OvIAN21Gdx2qH1nZ
         WsOA==
X-Forwarded-Encrypted: i=1; AJvYcCX8id0oSklv9FlZDaJAnL9r5am7e5RBRN8/IIiex8YZiVMfgtO0pn06FWGmO2jN5XRDR8AV6JYhZqk=@vger.kernel.org
X-Gm-Message-State: AOJu0YxJzoJXXaOZwe9n96HyokaVdIRB6M5EaYy5nLSUg6yqWm9Of+N3
	6MGayS4UWPJWtaF77pGaBFs+We88op7CBtKXPFdtJFMsO1mMCi042rGE
X-Gm-Gg: AY/fxX6BYtHPEL2YYVR8ZjhDeD9BOXDQKo0+IhqpfEY7OB8kDjdBn8NlnxwZs/NuQ6D
	7fxt1qy0JkeVeTapzsXB0RPkJgD3dSyfw54aeNoqSBTBJ3RzR2rR+nc4Z5zc4dt+l4K3hr+NY3o
	2NSmPvK/I1JP4PTdLDHFckoOk6dbBbZ60TW60QS8STyMTUCQDAa+ZxvplvG5p0/TqY3ul83Js+e
	5IfPYNEoKOhL8AdHNNMIcn87oH7ljjYWqOzNSyWykAwdKbO6ARgPzqy5mbE4RBmAW4PZ/oXIpWU
	svMonq549RFi050RwJbEBWZX95juM3uYZlEAJoyMAJEfy6SOaC0ryiYu8hshcpQGhViuGZwW3IG
	MseIO0MJz3FFwLmXtUDTDtgIS8BErn/w82gmMGQSSTQWHPUwFurhP+obX0smHIftC4jUFZWACfZ
	k405f0lgv9T1aavxE/3A4FtBOqI4OCAq1VN3kR4jvXaptxFKNQUAsL7yniGTNTdAavlyHm31uBj
	Ugs46/pgxJKe/se
X-Google-Smtp-Source: AGHT+IG9R9g4O4qyrmaKUMuUT3flPgSXIbqmXdO7RokkGPlY7ZG/wLD9sQu9KA2lW4NiznoTq+etJw==
X-Received: by 2002:a17:90b:35c1:b0:340:9cf1:54d0 with SMTP id 98e67ed59e1d1-34f68c339a8mr7300472a91.1.1767940972651;
        Thu, 08 Jan 2026 22:42:52 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:42:52 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 00/25] man/man3type/*: Update history of all other types
Date: Fri,  9 Jan 2026 16:40:18 +1000
Message-ID: <cover.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

G'day,

This patch set should account for all other man-page entries in the
3type section whose listed first POSIX/SUS appearance can be updated.
As per Alex's request, any added POSIX/SUS versions are listed in
chronological order with respect to any other listed standards.

I did make one "exception" though, regarding types that appeared in both
C89 and POSIX.1-1988.  Despite POSIX.1-1988 being published before C89,
many (if not all) such types were included in POSIX.1-1988 primarily for
compatibility with the then-upcoming C standard (i.e. C89).  So it is
likely more chronologically accurate to list C89 before POSIX.1-1988 in
these cases.

Seth McDonald (25):
  man/man3type/div_t.3type: HISTORY: Update first SUS appearance of
    [l]div_t(3type)
  man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
    id_t(3type)
  man/man3type/intptr_t.3type: HISTORY: Split types and macros
  man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of
    [u]intptr_t(3type)
  man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of
    [U]INTPTR_MAX and INTPTR_MIN
  man/man3type/intptr_t.3type: HISTORY: [U]INTPTR_WIDTH is not in POSIX.
  man/man3type/intptr_t.3type: DESCRIPTION: ffix
  man/man3type/iovec.3type: HISTORY: Update first POSIX appearance of
    iovec(3type)
  man/man3type/lconv.3type: HISTORY: Split lconv(3type) and
    int_[np]_{cs_precedes,sep_by_space,sign_posn}
  man/man3type/lconv.3type: HISTORY: Update first SUS appearance of
    lconv(3type)
  man/man3type/mbstate_t.3type: HISTORY: Update first SUS appearance of
    mbstate_t(3type)
  man/man3type/ptrdiff_t.3type: HISTORY: Update first SUS appearance of
    ptrdiff_t(3type)
  man/man3type/size_t.3type: HISTORY: Update first POSIX appearance of
    [s]size_t(3type)
  man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
    time_t(3type)
  man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
    suseconds_t(3type)
  man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
    useconds_t(3type)
  man/man3type/timeval.3type: HISTORY: Update first SUS appearance of
    timeval(3type)
  man/man3type/va_list.3type: HISTORY: Update first SUS appearance of
    va_list(3type)
  man/man3type/void.3type: HISTORY: Update first POSIX appearance of
    void(3type)
  man/man3type/wchar_t.3type: HISTORY: Split wchar_t(3type) and
    WCHAR_M{AX,IN}
  man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of
    wchar_t(3type)
  man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of
    WCHAR_M{AX,IN}
  man/man3type/wint_t.3type: HISTORY: Split wint_t(3type) and WEOF from
    WINT_M{AX,IN}
  man/man3type/wint_t.3type: HISTORY: Update first SUS appearance of
    wint_t(3type) and WEOF
  man/man3type/wint_t.3type: DESCRIPTION: ffix

 man/man3type/div_t.3type     |  1 +
 man/man3type/id_t.3type      |  4 +++-
 man/man3type/intptr_t.3type  | 17 +++++++++++++++--
 man/man3type/iovec.3type     |  3 ++-
 man/man3type/lconv.3type     | 16 ++++++++++++++++
 man/man3type/mbstate_t.3type |  1 +
 man/man3type/ptrdiff_t.3type |  4 +++-
 man/man3type/size_t.3type    |  5 +++--
 man/man3type/time_t.3type    | 10 +++++++---
 man/man3type/timeval.3type   |  1 +
 man/man3type/va_list.3type   |  4 +++-
 man/man3type/void.3type      |  3 ++-
 man/man3type/wchar_t.3type   | 10 ++++++++++
 man/man3type/wint_t.3type    | 16 +++++++++++++++-
 14 files changed, 82 insertions(+), 13 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  a6650fa27290 man/man3type/div_t.3type: HISTORY: Update first SUS appearance of [l]div_t(3type)
 -:  ------------ >  2:  963da2474e6d man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of id_t(3type)
 -:  ------------ >  3:  3a8217dd1508 man/man3type/intptr_t.3type: HISTORY: Split types and macros
 -:  ------------ >  4:  c587540f97c4 man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of [u]intptr_t(3type)
 -:  ------------ >  5:  455e106a5e0d man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of [U]INTPTR_MAX and INTPTR_MIN
 -:  ------------ >  6:  26e1b48d4721 man/man3type/intptr_t.3type: HISTORY: [U]INTPTR_WIDTH is not in POSIX.
 -:  ------------ >  7:  c5e354f0878c man/man3type/intptr_t.3type: DESCRIPTION: ffix
 -:  ------------ >  8:  0cf31543f6d2 man/man3type/iovec.3type: HISTORY: Update first POSIX appearance of iovec(3type)
 -:  ------------ >  9:  fb168b7dee6d man/man3type/lconv.3type: HISTORY: Split lconv(3type) and int_[np]_{cs_precedes,sep_by_space,sign_posn}
 -:  ------------ > 10:  ca58744440b0 man/man3type/lconv.3type: HISTORY: Update first SUS appearance of lconv(3type)
 -:  ------------ > 11:  b4bba25be7df man/man3type/mbstate_t.3type: HISTORY: Update first SUS appearance of mbstate_t(3type)
 -:  ------------ > 12:  741cd602cffb man/man3type/ptrdiff_t.3type: HISTORY: Update first SUS appearance of ptrdiff_t(3type)
 -:  ------------ > 13:  3cf622ba3c3c man/man3type/size_t.3type: HISTORY: Update first POSIX appearance of [s]size_t(3type)
 -:  ------------ > 14:  d1a047ff7ec8 man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of time_t(3type)
 -:  ------------ > 15:  7f54dbc4481d man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of suseconds_t(3type)
 -:  ------------ > 16:  d8cf35e1cf3e man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of useconds_t(3type)
 -:  ------------ > 17:  47c6b50cf1a1 man/man3type/timeval.3type: HISTORY: Update first SUS appearance of timeval(3type)
 -:  ------------ > 18:  9a9b76c452fe man/man3type/va_list.3type: HISTORY: Update first SUS appearance of va_list(3type)
 -:  ------------ > 19:  efe8112034e9 man/man3type/void.3type: HISTORY: Update first POSIX appearance of void(3type)
 -:  ------------ > 20:  87a39e047c0e man/man3type/wchar_t.3type: HISTORY: Split wchar_t(3type) and WCHAR_M{AX,IN}
 -:  ------------ > 21:  a7d237cd5287 man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of wchar_t(3type)
 -:  ------------ > 22:  fb806a50acd6 man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of WCHAR_M{AX,IN}
 -:  ------------ > 23:  730e0c713039 man/man3type/wint_t.3type: HISTORY: Split wint_t(3type) and WEOF from WINT_M{AX,IN}
 -:  ------------ > 24:  a9ac764ac283 man/man3type/wint_t.3type: HISTORY: Update first SUS appearance of wint_t(3type) and WEOF
 -:  ------------ > 25:  694ea5baaddc man/man3type/wint_t.3type: DESCRIPTION: ffix
-- 
2.47.3


