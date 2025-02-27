Return-Path: <linux-man+bounces-2531-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED1CA47C4E
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 12:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15D143A325B
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 11:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0174622A7E5;
	Thu, 27 Feb 2025 11:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lWByfMdK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6E02253A8;
	Thu, 27 Feb 2025 11:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740656106; cv=none; b=cPL9fqRqlShQxc9QQAvuyOwBXsGqNGTx3LEW9XuU0AHhh+Lb5oFa+bZ0qqjQ06QtdfbB4FIyWaL/0EGpauobE2ig4Ev9TOcIlew7LJTgI63mwaCfuu2xXKQfbYB3OBa2pA+MCc2Bd4QebO1F7XRLPpyfUF24vKr14VoMVfIySbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740656106; c=relaxed/simple;
	bh=ldwn/EiopZJQ++ZzPunfH17TEy2zzvdkMynUExTJI5M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q4gIRS1QbNMwMTZQhaeEklJGc8SgZEuIsLXu/w/0TS49AkSfV7aX0DKJk0rw4cVMK2walFiiTTFgvfiEk0KeMo71cTGxmQBUtn5gzHkfWIX1C6EongjT+ojcyWJkFuUZI/pnXExtIownqoyBCi6c+5VWCJfaIMr3RSSsprWiMew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lWByfMdK; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30a303a656aso9044911fa.0;
        Thu, 27 Feb 2025 03:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740656103; x=1741260903; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldwn/EiopZJQ++ZzPunfH17TEy2zzvdkMynUExTJI5M=;
        b=lWByfMdKj6ohae8ozHILwMpC4TPsqTuZggu/DHz7SrSY6CBSB6bKF2P/3glyNltpQ7
         016Nqq6jIA+ICqnKfJfByYj2dGGfx1mCkFIeeQvWNEwM+GafiyNt7mXIMDQVvG2NJ7eK
         XtKjturgpdUgNV+P82LocjFB1eKAc0+ekYLMhqpRtIlaf2qRJsHgTL7uc2FmkgKX3aW2
         F78U468F3rsMLArFnJ6mcwsUJxUlwSwxjrXbE1/Z9Lh6q4i0QEYVDElO2eQgdm7x5B90
         vreFr47J3y0OE3wa3zvxtaCyYRqTbp4t4DQiKHu9HpY5xmBKQaq6/G7i/6gcoA5LYsr+
         DNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740656103; x=1741260903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ldwn/EiopZJQ++ZzPunfH17TEy2zzvdkMynUExTJI5M=;
        b=ks6cDs9n5S60PKa8sYI5U7i0etZPIexs+b8982xmCoufmNTiAWZUUl02mGdbpkibvX
         krbGq6EdBRY5h0r5MqU1oas3PUly1V0pBVyNZ21MUXV1sRpoNEcYAejSL5WyITpzCk9D
         T76qgHW3602c+GlVq4T6ihmD2n7dBq6GOro4h4Zu0o0m0ot7Zht8kFugnJbN+WtO/Q+c
         rmEau7JHbAM2jOY7c1j4WMq8aYXeUwht+eFj7qvjCuYmjq3QVIKNPTHwfwVePr6q1JsC
         elAMYN/2Cxn04Hec/GOBhXfYZb+GT6lXiAnP1MvgR4L2G7i7AqaV37izAWRV9pt0PheB
         0gGw==
X-Forwarded-Encrypted: i=1; AJvYcCWTKwSr2KBqNouHxff/AKclbxg/+Cc3DOR49IBJMlpN/2i5fnII2Dx+woAcUe58Ps1YkQznEsouDsutIDwuNos=@vger.kernel.org, AJvYcCWuFuh1L6oNYxVAsbjsy/1FmPlh8aZHKomTl2AD6UfHVR7Lm+ruNcofOHvj72zdTmu1vo727UylzXt/@vger.kernel.org, AJvYcCXCKxfxfiJpLiIbLSXy7azVXs7Vwi1FTsWOlChtcFgGUzOz6nVjbPDm0bZGt8gkztZXzx1lqYHbCAEKNDE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3EJt4TXeYJP8934dtU1Qv+Iu4a1J8ZDa9U2dzo5QbDozw8mmi
	R6WemHcyRMISWTnPTmn8pqro10ifQxgMJyz+q5puSDvy/X2o/wLGBPmBfTaWLT4h2Z7x9msMc2U
	tmZHMwD0TarR7dZYw+CTNkj0B87w=
X-Gm-Gg: ASbGncubz8dr2Jkah8EIYsx7+V4JrUpNrrV21IcD6MgXZ6EERPtr10+M7nAdyVT2iH7
	SPLMAwRn+p9iCYWWhoHh8XuEkZrvN9NZkue9+bl1bXdBShPJkRjua4h/3feA6vlWofg3eD5k9Bb
	WbvF72nwe2pZRiV2XMYTiMmBAZYSJDn8FOzj5h8/hg
X-Google-Smtp-Source: AGHT+IGfOrPCkbMrZti+ZGk1EvzoYK3uaz1d4Bw2cJgZf/MCVPMPC0nhgo7sI8Z0VEVj/QUvOrKBtrvkFQZDRJz8Nv8=
X-Received: by 2002:ac2:5b8d:0:b0:548:e44d:f3ee with SMTP id
 2adb3069b0e04-548e44df52cmr4665298e87.10.1740656102882; Thu, 27 Feb 2025
 03:35:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com> <20250213142441.56532c18@eugeo>
In-Reply-To: <20250213142441.56532c18@eugeo>
From: Tamir Duberstein <tamird@gmail.com>
Date: Thu, 27 Feb 2025 06:34:26 -0500
X-Gm-Features: AQ5f1JqeXJBMpn3IDeg2JUq0K25kYq7vRyB5ZH5pUnKWBl2bps6_Fn4BTe1QRgo
Message-ID: <CAJ-ks9mxUUQvbQp+cPx-5Vvs4gZQEkS=5NC9veuQ-qU9ZJn0JA@mail.gmail.com>
Subject: Re: [PATCH v7] rust: alloc: satisfy POSIX alignment requirement
To: Gary Guo <gary@garyguo.net>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 9:24=E2=80=AFAM Gary Guo <gary@garyguo.net> wrote:
>
> On Thu, 13 Feb 2025 06:34:18 -0500
> Tamir Duberstein <tamird@gmail.com> wrote:
>
> > ISO C's `aligned_alloc` is partially implementation-defined; on some
> > systems it inherits stricter requirements from POSIX's `posix_memalign`=
.
> >
> > This causes the call added in commit dd09538fb409 ("rust: alloc:
> > implement `Cmalloc` in module allocator_test") to fail on macOS because
> > it doesn't meet the requirements of `posix_memalign`.
> >
> > Adjust the call to meet the POSIX requirement and add a comment. This
> > fixes failures in `make rusttest` on macOS.
> >
> > Acked-by: Danilo Krummrich <dakr@kernel.org>
> > Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module alloca=
tor_test")
> > Signed-off-by: Tamir Duberstein <tamird@gmail.com>
>
> Reviewed-by: Gary Guo <gary@garyguo.net>

Thanks for the reviews! Gentle ping: are more reviews required?

