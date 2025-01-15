Return-Path: <linux-man+bounces-2241-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 518FCA12A15
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 18:44:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 775C7188A826
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7611ADC6D;
	Wed, 15 Jan 2025 17:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RIEXZfFD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B115B115
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 17:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736963090; cv=none; b=hzMXkzQpBsADmBGgeVPoeLg59fACzTn3JO1KTm2tIH2GIj9Pq3BQwCOzM4ZzQNFB21Nm1USoEgbeAIcEYi9N8J2hvZBUMj/2BRoQ1oysLKJofJtAbl64JPvvFeVwxmGBTQOkj/+nIwBW5pltj1CAUiPxO1HDtoT+eORHwiIzOP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736963090; c=relaxed/simple;
	bh=6tgvmvi28+6O4hnqVf2/aiSzM8uwbDiPhSXN7evXGI0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mdOZgsvDN9Ka7e4xhSamBVP4lbH8MoDFO4ujIab47t5Q19VGLIvnpqUs6kL3bIVaN2Z8Waw2Vn6YbOWogEhVgzfAytBTl/ENWrwWuBTPTjRPQeItXBlBokDvohtUU9YJEfDOXgS8wCNpfQ4UeMuz1yUR8vv5ZsHLqWrRaB7hck0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RIEXZfFD; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e1158fe3eso329a34.1
        for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 09:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736963087; x=1737567887; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VrlUTXmFTmcXhD8L7cKzruyDsxMjRO4h050+7SJTTsQ=;
        b=RIEXZfFDsshzmzTVXJsBnmBDfSpFYt+j/clIo00FhG89mVDflUIPEbzKmtYsswDrmE
         PYNRZnTNtoWVPh1Lb1Ui0pw43x2vHM4HEnZxVfa4jFZi7RHb2plYDU5FBs8drKAfbbHy
         Pblo9ZxLMiKmTT/vQuS5YZ+JB8mXEOuK9/bYaGTmhjpwl2lUoi62RGS22tNjYYPLxrBo
         ZkzfurJ53/OCwmvYxQuUz/sjvfombJqROPrr276dqlmIf3/DbxFAUjSj6hcZDBbVSOw0
         h4u6hMC9UVLrh5OgwbE3fasCS4zryscCBa3vSVr+8QuTOGbqZjvnDwm8ErZGs91eCT6x
         uPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736963087; x=1737567887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VrlUTXmFTmcXhD8L7cKzruyDsxMjRO4h050+7SJTTsQ=;
        b=UXq+XbHl5vYn7RlKXHq28otj/lYAyCpvGBFklE8woskalWws/vSEROILmnAjEeBXZ1
         EduY0cmj9DvuqG4ygYlbE/0xCvkh7ooavxw9bFRHSry+xfZ9+KIg/L9keoYasLci4ioX
         2aLmgdDkXhhRzGkJbWVE6OhU+2+lZihq1zSJBewkTBwcd2HzDQdlKQ/bX2U80wiH/Y8t
         FbImIzIG3t8ulEfVx6GmhCTj0Ad0PjGuU/bmmnIq9ID+SiajuPPFnXn2OSt6jgRwCxlj
         54xfnvKNFmXwhox8e3wrrdxa8CSFOP3vQGVMctujUJ/OKRhM2M0kiUHhdmnybgD0rH2l
         i88g==
X-Gm-Message-State: AOJu0YyoiW2AJ4CpZEwjyND/KQFm+MHvN7KRMiXJ8S2iPIoIkiGweNEX
	wnlD8iJnNSBlLiX66ydeFJ97Tr1CN1XShptAFCFMf/Ok5oVJcjlrzPMFOg==
X-Gm-Gg: ASbGncvB9dAG7j+ZeSenqf43K03b5Axc4bbNtggeqegSGXilm9EQjKEDYD+kOYH7cGP
	m+XnWuqAXnau7BKOqxcoNC4zOp9zi6LcUHftAEYTlXIU6M8p/DWDtLAfhxLWRuQcHtNTQzIbAIz
	hAS0HOlqocpKUfmEIwJKd0lsDjyiG97dMKPYysSNsIO6DyJNwIJwnSuehnFSqPOWUd1HH7ogvuN
	e0ZNsyuvzhCTo+Ib3NDLu4rVlkDAvOXJKzV+N1HxyV+3vE=
X-Google-Smtp-Source: AGHT+IGigPvNckFmKqg/XM7HtkM6D2Cx3595iCDpNNAwKiXlV0qmBOTaHl4HYc2ca73KA+iAkbkE0Q==
X-Received: by 2002:a05:6830:6a16:b0:71d:548d:6f76 with SMTP id 46e09a7af769-721e2ec0c2amr19845583a34.26.1736963087141;
        Wed, 15 Jan 2025 09:44:47 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72318628136sm5822016a34.60.2025.01.15.09.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:44:46 -0800 (PST)
Date: Wed, 15 Jan 2025 11:44:44 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Jason Yundt <jason@jasonyundt.email>,
	Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <20250115174444.tfoak5cbsvwugxg3@illithid>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
 <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>
 <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>
 <btbgsc6gxcspjihye3nm6wippj433j6qwdyxi6mqsyujer3s5k@o4sgqstgofmp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qtsx3yucs7rhmz7p"
Content-Disposition: inline
In-Reply-To: <btbgsc6gxcspjihye3nm6wippj433j6qwdyxi6mqsyujer3s5k@o4sgqstgofmp>


--qtsx3yucs7rhmz7p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
MIME-Version: 1.0

At 2025-01-15T17:47:58+0100, Alejandro Colomar wrote:
> On Wed, Jan 15, 2025 at 11:21:02AM -0500, Jason Yundt wrote:
> > > Makes sense.  How about a null-terminated string?
> >=20
> > The term null-terminated string still has some of the problems that
> > I mentioned earlier.  Specifically, people think of null-terminated
> > strings as sequences of characters.  It=E2=80=99s easier to understand =
how
> > the kernel handles paths if you think of paths as sequences of
> > bytes, not as sequences of characters.
>=20
> Hmmm, okay.  Maybe I'm too biased as a C programmer, and this being a
> generic page for users it makes sense to use other terms.

There are many ways to represent strings.  C is not the whole world.  :)

I think Jason has a good point.  When considering byte sequences as
simple small integers (some values of which are perhaps invalid), I
think it's clearer to articulate them as such.

Here, for instance, if I'm understanding Jason correctly, I might say
"byte sequence terminated by a zero value".

I think assembly programmers used to call that "ASCIZ".  And they got up
to all sorts of mischief in the eighth bit...

> > That being said, I think that you misunderstood my two questions.
> > You told me the current state of things.  I=E2=80=99m not asking about =
the
> > current state of things, I=E2=80=99m asking about a hypothetical future
> > where programs started to =E2=80=9Cassume the Portable Filename Charact=
er
> > Set (or at most some subset of ASCII), and fail hard outside of
> > that=E2=80=9D.  If we start making that recommendation and programs sta=
rt
> > following that recommendation, then it sounds like I wouldn=E2=80=99t be
> > able to do anything with a large part of my music collection,
>=20
> You could rename that music into something usable, and then use it.  :)

If you tell Japanese users they can't name a music file
"=E3=81=84=E3=81=AC=E3=81=AE=E3=81=8A=E3=81=BE=E3=82=8F=E3=82=8A=E3=81=95=
=E3=82=93.flac", they might run over you with a truck.  ;-)

(This reference may be intelligible only to members of Gen X.)

> I would be happy in a world where all tools are restricted to the
> portable filename character set.  I once toyed with a patch for
> enforcing such filenames in the kernel, just for fun.

I've been pleased to start moving GNU troff in the _opposite_ direction.

NEWS from the forthcoming 1.24.0 release:

*  GNU troff now strips a leading neutral double quote from the argument
   to the `cf`, `hpf`, `hpfa`, `mso`, `msoquiet`, `nx`, `pi`, `pso`,
   `so`, `soquiet`, `sy`, and `trf` requests, and the second argument to
   the `open` and `opena` requests, allowing it to contain embedded
   leading spaces.

*  GNU troff now accepts space characters in the argument to the `cf`,
   `hpf`, `hpfa`, `mso`, `msoquiet`, `nx`, `so`, `soquiet`, and `trf`
   requests, and the second argument to the `open` and `opena` requests.
   See "soelim" below.

*  soelim no longer requires embedded space characters in `so` arguments
   to be backslash-escaped.  (It continues to support that syntax, even
   though neither AT&T nor GNU troff ever has.)  If the argument to a
   `so` request must contain leading spaces, any such sequence of spaces
   must now be prefixed with a double quote character ("), which the
   program then discards.  These changes are to better align this
   program's parsing rules with the language of the formatter; consider
   the `ds` and `as` requests.

In 1.25 I want to support the use of groff-style Unicode special
character escape sequences to encode byte sequences in file names.
Notice that I do say _bytes_, so the range will be limited: \[u0000] to
\[u00FF].  But that will be enough to encode UTF-8, or sickness like
UTF-16LE.

https://savannah.gnu.org/bugs/index.php?65108

> On the other hand, I see the usefulness for others in programs trying
> to work with other stuff.  So the manual page makes sense, and I'll
> swallow my disagreement.  :-)

[digression into software development philosophy follows]

You're joining the side of the angels.

Authors of literature (fiction, academic, legal, technical, etc.) tend
to be unimpressed by some of the limitations on representation that
systems programmers find obvious and sensible.

More generally, the whole reason the operating system exists is to
facilitate the efficient execution of _applications_ (or "jobs", as
their card decks were known in the days when a "monitor program" to
occupy a machine's idle cycles was a novel concept).

Systems programming (be it in the kernel per se or at the layer of
general services in user space) can definitely be a great place to spend
one's career, but we do best when we remember that it's not an end in
itself...lest we come to resemble those JavaScript fanatics who seem to
spend all their time fighting wars with each other over "frameworks".

Thus, if a groff user wants to name their document on-disk "=D0=9E=D0=B1=D0=
=BB=D0=B0=D0=B4=D0=B0=D0=BB=D0=B0
=D1=84=D0=B0=D0=BA=D1=82=D0=B8=D1=87=D0=B5=D1=81=D0=BA=D0=BE=D0=B9 =D1=81=
=D0=B0=D0=BC=D0=BE=D1=81=D1=82=D0=BE=D1=8F=D1=82=D0=B5=D0=BB=D1=8C=D0=BD=D0=
=BE=D1=81=D1=82=D1=8C=D1=8E.ms", I feel pretty lame if I tell them
they can't.  When dealing with users, a principle I try to follow is to
actively look for ways to say "yes" to their requests.  Reasons for
saying "no" generally don't need to be sought out--they present
themselves with depressing frequency.  Sometimes the user wants an
impossible or infeasible thing; beyond the obvious limitations of finite
storage, CPU cycles, and I/O bandwidth.  Some problems have high lower
bounds on complexity.  Occasionally someone asks for something that
blunders directly into an unsolved problem in computer science.

I omit from the foregoing consideration the phenomenon of users who know
something--but often not enough--about implementation details, and
therefore have a tendency to design "solutions" in their heads and
request those instead of presenting their problem scenario.  This type
of user shows up everywhere, but the bug-bash mailing list is especially
rich with them.  With these people, before you can get to "yes" you have
to ask, "what is it you're trying to do?".  Sometimes they just won't
tell you.  To some of these people, the only way to stay sane is to
start with "no".

"The three most dangerous things in the world are a programmer with a
soldering iron, a hardware type with a program patch, and a user with an
idea." -- Rick Cook

Regards,
Branden

--qtsx3yucs7rhmz7p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeH9AUACgkQ0Z6cfXEm
bc5uvBAAl21RTvhrfWx+LTCGkT0/a8CmxUhq8+vL0wRfYjkv9ZL65GsqqgsHIxpU
z/K85QhvwSDTyOZOztmRlKVmZYQmJ5E9tVpcj2cio2gDBFfUhyK42VOckHROFsKa
LN4dHroU0B3LQyec2wr4/wju/Mt2zzqh9BURb8LHU/piFeRBDVz1Uqv2wW1dgcIY
QO9Yqrk9MdENSVHDtmnYgs7T1OpLT7HfqMeGhn8YXq/HWqqCsc3zTnwklnTScuKI
BZ3P0qq4u/ji7gbaCJkh++nh8PBAP9fG/rTfOeUdVRAOF2YwkhYLxVjl5qfkOh1u
1QYiQD8urRQG3aWfw7+4VigHG7DWl1ZmynoXkbwDV87aaOxGXjcj+aJNR/qJ+WI4
oFM8w1QhjX/wxlZ1ER3XQ8srn44ulty7DN3gKvOan6rb9up+R/e/jzH7pyufCSdq
dINFDfrwWz+55qxEnm1mtTWR8hcVHtGlaIe4+FrjpuQ43rdo0d250FnaDS51icwy
bSYvIGf4D2nuZhcJg0UNEPkfYivBHl5szGOCmzvbsoUMb2KRhLqYEXM6Fk52mT5+
p7J+F5koJ6F+UZ0LeaxZ1nLh8DSlop6pyHwjNknsR6bR6W7jDNY2JmQZcqtEh29D
Bl8pX2IM9bs4Zbl9I+wlUtvTGR4YUgzJDtKTRFA+O7yQJaJmlQ0=
=5ATk
-----END PGP SIGNATURE-----

--qtsx3yucs7rhmz7p--

