Return-Path: <linux-man+bounces-828-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA43A8B422E
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 00:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E81061C22556
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31A11EA84;
	Fri, 26 Apr 2024 22:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YRMpcOtq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E42F2F
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 22:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714170708; cv=none; b=Ordx5qZXcC4sH83R+KvPQcjXEvmqnx1MnvJR9mEEgt8a6fofqQ+JavBKNYv5E/UjxvzQ917wHiwgNW7IhneBCtpcGYdyP44/L61OHaiI3/+C9evt0lDSJNxVcG4rHybT9kxaKyBouu04HMgMPPsS5DOWFJxBI3gVLvRg2YE+OQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714170708; c=relaxed/simple;
	bh=SClYfMkS3Riu8HcqIFe7YlXSjeQaAOmQjchuJLd+uIk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dFhIwCnqxOFywDKS5WU2bSPm3Y9pmwubzuefw1Q+pt4RHx0v1pRVU7dRk1u8yvsNmPxYQSj0tMwjVy0xAlJEoALFVDbfwte6C6wiCkLIWU9u5wvyHdJcI/svtGc3xojAOIZFB+HVZ7i/TFTq1ngAIpzeyZSfPMBsiQdIQ35F8Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YRMpcOtq; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6eb93ec8804so1541858a34.2
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 15:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714170706; x=1714775506; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IiZxdXD3l1ANm5Ff7iaarvgqQWIQ8T3+pwYGrNBxVGw=;
        b=YRMpcOtq6jf6ArmdwZDaI0ROwakWPgi47MTIHjQqzauVm3Ug9CoGoaQE0biqT6ANF/
         vWMOLcGdErsWT12WCDjPh7aleo8TPIamRe7CZaR5JMxw1uTepGWmfgoHW9qrp0yhL8/A
         4nQ65i8QJadqUx0lEsAAzsjg5UJG5CWDOLMuqkUXmnu9IWkmHeGNoOxGagmB37kh+y60
         qLH7tNdFnCHdsRerIVyw2/CLo9rD0zY7mySsOY0l7/Gz/pxk6SNxl2zzc3CAbGx2Mxfw
         8cfLF0s7DfXa/+rx8eTn66NLsSRhKTPvcTINTuy0Dw7Bzu+ZviRdkcnTu3GfR/eYt0ok
         eJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714170706; x=1714775506;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IiZxdXD3l1ANm5Ff7iaarvgqQWIQ8T3+pwYGrNBxVGw=;
        b=Kf/P+MnxWQYiBaN77isPAuK7cWiz5g3FrpBAeYZUk13+ckGRQRZYBeGWtfgT4EVPmq
         G0kvfqOWfg5CIiysq3+NAioyr9IgIQ4iOaByFA3FIQBoTa3Emqq3ZVOOsDp3/RpwekyP
         +NLR/9ufMwHMMJ1Z/UOrXlD4u5SFY3tQT2iaDlsG9/gRvqbhQCk/Iv/nUDrEOva34/qt
         TIjxfsIOndl5c2ra0tESZl3jYGvjanVII5agKGZXSkcdePWIm9e00/3YlkoO7K9Sq1Oc
         UnVRd7qAE/KNvTJVYSkdNHnff16DfyjBG5KgTZNzVX1493Ik7nprHqJ19Z8gu0ju1m43
         kFZw==
X-Forwarded-Encrypted: i=1; AJvYcCWkyOrS0mgcOF/Ecu+3fmb8LpAEDm8VTNvDABmDp6XgLUtZ2vkEtrNjRvL57MeIACbjnIXI2CCPRwn8Px7Bcl754Va6je0YkehK
X-Gm-Message-State: AOJu0YymOT2ZEuZsAj3MXLz/7J+IGlk3xbVN8jYsH8/dLYJZac2pLH4z
	VjlEdsvlQS4EqHmO9a2XuQeHsLPWvM2AcZYD+hE7Fsq3fQIhTooyfjaHyQ==
X-Google-Smtp-Source: AGHT+IFCAY4nvTdP80ZxzE6YKE28Lggou7B1HrUUgfv8J8iMByOO7ymTJAmjsx5AMUtf0OI3FZqCsg==
X-Received: by 2002:a05:6870:b683:b0:234:56db:7c8c with SMTP id cy3-20020a056870b68300b0023456db7c8cmr4657316oab.57.1714170697478;
        Fri, 26 Apr 2024 15:31:37 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id fu16-20020a0568705d9000b00239389f66cesm3437665oab.47.2024.04.26.15.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 15:31:37 -0700 (PDT)
Date: Fri, 26 Apr 2024 17:31:35 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org,
	alx@kernel.org
Subject: Undeprecating man(7)'s `HP` macro? (was: Proposed v2: revised man(7)
 synopsis macros)
Message-ID: <20240426223135.tr2q5ty7nya7yv6s@illithid>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
 <ZiwihxockR9UOCxV@fluorine>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ztcq5cailgbvlm3l"
Content-Disposition: inline
In-Reply-To: <ZiwihxockR9UOCxV@fluorine>


--ztcq5cailgbvlm3l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

At 2024-04-26T21:54:15+0000, Lennart Jablonka wrote:
> Quoth G. Branden Robinson:
> > I have been dissatisfied with groff man(7)'s SY and YS macros for a
> > long time.  My primary grievance is one that has frustrated its
> > uptake by documenters of libraries: the macros are designed for
> > synopsizing Unix commands, not C library functions.
> >=20
> > After working on the ncurses man pages for a while it became clear
> > to me how to modestly revise the way groff man(7)'s SY and YS macros
> > work to serve both sets of authors better.
>=20
> I=E2=80=99m sure this is good and fine, but I do wanna mention this: SYNO=
PSIS
> items with lines after the first one aligned, possibly with something
> on the first line, is like the one usecase for .HP.

One use case, yes.  `HP` is primarily presentational markup; it's like
`P` with a stylistic sweetener.

> I think it would be good to mention that,

In the context of `SY` and `YS`?  That, I'm not sure about.  While `HP`
would save people from the line length management and text alignment
problems that turning off filling causes, it still wouldn't deliver
semantic value as `SY` does.

I believe we're pretty darned close to being able to automatically
tag/index paragraph tags and synopsis keywords.  (The main problem is
coming up with a convention for representing the hierarchical structure
of a page in the tag identifier, to avoid ambiguous references.  This
convention needs to be robust to the crazy characters people might put
in a section or subsection heading.  But once that's sorted out, we have
the machinery we need.)

(Incidentally, this would solve the same problem that perlpod spent
years spraying thousands upon thousands of `IX` macro calls all over the
place to address.)

> even if Groff deprecates .HP (because HTML is incapable of expressing
> that?  I don=E2=80=99t like that reason.  Besides, CSS has `text-indent:
> $length hanging` now).

I had a vague notion that it did; thanks for confirming.

I'm actually fine with un-deprecating `HP`; I've felt tempted to do so
several times.  (I just didn't tell anyone.)  If we do so, it'd be good
to teach the HTML output we generate about this CSS property.  And I
think I would retain this admonition to the user:

groff_man(7):
            ... a hanging paragraph is not distinguishable from an
            ordinary one if it formats on only one output line, and
            non=E2=80=90roff=E2=80=90based man page interpreters may treat =
=2EHP as an
            ordinary paragraph.  Thus, information or distinctions you
            mean to express with indentation may be lost.

But if people use `HP` only as they would `P` (`LP`, `PP`) with some
presentational sugar on top for certain output devices, I don't think it
does any harm.

In principle, if I ever deliver my "tag class" prototype,[1] we wouldn't
need `SY` and `YS` anymore; a page author could use `HP` for a synopsis
and bracket the keyword with `HS` and `HE` (or whatever the tag
enclosure macros get called) themselves.

Hypothetical example:

=2EHP
=2EHS synopsis
=2EHS function
=2EB wborder\c
=2EHE
=2EB (
=2EBI WINDOW\~* win ,
=2EBI chtype\~ ls ,
=2EBI chtype\~ rs ,
=2EBI chtype\~ ts ,
=2EBI chtype\~ bs ,
=2EBI chtype\~ tl ,
=2EBI chtype\~ tr ,
=2EBI chtype\~ bl ,
=2EBI chtype\~ br
=2EB );
=2EHE

But `SY` and `YS` have a 15+ year head start, and counting.  I have no
particular thirst to kill them.  And the foregoing might be too much
markup for the median man page author to tolerate.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2023-10/msg00034.html

--ztcq5cailgbvlm3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsKz8ACgkQ0Z6cfXEm
bc5T0xAAjoArYK2COgykzcFoK99Z2QsipCxfs68HfSVEPz2zBlMUGlad2beWr9VB
/wiwxWYs4Oku+ZtI4DcbT9WYnO5gZrsKqfnavbkaefueXs6XE5RuLJ4SSYyGw3A4
x/Z9wt1nT6qkHo25Mb4D9sGwvgWLFm/esp1d1a466ezSYq51hsjPAIThnkKNyClY
ejn5TnS8b1AxXvdYStwO3BWNmHbClHbfOgaiTO+gKSgSoXQWMogKiumXcnExkrtg
6JPLVcjHev9zwiGN7IDj2h+VdgENBHU+112W3wkxqROO/KxdyOmZ2hBmGgNYEJCH
eGhuwqQjZ8/k1IN8h+eZCLrBj4HXD09m7wQxAh6Eh8GCjyj95Z0xMs7zjZ9o3gsf
i5W09+niifuIKTdreQsCB9NqdO5+rER4h21u+XiTPNjm6bXPVq4+nxeQxcNqWl86
KJjBoRjjXZhzwTSh0AaFXM5RJasKFJ9TWAgNqcrW9KW9mQ+FDHHUdCKoFp7iazUZ
zN7CvdA8y97F0vYFNM+Ux29dTj+nWcrLMq1FsLULaOaMjm7ZT+HQ0k0uu78WFVEA
V7tAMtwk7+U+CWvUM5wXyZdp2vn6cqp/hpWcOzAEec2qADgzQM85waYDSq1Cg0ZG
CTapAK/HVnD26L7y7+RNysTOz2l1eMPZUxG2eUif5z+1jFa22CQ=
=u+Ta
-----END PGP SIGNATURE-----

--ztcq5cailgbvlm3l--

