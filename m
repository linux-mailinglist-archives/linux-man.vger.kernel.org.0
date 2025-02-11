Return-Path: <linux-man+bounces-2396-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABFCA31847
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 22:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AE5A3A97F8
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 21:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9300E268C50;
	Tue, 11 Feb 2025 21:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WR1bpb6Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B892267AF2;
	Tue, 11 Feb 2025 21:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739310666; cv=none; b=ovr1GAow+zFOGu68OREcmePnUFNqXSKQcXYMvj0XHWdP+7CU9SGojpPaCwMgWbsfX5enj7ctfiAi9MZD/c7UThkoYw1VELnH4HlMPEBO7JdJojOZY96aiVdyxUYd6YqLhZua8n0wcbE2NHtw0OlOF95G2I27iOyu7nqaHbm8jM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739310666; c=relaxed/simple;
	bh=2DKCEXvbrTmJKBsTkViRSKgVTIG8BxV3BLySsdOf1R0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VJb5Weby9Kw+tn6Wt5PcCJuh02Evn2ipvd3O3KKufRdqRcR4B9NKFILFVbp+tcicnlDIswC55WSvMpjpsRKDFDm5uML4AL5VF0BL0627YhG4AAeHBnWtgy9+QSoAhNda1rjBX8un+MNQURi26nROHF4TEL6700VUlgNylaqcGHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WR1bpb6Z; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30737db1ab1so55830031fa.1;
        Tue, 11 Feb 2025 13:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739310663; x=1739915463; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DKCEXvbrTmJKBsTkViRSKgVTIG8BxV3BLySsdOf1R0=;
        b=WR1bpb6Z7wnHVo8EXoPKzHZvD07jbNOWqsdIjR1XangqdJHlSETt1YYXPsFlcVR8cd
         n77KYqKOdCApQFR8Hf86cBIIkswFpG/SvTnn+yqV8kVGy4MVje8vlJfSmgs+AmXeWjqi
         NseYmlIogQUkLmt6e0mqd54EVnF0mVP5BjzBad+nJWb42ht3+SpOoXfRENShmtSOBB7m
         C7RxcW4PSksPGg22e/XCt+VF6sAXVur/eoSXoGI2RSpd6E3uWeWiiFv+jNzUmz2WjoI7
         pinK7x6avmNxXY5CjQ9Ek9T9+xcfyf4NDTE1ij8I0AXEkaUdRsRuy6DZ35yBwjHtX3KN
         HkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739310663; x=1739915463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2DKCEXvbrTmJKBsTkViRSKgVTIG8BxV3BLySsdOf1R0=;
        b=tSIglsmfgRKax2zTMWbxLEji5QXTqH7QKZrRyp/wZWgDlvJv+cNm7NaF7XRV1dfqCG
         cmZfZINrkWVgsq/EolZwiEPSESFXAK9RIHTkEeus3b6Q+l7h46D+H7b5G4+ert6wX1uA
         CUpz7yMPkUQvoly0ImyiXc+PaUSZBQ9aGtbWrVKOkxGN16ZHF7bkEUVQJQCT23gC9wfW
         ZoVMxJ6N7PNKtAI1kHqIMLlUuxHZp1V4tKij+1O6PKQWrp0HOAAujv3wF8AlMxEHcBKH
         oE269464jMootJdJL9sGSAl/KQTdogU3AwnYajGBZc1cIbY97zrF7HT8y3DGcbFRdUU0
         WKiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJp1qu3QO3BgU9rUqsPxYYXZVQiAYE4HyGQGzp/76ETcnDnY/rCckDuXdOvtLN0eauXdzldSsB937e@vger.kernel.org, AJvYcCVZqAWdSam2tb52GYQHGZxJmgDSA++/x7SQA4thUrZN3w+qe3lNa5JJkrFQqQV5k6biVhtMcleOBoOOzFCQRjk=@vger.kernel.org, AJvYcCWFdN3AVbaJhvPyUeoxoInSq+yBbAQiDaceA7aI5PnLSSbatOfy1RhyWRuh3DoaH6+0X/2kI7rKHcPS7zU=@vger.kernel.org
X-Gm-Message-State: AOJu0YwVkb7BaYuGoX0iEWs5W/EhCjuM9DJWMkpWI3jFAZTtMjgXBLJq
	AqPNjzJoZizlDDUHH6dXlbIr3+Yf2fJQbNvQONjgIOQMahhSLjwe7CD4PjkY7UqmnjQ5e+Pak6r
	8TLWsC6XhQBicvZqhx9oXjqMK5l6Jm6zajWQ=
X-Gm-Gg: ASbGncsGyU13ZUDukrkuNMnmqJUlq1d7eW9MlFnwzTZgjP24yIbbgRAU81SQ/5JdB8g
	roKVahLLimotGRsIl7x3CZoDS2Wwvl+410AKfsNnRejVYqwC0bVJJXZyOOsaNcTM5k/vcEZcLdf
	w/VrJfEr9AgHEd
X-Google-Smtp-Source: AGHT+IGzwiggNbjqPVugrE+jm/gfRA4MUHabs/xHX6J1Z5kCWbclQBcBCILlSG8yrCCxsRbic6LU0lIwgjN2cpYzfQc=
X-Received: by 2002:a2e:bc81:0:b0:308:e9ae:b5a1 with SMTP id
 38308e7fff4ca-309037ac758mr3223251fa.2.1739310662426; Tue, 11 Feb 2025
 13:51:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
 <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
 <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com> <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com>
In-Reply-To: <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com>
From: Tamir Duberstein <tamird@gmail.com>
Date: Tue, 11 Feb 2025 16:50:25 -0500
X-Gm-Features: AWEUYZmhWqm4JBp822Y-RdxrR6rME_rplLPuYpGiiFN0qOjts4M2UjUibNTlJMw
Message-ID: <CAJ-ks9njSCkH2AiC9gx+=+KOp=OYfdz1ph5n_xjVNxH+Lno2CQ@mail.gmail.com>
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

On Tue, Feb 11, 2025 at 4:46=E2=80=AFPM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Tue, Feb 11, 2025 at 4:21=E2=80=AFPM Tamir Duberstein <tamird@gmail.co=
m> wrote:
> >
> > Drat, will do.
>
> Thanks!
>
> > Yep, I mentioned it under "Changes in v4".
>
> I meant to confirm the reasoning -- it is all good, thanks!
> (personally I would probably have dropped it in a case like this,
> since the change in comments is substantial and Danilo was waiting for
> the clarification from Alejandro etc.).
>
> Cheers,
> Miguel

Got it! I've dropped it from v5 in which I've used Gary's pithier
formulation. I'd like to get an acknowledgement that the commit
message and code comment make sense before sending it.

It'd be great to get this into 6.14 so that local builds are clean for
the next cycle.

Cheers.

Tamir

