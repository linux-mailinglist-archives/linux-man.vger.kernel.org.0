Return-Path: <linux-man+bounces-2820-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8429DA9E604
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 04:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76C277AAA6E
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 02:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A03FA78F4F;
	Mon, 28 Apr 2025 02:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3AEENpIY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C205684
	for <linux-man@vger.kernel.org>; Mon, 28 Apr 2025 02:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745805717; cv=none; b=mgz5Vu7rEmlpCDjWLfcw+/98OISIslcS7o5hE7H8IoAmgowKXoSpxFlglY+hEhJm8OLPsjLaR7DCVQR8tdKCe1z3CHfPl0+Ctc68vBK1Qy7xQ2wtcL4jjNmfYflWeP6jSgxUmIMiwsJHmKD2Qd7y7twjz9nNA9uD+y3jIsn81V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745805717; c=relaxed/simple;
	bh=XG5Z4cvXwI+23dzqk8Q8ugjIDc/6KQUVmurdE0xP1SU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aVqLuHUzhHqJaJ/LZAOuyQLH1cQMju8TuOrCaeMUVvTvitg0OQWB/hOWYPlnQvjp1JEXHyG5JVGxn74c8OlhJ5HhP5GWoYwHXwOj4KxhFzLnxlhMP1H836XGCZp33cSlMZ9VnKgfHeM7FLI0yDMTCjvcEQ70LLYbQN2CgAsZRdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3AEENpIY; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54d486d3535so4411e87.1
        for <linux-man@vger.kernel.org>; Sun, 27 Apr 2025 19:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745805713; x=1746410513; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wnq0f9g/YZxVTTE5dzCi6sdhq1hSm5Vl5HSWr+O4dzU=;
        b=3AEENpIY+gvmkkrY+TGYipA0GlS6wsLbAH/wBKxUh8f14SyGFa6Q+eD7mfBw9ZmqWK
         gFi22QwWYLPwIqmzdLOKRrya02iDRIFXGaG3w5tTi/TzKXn+/l7X5TWKpiDekIlOa1d1
         Hc0fJzSGWvuURLfDmoRNLfJBRO5gqAu5WTR2WB64MxqO3luA18fkp86u3Boa+rX2q2Oz
         O8MLrXkXF56e7b2sZUwgggK7QFbofAOFsgJB6qf1HGgz37aRxKnm8nvIrXG1REzQWcXX
         EgRz2EawcWt7gZeo8ntUGVkgEhXaKgIv74Ymjp7uQoN0q7p2EzFStZFS9ZUtCshzHbZt
         mqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745805713; x=1746410513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wnq0f9g/YZxVTTE5dzCi6sdhq1hSm5Vl5HSWr+O4dzU=;
        b=MNPHFArh5R7In5tpiUlypUvTO0xpY2BRTDyOZcdDaV1YgCLfFUst1QTyeSsy74D1P1
         Da8xUkrXPFPQgO5RSrhgv/8HRO8Om4Hfp/bwO2UjzCyHr7MT/bTo24ilTZg4EfCHSPHM
         VhTHgq0yRMwhKvK3s/vecjXA/1xTqHHyALYqyf/lSxvEtMB8X/5CrWs/JIEta7vcM1MR
         y+fMn81Y9M4JYpLD3CwNXgOSDQxiASXJ3LACJACOyhJkD1Kl7OaqPby1oI2+Umxc4wSp
         YjV3+qnV2a1YOzdanKEbFk0Sud+wlU4lS8cH/UBAaaR1lHFGCiZCMZkRn8kmcw7x2/Kr
         mzAg==
X-Gm-Message-State: AOJu0YyZAoOJsFNSytW8LwJUWO4m9AOi2P1eVtnq9s6lsxYpv6VoNMsd
	3T/to+Johhm+WjwRfHve/Sr3s9BVbu/BNW0Yt7r1O2p+EbpR20ZgakgRVNZYQ7sK2CwNA9m+UoR
	PZYUdJwhvAyzG85M4ciZw3cPOkz7teK/QyZFazugRivgyuj35cQ==
X-Gm-Gg: ASbGnctBKfrRRXmpMxcuttJS2SEt0+kNj3grVz0YEkG51bz+GDLSyKpwFBQXURd1vfR
	wfUUSNdOWhW0uv9ROp8E89R8Ftx8bl+KkXGkgNPQX3psRVaf2ropXvzDuoyzNeO6G/5N7zOHmTN
	ZFjobyaytLe5KtmctLWV24Yg==
X-Google-Smtp-Source: AGHT+IEsC0LGfzPFbjW47NHijCAHqmNu/z9cMtAI+IIKhAgBuev4/mSnYvq1qRkELCSLmAn0oL8nj2ZWqzK7jhYVOs4=
X-Received: by 2002:a05:6512:3130:b0:543:cf0c:ed14 with SMTP id
 2adb3069b0e04-54e90bae618mr141902e87.5.1745805713169; Sun, 27 Apr 2025
 19:01:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424022605.10485-1-tweek@google.com> <m5nal52wpruyn6vbjha6lgkta3ptoz7dltxs2h2po66mpdhm2c@3idehje65567>
In-Reply-To: <m5nal52wpruyn6vbjha6lgkta3ptoz7dltxs2h2po66mpdhm2c@3idehje65567>
From: =?UTF-8?Q?Thi=C3=A9baud_Weksteen?= <tweek@google.com>
Date: Mon, 28 Apr 2025 12:01:35 +1000
X-Gm-Features: ATxdqUEhyViUI9eaWFfAbfZh1NcNVuiqTdF_Gp1iPjEDIf5CPeV2zVO-TbMyO60
Message-ID: <CA+zpnLd7txoTS4CEbVNM4dmM2g8f2K+_nx-4Vzzsnsp02pgv-A@mail.gmail.com>
Subject: Re: [PATCH] man/man2/memfd_secret.2: Update default state
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 24, 2025 at 4:42=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Thi=C3=A9baud,
>
> On Thu, Apr 24, 2025 at 12:26:05PM +1000, Thi=C3=A9baud Weksteen wrote:
> > In commit b758fe6df50 ("mm/secretmem: make it on by default"),
> > memfd_secret was updated to be enabled by default.
> >
> > Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>
>
> Thanks for the patch!  See some comments below.

Thanks for the review!

>
> > ---
> >  man/man2/memfd_secret.2 | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
> > index 322d67a41..2eb6db599 100644
> > --- a/man/man2/memfd_secret.2
> > +++ b/man/man2/memfd_secret.2
> > @@ -182,12 +182,15 @@ or spawn a new privileged user-space process to p=
erform
> >  secrets exfiltration using
> >  .BR ptrace (2).
> >  .P
> > -The way
> > +Before Linux 6.5,
> > +.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
> > +there was some concern that
> >  .BR memfd_secret ()
> > -allocates and locks the memory may impact overall system performance,
> > -therefore the system call is disabled by default and only available
> > +allocations and memory locking had an impact on system performance,
> > +therefore the system call was disabled by default and only available
> >  if the system administrator turned it on using
> > -"secretmem.enable=3Dy" kernel parameter.
> > +"secretmem.enable=3Dy" kernel parameter. Since Linux 6.5, the system
>
> Please use semantic newlines.  See man-pageS(7):
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be  started
>        on  new  lines,  long  sentences  should  be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and  long
>        clauses  should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier  to  see
>        the effect of patches, which often operate at the level of indi=E2=
=80=90
>        vidual sentences, clauses, or phrases.
>
> > +call is enabled by default.
>
> Does this mean that there's no concerns about performance anymore?  Or
> that security reasons are more important than performance?
>

From my understanding, the former. I'll send an update to remove that
part (as this is not relevant anymore).

> I would move the entire paragraph to the HISTORY section.
>
>
> Have a lovely day!
> Alex
>
> >  .P
> >  To prevent potential data leaks of memory regions backed by
> >  .BR memfd_secret ()
> > --
> > 2.49.0.805.g082f7c87e0-goog
> >
>
> --
> <https://www.alejandro-colomar.es/>

