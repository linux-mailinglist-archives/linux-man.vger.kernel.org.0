Return-Path: <linux-man+bounces-2384-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 667E7A30F73
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1825B164A32
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 15:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB64250BFC;
	Tue, 11 Feb 2025 15:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LbSo3RE6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEE81F8AE2;
	Tue, 11 Feb 2025 15:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287130; cv=none; b=ME4awv6HNQfTuTDQQZw943Cgu6clKvDBmx8GUIEPHExDT71TDemxPY/elTZ2Tl2YjMJmBaFdTLKctBlc7in9IbFn5w2j2JE07u8rXBFY/sKGyluLW0qK4Kc4Pzsi1Ts4eTAJc2xVYdHBe56+3IXoLpAN383ts+YFHz4VL0Ztn5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287130; c=relaxed/simple;
	bh=WvJeLkplpOnW2HwevNTVcMQld9wJtdh1MKgRLdFMZDI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m3n8ep+6HSVWD+SLisJND/5N2JKuYPd+pXMvyG1LeKWawG2koTl9aDQRxSV2xlEVdeZPJi/mVTslnPAOByHNCgISW5s1Esz1MFDMov6zFIJ0UA4qDiF5Sx0+N7TixrfkyOA1w511UKTJQYuNfsNcZbZoh+/6BV5W8ztJ39BX/g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LbSo3RE6; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2f2f5e91393so1498425a91.0;
        Tue, 11 Feb 2025 07:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739287129; x=1739891929; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WvJeLkplpOnW2HwevNTVcMQld9wJtdh1MKgRLdFMZDI=;
        b=LbSo3RE6tjSAc8GCCKtEvzIDUIkzfTSXsC5A1f8W6XAmYV3A3nQRY55xaPYeEa84Qx
         2ap/OFJVVJD4hCaAyDPv7yZK//bIqhDBoGbg9tSiKNJdd/DSCrpiknRBu9t75jeZ+k3f
         Tn2vbl8z4QO5feZ3124VXdoxxEmR/PlttMPWANyrgXgQR8h1yrkK3ySm8OWzqRQ0Vnuu
         Xp+UMGBDV9fSXhoJba0SyOaT3ERK2zp/N8le+qfb2yka3anV533JoYwK0r/Mw89rH56h
         nv9GFPEiiQrkHcJCG75uWFTb6XhsMemRDregKhoTwAii9gX0+Dr3IY+AwKNviLn8nR3I
         7J2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739287129; x=1739891929;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WvJeLkplpOnW2HwevNTVcMQld9wJtdh1MKgRLdFMZDI=;
        b=ivm2us3Dwp/mDAglGB1XSqPjtb8jJP1Op48SMmVV5UI69wtvJodVjMOsz2XaxafUa7
         J8tCTWuv4gMejw0w7vba4Lo5Jxb5B7PqqPMnnMZX1eVRYun7fRB0wRCJHDNKfSlSaMnE
         GmngEEM7e3ig6esVSP4bghhzhVSYsxqt7tjJ+MUI0TGdZAlNArBpsnMZr3YzEXOhfAgM
         cRWXwSZd9amPCI4ZluOqNo/P8Z0c+H+dHBHmTcVNHLKdyqtXTdpykyXFhU9LLO7NZGoF
         ZvmawNBtYqJjgYqh+ThxsozXRv3P1qOZtwOI2LbbuGpsonkgIa6I/hcxgaB+S5XYcSQW
         ehwA==
X-Forwarded-Encrypted: i=1; AJvYcCUmdcBHogrkq6ureBQQ9GojX+PDmuThB45QD9RPgDd6RBPogWIFM64q1PtPv/blSmtyfv8+hhrrXzebYlE=@vger.kernel.org, AJvYcCXDStBn3SbJC0ynMMj29cDWY37Etbji52j5NMx2Mgdy+L4w1A/Hb/p9O1r/Nidok2FO9pGbvzpGi/HaTpTveNE=@vger.kernel.org, AJvYcCXfUDvBRlaD36YpEbT8RVyrDRB8QcAFI7y4Q9sfY+G8UTIZGu+6+KVtx5N6gcl/8qf0jo+g352jW3xK@vger.kernel.org
X-Gm-Message-State: AOJu0YziuligqRD0nKmY+uCos61kQO2MObkj2idNRR/dc5p5neazezV0
	hZ175NwfXrl5G2FGdr0ErXsQKx5z6/zUHD15BZ27mKia+0qAVF6v39SFxcPK9c+lCjSR8jassNd
	ghmH1hvp8XILdhL3N/6u/ugBnIZ4=
X-Gm-Gg: ASbGncvAXBJWAE1sGVw6+oJn/Cam99XLcLb7E+0YbShghKyeHpSZbsKiNQruV2bJCU4
	4297t1jKLh81/ZAyASKlsqKiamphA+dca4IQ7Ng3DEAaJs1ONunA5EXt+E0VtKo6BiIwcnvlq
X-Google-Smtp-Source: AGHT+IGzJkzVrpMALwsxqLHKqev6ECJUX+YW82mjcNjNCg8Wu8nBA+8vD/kiTP2MhGhH35rWwsHBxm0QfPgIBCcXiK0=
X-Received: by 2002:a17:90b:3891:b0:2fa:17d2:158 with SMTP id
 98e67ed59e1d1-2faa490a9c4mr1792843a91.0.1739287128622; Tue, 11 Feb 2025
 07:18:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
In-Reply-To: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 11 Feb 2025 16:18:35 +0100
X-Gm-Features: AWEUYZnC3aCDrPsPnwgIWLOJD4mf_4uv6coex7poBSP5UJ65YitdeiLOgh1U4bU
Message-ID: <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Will Newton <will.newton@linaro.org>, 
	Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2025 at 3:55=E2=80=AFPM Tamir Duberstein <tamird@gmail.com>=
 wrote:
>
> Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocato=
r_test")
>

Hmm... The newline issue is still present in newer series you are
sending. Maintainers need to fix this manually, so please fix it on
your side.

> Acked-by: Danilo Krummrich <dakr@kernel.org>

I understand that you re-picked the v2 ack, since it is (at least the
code) similar again now, right?

Thanks!

Cheers,
Miguel

