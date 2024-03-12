Return-Path: <linux-man+bounces-568-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E227C87973F
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 16:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E5A31F22C74
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 15:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540D27C08A;
	Tue, 12 Mar 2024 15:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YwcUW5+i"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719F16997A
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710256524; cv=none; b=uJ0xKKTB41Qnm87iLFchpW03Y8zR7By0u7S0NeGI1EaHiA5R4EY63wz/g8P2tA3cxfT4oiftAp2g5vw21VYP1f0ykqLGcFs96zLbN7f2bhvEiyObrUwoU5CZCktpS6hjD8Qy07wACLcRGdx7j10DKZ2Yn/N7hb9vRQcUHjRGwQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710256524; c=relaxed/simple;
	bh=L4jkYFijgCaplZnDvj4mQTdzTSgNyUtMiOzvaLP6YMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VTbwJcCmYWlM1/JZ5gXOJ053kzkb8/rMHjHbhdFE9HNZE4dmd0ZFk3bKjFg/M9lJIY7gRUmc3lqXnzGytLk2NjNOfbrbtnOuMIJSSkLxVp1Jz2HxxH2AazaEW3565Vug27i2g09vHcZMhZq0y/LKLL00HVVybMHA1AyHBXQfQdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YwcUW5+i; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-221ce6cac3aso2024392fac.2
        for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710256521; x=1710861321; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oj27OvptyD4BYKQX4e2GCxLYZmMYVnYkRXRKPtxcDfU=;
        b=YwcUW5+iERIadx06QPIjLRpWuO2B8xtvoA7d6zO/fCH4ipXKnZ5efbyRxy4fRxfOL2
         GW3bw5L2T6ij0PuiyuSY9nvonB/G3sumnW7eE5COUZRbIqgOLlzODu7BjVr0nCve/NQA
         IuBCFCaP6cdgP65CMxZ1w5rLGbvUtXDZYORcWRc3V7Q/rodhi400guNXfc6g1cBO6n9L
         B7R60Dq+2Hx2t+/BQhkifN3bNi/oSW/PuGwZPHNZfCCXambVJ+LMUlQ0TK9OeQ44DFhv
         pZAzowhvOTKLXWG3xQFSG2ieENYNYwBj/cl1ULFRqW/Ip0Is6Xsdj9+0U5KGg+mGuxPX
         vStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710256521; x=1710861321;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oj27OvptyD4BYKQX4e2GCxLYZmMYVnYkRXRKPtxcDfU=;
        b=dO5n4KwAh9Ggz7EDaHdKxomoNj6L/WDh9E1xkm8BiemBrJkPQqlLeVlHhU26jYfkrV
         mjk1rJ7XL3MaA3A48sIhsB1D3F4w2WT4SBCsJ2N51cTVlh9esf4PL0XCti0BP6BhlAQz
         NDJRAmXFWFR6fH4S5JQ9NDNo9gP/FGldr3q2m4NF/xbNQlyAaulZHuOGQP6tOjVyStzk
         L342rqOzOW+i9KAeISddEWpD7OI2L6iXTYVHPsEdj/mqOgB0Ysyi3xloYreMU9Kcg5TF
         LW18kJLQmOJozI8ndfDVwWjH6VKivdgysF5eiKiW9cWIGk4McBB4x0cYxikfKhcwfRyZ
         WQvA==
X-Forwarded-Encrypted: i=1; AJvYcCX0G/YakHyXKQEiqEsFFdSeUXAdx3PRHdnZ20CikIKqKDzeSSifUjANcnDCn6ySmo66nhmCyTusblPSb2XrAcSIFj4O8OAbmNIl
X-Gm-Message-State: AOJu0YxBSj7cV05We5iEfCFvTIMVU+VKpRIgCgSDcLOu3q0fNadJLrDN
	bd/8Lsycza+AKv3oMnoHg4NLv/jV67upBInM7vMWVRsgh6XbA1PX
X-Google-Smtp-Source: AGHT+IH8hIsxUHU8ffUqguB+ZsJyQuTwK9dPTdCRFGkZmFYR/8e8IhJW1A8aYZiKjICkSz6O32zJgw==
X-Received: by 2002:a05:6870:e313:b0:21f:412a:87a8 with SMTP id z19-20020a056870e31300b0021f412a87a8mr9340562oad.41.1710256521270;
        Tue, 12 Mar 2024 08:15:21 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id sf20-20020a056871231400b0021edb0e2091sm2209395oab.15.2024.03.12.08.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 08:15:20 -0700 (PDT)
Date: Tue, 12 Mar 2024 10:15:18 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: Bogus index in man-pages book from other projects
Message-ID: <20240312151518.evusk3qi3cfhkxv5@illithid>
References: <ZeyMlGwA7MNDZIfj@debian>
 <2306955.zFelfHtBYS@pip>
 <ZfBi5PSZXPDpygXB@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mk5evpy3ama6e7dg"
Content-Disposition: inline
In-Reply-To: <ZfBi5PSZXPDpygXB@debian>


--mk5evpy3ama6e7dg
Content-Type: multipart/mixed; boundary="exbtk7xlpfevadrj"
Content-Disposition: inline


--exbtk7xlpfevadrj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in groff list]

Hi Alex,

At 2024-03-12T15:12:52+0100, Alejandro Colomar wrote:
> Hmm, interesting thing to try!  I've tried it too, and the bookmarks
> for the in-page sections (e.g., DESCRIPTION, or rather =D0=9E=D0=9F=D0=98=
=D0=A1=D0=90=D0=9D=D0=98=D0=95)
> appear with no name (or maybe it's a locale problem in my system?).
> See attached PDF.

That's a known problem with groff 1.23.0 and earlier.  It went less
remarked-upon than it should have because it turns out there is a way to
sneak character codes with the eighth bit set as-is out of the formatter
into device-independent output.  (I just learned about this mechanism
this past week.)  And since a lot of groff users were happy with the ISO
8859-1 character repertoire in their documents, they were fine with it.

It's gone unresolved longer than it should have because fixing it is
challenging.  If you catch up on groff mailing list traffic for January
and February you will see Deri and me discussing it.

I have a solution that I think will work,[1] but it keeps growing in
scope.  The thing I learned last week is that the `\!` escape sequence
can be used to smuggle character codes 129-255 decimal into grout.
(See attachment.)[2]  Addressing this requires surgery on a part of the
formatter that tends to be used only by relative experts and there
aren't unit tests of this escape sequence to assuage my fear that I
don't break things, so I'll have to write them.

Regards,
Branden

[1] The main element of it is to have the `device` request and the `\X`
    escape sequence (the latter being an AT&T troff feature) read their
    parameters in copy mode.

    https://savannah.gnu.org/bugs/?64484

[2] Interestingly, what GNU troff does here is compatible with DWB 3.3
    troff but not Heirloom Doctools troff; but Heirloom otherwise has no
    problem emitting UTF-8 sequences, for instance as arguments to trout
    'C' commands.

    My plan is to have GNU troff reject code points 128 <=3D n <=3D 255 in
    arguments to the `device` and `output` requests (both GNU
    extensions) and in `\!` and `\X` escape sequence parameters.  We
    don't know what character encoding an output device requires, so my
    proposal is to require input documents (including macro packages) to
    express such code points as groff Unicode special character escape
    sequences (that is, in the form \[u123AB]).  An alternative would be
    to have the output device report what encoding it requires in its
    DESC file, and give GNU troff the responsibility of converting to
    that encoding when writing output.  But to me that seems like an
    inferior solution, loading up the formatter with more character
    set-conversion functionality when it's increasingly a UTF-8 world
    anyway.  The likely persistent exception is the UTF-16-oriented PDF
    device.  Fortunately, in groff 1.23.0, Deri added support to
    gropdf(1) for interpretation of such escape sequences in device
    "specials" (device control commands; "x X" commands in trout/grout).
    I'm attaching another couple of examples to illustrate this.

    Also, if we make the formatter strict about 7-bit-clean input in
    groff 1.24, that will clear the decks for moving from an assumption
    of Latin-1 input today to UTF-8 input in 1.25.

--exbtk7xlpfevadrj
Content-Type: text/troff; charset=iso-8859-1
Content-Description: yappi-latin-1.roff
Content-Disposition: attachment; filename="yappi-latin-1.roff"
Content-Transfer-Encoding: quoted-printable

=2E\" troff | hd # or your choice of hex dumper
Hello, world.
=2Esp
\!x X The Stupendous Y=E4ppi will now read your mind!
=2Esp
Bye.

--exbtk7xlpfevadrj
Content-Type: text/troff; charset=utf-8
Content-Description: naive.groff
Content-Disposition: attachment; filename="naive.groff"
Content-Transfer-Encoding: quoted-printable

=2E\" groff -Kutf8 -Tpdf
=2Enr index 0 1
=2Ede Section
=2E  sp 1i
=2E  ft B
=2E  pdfbookmark 1 "\\$*"
=2E  ds mark!\\n+[index] \\*[PDFBOOKMARK.NAME]
=2E  nop \\$*
=2E  ft
=2E  sp
=2E.
=2ESection "\%A na=C3=AFve attempt at bookmarking"
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem
accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab
illo inventore veritatis et quasi architecto beatae vitae dicta sunt,
explicabo.  Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione
voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
quia dolor sit amet consectetur adipiscivelit, sed quia non-numquam eius
modi tempora incidunt, ut labore et dolore magnam aliquam quaerat
voluptatem.
=2Ebp
=2ESection "Another section"
Return to
=2Epdfhref L -D \*[mark!1] -- the first section
or
=2Epdfhref L -A . -D \*[mark!2] -- the last one

--exbtk7xlpfevadrj
Content-Type: text/troff; charset=us-ascii
Content-Description: naive-escapified.groff
Content-Disposition: attachment; filename="naive-escapified.groff"

.\" groff -Tpdf
.\" needs groff 1.23.0 or later
.nr index 0 1
.de Section
.  sp 1i
.  ft B
.  pdfbookmark 1 "\\$*"
.  ds mark!\\n+[index] \\*[PDFBOOKMARK.NAME]
.  nop \\$*
.  ft
.  sp
..
.Section "\%A na\[u00EF]ve attempt at bookmarking"
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem
accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab
illo inventore veritatis et quasi architecto beatae vitae dicta sunt,
explicabo.  Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione
voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
quia dolor sit amet consectetur adipiscivelit, sed quia non-numquam eius
modi tempora incidunt, ut labore et dolore magnam aliquam quaerat
voluptatem.
.bp
.Section "Another section"
Return to
.pdfhref L -D \*[mark!1] -- the first section
or
.pdfhref L -A . -D \*[mark!2] -- the last one

--exbtk7xlpfevadrj--

--mk5evpy3ama6e7dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXwcX4ACgkQ0Z6cfXEm
bc4JuA//TMATzTVT6H3owlOAReoPMV1oyYBCgz0MPyo1p6WmJrwi0YSswzUAsTqF
NTfjAWBY8E/NGbj9zyzpasHMtx2iSZl20bFlqkRf5+WXgz0xz0hI//c6d6Wtykvt
bM6fpNqAdtE6cLDlgstpA7f12xEDs6j61PQ6PLFyvQFlIm8FOmIegwQPsBhamIyw
ZOMubRBleOa0++OBM35TUaJTqkn/3iO1sdFYP+eYbCHUyw5mCauApO0i0tAUHuMf
T7hn5QQNrM5EdmsUdEXJQHsYUscsdueathM4kQyEKPj3a3gm1qNVuUE2E7eIi6Vo
xAmH90ejT76utnJ1hf7ORwGcBEg5kgLO6ZpKfwTSn94BmiwqCKlfBmhJ7aaCkX5Z
1n9n9wb5TGLd5XOPtO3SIZVKgdNV94LlxF64ITIMeIxOT15FQ/zuerDr9twevpff
jFKLYEmSI7jcF+zflWVEq1I0t1GibavcSHv5BgoZ37PQ5uqa8XePftd7HybLI32K
05kyt8L0j5yeKbuMefr1eylsPHszafxxivIxzB8qFPbWE/2vnSUlycDCS9BTuu5D
E57BgUI8EIx2bjElk3h49bTjThYmCehpGEiAT9W3gLZrggP4fBgbLIylqvFahk42
xsu9+ksiVlXsBW72xmVWZg1aFU+RFXo0o6GhCZihuFRexz4I5Qo=
=rlYl
-----END PGP SIGNATURE-----

--mk5evpy3ama6e7dg--

