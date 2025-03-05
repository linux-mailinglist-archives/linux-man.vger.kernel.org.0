Return-Path: <linux-man+bounces-2582-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E3AA53DE3
	for <lists+linux-man@lfdr.de>; Thu,  6 Mar 2025 00:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E22033A20D0
	for <lists+linux-man@lfdr.de>; Wed,  5 Mar 2025 23:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC2320A5E5;
	Wed,  5 Mar 2025 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MGQFbKaH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB7420A5D3;
	Wed,  5 Mar 2025 23:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741215743; cv=none; b=fCz9CdQjdYD/3l/I5tVu9Qzn2D8e3SnlK3sBCqIykXQ6wl2ks/qt8+ARstV0kL9w7iEGGmquijxkJttLnNNvunMrelobIZOI6Vfc6RG7ZGS9XVj9WAamTRJpnxAi6B7hQzAh4SqcmM+9HG56PVUA03Ikahm+zZro6mcLE55qxks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741215743; c=relaxed/simple;
	bh=CrS8Z2lH5l661WpjSYOQYpm59vMadX9D3uzoIiDzEQ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EaA4nCocdKMgm9y+zTPgmn7KszCXeICFJ7oNWttq14jxtkyxAMyGUj/jFE3Q3nj62sFqXmlMr6KDlgm52VH6t3F7f3bqriE3PKPgEUBek2IVYvILFYnV3NlaDyusxl6j2a9w+ddScMOsP/pn/8/vAsRd9xqa2GToOW2M7/kHFD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MGQFbKaH; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ff5544af03so23084a91.1;
        Wed, 05 Mar 2025 15:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741215740; x=1741820540; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DU0JYgz8loA5MWXHcsC5YAnENw3ohHfJ8gchwQ4NDqk=;
        b=MGQFbKaHKVnMQ+iTFVWlPy+IhJBiFAyklnxyzzT0LL0aI0pPizaqvtn0jV0bq0Qp2j
         QQYdIMbK+5NjeYZrg67wW4Y5uEjaOBowzCJc3+4/9TcL8t1nqQ9N6oSnixRfcBTLei5n
         SMftv4cOxGtNCuTJTjryQh8HFg/nwoWk9JwS6gSMpoYEXYdeLSyUYS15+U8ZAvy95ECa
         oiPeM11zXP8Ur+htp0wiG/hYUAopqoR0jGXErm8vQzWUaWpF+Htcek6UB6iHwm4Nn45B
         1CXEEgxqgEI26439hDlVOZGP7pxDMhvDcBcyuSkNqxSRFjY8yqb/AaYx23MJKPOtofwH
         meXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741215740; x=1741820540;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DU0JYgz8loA5MWXHcsC5YAnENw3ohHfJ8gchwQ4NDqk=;
        b=YIg42L/zi2mvYBRkiDflv3dHvdFBD9Y5vX3/I2KwO71KADBxdvLLbUBj4gjJro9T2S
         Wr9cmTN6KKAoV2Mko/BgXiV2/hbGB8tjAAmONmQ/nYf9gitUkdJbL/yOxGTEUrc9b2Fl
         vBQasu/MmhfkTyBmINaJCUgmbS8fuFQCIe8Bcwwbw9hlyC6TzP6ug5JQj+pSVz9+WZZd
         YhQYMtgE52zCpEv7UBPFeow2trp8uswh5EGqA5htQx5wgyL2l4vMLY0vApCS6tle4uec
         Cms3UWGx9vTAHbpCLe0dVVtbnl/wJr2z3F1jzioozVsth7rIAfu+lkl/xQCw/c0TgSzN
         lTBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl2lCp8Pe/qDakHbWTsj23EucF4BxOGV91lS4NmDsNupd33VFZLhGIuI9/gwjVsTIiMXuoQVG4P1JvhKE=@vger.kernel.org, AJvYcCWRB1PWwU9GQX2SX6NlY4N6uvr3ilL0aYdVevK1FkFT/SudR7FipR/dmjKfMMJl6IzgwNt1kxsDsIRpQt1MD4w=@vger.kernel.org, AJvYcCXosqGfV5Fim60CmAKQKLobys03foAW1J3GxQ1qptZRqTfAbGa9PxP7cxPK557MFgQPrRGZnOQqJ0nJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyPUTUbiNTkUQakLoeJC5XQYW+RgsDjbqY2BYJ6Q3pnrzCkP86N
	8m4Tpp9EpWSmTDlcjZYmz8+Y+MlvRdNQcCgpu+EG8VfSUxjA+frwOx87mdXOL0FfFgyb0k5pf3R
	w/s7pPbNdoGa9x1iMc3N1g+0Id4o=
X-Gm-Gg: ASbGncuoSOd8WucLxixcwFa0YfSRFCe4j5n/Z4Pme0WwFQCL6EQQjNcQhmEiVR+lMOs
	/6SHL3olse6F6lyP1pAdYcru5Ww64dsc9hgF1PuZUlRrQwd1hyOzkfCpKDOLPadXqNczMhzX4ez
	Kybol7jjoCwhIktGGe4BvFTFucpA==
X-Google-Smtp-Source: AGHT+IFVBDqZbEwRQ9Ywp34UPpcuUXspouep8Y78Gvm7RN1qbm3xmglctYZE8Nva4ApJBxvQskOIEVu0LMqHKJWkOXI=
X-Received: by 2002:a17:90b:4b4e:b0:2fc:25b3:6a91 with SMTP id
 98e67ed59e1d1-2ff497c18e3mr3223253a91.5.1741215739863; Wed, 05 Mar 2025
 15:02:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com>
In-Reply-To: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 6 Mar 2025 00:02:05 +0100
X-Gm-Features: AQ5f1JrS4W1LclZjnsUx9LBTl9i9YRM8HAgFLPtAtQHt9lipfjoQYxpBRnKjLf8
Message-ID: <CANiq72=FhaZrgMTBSTXOQvg8jrAR+pbdUjt2gL2npjBh8881jw@mail.gmail.com>
Subject: Re: [PATCH v7] rust: alloc: satisfy POSIX alignment requirement
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 12:34=E2=80=AFPM Tamir Duberstein <tamird@gmail.com=
> wrote:
>
> ISO C's `aligned_alloc` is partially implementation-defined; on some
> systems it inherits stricter requirements from POSIX's `posix_memalign`.
>
> This causes the call added in commit dd09538fb409 ("rust: alloc:
> implement `Cmalloc` in module allocator_test") to fail on macOS because
> it doesn't meet the requirements of `posix_memalign`.
>
> Adjust the call to meet the POSIX requirement and add a comment. This
> fixes failures in `make rusttest` on macOS.
>
> Acked-by: Danilo Krummrich <dakr@kernel.org>
> Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocato=
r_test")
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>

Applied to `rust-fixes` -- thanks everyone!

    [ Added Cc: stable. - Miguel ]

Cheers,
Miguel

