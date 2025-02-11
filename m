Return-Path: <linux-man+bounces-2398-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9C9A3184F
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 22:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA7633A513E
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 21:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F746267AF2;
	Tue, 11 Feb 2025 21:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TTPuPtSm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838C3267715;
	Tue, 11 Feb 2025 21:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739311040; cv=none; b=IBdi2DoKct17QKu5uZMBM/bXAxxMl6ubyqqvkxQzt4bwKmGea1MEUusYrsDcYY0JLDG01XwoILV9l3XXcFL3ZsXAUSHCKN7UJZwhq3B7TPxiXyAVmk/J3LYFV+3fCBsNTOr6fMZyvcAQ+LTDDE6EixLA9fTtG9AbJfYXl2F8yqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739311040; c=relaxed/simple;
	bh=c2F4YyO0zty73qP5MfZbEEE38U1+9j5KgY2f7LQMC10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MF9f/6Es0dixjo1aFUwOnCvJtrEJpjqpWYUlnKwoi7pYQVA2S+oaQ7pxflC6+ZJW5IqLAyrpqbV4iQt1XgCMZVKJUZEFq+hvQUDxAmZ0jtlrchclGUmw3xDEwGIhtDWuyRptRZaUyamZUA4pfEjEjZ3yZklncapeiu24IQaxpuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TTPuPtSm; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3061513d353so60972741fa.2;
        Tue, 11 Feb 2025 13:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739311035; x=1739915835; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2F4YyO0zty73qP5MfZbEEE38U1+9j5KgY2f7LQMC10=;
        b=TTPuPtSmvHRYlnVrbcu2s6KqIDjoRwDVt1kg9tgnd/j0TvwhoV1CcpSGEWhb7DmAu2
         eJ5scPciG8KfHOMBqrLHt8MtHWxT/ANNJeydW8ZH0iPOEwO37FGGVuMpx4esvZHVte4D
         x/s+Css8Py9RbF04qYsE/W69Cw0wQg5kg09KydiwE0mdYDT08u84AZg5k4YK2PeWgpe/
         BeVt+6tFgCeXUjmnh5NkMHlT9jJCehZkEuqPkpcVj/2d2kPXbrcO4zpvc2ENkKZgIw8F
         +0Lgin0xbidyPLAcb87qMZfzHfp+amSdsxmzojhqocdC7s7OORfQeof05Jzb97v/tXn0
         Sptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739311035; x=1739915835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c2F4YyO0zty73qP5MfZbEEE38U1+9j5KgY2f7LQMC10=;
        b=ouJPb5JLpIyGuQNBD620uePWTgTChVTAR+/54jT9jQbXiwoXCZwwefwSZ5o/8P8mpE
         kbqjjimwv/EZtyEvQhjipDiE771h84zBOadjpx90MBXJhjPGYRlEigruSV6eWiY+ko1+
         GGFW5cy7Ua+MOjWb4J2dmEhHGC9ErkmzpIXF4Ae51vKC+2Uej1DhIicqa5UiVtyEexy5
         Jqz0Qjp/TKGtgALgEcGGqO8du3vYv/y08rNyhigzwLD21VcNmsmYxFPLkioU9i8/xsIJ
         a7wxZ9W10qq9mjUH5FcmWXTIaB0pDvHdUPDgUXI3XaAmdUoo0NnW7/0mSMzLY9zu+GyO
         eYPg==
X-Forwarded-Encrypted: i=1; AJvYcCURaltPbLqYvyQlDmGLbfKmP1x3zpBZ1ou1T0s2bSjZZvqt3jH7BYq9mFIZZtP0DlryBffzytGVNsHsO2M=@vger.kernel.org, AJvYcCVsTeQJphyZQvbvT8Ko7/Fv9NZqC3wj8pzOlgyZZNnhcSDeJuZVkRiV+oBY7WzvRRpRb7qDjkmvYcU43tSM4Z4=@vger.kernel.org, AJvYcCW1IHCeEO7bUVfutezhZ/6KrLBzVdVnDweCcMRq9D+oahxhn1PqDTVwkZTDKeJI900YYHXfLiITR0JJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzFnw7j9fq9M5xGX6+68DR3VsXYqWaXwu7jIMZYHn1m2rMzjXUZ
	btygMa5Jr8nPhyG2uXKJ7PYC2P7d0hXc9VBWO4OaUNeWaEQtkppJlLMJG2ybvHGU7PVMQknSU3U
	WsXerapJSVPawY5+84s1QD1tnYvI=
X-Gm-Gg: ASbGncuIaEOFc2TDPQu97LpTRnq70/9sz7EBKJ3fvS8PtNxx7kNhZ98efEZ1c8cgZAu
	+4/EcO1mO7zd/cNPDDgE9fS1QHlvyI4yQ/1zRwTajDLazvges57+SL2rqigW2vO8hvzJh7x8GSL
	Z1zg2cXw3Wa/r8
X-Google-Smtp-Source: AGHT+IGOrQD8MxdRfmx9iEDiigrvV+LC60zfPkJa9wsNZ2IYahMoY1znouGoofXO5nJURcbJHtFuqGFw30gWvKVUqTY=
X-Received: by 2002:a2e:be10:0:b0:308:f75f:441 with SMTP id
 38308e7fff4ca-309039149f7mr3478471fa.24.1739311035451; Tue, 11 Feb 2025
 13:57:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
 <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
 <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com>
 <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com> <Z6vG9QlPbwfpxwdJ@pollux>
In-Reply-To: <Z6vG9QlPbwfpxwdJ@pollux>
From: Tamir Duberstein <tamird@gmail.com>
Date: Tue, 11 Feb 2025 16:56:38 -0500
X-Gm-Features: AWEUYZnzR1AtDjAcjoltaT7aZuGANxavWMnLa0DRAmHtuXs50HetFZqN4hA1bDA
Message-ID: <CAJ-ks9ko_cGmOT3=kkcS3RAJ5pB1dAFR2GfXoE+C7c_k_8_3GA@mail.gmail.com>
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
To: Danilo Krummrich <dakr@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Will Newton <will.newton@linaro.org>, 
	Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 4:54=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> Agree with Miguel, better to drop it in such cases.
>
> But no worries, Tamir. It was still valid in this case, which is why I di=
d not
> complain. :)
>
> Also feel free to keep it for v5, moving to Gary's simplification.
>
> - Danilo

=F0=9F=AB=A1

Thanks!

