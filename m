Return-Path: <linux-man+bounces-2516-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6CCA46C4A
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 757303ACF56
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 20:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676342745E;
	Wed, 26 Feb 2025 20:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0QgPtlq+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E7D2528EF
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 20:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740601469; cv=none; b=BSrnfre5oJXvtjENwYFMkpJkQzWB5MNPyonIZnsHONGDdwqAKVidrIYqd8pX7U2Rf/+S3dN/d6Sn7aSRvLtC2D/QPNW5zFpoFY2abN1hwhs7x2VLMox9OJKoq0FXgL0+rFP3j8pdhBjtut5cOVGt3i9WGEPVovVCdVJV+6xJAjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740601469; c=relaxed/simple;
	bh=iFWhRPyJmvvsiybpf94Dpp37+uigPtTulNHGuHIzrH4=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=RuYNKQ22UgIAeZo8qtFdXCWalfN3M02h1gDq8680AZJA+kdaXTrvU6CjcdY3eBGTNF2AkqcKJKdWYnLzr95ac9WfcQa88OXpPgly0mxNip+NJz1U1jqWuMZaiqN/0DvKV71jtOldDR28CzFN2s1qcrOXSP6Oxaijh3FqBIOv484=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=0QgPtlq+; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5e058037b27so139620a12.1
        for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 12:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740601466; x=1741206266; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5HjEmf6zI3uVsACPtj0IDjnQzDbyRsoOFTng7ArnK4=;
        b=0QgPtlq+1UdG1JnAIh9hqFwBlpM2kCzoX+08VRt1+6CNUxV/F/wWJOj3b2Ufh5mQAz
         L5vTiFlOuMVvRRs8iF3hRRITPemKT/AB1reBKFezUIAL8jM3NzwmP3i6LhRSLO1+MKbB
         64nervXaaYp6eJL+JYncsi65VMzU7bNzhDem1gOolkKaQD9SzoDvrOgO+9Xuu3FSRILY
         c+NbWIjUBe2K9WCGB8P4aUpODHq1l0VIHCHdz0+wxzydjdSieezEAYp6v51HClyTXoTs
         2NrHi8+a8/FSChtNFCuiVBUdeIQtCIXGI2+vpik1+CnG93wZol07rAUt2CSmhoaHYzDG
         ASJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740601466; x=1741206266;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j5HjEmf6zI3uVsACPtj0IDjnQzDbyRsoOFTng7ArnK4=;
        b=qEUglb/8T/7HSyA+UzL5H0Bu+foj3fFroevmeaoEfROXCYgWexqaRyBOP05gyxnF+d
         BRK9W7fhDzoLwyclcHXKbkkcVf6t84LGsAjOj8MvgmJNpB2yCHah15dIfQVB6HgRF8Pt
         2wGgvASXV8bjCnbhzErhXBk8zYU04LTKYkn688PojRn1oj7oVkaD9gjtPwvr6jjs5jNt
         zIGXzfLBu3RMVHe9Civw27heBzmKkmi3PVK7ZQ1G9h/PzPOmrJz34lQKPg0HOUpWI7Lw
         CUfNt9IUGSimpedAX/NLDcV5FcKzYVGLauCZ/PgF61EAhYyLSphc+lFHCTM/MEGOdcxJ
         lC5w==
X-Forwarded-Encrypted: i=1; AJvYcCWgB7fZJV3/6PCmri9ZyBVW4E09Acji2mC+PG/6FFy2cBAf6oEJB3iLeyNYxfdgSffdh6gPzEUpdLk=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz374/AQce9uQBjiQQ/f3EJCE6IvA9P0M8LsuKQSC0crLSg/mOx
	kBfEsHVKsPbSHHNXgsVhfZfwnz8cChARCCw+k6KTehd+blOkCSU95NCr3mICIjcN85MADXZ0PJL
	t/w==
X-Google-Smtp-Source: AGHT+IFrxoll1MD7UHqls7EiRvzGp8NMB0IfiuwW4ozw145cHL5lQA37kDHTx8jx1EQOGS0Jj44sXGKknIY=
X-Received: from edben26.prod.google.com ([2002:a05:6402:529a:b0:5e0:40e5:1607])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:40ce:b0:5de:dc08:9cc5
 with SMTP id 4fb4d7f45d1cf-5e4a0d46bccmr6357700a12.7.1740601465988; Wed, 26
 Feb 2025 12:24:25 -0800 (PST)
Date: Wed, 26 Feb 2025 20:24:22 +0000
In-Reply-To: <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com> <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net> <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net> <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
Message-ID: <Z794dm_xmViQ_lFF@google.com>
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC scoping documentation
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-security-module@vger.kernel.org, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	Daniel Burgener <dburgener@linux.microsoft.com>, tools@kernel.org, linux-doc@vger.kernel.org, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

On Wed, Feb 12, 2025 at 04:06:06PM +0100, Alejandro Colomar wrote:
> So you could really use man9 for internal Landlock stuff.  Even if I
> think generated documentation isn't ideal, it's better than nothing.
> Being able to use man(1) for reading kernel documentation would still be
> a nice feature.
>=20
> And while I can't run all the linters that I run on hand-written docs on
> generated pages (because generated source necessarily triggers many
> false positives), I could still run some, which would trigger some
> accidents in the docs, and would also detect bugs in the software
> translating the docs from one language to another.
>=20
> So, I'd still recommend you considering man9.

This is different to the BPF helpers; Landlock's existing man pages documen=
t
user space APIs, and the largest part of the kernel-side .rst documentation=
 for
Landlock also covers only user space. Only a small part of the .rst
documentation is about kernel internals.

If I understood that correctly, section 9 is supposed to be document things=
 that
are relevant to kernel developers, right?  So it doesn't sound like the rig=
ht
place for the documentation that we have?

=E2=80=94G=C3=BCnther

