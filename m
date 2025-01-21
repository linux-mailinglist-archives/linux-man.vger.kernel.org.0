Return-Path: <linux-man+bounces-2277-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 055FBA17537
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 01:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE32F7A0653
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 00:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E43EE7462;
	Tue, 21 Jan 2025 00:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7RZDfjz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3A94431
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 00:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737419171; cv=none; b=cRROAP8nqwJ+1xb4e4KKAE+W+aV3S5EM3esgvJeR+ZfgrQWE+L8NzpGUIUePLDA7jxg+kzlzO8auLhqYe/kQFJcIGunfAR1uzMtC7tlYl8e4CPt6c5WGElnxJWwGUYLONyshiQufFjLxLrRZorJyuFnlpU0qHyCBTACHmOOx55c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737419171; c=relaxed/simple;
	bh=wZbEYobBXIz56tMq2fcx2nEhk70v8AEAgTuRX5aORj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ivv+cpNqhj38MiHFW8cS96aB+wBo5mgb2+iDsbxKfvOzYlS5nQbHrAXKNQZtKj0QIAm3J4ZCTg4wRpYLFeoYRlO4+oaSRFVrY1RSTIY42LSkMMS2VfM/HQCtlNvxh8AHQMlzpn23bJxyUssMuNdbSFylj9MLROGzEhziTYwoBC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7RZDfjz; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-71e2bb84fe3so2700948a34.1
        for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 16:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737419169; x=1738023969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2DHTlIqpi7Hd3cMLOOGQzqB9HUOL92abqn6stBRQxfA=;
        b=K7RZDfjzTgVPfmUKwg3I/zAoaj7jjB9rlonOs6R0TMXRXfFO/2aE4XGC/xkuguW34G
         OXuXGYWykvwE3DnOPo4g9kQTjtjPhuymQJ7emrW6hozG45UyC1ZHD8TesamJb3RscP4V
         rVId3n/gHH1+RVmbcBhBkGcvCaYQptVMDahA5lYnkEoMLDKxbXtkMGz9pO+3uXAJFoYl
         kPdxINH8Qx5KJnY6OJGTwdL6xBJHKkArRaK7dcB5kfv8+uZrAyWl5BlaIqluNeGuVxx3
         LZm7AR/44512PAwWndZfUD11o0QzcV9ZT+lqZrShz0nnwdyK+wNUg5lBb5SY9Z+p3/hy
         mc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737419169; x=1738023969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DHTlIqpi7Hd3cMLOOGQzqB9HUOL92abqn6stBRQxfA=;
        b=s9Qr74MwUwu3h1eXY2xxKvV5499r8dgTLe8pexJSaeuoUuUntu8/t0CqTpZv3ACEWw
         Wp6utKL7QbprPR9In569PRVv/uAkcyYwbX0uqMXxj67vqBH5zBtR4SSM4tdpDfsnplnr
         VuZSW3yr5e1xyZvlrH2nAqUhXf/isC2CrZ9DvK37YD5WBMGljMcFWTLOCtjygUpc0jzz
         uly6rchtQaicr/odrE7WXDa2VoiENPtI22HFXdUPvMbQMI8OWQHvi0Rp23BsId/Pg+o7
         Q1kHj43cBoStvuSfvYejIZ03jB9h13sV+MgnrhRRbZAK67hQo79sM5yzkTerc6mmOsUA
         Z2jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnsNuITipwus9WHkGpuEm2LMMNmGXpARFP1Z7SPslHkpYTm/+6l4DhycH/yCfBfSwE1k7pHF3Stqo=@vger.kernel.org
X-Gm-Message-State: AOJu0YwA+Zq1zbQEvmxGYy5AhnQR/Gsy5Wbypw+u1tTK27JtjgxC5l/h
	SqK/3ZdfO8m3gBBxM+GpC6zt8G6ugiXuDOABAECJks10K233J0yHwheuew==
X-Gm-Gg: ASbGncvhvv4NRTG45CByDa0od4gVHljfPDxiJlIgEQo3gzwOSnWV87ItZE7Xnv+ejOG
	WVSTmzZdfNCpsbmZpbBHIQYe5vQ7auKtA0x8djTadybGDXEDgexYeo6PpJ+EE6PE4orXYkhHkwA
	Y1IW3PF6krSoIXuao6TI7v+UaPWVkDbE7YxKTstBk53LvOB5i3hDExDH6zbCEnlbrnEsHkgE1Gg
	LWXixcOYMH/7ycjpVQ+14r1Zg6vR9fVhWeP8mOdB5X0RWQdwygQdw1Ib1M6
X-Google-Smtp-Source: AGHT+IGCfyMdocD+E8bIc66XgwwM1lpc/t2KlL8J+HXY7hqcIB7UaKSenFq5vDiRKWd9OOSjoa7FYA==
X-Received: by 2002:a05:6830:6887:b0:71d:62ad:5262 with SMTP id 46e09a7af769-7249da7d75bmr9502631a34.10.1737419168896;
        Mon, 20 Jan 2025 16:26:08 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7249b37bd7csm3028156a34.11.2025.01.20.16.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 16:26:08 -0800 (PST)
Date: Mon, 20 Jan 2025 18:26:06 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
Message-ID: <20250121002606.k2vwusrmy6hwqm4y@illithid>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cl2jlpbc2uaqggym"
Content-Disposition: inline
In-Reply-To: <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>


--cl2jlpbc2uaqggym
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
MIME-Version: 1.0

[dropped Florian from CC]

Hi Alex,

I have some feedback on project management.

And then a couple of minor technical points.

At 2025-01-20T23:26:04+0100, Alejandro Colomar wrote:
[much snipped]
> I'd rename inbuf,outbut to in,out.
>=20
> > +    char *locale_pathname;
> > +    char *outbuf;
> > +    FILE *fp;
> > +    size_t iconv_result;
[...]
> I've removed this variable (see below).
[...]
> Please align (and merge some) with spaces the above as:
>=20
>     char     *locale_pathname;
>     char     *in, *out;
>     FILE     *fp;
>     size_t   size;
>     size_t   inbytes, outbytes;
>     iconv_t  cd;
>=20
> I've also reordered a few so that they appear in order of use (more or
> less).
[...]
> Please use sizeof(utf32_pathname), with parentheses.
[...]
> This variable seems useless:
>=20
>     if (iconv(cd, &in, &inbytes, &out, &outbytes) =3D=3D \-1)
>=20
> > +        err(EXIT_FAILURE, "iconv");
> > +\&
> > +    if (iconv_result =3D=3D \-1)
> > +        err(EXIT_FAILURE, "iconv");
>=20
> This is a leftover from the previous version.
[even earlier]
> Please group declarations of the same type in consecutive lines.
> Shorter type names up and longer type names below.  For same length,
> please use alphabetic order.

This style of feedback is producing a lot of churn.  Jason's going to be
well into the v-teens before this patch is accepted, at this rate.

It appears to me that what is happening here is that you are iteratively
developing a C code style guide under the banner of a man page review.
If Jason's okay with being the test subject for this procedure, then
there's not exactly a problem here, but if it were me submitting a man
page, I'd be getting frustrated by (or before) this point.  I just "git
pulled" https://git.kernel.org/pub/scm/docs/man-pages/man-pages/ and
checked "./man/man7/man-pages.7", and practically _none_ of the rules
you've been stating to Jason is expressed there.

I propose that the submissions of patches to the Linux man-pages not be
a black-box process, with you serving as the oracle that accepts or
rejects the input.  I admit you're offering a bit more information than
a binary semaphore (ACCEPT/REJECT), but still, it would be better if
Jason, and others, had a "Linux man-pages example C code style guide"
document they could consult so that they could anticipate more of your
objections.

If the construction of such a document is what this precise instance of
the process is groping toward, good.  If not, then I suggest that it's
about time to prepare that document.

I don't dispute that having a consistent style for code examples in the
Linux man-page corpus is worthwhile; I do think it will, ultimately, pay
dividends to harried hackers in a hurry.  But it is precisely to the
extent that style guidelines are arbitrary that they need to be
documented and easily located.

On different, nerdier subjects...

> Please don't use braces for a single statement.

I think they are helpful for clarity.  Yes, modern compilers will warn
about misleading indentation.  I still think braces around any block
guarded by control instructions are a good idea for the human brain
interpreting code.  And the presence of the braces costs nothing at
translation time.  Does any compiler construct a new stack frame just
because it saw an opening brace in the input (that wasn't part of an
initializer)?

> Please separate declarations from code.

I think this is considered old-fashioned in some quarters.  It has been
valid since ISO C99 to introduce declarations anywhere, and a common
style is to place them at, or adjacently to, the point where they're
used.

The traditional arrangement of placing all declarations at the top of a
function definition arises, as I understand it, from the limitations of
early compilers, which were often--and sometimes had to be--simple and
small.  When the compiler read the function definition, it could
generate an assembly language preamble for setting up a stack frame that
reserved all of the room necessary for any storage of automatic
duration, and then start translating statements into instructions at
once.[1]  (A test of this understanding would be whether any pre-C99
compilers rejected "late" declaration of automatic variables, but
happily accepted them for static or register variables, since those
would not complicate stack memory allocation.  I'm not quite old enough
to say; for the first <mumble> years of my programming career, GCC was
the only C compiler I ever used.)

Anyway, this is another of those matters of taste, so if mandatory early
declarations are to be the rule, you probably want to say so explicitly
so that you're not mistaken for a grognard who either isn't aware that
ISO C99 happened, or, like Dennis Ritchie, refused to countenance its
its existence with a 3rd edition of its central textbook, and eventually
ran out of time to do so.  (In a 2000 interview, he said it "needs to
quiesce for a while".)[2]

Finally, I'll note that asserting a dichotomy between "declarations" and
"code" can be misleading.  Declarations can generate assembly language
too, and not just when they are coupled with initializers.  I'd say
"declarations" and "statements" instead, or avoid the issue entirely and
say something like, "group all variable declarations at the top of each
function".

Regards,
Branden

[1] This is also borne out by other structural features of pre-ANSI C
    function definitions.  Return type first because the corresponding
    value will need to be visible in the enclosing scope.  Then,
    _outside_ the function parameter parentheses, the types of any
    arguments the function takes, because they'll be pushed onto the
    stack before the function is called.  Then, inside the corresponding
    assembly subroutine, stack memory is set aside to house whatever
    local--meaning non-static, non-register, storage is needed.

    Maybe if I actually wrote a compiler for pre-ANSI C, I'd know for
    sure.  ;-)

[2] http://www.gotw.ca/publications/c_family_interview.htm

--cl2jlpbc2uaqggym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeO6ZcACgkQ0Z6cfXEm
bc5OxA//RKlrirxbdMxOZnIq093x8Q4wjjnB/WiuNjafekfB85vrAZ3e6/QOlD+a
ZmUzUHOnxeW0vnjlj7B7E9hAVd+sIYXkQfG69uaZCz8iGF2x3TUrFlP9sPWeIliF
G07O0PG8iKlgFv8c+OscXR6sIjguiBz9P5P9hc5qsWLZK1tRbyEvfWGVIrqxx0O8
FRTZDxoFZvMFjjuwuq1qIMagnEbwbeqDC2AvolMwIc/MJXhALnQZu5Y6EoJZVGsS
NJjgMyZcnZfpJ2Qf3lOY2GdePTy4vJEVdISZKD0Z11RgaU/VBryfCSQHrC5mbgIj
k9zhXPS6ILeqe7iDkdtjLxzQ1TnrmrIR616L5EmBK2epI4yCXbQD584js0shEPMH
BVjzD8jqMOUp0GSIZWMyULTjJKSI4pws+dTYAI82fsWfERA9FeGQWESYEyOEKWzC
l6ohj6KsYgVno0oWFd5sliN3kqX8hiYbW0iibi18hKXeEpwW4/ENBWZy7F3wvnN/
46AT/q9Nv5uDH3jeMrCfxYn3HckfmlWV5nhAvkUrXtlAXWRwWcP2p3br5Pfeo7dX
TqKcy1h9Powrm0LbPQd6Pn7j+rKrp9pM4ebRK21O6sgOeTVTzdCOR/1wMyM83NF4
R/2r41Btn/SMQyPE+vHg8uqmupCj4ofZndWOSI6IjzRFYoLpEr8=
=7e/j
-----END PGP SIGNATURE-----

--cl2jlpbc2uaqggym--

