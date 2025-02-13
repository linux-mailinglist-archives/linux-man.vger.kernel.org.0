Return-Path: <linux-man+bounces-2422-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72011A33458
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 02:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0569D3A7D87
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 01:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE1623741;
	Thu, 13 Feb 2025 01:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oi32xUeu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2936FC3;
	Thu, 13 Feb 2025 01:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739408491; cv=none; b=X5ZwhK/qxwqJwsvnAKRPHzqbIOf3wQ5/zxgxE0fZ/4yOmk1o68ttoOcfn6Vw/XGqIKZks83vop5mico4Csu/dgtHCeknPzY81FZ11fDDUEy4tKbEZJlUB4RbvMv12dubUarupphCYV2sSrloPFySc9MS+duk/YYzM2KUqiHkyQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739408491; c=relaxed/simple;
	bh=lVqsu1UPjaIEtaD6xvPeAnNOVZARwL5KXvGshOLpvPg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mUDsf43grCSGWLJ1AkLTLOalBxZfteBbYhpa+WOTMXKrNzIuIgU6O51gztYnr7qjp2r14RCunnAMam9y2ALt+Rb4rILoqar1em7MAwurY9O79V+oIvN2lF3sRj2AdXQhp9HXqsxU+fao4bXCEZv1C8xDM3Dnk/Ec0pQanMPi3w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oi32xUeu; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-308dc0878dfso3643321fa.3;
        Wed, 12 Feb 2025 17:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739408487; x=1740013287; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwH1+bRzUvItGRmNCEPnnsP1l4ssLo5J+YSnIAgd8sE=;
        b=Oi32xUeuhCX35gutLgHDqGe4JXdG55Q74iihyw70NV+m59c1o62p8X7/du6KXMg7iR
         qn++qBd9+aumZstI5cQgYUO24h68kM18pMw+UkTX8xUOZ27Yxs4zNLqKYgb07yRq0Oxo
         jwuBxOX4+kpZRLUlRkG/HIqcI7nIqEmkQby1ybox3C//EJj7mSylXzZbPSuyVwPEpPjJ
         BwjNAL56F1YvG+IZvbdEmFBoBJzKMDB75o6i42yW0jjf+KXmzlTaNwnftQc6WVciIWtw
         amNLJb3StCb6bvxssQ6nmXp7BfhjeBFiKHAz/hYewqRvvzcFSCr8nvWkUSHvFqDHacYG
         sO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739408487; x=1740013287;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PwH1+bRzUvItGRmNCEPnnsP1l4ssLo5J+YSnIAgd8sE=;
        b=VDcow/aSE7WfW3rA0zJhetLs0nLiwuzye7wK6ugY5/Ht3aBTbtsy1bfNgoA5tWQNwm
         CqOmM9svywOc7Z+cOkfCttF4KWMfN8+VD2F+NxARKoe9rjyvTRkWrEJ9ruTmwejyg7+D
         nyedobxkcQqmj18xsgkzHREw+r/G3tRKMp98i2KrWU8DJYtj4/000huYz94Z9Gi6RnEp
         QrpS34Sp+/5ywch6W16IGnetKWfr/mvTtoOVrJVPtTJYY1B2L6NNdBgiIpawD01WjV30
         QwpdyId3i6Q1EDJn5xop+Z97KnlQgbDdbO9+50fZIjRZsgVTEfWyouaHPoPBrKU64Sdl
         +Oag==
X-Forwarded-Encrypted: i=1; AJvYcCUpEV6vyHa5pCwfUon6RoNou/ARbEwmCH2gxrje20YN8wWb1dWWAQGZf6nwAu3D26Ox6ZZGqjH6mCMWlfY=@vger.kernel.org, AJvYcCV4AbjM1dXIhy03Dsntix9D6fZtXIVY8YGh9nqomSj9jWTkAXboGwqqCrq03RcSPh5q9hZ0c3zCmCRP@vger.kernel.org, AJvYcCVJ4rSUQH+RiIFW0ZuKO5g4BQ6wujiV+C8ndemZB10++qQXU+PFmfoJjipEubBfWLNzqP1FNDaejoaLyt+Imug=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJuUzEszTnBjxSUx5xcHNwXwtqqyL/tKHc3fhgyFNJbSwWxQja
	Sf1VEKZHGJQrwZ6Vubt5PY50D4J871slbnmg1I53NAEWuWkoS9prEJAXN6Cjn2xjFXMkPjFtFmo
	aDJWjEaMOiD/jS29jri6xMxWza40=
X-Gm-Gg: ASbGncv4CV9nsxOTQthV1q+Gp0sQwRSM6uAf+LQi8wDg/4rLnFQp/SMONoj80mkFTWD
	GgDvBcOq1y96q/dUoW+PpksbWuR3Poct05FriNB1Fwex3cfPL9/6rv3aynl3/7S0VJtJsHtiYTB
	0MlzBwzaiehFVP28hORA8USXuCdotILvI=
X-Google-Smtp-Source: AGHT+IEWShSpJbA2J8teP0j6h6GMwJQJUZRNsbEcECAWxJ5ftLSRiy/NOOTLTTw5YYhjqRM6g0RcMfwZCTLikbdbBGE=
X-Received: by 2002:a2e:bc16:0:b0:300:2a29:d47c with SMTP id
 38308e7fff4ca-309036d731bmr20346141fa.24.1739408487200; Wed, 12 Feb 2025
 17:01:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux> <20250212163848.22e8dcff@eugeo> <Z6zT6mZuxonewQ9z@pollux>
 <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com>
 <Z6z-FlEUk9OfeJCV@cassiopeiae> <CAJ-ks9=-ZQpmhJRs3YstZBGb9UvLwRQJ7od+dsc_sYZtwUhF2A@mail.gmail.com>
 <Z60Lb4OK3jLCAAra@pollux> <CAJ-ks9=3LC7MM+uubZfjRTrWYa+sOakeq-0hwZpXK9hxXtuG5g@mail.gmail.com>
In-Reply-To: <CAJ-ks9=3LC7MM+uubZfjRTrWYa+sOakeq-0hwZpXK9hxXtuG5g@mail.gmail.com>
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 20:00:50 -0500
X-Gm-Features: AWEUYZm_15lZtdyjYy2Ljp_nODSkfvZUWlFHrvc9vWeIkADxQ7fYGlaWtbwsX4c
Message-ID: <CAJ-ks9moi5vQREcy=DL4sVoNZ+T2mA263M1axOGxSHf7Ram1xw@mail.gmail.com>
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
To: Danilo Krummrich <dakr@kernel.org>
Cc: Gary Guo <gary@garyguo.net>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 12, 2025 at 4:24=E2=80=AFPM Tamir Duberstein <tamird@gmail.com>=
 wrote:
>
> On Wed, Feb 12, 2025 at 3:58=E2=80=AFPM Danilo Krummrich <dakr@kernel.org=
> wrote:
> >
> > On Wed, Feb 12, 2025 at 03:47:11PM -0500, Tamir Duberstein wrote:
> > > Looks like I wasn't the only one to fall into the trap (rust/kernel/i=
o.rs):
> > >
> > >     #[inline]
> > >     const fn io_addr_assert<U>(&self, offset: usize) -> usize {
> > >         build_assert!(Self::offset_valid::<U>(offset, SIZE));
> > >
> > >         self.addr() + offset
> > >     }
> > >
> > > since offset isn't known at compile time, this can easily be misused?
> >
> > Well, that's intentional.
> >
> > iomem.readb(0x0)     // succeeds if SIZE >=3D1
> > iomem.readb(foo)     // fails if foo is not known at compile time
>
> By "fails" here you mean fail to link, right?
>
> > iomem.try_readb(foo) // succeeds if self.maxsize() >=3D 1
>
> Apologies for being dense throughout this discussion. Could you check
> my understanding?
>
> The trick is that `build_error` is marked `#[export_name =3D
> "rust_build_error"]` which isn't exported unless
> CONFIG_RUST_BUILD_ASSERT_ALLOW is defined, causing linking to it to
> fail. This even works for doctests, but not for #[test] in the kernel
> crate because they are built as part of the crate. The only to way
> make that work correctly is to put `build_error` in a crate all by
> itself.

Which of course, it is.

I thought maybe this was specific to building on macOS, but it
reproduces on Linux as well.

Gary, can you help me understand how the linker magic works? Is it
possible to make it work on the host as well?

