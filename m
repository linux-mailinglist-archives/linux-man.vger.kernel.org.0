Return-Path: <linux-man+bounces-1474-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CA2931CBE
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 23:47:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40FBB1C214D0
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 21:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A69B73462;
	Mon, 15 Jul 2024 21:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JPbTB09W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474FC4C7C
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 21:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721080053; cv=none; b=T/fFJuyNvRnSa+9uCAfm9Yxe0Jk/R/QNn91tbfRzX6xEqYv+rRdBQtL63O19mJrwN408HDzFBsc6BuS7FNVph92E1HCCzJ6yPUgDjLHqA6TP3K0DDSoYJI6Tt7c7D4ToiUoo9cmPifDVinomGN1wB7pub4y+K75eoNJBhhT0yz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721080053; c=relaxed/simple;
	bh=iY3RvstdDb9yiBWww815uc7jWTg3HmnI6EC3kb+jI6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QcfQ/PNWorge0+P8MnQujB6BT2vgt8UoKZalg/IcsOto8izWMIz0HB1d021AVLrpdnsVOE+kF45j+qyT57HoErqKjIbkSx5lwyUKcfZrB1747wRfwpqMFS4L2lx/X/LoUbSQrbSRydlu78DzSIXj9RAGxIpLZGkaXe6akmvBNR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JPbTB09W; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4266fcb311cso33407655e9.1
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 14:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721080050; x=1721684850; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueNtk7yIMpm4xskUhc950CaEsDt+uD8n6RAFaRYMsZc=;
        b=JPbTB09WsQgb+trR8aVw48cAMMD0RAq5w4D+9Khbcq/NNUmDiqAbXUXvwtVy2sJgI4
         DQ7IMzmQmXJPsSu8yfUzqZBbH7GVlwhaLjtXS8ztgjQOEZrwLBQaHZLeLDGr5zuK2Xsa
         oxS8nS+Hd100NqQ40c0PdhHDYN2lNtbN1dElIYyq/N5COLV2NVzI7XAWw+wTZjiumOHa
         I08xXtAOf8vX4hKlbC+GMC3Rit5UEsWXKlL0R6tEbFfohnjN8wAQ2SsA3Ifb2fwxR0Q4
         D9Vsj+f4iH9t3upqtG92LAL2nmKM9ebNAhZ5At5j+Bp+QbkSrfLeQvk/P7z+DDkZllrm
         iThw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721080050; x=1721684850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueNtk7yIMpm4xskUhc950CaEsDt+uD8n6RAFaRYMsZc=;
        b=iQScFkZz4lro7TPR3WKp1D+0p7SNDRwpJ7bcU/1CMPVXd4qCbmMAVWHGDA563LloYF
         JMAPMVAIzrpbaCd1iNUX/lYnR8cCteREianq/mP28M9BLT8OUnNktCIIBOVsMM9IbChu
         7UjKnWW/iLJ0oSow/OWIIvnB4G2UB4QJKm0mHOIrZ4Kk6fxMd7iumf1vqk+jSD7Qh/pF
         ciMq1fR4fPrZTR7inEkA/VDNVB/omkLqw1NtPYWw9G8Vtz+ixlooCp9iIeZ2bHcMVV0h
         /vN66/rOT4GUbqGAUABsHbf6Q3+Voob0xxP4rGrbT0UTjDLnL6Vs0TJPJUJjLIWJ24jI
         C9FA==
X-Gm-Message-State: AOJu0YxE/Em9GXzsT0ZS/dWWQjomroBl70/SUKzzECF0ZmnXP14soX54
	KLw8atvl6kJb0CSd7be73oN5OwvyHpKLxppSjWxgSynBz4bcFReBruPuUsZzGWPULJ4brA6ntEl
	EulLvwWcC5FJTGydFqRrGU+J8MqE=
X-Google-Smtp-Source: AGHT+IEpBkNHxZXmlIfDZk2oT0kQfJAeypNmgCVGz88FFYbeDg/YB8vSz9Brqx/stYEX/n7vMOr5UUp4kyYkXFa2kkM=
X-Received: by 2002:adf:e448:0:b0:367:40b9:e9e6 with SMTP id
 ffacd0b85a97d-368260a34fdmr90911f8f.21.1721080050397; Mon, 15 Jul 2024
 14:47:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
 <hrbz4sgmavikjl2lb3hmsztmyfmwo3rwzqbfuzfgkrpeuq34ds@wjluxxazndcv>
In-Reply-To: <hrbz4sgmavikjl2lb3hmsztmyfmwo3rwzqbfuzfgkrpeuq34ds@wjluxxazndcv>
From: Keith Thompson <Keith.S.Thompson@gmail.com>
Date: Mon, 15 Jul 2024 14:47:19 -0700
Message-ID: <CAAHpriMNx5QnxaOGF+O0+4909jwvhFOdyA3dm6zSOH_23V0W-g@mail.gmail.com>
Subject: Re: Ambiguity in memccpy() description, with patch
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Keith Thompson <Keith.S.Thompson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2024 at 2:29=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Keith!
>
> On Mon, Jul 15, 2024 at 02:14:23PM GMT, Keith Thompson wrote:
> > The current description in the memccpy.3 man page:
> >
> >        The memccpy() function copies no more than n bytes from memory
> > area src to memory area dest, stopping when the character c is found.
> >
> >        If the memory areas overlap, the results are undefined.
> >
> > doesn't clearly say whether the final character c is copied or not. (It=
 is.)
>
> Agree.  It is implied by the RETURN VALUE section, but the description
> didn't say it (and the RETURN VALUE only implied it).
>
> > This patch copies the description from POSIX
> > https://pubs.opengroup.org/onlinepubs/9699919799/functions/memccpy.html
> > with the parameter names and added paragraph break retained from the
> > current version. The updated description is:
> >
> >        The memccpy() function copies bytes from memory area src into
> > dest, stopping after the first occurrence of byte c (converted to an
> > unsigned char)
>
> I'd remove the parenthesis.  That conversion is of course, no?  For the
> standard, it makes sense to be pedantic, but for a user, I doubt the
> value of that statement.

My personal preference is for the man page to be pedantic, but I'm
fine either way.

> Especially with this function.  My personal recommendation, after having
> researched so much about strings these last years, is that this function
> is useless (unless you're restricted to ISO C, and even then, it is,
> because you can write better functions as wrappers to ISO C functions).

I've never used memccpy() myself.  I suggest that the perceived
usefulness of a standardized function is not particularly relevant
to whether it should be documented.

> May I ask if you have any specific need for string handling?  I'm
> developing a string library, libs, and I'm interested in feedback of
> possible users (for now, the targeted user is shadow utils).

I became aware of this via this article:
https://nrk.neocities.org/articles/not-a-fan-of-strlcpy
linked from Hacker News:
https://news.ycombinator.com/item?id=3D40967069

I read the man page to learn about memccpy() and noticed the ambiguity,
then found that the POSIX description seems better.  My interest is
improving the man page, not fixing a problem that affects me..

[...]
> > +.BR memccpy()
>
> Missing a space here before the ().

Oops.

[...]

> > +bytes are copied, whichever
> > +comes first.
>
> Please break after the comma.

I can produce a new patch if you like, or you can modify it as you
wish before applying it.  Do you want me to produce a new patch?

