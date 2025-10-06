Return-Path: <linux-man+bounces-4060-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C7BBE065
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 14:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CF3F94E57A5
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 12:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F62727EC7C;
	Mon,  6 Oct 2025 12:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ol8GiIOA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F627EC73
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 12:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759753741; cv=none; b=aA4gINHacDFAe8WqMxthzDCEt7q9KG7jHlIAIWoRvfQipyDRoO94Zq5cNzcWkRKGZygltU8GAReZsXemZPZaoyc+sW5ytNehfFNHx5EE70PQKAhQXVVzoS4LQrvtYmxLRUs8zyu6zLPu4WuMYcOq2/iVVLenDa+rv71sXOvt9Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759753741; c=relaxed/simple;
	bh=b00opw+6mYr1Uy0c/Fo91Fqqb9nqDF5ydZopLlCzlUk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QbbX1wvHUZ4RvvbRRBDMzt1kPnX0+3RfIBYqEpUZGq7mT+YF3tIFswXGWaj3burNYICmLNkLj1H4nOwW7QGhHVO9iV2EB4JMC+bqv4x5xl+FPWhjUscyWrBR9rFNEjDLkrvf7RoV9h6JnBrcAhpczF3s3SaKbBgsxmwRyhH6gcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ol8GiIOA; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-633bca5451cso5046194d50.1
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759753738; x=1760358538; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ8rLDf572wBi6nFkg5oZzXOj7wlaMGEHsz71YCEqZk=;
        b=Ol8GiIOAiK94Xb+trFw4aGOoJJqdakEeHxFA6AClDVIUq6919LtjWv9u+utSkemr2L
         xjo2TnRnQUmyHkFmk3KAa+poD9Zkdg2BwcbZ7jbx1N2KpEoy+rLfBKqfQ/lD9XR3/ayh
         torJHmwx9v39CKcIy6myktRDj5smcEH4o9xe4Xb3lAb1fkoLmOwxdO1e3ydWszKFzlST
         Q85yiuHfT4QyyRF0G1irbp0KBSsPMh4e7c1S41Vp7SioaaEKSePbSMKC9WML/dVihgmb
         XitE2waPG2EEFnoi+IsJV00uxxl7wXUzB9jAOb9OsZ295+YvY689bBuOj1jWiawRL43S
         LD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759753738; x=1760358538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZ8rLDf572wBi6nFkg5oZzXOj7wlaMGEHsz71YCEqZk=;
        b=qn46UIhIFUTfv2uqOTBIZS29MeHUSraBbbWM5k2J/8KbDcD9vpGwyUJMFJ4xseNa9W
         JELl5bjV3GxQ983HEm4MTtxgZMK2z2sVQzVtmrF2K94Qv+qJvwSRyq+c8P9sp7jusNH2
         UYSGemPFUN3xEuk5O/BM0hNd0yaz8D/6dF3lqEJ7xKbEqwMXoXgcbY8LFRq6mwhczcWC
         1Z0asqNH3vYZCfIC/1DBs7DG0mtkvbBamOqGpx9EZtwDZ09owuLxsxUAi5G9iRlC9GMC
         N7fxb0a35jJnyW86D5itIYPKu2SBYmfnYcQmPf7iAGfe8zeR3qrjPqBotJcMmlxb5Ew2
         g1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUtRGzK0THGV2a7x3blZ++ufgjMx60qZJSweN1YFPMJ/mOI/xnmpd0q1gdijLZHgumbX38GG7qRwRE=@vger.kernel.org
X-Gm-Message-State: AOJu0YwqLOERDWUAHEvW9hxeqQDYIZ8gbkRG7RG5eOrBamaUxvKuDrfO
	AxI+HqoxcpOmSbUBHn9wXusYvhPpIcSycVOMskedNY82Q3w7RZ409j8zXbKSKB+631pAFyVBhkT
	m/elKe057vFbfxLIeEVczXKUuONdmuqY=
X-Gm-Gg: ASbGncuMa/r4DO/0IB5JpsQZoXYEeAreWfnysABGq/FxI3MIdMdzeM9LXv7YvQANHB8
	UV7sxIVhicagX7+n4Gen3ms5sgSDFgXMXmHn8ZWht18qiNKv9yyPqFt9BtL0Lp2aomLxCPKtnX7
	5PctKuwci+3qfuneVooRiiZsrZ5omMGiK0J+u/iwBALHGb5AqpKDZpESISErvWV059jbduC5RWu
	KgtFiXxtPCGu5RSegKIihRQjxpQysQ9iXjlzsFzE82yqsgkbpKEg8H9WMUHCG55754kXpw2+80v
	8UCfin0Ty64=
X-Google-Smtp-Source: AGHT+IGxyBOtqrmJgptWhIjH511Drwzp7dCyU3zZOL6iejhpiqkgZ6Ll8uCJp1bvldnEudnBKA7HjgbaaEQLlclAMLk=
X-Received: by 2002:a05:690e:1590:20b0:635:4ecd:5fcb with SMTP id
 956f58d0204a3-63b9a0f36f3mr10004839d50.40.1759753738162; Mon, 06 Oct 2025
 05:28:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com> <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
In-Reply-To: <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Mon, 6 Oct 2025 13:28:47 +0100
X-Gm-Features: AS18NWBLb_3ZHV0ePQ50kz28rSLFv_2LNVD0h7IUtLffKFxBAFdQqyNbjnL4w9k
Message-ID: <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Alejandro Colomar <alx@kernel.org>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 12:57, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Luca,
>
> On Mon, Oct 06, 2025 at 12:46:41PM +0100, Luca Boccassi wrote:
> > > > > >  .TP
> > > > > > +.B EINVAL
> > > > > > +The source mount is already mounted somewhere else. Clone it via
> > > [...]
> > > > > > +.BR open_tree (2)
> > > > > > +with
> > > > > > +.B \%OPEN_TREE_CLONE
> > > > > > +and use that as the source instead (since Linux 6.15).
> > > > >
> > > > > The parenthetical in that position makes it unclear if you're saying
> > > > > that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
> > > > > or if you're saying that this error can happen since that version.
> > > > > Would you mind clarifying?  I think if you mean that the error can
> > > > > happen since Linux 6.15, we could make it part of the paragraph tag, as
> > > > > in unshare(2).
> > > >
> > > > I meant the former, the error is always there, but OPEN_TREE_CLONE can
> > > > be used since 6.15 to avoid it. Sent v2 with this and the other fix,
> > > > thanks for the prompt review.
> > >
> > > Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6.15?
> > > The syscall and flag existed, AFAICS.  I think we should clarify --at
> > > least in the commit message--, why that version is important.
> >
> > It was just not supported at all, so it would still fail with EINVAL
> > before 6.15 even with the clone.
>
> Thanks!  What's the exact commit (or set of commits) that changed this?
> That would be useful for the commit message.
>
> > Would you like me to send a v3 or would you prefer to amend the commit
> > message yourself?
>
> I can amend myself.

Sorry, I am not a kernel dev so I do not know where it was introduced
exactly, and quickly skimming the commits list doesn't immediately
reveal anything. I only know that by testing it, it works on 6.15 and
fails earlier.

