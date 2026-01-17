Return-Path: <linux-man+bounces-4821-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F643D3915B
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 23:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E20593016378
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 22:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A6302E2286;
	Sat, 17 Jan 2026 22:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AdPuwQgd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534DF238C1B
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768688635; cv=none; b=ZYiLYr4kWOtV3ReeT6JqK8a+nvpHzQZm3SExP2IK7w5tyByJNBSlMTA3Zy7HFGNQRdUMhb7mrC9JLHMLX6Pvx6jqg9Y9sxDve/e8pjC6REWx8gx5eI79CUale6X3saUaNEeWZnDC/ZbnLTbbOcwe8iSxUAxD9vNmWY8d5zCNLr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768688635; c=relaxed/simple;
	bh=jjlQWvTyY1kNrojD41ffXghG24XRpgGn1KdEtoLLVm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LTzhFyUYRfZVbpD0pCZHXu9dWQOdPaOTnx6sQUUCcuNi7fIEdiwqzNz6FV7n0hDxgtjRDwGWiW4JHgZJGYqs11hwh+cEVHvAklpZboXGVDzx4UiKQ3f7JQ5Sp8wm4jm63nMjK9faaEeCGTMuPI+34rFd1vSoAkuBmnQeJUtybCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AdPuwQgd; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59b8466b4a8so2654777e87.1
        for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 14:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768688631; x=1769293431; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnPLSvtpG8Yb/gWoumDuMRx5Xi1cOJvkEaPF4c4+dV8=;
        b=AdPuwQgdo21qxwDo0KP5jXKEkKHkxbVcKMj1VPTwQISHoXyffvn61AusVg3XX3EP8n
         Kp0TgRD/5+3Wk+fpkrpyaUzNDUNlNgWoyxUl6GarYYZB5OwmjYZL57jyKWJRquTXmyA6
         XNFC9aLdxMp4Eh6PVNd93j/HChCHcioe1oxX8Lbv7zSDdl80JZGC1Jq3fnwRyJ30iiaa
         v8tQF5V/WLxB5AXm9FjEE9MFfzRjSZCDYbHF+R1XFI1KYOfinC7ZQTjNy8Y6HuD06oA3
         q2PygUw6F23YjbKUlHt+gAi1nv80sCmgQocsMzbdDKJQjog4F4EcAxb3utvAsA18FgYF
         IGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768688631; x=1769293431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nnPLSvtpG8Yb/gWoumDuMRx5Xi1cOJvkEaPF4c4+dV8=;
        b=TuoVedEepzZJnambtJcYoMagNk3NJCQG2odJhaJMcYPbEk1/0FVPHoN2PsICSkw4Sr
         Pzevs59hoqzPeHyWooAyPQ2Su84TaRYMtjXyWJz7DiomQDTAvZYAsTdI/wm0T5P8o4py
         fMMezPWJdzJzSvUZiG7S1bMF2IkVDpd8Z/gnipzajAjvZRnRIwyZm2/dUrZfELhf7v1w
         rq7KS5ffyvwsSi6K6amQHrcN1b1CyLeHiH6DWqBTXJoamrR+FgiaTj7jWc7ul151xEoe
         1VgfsQ6XDU1ZPI7HtXwh4HQTm9wEzxWYSVDisZCRtgd3YXm6KdXftWnSAJHRLXgF8oyR
         pPjA==
X-Forwarded-Encrypted: i=1; AJvYcCVGCUNsneqxp8eq7YJMXU59VMdnm9pwdPbIj77pyTdg+IeHKBudkVPw7rKQWjjkZb4Df/5G4oUkIVI=@vger.kernel.org
X-Gm-Message-State: AOJu0YzrHuBylJJWilMCesFV/LX71GuQH9KDqLU4tImw4pH0Cxaa6erL
	BUrSXfAYvhBrr+KKgRV1PmNoBUY4ELtO43hR4e9OV8i2Z0+kvZXUlL/iWwIwxbSWECJ6Cq5yWhl
	v0ihPpSk2eILlHx1Dfh1mscOieYMiGTI=
X-Gm-Gg: AY/fxX5pywbZywm25OYo0Qejglm7By0way7FIm85Epa+DPxAnpvdZMpuQVXpF7Vidap
	KZ+Y3RxdzyTV1ERjmVw2Gd09Jyilng8p3XoJioFAcnxFJexiT81IEAvGHGk7T7abqlLmMw4FvnS
	rKEX+J3cu+K9HO2ZiJLofP2i7mH3UDwgghJgCdOeqzS4F85wdg9KyhbCVBV+lq+/LbTRC9KyHDk
	qjjKxctgNXWBwDjcAE7GSIDWCi54qoU82B3C33FOoUlPGEWGuTitKTODpzScl8Qdnp2LrrPWd2J
	ikTofCwnjXFqyN75zHkwDaons47ggT96tuiA
X-Received: by 2002:a05:6512:3b89:b0:598:faf1:3c95 with SMTP id
 2adb3069b0e04-59baffd3394mr2236038e87.36.1768688631064; Sat, 17 Jan 2026
 14:23:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714222434.4D926356820@www.open-std.org> <aWv1Z8v3E3DAoBzW@devuan>
In-Reply-To: <aWv1Z8v3E3DAoBzW@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sat, 17 Jan 2026 14:23:39 -0800
X-Gm-Features: AZwV_QiECcoeR8DN2jhTm8vqw5mWLtnNyBoRw34ETbF6YfXih9YvLM51jSE7X9Y
Message-ID: <CAMdZqKG+X=aobSocMuws0Hi0yYwLKYpckYpTrrG05MDQ3bdU4A@mail.gmail.com>
Subject: Re: Feedback for n3704 - Clean up frexp, ldexp, and scalbn prototypes
To: Alejandro Colomar <une+c@alejandro-colomar.es>
Cc: C Committee <sc22wg14@open-std.org>, Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	alx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"e" seems like a particularly poor choice, given that it is used in
documentation with the well-established meaning of the base of the
natural logarithm (e.g., in exp(3)).


 - Mark


Alejandro Colomar wrote:
>
> Hi!
>
>
> I see n3704 attempts to fix the issues reported by Vincent; that's good.
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3704.pdf>
>
> However, the paper renames the pointer to 'p', which doesn't seem to
> have good mnemonics nor relate to what it is.  'p' seems to just be
> for 'pointer'?  We can and should do better.
>
> I think alx-0051 was better, in using a parameter name that relates to
> what the parameter means: 'e' for exponent.  Names matter.
>
> I think we should discuss the name in the meeting.  Also, I think n3704
> should have included a rationaly for the name; especially, when a better
> name has been proposed, and for some reason the proposal decided to use
> a different one; that should certainly have been discussed.
>
> I think we can discuss the name in meeting without having to officially
> present alx-0051 with an N-document number.  Please let me know if I
> should formally present alx-0051 for the next meeting.
>
>
> Have a lovely night!
> Alex
>
> On Tue, Jul 15, 2025 at 12:24:29AM +0200, Alejandro Colomar wrote:
> > Hi!
> >
> > Vincent reported this issue to me in the Linux man-pages mailing list
> > (as the manual pages also had the same issue, so he reported the issue
> > in both the manual pages and the ISO C standard).  I think this can be
> > fixed editorially without going through an official N-document.  Please
> > find the proposal below.
> >
> >
> > Have a lovely night!
> > Alex
> >
> > ---
> > Name
> >       alx-0051r0 - don't misuse reserved identifier 'exp'
> >
> > Category
> >       Editorial.
> >
> > Author
> >       Reported-by: Vincent Lefevre <vincent@vinc17.net>
> >       Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >
> > History
> >       <https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051.git/>
> >
> >       r0 (2025-07-15):
> >       -  Initial draft.
> >
> > Rationale
> >       Since 'exp' is a library function, it is a reserved identifier,
> >       which should not be used as a variable / parameter name.
> >
> >       7.1.3p1 says
> >
> >               All potentially reserved identifiers (...) that are
> >               provided by an implementation with an external
> >               definition are reserved for any use.
> >
> > Proposed wording
> >       Based on N3550.
> >
> >     7.17.7.5  The atomic_compare_exchange generic functions
> >       @@ Description, p7 EXAMPLE
> >       -       exp =3D atomic_load(&cur);
> >       +       e =3D atomic_load(&cur);
> >               do {
> >       -               des =3D function(exp);
> >       +               des =3D function(e);
> >       -       } while (!atomic_compare_exchange_weak(&cur, &exp, des));
> >       +       } while (!atomic_compare_exchange_weak(&cur, &e, des));
> >
> >     B.11  Mathematics <math.h>
> >       @@
> >       ...
> >       -_FloatN frexpfN(_FloatN value, int *exp);
> >       -_FloatNx frexpfNx(_FloatNx value, int *exp);
> >       -_DecimalN frexpdN(_DecimalN value, int *exp);
> >       -_DecimalNx frexpdNx(_DecimalNx value, int *exp);
> >       +_FloatN frexpfN(_FloatN value, int *e);
> >       +_FloatNx frexpfNx(_FloatNx value, int *e);
> >       +_DecimalN frexpdN(_DecimalN value, int *e);
> >       +_DecimalNx frexpdNx(_DecimalNx value, int *e);
> >       ...
> >
> >       @@
> >       ...
> >       -_FloatN ldexpfN(_FloatN value, int *exp);
> >       -_FloatNx ldexpfNx(_FloatNx value, int *exp);
> >       -_DecimalN ldexpdN(_DecimalN value, int *exp);
> >       -_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
> >       +_FloatN ldexpfN(_FloatN value, int *e);
> >       +_FloatNx ldexpfNx(_FloatNx value, int *e);
> >       +_DecimalN ldexpdN(_DecimalN value, int *e);
> >       +_DecimalNx ldexpdNx(_DecimalNx value, int *e);
> >       ...
> >
> >       @@
> >       ...
> >       -_FloatN scalbnfN(_FloatN value, int *exp);
> >       -_FloatNx scalbnfNx(_FloatNx value, int *exp);
> >       -_DecimalN scalbndN(_DecimalN value, int *exp);
> >       -_DecimalNx scalbndNx(_DecimalNx value, int *exp);
> >       +_FloatN scalbnfN(_FloatN value, int *e);
> >       +_FloatNx scalbnfNx(_FloatNx value, int *e);
> >       +_DecimalN scalbndN(_DecimalN value, int *e);
> >       +_DecimalNx scalbndNx(_DecimalNx value, int *e);
> >       -_FloatN scalblnfN(_FloatN value, int *exp);
> >       -_FloatNx scalblnfNx(_FloatNx value, int *exp);
> >       -_DecimalN scalblndN(_DecimalN value, int *exp);
> >       -_DecimalNx scalblndNx(_DecimalNx value, int *exp);
> >       +_FloatN scalblnfN(_FloatN value, int *e);
> >       +_FloatNx scalblnfNx(_FloatNx value, int *e);
> >       +_DecimalN scalblndN(_DecimalN value, int *e);
> >       +_DecimalNx scalblndNx(_DecimalNx value, int *e);
> >       ...
> >
> >     F.10.4.9  The ldexp functions
> >       @@ p1
> >        On a binary system,
> >       -ldexp(x, exp)
> >       +ldexp(x, e)
> >        is equivalent to
> >       -scalbn(x, exp).
> >       +scalbn(x, e).
> >
> >       ## And remove bold from 'exp' in the paragraph above.  This is
> >       ## probably present due to exp being considered as a reserved
> >       ## identifier by some script, which is part of the consequences
> >       ## of undefined behavior: UB might format your standard!  :)
> >
> >     H.11.3  Functions
> >       @@ 7.12.7  Exponential and logarithmic functions
> >       ## Apply same changes as in B.11 (see above).
> >
> >       @@ F.10.14  Payload functions, p2
> >       ...
> >        the exponent is an integral power of 2 and,
> >        when applicable,
> >       -value equals x =C3=97 2*exp.
> >       +value equals x =C3=97 2*e.
> >
> > --
> > <https://www.alejandro-colomar.es/>
>
>
>
> --
> <https://www.alejandro-colomar.es>

