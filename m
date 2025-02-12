Return-Path: <linux-man+bounces-2417-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942BA3316D
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 22:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91C8F3A96FB
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361B3202C31;
	Wed, 12 Feb 2025 21:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TYTN17rM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B2D201025;
	Wed, 12 Feb 2025 21:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739395486; cv=none; b=T5ArLCj3L4FWohvRHh30Zx8EwVqN2ppSCOIYLldSii8UDWe8YZWon3U/dT77r5SNgpTIJ1SPKSkPEdVv/ywO+9s48QDtw4Fk6T5gZ/nPd7PrKy15ncqSoKLd3yuUdrfy1lv9UKBYQgb3wpBSOxEdnNmHVoVjGTvmcKwloSsgbrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739395486; c=relaxed/simple;
	bh=tRZTeamGz5BJDPFfZrAGCpU2zTQ7mRIPnQ/R/+fL1sQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P0nQv2h5THo/okTqmHTtWpOIXftTu0Hh37tCT4hj60LUiwhAwLGr3VEfPPzh8+/uUOwNsQBcc1s1HAfaQsBbRsvKw035Do2QaQOoghBBvRqwiqn4k/fB5EPcWGboQYwO2049ILBiW8iKkt0SYrWDYm8uUMBu6wN9wVqchRupzI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TYTN17rM; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-308f141518cso2002071fa.2;
        Wed, 12 Feb 2025 13:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739395482; x=1740000282; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZg2BklOS9vVSBBuLp3MZwmqGaE28/zjbe+Lcf2xlKE=;
        b=TYTN17rMz4AYTfJGaW0a4x01Nbl0JNSxwn1D/nskETBE/0J66HsA+CUT2K2qCQqUA5
         ClyjipnW2eyuqUG7+1hNDZi6qStyq/fIdLMeH6R05DbHnTfl2bApghvughfg+iDlFRef
         tGJ4KsNp49ISsk6q0eG7Vu2GOTpppLKD5IYs/3Cd4XTrZAzfuj7IY4++cLu8lGY8+VOk
         G196Zeewo4xvhGff8ywWGVNDUrIde3aAECu0K54d8w62BYotGmWhJMRYEPh02i/iYbbH
         AjdQ8plkO2OfN7TqowK1RWLJw0VNAPG6BUGd7CO4ZePC3SNvJCuH3dH4iuH4NbpitYIs
         P0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739395482; x=1740000282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MZg2BklOS9vVSBBuLp3MZwmqGaE28/zjbe+Lcf2xlKE=;
        b=vugaDZeYVw4KzHcctouMqx0u8TRPqirYeN5EJAEoQUkdEIVhGwyaMLz4Bu8WM+YofU
         ZTQNwVuo5l1lc4x0ubznVqOBpkBrk9hsyv/FbUnHjBYZXTKwlKuqEa5w5P1e37uOFI/m
         Xkuko7e5+tFp5n29TkI4mXPPxTDAr3pYiiTsHHtxChI9EX7qTbV/9mArDYM1Z7q2GzfO
         qeShI8LED6lnHRFzLwzefLD5MZXwXPoEJfd5668hscfjdPADmeedBN79MF2PRWi065Lp
         mjXt11GpiiKux3YsjXav1R7DQPccuFFJCM/yTNTbTtC6amAS7PFx4RYVJa60BVNwJZtI
         usxg==
X-Forwarded-Encrypted: i=1; AJvYcCUMye78REBVy2iR4dRZtf5BVKEHDVlEVy+olhLss2yJBzrjOVpaANlSp4nlaCwfFdrZSpafOacyiGM7FDc=@vger.kernel.org, AJvYcCV4JmdQIrtMor2gyrtRquhl8iOSvsPn2I/IAMksQKbVMAl4JRzFHqNlymtyjgNrpw5vr54nOZn0/3oc@vger.kernel.org, AJvYcCVZmkxk5Wyo/7kxJ5YSnuhYpZhNd7Mrrw4o+V2tazj9wvQ8yS2WslCUsFm8nwbwk0cAynJ/XiqSuamu+5EmQEM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxdPswWmw9eXxYBGfQ701UqEXhyZKPjAUWqxCRQnt3Xyne0do9w
	6t332kP2zDBS7y0cKQYHykqjeK6xz8tIBcBNZw6fuMjwFnPkg9jhk5o5JTsTx7WywGvzP/DeMGm
	61qIv+0X5M8xxZ64SQD3pme2KIefQaRO2u2w=
X-Gm-Gg: ASbGncs1PBaEytAeh6VrnHkHq9dsRMRKBQRqNIeG0ozaYQyVzWRyDHsQkwXhqjAeSxg
	HBRsOH/O+h/G402Ugv6pRdJy3A9UTlnxLD/Z90NyapiFdWUIa8Yz9QwCxR9omuC8uwGwohYDhX8
	CPe44cWOXP/FDg
X-Google-Smtp-Source: AGHT+IH7+HSoUyulMxdw/cVunCmXsDrXX7OOJhYHFaBQf2oXTE1p6NFr1BaiikLyMxS0GKmTptWz5VJT2te675YWdTg=
X-Received: by 2002:a05:651c:b13:b0:308:e803:1175 with SMTP id
 38308e7fff4ca-30904e7e60cmr14911301fa.0.1739395482191; Wed, 12 Feb 2025
 13:24:42 -0800 (PST)
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
 <Z60Lb4OK3jLCAAra@pollux>
In-Reply-To: <Z60Lb4OK3jLCAAra@pollux>
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 16:24:06 -0500
X-Gm-Features: AWEUYZm17LejvdKv-dHcX4Sozn5OpFsszwIZyJAO83w3f0HsQQtUErIDU580TCQ
Message-ID: <CAJ-ks9=3LC7MM+uubZfjRTrWYa+sOakeq-0hwZpXK9hxXtuG5g@mail.gmail.com>
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

On Wed, Feb 12, 2025 at 3:58=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Feb 12, 2025 at 03:47:11PM -0500, Tamir Duberstein wrote:
> > Looks like I wasn't the only one to fall into the trap (rust/kernel/io.=
rs):
> >
> >     #[inline]
> >     const fn io_addr_assert<U>(&self, offset: usize) -> usize {
> >         build_assert!(Self::offset_valid::<U>(offset, SIZE));
> >
> >         self.addr() + offset
> >     }
> >
> > since offset isn't known at compile time, this can easily be misused?
>
> Well, that's intentional.
>
> iomem.readb(0x0)     // succeeds if SIZE >=3D1
> iomem.readb(foo)     // fails if foo is not known at compile time

By "fails" here you mean fail to link, right?

> iomem.try_readb(foo) // succeeds if self.maxsize() >=3D 1

Apologies for being dense throughout this discussion. Could you check
my understanding?

The trick is that `build_error` is marked `#[export_name =3D
"rust_build_error"]` which isn't exported unless
CONFIG_RUST_BUILD_ASSERT_ALLOW is defined, causing linking to it to
fail. This even works for doctests, but not for #[test] in the kernel
crate because they are built as part of the crate. The only to way
make that work correctly is to put `build_error` in a crate all by
itself.

