Return-Path: <linux-man+bounces-2242-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0ABA12B08
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 19:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B93016530A
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 18:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C361C1AAA;
	Wed, 15 Jan 2025 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OKlnbcZR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EF0161321
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 18:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736966252; cv=none; b=QGIEJMDzjy4z5ocL0+ZEeJNJJVlV7feiXBjit+vaPp3YBD3ucOEJQkqDtzdXPCBxhoQppAMdtQIPxHTNG/24Z0Pb9m/n4pTdnoPdrRaE56kkufj0LFXUvlVcebH2QZ4EfEyCAAhxXfuewd2MV048ZUD/l4GCOxuPe619+MM3AsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736966252; c=relaxed/simple;
	bh=eXb6boh5rEf0KHGbDg3SeD/6Xz++LqW7K5UwZlAEvKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pSdacCnhXwmtkf9l4QbOxRJDTdHK/Qi8cy2G8zjI2q68CWwHkXvW+3s44YfBQChTVc5VgTjKoOXS/olb/OAN1X8G5CKUXtFe+EBDl5Q7UWnTFwLxc7pbUTy83ovyXngCln8HoFbw6qTuOJv4gbtLXI/V3viuj6g9nykEQqqfGS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OKlnbcZR; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e1b1767b3so25363a34.3
        for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 10:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736966249; x=1737571049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VGtYOUz+JdOtDYUMDuz8mq9qTZCVcY7H5ZPVELvq1dU=;
        b=OKlnbcZRIyWlUZvTvOeWXsZGDiSlO8k+KhmF2gNn6DR8F8r0S801MIysttMZXh5Paw
         YcESNZOsALVMikfpmzwTBwdfA40ryptjeTYS64NacTAuAgXTY1FKpNulsGTv6Xlb0UVc
         vDsZGGMESa7Ki85LSatXlrwPApV3hXdFT9n/wIFObUW6wY5DoO5nhvmPpWh3aYvac/sQ
         PIHz6k6hSJ6i+kTJl6Qos+czDUnKvklP4skmsMJu9rerRm3WBKncgEs5rNgEce1yTSwS
         YxI/GD8Mvgc4YO73hNxi+zUs97EK7exZW1eTEQ6qWifYA03vgQqDtYkk+aN+e/GVFSNR
         RInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736966249; x=1737571049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGtYOUz+JdOtDYUMDuz8mq9qTZCVcY7H5ZPVELvq1dU=;
        b=qXpGKL0FWytEvoXcBclF4etq042c3/QzhKPUJZiF43Puh5Y60Do7E9DPPdXW4mYxoX
         QxjWdXpVEkiGm2ttV3V4PlXTB8QXVEWhfrFwt9V6Y/86YegEdJ5cZbOOikfFs4E47I2X
         C0wuvoeWtoiYZmbUNa2PP8kqMBW1FRj8q/yq+Tvbqcis/XSrDD8PcNLwWNlYiQxLWYJA
         iPLj1upsZC25UEDoTqvl2wWy1iSDe1gtvXc0+G8qwrfaMhDC+wyQjG+cNjtyq2DHx/8p
         hREtxyvz2Ct3Pqc2dq816oClNPsYPWskEgFsOCJTmuFioHPV7iKl6+ljcdPu2SFPDo4k
         m+Dg==
X-Gm-Message-State: AOJu0YxIV7i2+JzyEE4MjzDa6KASQ1tr2spLqrmxcXJFpcIjXl1WIeoV
	jFXUdW5Xj6XtZ+3mivyQwzyHA7BbHU732U5GqWiKDM6/tjmoWyZ9lazR5g==
X-Gm-Gg: ASbGncuZuPsyNZTfsdmCwq11noVRL6T0GhsgaR1NBZSXUlUxx4E08cwbTqEyIP6bLen
	/5WAi8in9tat4xKcyQyI2iyeXyXKEZJ08fBJA1atnul9/J8W/lgFro8vpvsV+rGbJ9XTZ/+6HJX
	SPOo8FrGDUM4cX1gTJdidLJ195RSydRKiuW5sPfP492SNZpVBImAMvQi2vIqpYFTmhm+Z/inNBU
	DkQNYCntXW0GFng7SuUnR1xE7np746ExAB7uyfGsT9l7vI=
X-Google-Smtp-Source: AGHT+IE7pwFwI6/uPQ6USYKK6Z+TnU5iMjfVVnEJMrO1z3mSKErRpC6lGGIo5CBeqA8JJXwB8kQmDA==
X-Received: by 2002:a05:6830:390f:b0:71d:f9a8:a2cb with SMTP id 46e09a7af769-721e2eff80dmr20360767a34.20.1736966249095;
        Wed, 15 Jan 2025 10:37:29 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f8826425cdsm5423199eaf.14.2025.01.15.10.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 10:37:27 -0800 (PST)
Date: Wed, 15 Jan 2025 12:37:24 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Jason Yundt <jason@jasonyundt.email>,
	Florian Weimer <fweimer@redhat.com>
Subject: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
Message-ID: <20250115183724.b7mhx76zdqwca4yp@illithid>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
 <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5uwgizjryjjsw2m"
Content-Disposition: inline
In-Reply-To: <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>


--x5uwgizjryjjsw2m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
MIME-Version: 1.0

Hi Alex,

At 2025-01-15T18:20:45+0100, Alejandro Colomar wrote:
> Maybe, since this also discusses filenames, we should use both names:
>=20
> 	.SH NAME
> 	filename,
> 	pathname
> 	\-
> 	...
=2E..
> > +.IP \[bu]
> > +A path can be at most 4,096 bytes long.
>=20
> For self-consistency, let's use the same term all of the time: either
> path or pathname.  Otherwise, a reader might think they are different
> things.
>=20
> For consistency with POSIX, let's say pathname, since that's what POSIX
> uses:
> <https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html=
#tag_03_254>

One way we've stepped on a rake in Unix terminology, and for no good
reason I've been able to discover, is that we cling to the practice of
referring to two different things as "paths".[1]

* file names, possibly qualified with location information that may be
  absolute or relative to the current working directory ("pathname",
  "absolute path(name)", "relative path(name)"

* a list of the foregoing used to search for command file names or other
  loadable resources that an application thinks likely to exist ("PATH",
  "LD_LIBRARY_PATH", "MANPATH", "PYTHONPATH", "CLASSPATH", etc.)

To state it differently, we are passionately committed to using the term
"path" to refer to objects of significantly distinguishable types, such
as:

  char *
and
  char **.

And since this application doesn't admit general recursion--we don't
ever refer to a single character as a "path", nor to a list of lists of
file names as "path", the usage is corrosive to coherent thought.

I don't have any real hope of reforming this abhorrent practice--
I fear the cement had set good and hard before even POSIX Issue _1_
came out.  (Can I blame "/usr/group"?)

But...in the event the donkey I'm riding has borrowed some of its
genetic material from a vigorous young warhorse (let's call him
"JeanHeyd"), I would:

1.  Reserve the term "path" solely for discussion search paths, such as
    those implemented by "PATH".

2.  Adopt the term "filespec", or "file specification", or even just
    "file name", to refer to a character sequence that locates a file.
    POSIX interfaces and utilities tend strongly to be general in this
    respect, in the sense that anywhere a "basename" (the "final
    component" of a "pathname") is accepted, one that is qualified is
    also accepted, as in an "absolute pathname" or "relative pathname".

    The occasions upon which you want to refuse to traverse outside of a
    directory is rare enough, and specialized enough, that it merits
    case-specific discussion.  These are replete with complication.  Is
    traversing only into a subdirectory of the current working directory
    acceptable?  Should symlinks be followed?  If so, should they be
    permitted to escape the part of the tree descended from the current
    working directory?  Back in the day, about a thousand security
    advisories were issued against FTP servers arising from confused or
    unstated policy here, and the terminology of "pathname" did
    _nothing_ to help resolve them.  (Did that term help create the
    problems by fogging the minds of the application developers?  Who
    knows?)

and

3.  Throw away the term "pathname" entirely.  Banish it.

And yes, I know, POSIXly correct people can claim to "eliminate" this
confusion by interrupting conversations with a raised finger:

"No, no--you don't mean 'path', but 'path_name_'."

In my life I have found that I have sufficient talent for being
simultaneously right and annoying.  I don't need that kind of help.

So--will you ride with me, Sancho?  I mean, Alex?  ;-)

> > +.IP \[bu]
> > +If you want to store a file on a vfat filesystem,
> > +then its filename can=E2=80=99t contain a 0x3A byte (: in ASCII)
>=20
> Is that the only one?  I expect there are several characters that are
> not allowed in vfat.

You also can't _end_ a file name with "." (0x2E).  I think there are
other restrictions.  Putting my own music collection on a file system
that I needed to be able to share with Windows boxes, many years ago,
was a tedious exercise in discovering VFAT's irritating limitations.

Regards,
Branden

[1] George Lakoff would probably have something to say about the
    unreasonable persistence of metaphors.  When a technical person
    finds that they can employ a notion familiar as a childhood fairy
    tale--as with Hansel and Gretel ambling through the forest--to win
    claims of comprehension from the audience for their design, they
    cling to it passionately.  In Unix, both kernel- and user-space
    developers did so, and neither yielded, snarling like a pair of
    dogs, one at each end of a femur still slick with gore from a bovine
    carcass.  I admit that I'm impressed that Thompson[2] was fought to
    a draw in this instance.  Unfortunately that outcome was the least
    helpful one for the Unix community.  Either side winning would have
    been better.

[2] Or whoever involved with the Unix kernel refused to yield here.

--x5uwgizjryjjsw2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeIAFcACgkQ0Z6cfXEm
bc6xUBAAiIctmg3p2RcV9vceysMArH5bPGbUGiddAsUTr7gSY3sauBNCRqLC0vQJ
CsRL3AmyHeiiE/vHI5eXLI4gQV+qv/QOy9nk57JjQS18OJ2vK70lrt3S3DJzFne2
Z/z2OunxDsk1ru0dig/epJjRTdHSIuVdyDYkpDI43kCgMMNrkzPALyEpYPIjPJ6J
V36w4oNM5ViPd/tdssMPSVu+ILpL+dd4IkpWo6mwzb/XRnKSpf3ok5DrDAKb+LSq
gplyiHdpNS0SixozkUKbb829nfMud2qMGlXIXu3+JAnjrF55Qc6VT++Je/fuZLwA
r+crKuGc9aH3uQrDaL02VSNgK0NMP4Hbrl/ItVIo9KWpsNl3QLehTWJtFJZhxeES
tWTL7FdeySdkWAtf7AqYgr2a7dcFnh536YLf8feTSHl86lSyJ1CEN+xaPnM8hlHu
EK5WOerbSxD7ZEJpqBitjE0ejKjEP4+Nxy9egUt2YFSPfyKSOHfh7RbDmNYPAFsL
HEvLEV6QJBzQrzzmShEwu163yXEgkmPvkbo3v67Qd9Oky03rf2iUvljLr/bjSWPf
+uNo9jDUJHklUYseBr9meSUE8ZtWj9mXBkCbcDMFPgUypnKtBlLd0kp/6tiI3gph
qoEODEXjsM38MTS3EUB667hd3Vg/LyTsX8+akWP2jjbABfVgKRo=
=jnUW
-----END PGP SIGNATURE-----

--x5uwgizjryjjsw2m--

