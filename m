Return-Path: <linux-man+bounces-4641-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC9BCF6F88
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C07D30204B6
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E532C11E4;
	Tue,  6 Jan 2026 07:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="af/dm9FE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DADE22127E
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683374; cv=none; b=eFy3Nv3HDHsNZ8DZ4xFK1YPpb2sM5a/fiVGPD16b5g2BIeoSOPs1l2a5LeWNxreDRoqnzu3sL8gzvaRelPLape/I8yP6SiOvHLAgWaA5RLWRVUOoFObDjYaIyJ4FHZNgwo9QxmOTulQ+Axs6XGSulcSeBo2ty7Vt6Gtw6vGUOow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683374; c=relaxed/simple;
	bh=1GITc+yZR1/hYlCx3AQhYmOecAbDFyULF6K1xgcD6pA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gPKRkz94eYTHhkzm3mBQ87gV/xxEh+8bkNu3iqlqyfBeTPnyKcaGnhDPlwqDiY+ienasa4Si5Og5AELlVye3de5r2BL35Es/THB/sedLqTvX4TwYp6jJWGiu4bBDbF0TMWPlP1yoFZxwUOiIVUHqrEawdsEwcU1t6CJI8o/mJkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=af/dm9FE; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7ade456b6abso636160b3a.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683372; x=1768288172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YKzBG4mNCMiFGjmHcvbMwOj4gB0j65mwB4PeYSa7xmQ=;
        b=af/dm9FEmpPn0huVpQ1RklJ91KD1y3BgYnFivsnPJFurrXXmbGXbCb9oNGddzSlpaX
         CwaLfDdzQ5n/7/HdPRxFSkB35VzEfBNgm/MLD2UV13QZ14App/m7LVqs1xp3N2EdS3q/
         1teQaPjHcrNxliVpcPNSILcSB7FNFY2Ou9u9eUtbFuVxhDPjgquQKXy09aELDyeEuPi6
         C1hHOruSsVeazPekc3zopje2/uLx3Cwyx9i4q0ThJBsGrUTxviNQlDYLijMyygMJ6gpi
         HKihz5h+1tDSREBbt69nKALIqE87bUibWKELRbn/7SPnsFtwcfZZWwE1CvhkgIMLQhTi
         kLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683372; x=1768288172;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YKzBG4mNCMiFGjmHcvbMwOj4gB0j65mwB4PeYSa7xmQ=;
        b=fIVnOq+Oa8l5E6u/cM6IBi95FNOYnVkrlua7WEitAdiqZpA9dWrjzI/RVJE6TOiewz
         EiTYGbOdiCZqxRrRfzFF7dg/o2+85zTrFHCB9F2Dkj8muUE1ChfKKdKNOqWWUD3PO6hY
         N97nGfM40KCImDpVjYNfHUUKA/D2iVp/YIjqjWkwb9Dnmw5uM6b1RyDb1lN8S8JbtUIy
         QnEexyNn4W7Cb5gXaGoQPbY4+11a09dZQIHuG75Fvn70tv/a6BgrjGVi8Yjj9YjQYL+z
         vif8TdhaT9mNMg3HMK84MIhO7vE13sbcOSIv32T1QhFW4Ha+0JCP3QGclWVl1H1s4TKn
         FZsg==
X-Forwarded-Encrypted: i=1; AJvYcCV5U33p970XxxMqdxla7LhV4IAvaeuT30ap2nnlBiyMRZDpmxnjtuoZW57yw3XNhJ7BSwEFEyzlGGQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YxOuD3Ow/Lf1CuIjxuTP3MlGj5Nnzw2yTsHpWnYiUpcFNIjaODo
	5lEJLInDUyq+iqEMAHNe9iT4ylFZRkKMu7cOlueeHwnMnRjMj24wv6TyrzxcSIBt
X-Gm-Gg: AY/fxX7rLVYHdmoEVrqzQcQ5NhCU7Z32yI6BUdMFVt0WrEaa/ZEtE+lhYonz4SvPkFt
	iILfaETvvC6fodZW6AdcaytU3Z1zrzxIVbwq/iXOcJ+7goPq/nm5hy6/9XYL0OBEO2kJ0zfYT2y
	jrMkUeok/T39XiXffxE4D3r+owIJbRNMaloaAr2eyIi367R+GYrk7BRfm1wyo+L60ytvTKIiGVd
	9dZJ0ESxggQuIvQRtz4gCg+M3xgG+D1pbEfw7UhtJg6jyyG/I1kNkQnsRTpwZ2jJvfeir6MZ5gY
	6pm/yy5LqD0Ii9jvEJ6w9JKu3dUH9CjTJIH95QrKvCEobiZu+SXE/C1inQ3wuFWaH6SMhoZVOGi
	OgwSk34kXAD77tt9H5cv2SXoNJsIKJgpDSMLaTe+RsdECsA5iay5lfpLgsTWK98ZUWHd23NbPEx
	kUEeuSgfwAmXUBCA3V5ZxIfP/B35djt8uuf5lL2/KWWhN6IMZfrBOgykZ0M54pftcZ9aUZcMdd2
	R/TH205k74l0Qqw
X-Google-Smtp-Source: AGHT+IGfglYttvZnwFM5TWlnqlC2i8bvDluuEWs5v/kYt1Jnpn0NB7FJ3EI+Wrjxs44q1evDYZznZA==
X-Received: by 2002:a05:6a00:278f:b0:7e8:4471:8c2 with SMTP id d2e1a72fcca58-818823ed57fmr1972886b3a.35.1767683371803;
        Mon, 05 Jan 2026 23:09:31 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:31 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Date: Tue,  6 Jan 2026 17:07:49 +1000
Message-ID: <cover.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello again!

My next few patch sets should update datatypes in the 3type section.
There are 48 patches total for this section, though I will be
partitioning them into three separate sets according to alphabetical
order.  This is primarily based on Linux's documentation recommending
patch sets of at most ~15 patches.[1]  But if this mailing list has
different preferences, let me know and I'll adjust accordingly.

This patch set regards types whose identifiers start with A-INTN (case
insensitive, of course).

Regarding the order of the listed standards in HISTORY sections, I've
seen man pages with the same set of standards listed in different
orders.  But I have found a general ordering that a good number of pages
adhere to.  That being:

SVrX, X.XBSD, SUSvX, POSIX.1-YYYY, POSIX.2, Linux X.X, glibc X.X[.X],
others (e.g. OpenBSD, Solaris, AIX).

I call this a 'general' ordering because very rarely (if ever) are all
seven standards/systems listed (excluding 'others').  But subsets of
them tend to follow their relative ordering above, at least from what
I've seen.  So for consistency, I tended to use this ordering when
adding/updating standards.  That is, listing SUS and POSIX.1 after SV
and BSD, and before Linux, glibc, and other systems.

I also followed a few more guidelines when editing these lists that may
be noteworthy:
- Since POSIX and SUS merged into the same document in POSIX.1-2001/
  SUSv3, only POSIX.1-2001 is listed for functions in these standards
  (or later), but with XSI appended if the function was part of the XSI
  extension (e.g. POSIX.1-2008 XSI).
- Since SUSv1 is aligned with POSIX.1-1990,[2] if a function's first
  POSIX appearance was in POSIX.1-1988 or POSIX.1-1990, then it's first
  appearance in SUSv1 is not also listed due to being implied by its
  POSIX appearance.
- Similarly, since SUSv2 is aligned with POSIX.1-1996,[3] the same is
  true for functions first appearing in POSIX.1-1996 and SUSv2.

So in general, SUS is listed if the function (or constant/type) appeared
in SUSv1 or SUSv2 before it appeared in POSIX.1.

[1] <https://www.kernel.org/doc/Documentation/process/submitting-patches.rst>
[2] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 1.6 "Relationship to Formal Standards", p. 10.
[3] CAE Specification, System Interfaces and Headers, Issue 5, Chapter
1.6 "Relationship to Formal Standards", p. 11.

Seth McDonald (15):
  man/man3type/aiocb.3type: HISTORY: Update first POSIX appearance of
    aiocb(3type)
  man/man3type/blk{cnt,size}_t.3type: HISTORY: Update first SUS
    appearance of blk{cnt,size}_t(3type)
  man/man3type/cc_t.3type: HISTORY: Update first POSIX appearance of
    types
  man/man3type/clockid_t.3type: HISTORY: Update first POSIX appearance
    of clockid_t(3type)
  man/man3type/clock_t.3type: HISTORY: Update first POSIX appearance of
    clock_t(3type)
  man/man3type/dev_t.3type: HISTORY: Update first POSIX appearance of
    dev_t(3type)
  man/man3type/div_t.3type: HISTORY: Split [l]div_t(3type) and
    {ll,imax}div_t(3type)
  man/man3type/div_t.3type: HISTORY: Update first SUS appearance of
    [l]div_t(3type)
  man/man3type/FILE.3type: HISTORY: Update first POSIX appearance of
    FILE(3type)
  man/man3type/id_t.3type: HISTORY: Split id_t(3type) from
    [pug]id_t(3type)
  man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
    [pug]id_t(3type)
  man/man3type/id_t.3type: HISTORY: Mention change in datatypes of
    [pug]id_t(3type)
  man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
    id_t(3type)
  man/man3type/intN_t.3type: HISTORY: Split types and macros
  man/man3type/intN_t.3type: HISTORY: Update first SUS appearance of
    [u]intN_t(3type)

 man/man3type/FILE.3type      |  3 ++-
 man/man3type/aiocb.3type     |  2 +-
 man/man3type/blkcnt_t.3type  |  1 +
 man/man3type/blksize_t.3type |  1 +
 man/man3type/cc_t.3type      |  2 +-
 man/man3type/clock_t.3type   |  3 ++-
 man/man3type/clockid_t.3type |  2 +-
 man/man3type/dev_t.3type     |  2 +-
 man/man3type/div_t.3type     | 11 +++++++++++
 man/man3type/id_t.3type      | 22 +++++++++++++++++++++-
 man/man3type/intN_t.3type    | 20 ++++++++++++++++++++
 11 files changed, 62 insertions(+), 7 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  9d2453196924 man/man3type/aiocb.3type: HISTORY: Update first POSIX appearance of aiocb(3type)
 -:  ------------ >  2:  3e3cdf605fad man/man3type/blk{cnt,size}_t.3type: HISTORY: Update first SUS appearance of blk{cnt,size}_t(3type)
 -:  ------------ >  3:  eb523868fce1 man/man3type/cc_t.3type: HISTORY: Update first POSIX appearance of types
 -:  ------------ >  4:  75786342c4cc man/man3type/clockid_t.3type: HISTORY: Update first POSIX appearance of clockid_t(3type)
 -:  ------------ >  5:  24395294f63b man/man3type/clock_t.3type: HISTORY: Update first POSIX appearance of clock_t(3type)
 -:  ------------ >  6:  2bb3f33e65b7 man/man3type/dev_t.3type: HISTORY: Update first POSIX appearance of dev_t(3type)
 -:  ------------ >  7:  417e53f6394a man/man3type/div_t.3type: HISTORY: Split [l]div_t(3type) and {ll,imax}div_t(3type)
 -:  ------------ >  8:  feb8d662b9fe man/man3type/div_t.3type: HISTORY: Update first SUS appearance of [l]div_t(3type)
 -:  ------------ >  9:  77b4c360910f man/man3type/FILE.3type: HISTORY: Update first POSIX appearance of FILE(3type)
 -:  ------------ > 10:  18896b1be985 man/man3type/id_t.3type: HISTORY: Split id_t(3type) from [pug]id_t(3type)
 -:  ------------ > 11:  d32b6148d2a9 man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of [pug]id_t(3type)
 -:  ------------ > 12:  00eec0f9aa43 man/man3type/id_t.3type: HISTORY: Mention change in datatypes of [pug]id_t(3type)
 -:  ------------ > 13:  e5992856df9c man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of id_t(3type)
 -:  ------------ > 14:  903b6a6dee42 man/man3type/intN_t.3type: HISTORY: Split types and macros
 -:  ------------ > 15:  43f013547fbe man/man3type/intN_t.3type: HISTORY: Update first SUS appearance of [u]intN_t(3type)
-- 
2.47.3


