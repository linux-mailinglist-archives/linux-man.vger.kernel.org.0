Return-Path: <linux-man+bounces-2781-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5ABA94557
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 21:54:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43D403BEB26
	for <lists+linux-man@lfdr.de>; Sat, 19 Apr 2025 19:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348F61E2853;
	Sat, 19 Apr 2025 19:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KxthK5z9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6448014AD2D
	for <linux-man@vger.kernel.org>; Sat, 19 Apr 2025 19:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745092474; cv=none; b=pfZ3ST6ccBUmsdXUKtdPgvhl+rEnmgfiejMwC+XdqDvDiuBX4/mNRejSBKg2MPrjxtVyk0oGGFXDYiXCTv08kzNn0TCR5WGe7YV4qvT+EgvyEWfpCYNIwcUBvho9ynseLG9c4r6XLMcSOTdXINophFlJww6aYlybQZ6E5A70ytk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745092474; c=relaxed/simple;
	bh=B0QJnla8LqudpFX+4urQujsa0AYHW3H6v3zMqsLlLpg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aRY/+SyXAYj+tlEgS6IkBQjs4DiLPCoFAnth5nZHwDOSqRFWBSrmeIkK0oAi22DbYFxouTKcMJ1yXp8/gCWK0cWHawPJzh3jMBEDt5Fol24A54LMMK1ccxZsZEDAumDIUA0REhsAwwFSUdt8+phvwBCIx0qb8pXPfS14PlxfrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KxthK5z9; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e7297da3ef2so1337616276.0
        for <linux-man@vger.kernel.org>; Sat, 19 Apr 2025 12:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745092471; x=1745697271; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aG7bbhVXGLkRS0vpsFqikB+180Jt0U68KGKYN6KNpyw=;
        b=KxthK5z9crdOPejUwPJH0E64sDBwV8BdfiCmxSugIhVhbtYppN7zv3rOeqGxU9Q15E
         85h53gMP8SzS5dBMAHJ7kFHzE/N0ELm2dbQ3nYbAsEIxmkVIBIQ6W6QBbJPuu6e6dHTg
         Y5QMcqIdK2OA1Ne5qAaoES/UF1V63050zkOazSUJX2fmiWoR4MNm+JbMtRCZ5AOod6wu
         /AFloviMw5HANp2r1oGNye2oTwugTCGt1K1wugn3wGQ18mMzv6ufIGTnqQMg4QmepdMP
         7BJEboUplnKT5rADaFwx9xwneCriB/JXcTtMbpIwt0OYfW5FuRYP/SL82w5oDGp6n1Rh
         e6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745092471; x=1745697271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aG7bbhVXGLkRS0vpsFqikB+180Jt0U68KGKYN6KNpyw=;
        b=XBWMSfiB6IIehrZBWevlubVTBHX1WPz4r1g9/aBMM1nJQbbOFEddWr1LCqRky/GWJL
         ZWApH0ueIgtP3f8xokop7VzFxy1xQd1yYfVgdXezFzNGDAKY3yAc3LWoW7LLrXOxCmof
         nsd6rGb8rnDmBFrIvZV5IWOAhtI3sBRAQz+hY5pU+KZynT5AZQWTwVG7suj0NIU0eBw+
         kld1cNhJLUvab+3WNF1FocH2VckOvVqraUmWiOTUidPLsesNCAGRCed8auovporqqSco
         bfa7lkWvILih2c/h1W8PGPx2mT4hj1rUAy7E/f05v4gsx2JAM24dYD8V05dD/91PM//p
         +ltg==
X-Gm-Message-State: AOJu0Yz8xW+vG7cqSI7EK2pHbPsnAezMeueSjHqpR2e87cOb1MEnv4Yi
	+K2DXNL+FdnzxnpJjIfMSmqoq2GyxzXlLVUNEBWlTzhC9a2NDsHCiZIEao9l7HmRiPqjVhQ2m/L
	kqfoLaqXsOa1ltNdzf75MB0bFhfo=
X-Gm-Gg: ASbGncuOsxiQvefVy02szFjtpykbv/4kOhIbBtU33domVFpbhnqBYcykI3Za2g1761G
	AvwJ60mGlJuoSirrs8NIOzOMI8o/sK0PHnpmrNYSLwO/axrj0Wqg+uYvw4ikupypEf67Xte1PyF
	vKNg4uxWOSPnItHB3ezR7dzozx
X-Google-Smtp-Source: AGHT+IHHmU3vuTbjqguQukVHF6ndaEdj1RGXtI3dZvWjkl2pKROntTE4jamwhpc3TxTUBgou2MvHcKoKpzad6kHdS1U=
X-Received: by 2002:a05:6902:2006:b0:e72:8e65:5513 with SMTP id
 3f1490d57ef6-e7297e101f2mr10898229276.28.1745092471225; Sat, 19 Apr 2025
 12:54:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
 <06febfb3-e2e2-4363-bc34-83a07692144f@redhat.com>
In-Reply-To: <06febfb3-e2e2-4363-bc34-83a07692144f@redhat.com>
From: hoodit dev <devhoodit@gmail.com>
Date: Sun, 20 Apr 2025 04:54:20 +0900
X-Gm-Features: ATxdqUGpt6n7Ribi9MUoJm6s5FW6iOOM-dvey9pPo82ie1Y4Y0CHoeT1EXrWKP8
Message-ID: <CAFvyz32q1Uc4t5RjWWOMf3NiNWsyYjXeZ6xqdd8Tj8P-z6XBzQ@mail.gmail.com>
Subject: Cc: clone(2) man page CLONE_NEWPID and CLONE_PARENT can be specified
 at the same time, also CLONE_NEWUSER and CLONE_PARENT
To: "Carlos O'Donell" <carlos@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I missed cc=E2=80=99ing earlier. Here=E2=80=99s a summary of what=E2=80=99s=
 been discussed.


From: hoodit dev
To: Carlos O'Donell

Thanks for your explanation, I learn some insight

I understand this reply that CLONE_PARENT and CLONE_NEWUSER can be
used together but I get little confusion about this

> >Similarly, in CLONE_NEWUSER, it says that "This flag can't be
> >specified in conjunction with CLONE_THREAD or CLONE_PARENT." but it
> >works on my test code with CLONE_PARENT
> >Also, in ERROR section only mentioned when CLONE_NEWUSER used with CLONE=
_THREAD

>Just because it works, which might be a bug, doesn't mean that we should
>document that it works.

These 2 lines confused me. I mean, the description section and the
error section seem to have different content, and I tested it.


My statement
CLONE_NEWPID + CLONE_PARENT          ok
CLONE_NEWPID + CLONE_THREAD         no
CLONE_NEWUSER + CLONE_PARENT      ok
CLONE_NEWUSER + CLONE_THREAD     no


--------

From: Carlos O'Donell
To: hoodit dev

On 4/15/25 9:27 AM, hoodit dev wrote:
> My statement
> CLONE_NEWPID + CLONE_PARENT          ok
> CLONE_NEWPID + CLONE_THREAD         no
> CLONE_NEWUSER + CLONE_PARENT      ok
> CLONE_NEWUSER + CLONE_THREAD     no

Thank you.

I see what you were trying to describe.

I agree that the permutations you descirbe as "OK" make sense.

I also agree that CLONE_NEWUSER should be possible to use with CLONE_PARENT
because it doesn't violate any constraints, it simply declares the current
callers parent as the parent of the newly created task.

I agree that the man page for clone.2 should get changed to either explain
why CLONE_NEWUSER + CLONE_PARENT can't be used, or remove the restriction.

--=20
Cheers,
Carlos.


--------

From: hoodit dev
To: Carlos O'Donell

Thank you for your help
I was quite confused because this was my first time in this situation,
but the kind explanation helped me a lot.

I will check man page and I'm gonna trying to patch it
The revision direction is same as I mentioned

> CLONE_NEWPID + CLONE_PARENT          ok
> CLONE_NEWPID + CLONE_THREAD         no
> CLONE_NEWUSER + CLONE_PARENT      ok
> CLONE_NEWUSER + CLONE_THREAD     no

Also,

> I agree that the man page for clone.2 should get changed to either explai=
n
> why CLONE_NEWUSER + CLONE_PARENT can't be used, or remove the restriction=
.

I will remove restriction CLONE_NEWUSER + CLONE_PARENT (I still have
confusion about why you mention "either explain why CLONE_NEWUSER +
CLONE_PARENT can't be used, or remove the restriction.", is it ok to
just remove restriction only? because CLONE_NEWUSER + CLONE_PARENT can
be used so I can't explain why CLONE_NEWUSER + CLONE_PARENT can't be
used)


--------

From: Carlos O'Donell
To: hoodit dev

On 4/15/25 10:41 AM, hoodit dev wrote:
>> I agree that the man page for clone.2 should get changed to either expla=
in
>> why CLONE_NEWUSER + CLONE_PARENT can't be used, or remove the restrictio=
n.
>
> I will remove restriction CLONE_NEWUSER + CLONE_PARENT (I still have
> confusion about why you mention "either explain why CLONE_NEWUSER +
> CLONE_PARENT can't be used, or remove the restriction.", is it ok to
> just remove restriction only? because CLONE_NEWUSER + CLONE_PARENT can
> be used so I can't explain why CLONE_NEWUSER + CLONE_PARENT can't be
> used)

Removing the restriction is an acceptable path forward in my opinion
and it makes sense from first principles.

The question here is if there are any CLONE_NEWUSER interactions with
CLONE_PARENT that we are unaware of that need to be accounted for.

To discover those we would need to ask upstream and gather broader
consensus.


--------

From: hoodit dev
To: Carlos O'Donell

Thank you for your precise content arrangement.

As far as I checked, it has nothing to do with the flag part in the
code, but it is not accurate. Therefore, I think this part needs to be
checked.

> To discover those we would need to ask upstream and gather broader
> consensus.

How should I handle this?

Also, I wasn't referring to these email replies in Alejandro Colomar
and linux-man@vger.kernel.org , how can I solve this?

