Return-Path: <linux-man+bounces-2364-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA603A2D99A
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E305F1886EA7
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D58243391;
	Sat,  8 Feb 2025 23:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lF1Cyjpy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C388243369;
	Sat,  8 Feb 2025 23:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739056332; cv=none; b=QMnYntRY5yHJmoc0cwLqgBFBm5LGoSAxWTwFaKznvlNKYbleVerqB/b0R+5/ULJEpo71INp+0aDFfRKrCKYJUyZnRX3lIaRKm+AD/R/YlFOGXYuH4xBRscZnw9QPi3gOsi81KQjzGklEahl80jihSkr4y6pBCXdeip3yo0mnCFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739056332; c=relaxed/simple;
	bh=1wjV827th3jTy0F70iCqKUZvaUREOcmXM+A5mwYyjWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhcaTZVNmxYunSFr65Qoy+GYjfTvx2rYXtmBwJGp2R6RE0y+V5JBhpGeGpkaRqR9Gu/lmnG4E9U/yXlLsSetygQVs6JlOdMQ+YnYn+D5aw36afWncz1L1lc95hVbbn8Ft8wrhBy/4f1xG0s6m7fiJiS/+wGawyfc43M8OM5xAcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lF1Cyjpy; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2f9b8ef4261so774509a91.1;
        Sat, 08 Feb 2025 15:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739056330; x=1739661130; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CRpcGZiIRyK2SU8MzkDbiFYnsv3XNCAG+BR41Mw63Jo=;
        b=lF1Cyjpywe5xxC9cui8eTz9GTldcepUvNpu4BsC52Q+CU8YFo9/Z9u30xYh0OzOqfK
         a7VwemEL3lEyZi8oeP6HpEbmpiIRzEg5YnOaM2hP9QRAJpEhBmUYkJG9vofSfJa3S5YL
         +Q8yIqmIFSmSBGn7vZIrMQM60/AsBgw751j1uxGMcs0gFtFh5HdYcyyds9kk85FJ6XDh
         klPffVgW/rg4GN9ErcgfNlAO0Ahbd3vlOX5smX8Fh2BOkC1LOSOGmhtctZSfuloFFSlQ
         sCFJCM7O3ou1xNekJ9t/x1+g1zRPtmHJlcWW4DYndxb1x+SbxFXH4LKX3mkfDWLAg2Xc
         9ydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739056330; x=1739661130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CRpcGZiIRyK2SU8MzkDbiFYnsv3XNCAG+BR41Mw63Jo=;
        b=VYP9RdMeOAkbT7Eh0j52w7ZkcUXuIEvACfcLJxxNIGF/ZKPW6RNNMEJJorGNRoW+S7
         +xIIhL5xAWxiAAf/xgX+RlT9KXeomm1Zt39VX1sWZ/GqR5YCwyoXxCOXHQIB2lTVyu8B
         akbvc8GHpJ0WSyfvAS5EMoroOw1EYqukQrYe7BtuLAUPOmSdkBGL0KBckHtVlZw/EnXJ
         RKb+36L5dNDS7aMnK1EV91fzfjwhO1DvczbpatNCxxbGvRSxuyQ64Sob4/opL0UCE4F3
         QVC811SpgdiZWHJmVOtGY1qmC/Yk9EE5izrPvh1P7y3ysdig5itovPvBldl2YqjkzDDU
         eMHg==
X-Forwarded-Encrypted: i=1; AJvYcCVUXcTKiHtnHFQJwcsNiFgZe/M8RRPmzAn79UENz2pwUPMlDD96Gxi1GDIaHkCL/eYvEIPtNlbvsGfS6Tw=@vger.kernel.org, AJvYcCVWK6mTvGfjHBXpiAw0jGv9UeUBPEhoe2vazLxH2GnWAI8NlTLtzALkiW2FlssxHSP8Z+9AbgwFb/2jQL8WD0Y=@vger.kernel.org, AJvYcCWX+VFlVib6vUqH6N9jXPXS2hUx/RavunmBf0Fz8ADPWGIXa+FafKHxD5WirLJF9narzWUcMdbgAuZx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5TrE8SQ9uicsBHrz6ZfqTDgwZOZeYZWe9V6eGx/LqKWjW6Kxj
	2H+ng3rOn04SXYIqHVF32usqQz1koY5U9LFul52AOrU5jHAh34OTTQwBKCFrP5wpbiJzGobBq0E
	TIiA4zdUqtQv2eaGr4XxYoYlNA7026ayz
X-Gm-Gg: ASbGncvoMnZlp3kKeFsQ49O3bT/zgiwdaaRcMEVykHbXhQ8Xr1DFd1wfKM0PZFv04AM
	oblzuJ1H3f1zq40VOQ+xU3soauSxy+dKJZnW7fu1xMi5p7Vrjnbzjm1vHSalyPlZ3pgHX99ZH
X-Google-Smtp-Source: AGHT+IFOwHUa+EQds2ERkGqShn+A3uE1HTLyFgPcIBTd/8QwH661oiDAJjtgLLqCW9pSlXqx7CBtKgGhp/pmLLZhg+E=
X-Received: by 2002:a17:90b:3e8a:b0:2ee:e518:c1d4 with SMTP id
 98e67ed59e1d1-2fa23f5df75mr5253683a91.1.1739056330467; Sat, 08 Feb 2025
 15:12:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux> <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux> <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
In-Reply-To: <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 9 Feb 2025 00:11:58 +0100
X-Gm-Features: AWEUYZnnbZ4EzpWLmE1Sqj0yqRAmogpbbReGjnIUekwxJBESoKEfvpmx3MJBQyM
Message-ID: <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com>
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
To: Alejandro Colomar <alx@kernel.org>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	Danilo Krummrich <dakr@kernel.org>, Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 8, 2025 at 8:18=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> -  aligned_alloc()
>
>         It seems to be like memalign(), with *some* input validation.
>         It makes sure that the input is a power of two, or it fails.
>         However, it doesn't check that the input is multiple of
>         _Alignof(void*).  That requirement is implementation-defined;
>         neither POSIX nor ISO C impose any specific requirements, so the
>         requirements that the input is a power of two are imposed by
>         glibc.  The documentation matches the experimental behavior.

Thanks Alejandro.

I am not sure I agree -- I am confused about three points:

  - I am not sure the documentation is matching the experimental
behavior. For instance, the Linux man pages say:

      "except for the added restriction that `size` should be a
multiple of `alignment`"

    But a call like `aligned_alloc(8, 9)` succeeds. What does "added
restriction" mean in this context? i.e. is it supposed to fail?

  - I am not sure if ISO C intends to require the power of two or not.
One of the C23 drafts says `aligned_alloc()` is supposed to fail if

      "the value of `alignment` is not a valid alignment supported by
the implementation the function"

    And then, elsewhere, that:

      "Valid alignments include only fundamental alignments, plus an
additional implementation-defined set of values, which can be empty.
Every valid alignment value shall be a nonnegative integral power of
two."

    So if those are intended to be connected, then it sounds like a
non-power-of-two is invalid and thus the function should fail.

  - What Danilo mentioned about the sections, e.g. is the "ERRORS"
section in the Linux man pages supposed to apply to all the functions
documented in the same page?

    Would it help to somehow indicate which errors apply for each function?

Thanks a lot!

Cheers,
Miguel

