Return-Path: <linux-man+bounces-2385-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA2A30F79
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0228B18876DE
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 15:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEE72512C9;
	Tue, 11 Feb 2025 15:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TcpLktvQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753BD1F7060;
	Tue, 11 Feb 2025 15:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287272; cv=none; b=hpfdI6Ufjy5g6yDPPz23SqIbneJjECgRiFtk96s9rHcq9stglTGZxdaQXkZweR2MJuaIl0uUxCNsDFU6yw2slntP3dPtLqkqwIbv2LMMmEw0SpOEV9UdTUIYngu+OLJmbexgoXQBn0MQt1m42DAjqDDU2oqmnjuf4WtzFG2nvR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287272; c=relaxed/simple;
	bh=Xnjwo2PGBH+CZ30bW1uwfnyR6aLsiG23t8r3VaJiivo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=chH1KE0NYRK2U+ikbdTwu+rSJeXfn23rBIi1m1RXyy049BYH0KtgsiIDtGbEAz04lEs7Jj/GgkQbpvrOr765llhHcmEhJfFbBdNfFOgi0J1F0XTJbZx5aO8tFSFimHptIC3JjRhZktsZVgrEb9CfAPxIPpto9Sv8QMQsCcMg6ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TcpLktvQ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30762598511so55509001fa.0;
        Tue, 11 Feb 2025 07:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739287268; x=1739892068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xnjwo2PGBH+CZ30bW1uwfnyR6aLsiG23t8r3VaJiivo=;
        b=TcpLktvQlqPwAKpoFNVk/qyWv0bkgEsDotIOWE+I8pmHAGHRn2MrV2y0t73BMMX9HG
         1Ymekrz7g75rX5GIPtps+l2suDXwCEf/TMwhuFwgwHDbYe2T+fMO7OCzPHXMy4Al2fRE
         zPu3nxu+pSIMsUDwBABHkbQVEOMwsOGF5JOLeYnT2FMCBGe59OAbTRQR0GoM3x3A2OPz
         l20uaQ7QPWPeUypf05mx6gf1M50ZBbzxs2Q9qwy01YxU4zS7uanMmyoGysdyh5Xj7fRO
         iwzxK6M/hRO/TV+htTNYC0fgg1n55+Ekf7QRxgczIyFzotM7r2Ayzzb+QirxW7nULtAf
         pXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739287268; x=1739892068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xnjwo2PGBH+CZ30bW1uwfnyR6aLsiG23t8r3VaJiivo=;
        b=Ib9adR2rjExCj2Fxc18Ws9TEfhx9E1RhTCvsRgV6lYFFftgdEnNSf2UDYPgQGcN9BL
         ntUtayAmjwCA2gRPCcH03up1LH6WUc7+udnpuCvmtJOy91ktNDLV0K8g7eKP3+YOXsW/
         0ujowcKGV8oFhZHbvZuNa6yJ6rmb50IiyGkob72BmttC7eamZiPNIkaKLQJbP/+GLLpm
         E5r09msAMlhYM7hSXRImKW0DhZEX8kuIoigauTpk3VWmABYthgMC2p0pgdQi88I4y7C6
         waWxa6KDx+vCPbiyDqezJEEXMKg9ZuMUeRz516FZbWz/PVuO27th+2MCM8ys0qNDhJIi
         FmsA==
X-Forwarded-Encrypted: i=1; AJvYcCVJf1uGBGrpArLN8uy3hwy/j0Kleq8gA6raPMQxbamEIt6m/a89nlV4+OG4wEKzS1E4AFFb89TSGc89wJX25gc=@vger.kernel.org, AJvYcCW84F4CHPLO5Be+X9m2O89QtjlC0aVhw2X4KGBw9Ru6l624jS4OeMxXOdp3qhRwQrkugN2lO0vxMgLx@vger.kernel.org, AJvYcCW99U2qP1bo+iVwOTNjEROxoWSCpojyZvuqETCN37yTTD0egHzIfsU/4vF2PzoMEkVk6kIqmWvFKyFJVtc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6Yv21U5HNnM0J/9EpoW4hHYDLiMGgn3Y8mHp3r5QSHKBHsVLn
	SBlMP9f6PUVF7ycO0dnnZyi2W0qSvvgIyhQKq2rutsOr+Lj4rwTr9b3TQ2bVu7WJY6+vdgma9xq
	IaG2hushzwos8vWf53kdde7oi2tA=
X-Gm-Gg: ASbGncuPS4cmPIqOLKKhKpOLWMpC+a4AHo/2PGkMPSMXgS+M1u+UIMOIKQXyP8RVw1c
	J5iHji1RyYr/RXTLAXFfeyHxg7+YNQb1sIYdTAVyDEl7hZ/9U8tdCWJ6QPU754ZvHNq2vj9QmrJ
	THYNrKZy+HCrcx
X-Google-Smtp-Source: AGHT+IF9/np0Uwd3ANZLVrHBjIPig4Gq5zPNAEWqAZDJLBgIqZ+PNdUYwhPgJvesjU08WDajJSd1ZTQf+LIHYdfNFr8=
X-Received: by 2002:a05:651c:10cc:b0:308:e8d3:7571 with SMTP id
 38308e7fff4ca-308e8d377e8mr27162871fa.31.1739287268373; Tue, 11 Feb 2025
 07:21:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com> <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
In-Reply-To: <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
From: Tamir Duberstein <tamird@gmail.com>
Date: Tue, 11 Feb 2025 10:20:32 -0500
X-Gm-Features: AWEUYZnbK7wpIePuMdo_ZQGaAAWIhBjQOpSs8ycN0r_wyPlVOrheb1JrxDrN4JU
Message-ID: <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com>
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
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

On Tue, Feb 11, 2025 at 10:18=E2=80=AFAM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Mon, Feb 10, 2025 at 3:55=E2=80=AFPM Tamir Duberstein <tamird@gmail.co=
m> wrote:
> >
> > Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module alloca=
tor_test")
> >
>
> Hmm... The newline issue is still present in newer series you are
> sending. Maintainers need to fix this manually, so please fix it on
> your side.

Drat, will do.

> > Acked-by: Danilo Krummrich <dakr@kernel.org>
>
> I understand that you re-picked the v2 ack, since it is (at least the
> code) similar again now, right?

Yep, I mentioned it under "Changes in v4".

>
> Thanks!
>
> Cheers,
> Miguel

