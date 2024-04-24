Return-Path: <linux-man+bounces-809-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D18B06FC
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 12:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEDBB1C231DC
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 10:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361741591F0;
	Wed, 24 Apr 2024 10:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdChhVoD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB417158D99
	for <linux-man@vger.kernel.org>; Wed, 24 Apr 2024 10:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713953451; cv=none; b=t9hJiUrosxcNs2CfFjIAP80y2YanJuBqr2lpvOYPtv2nKwX/4pPr4tsaA1c/W2CPNeqerhD00p7a56BewHfS3KXQXOyFvMpak7nomEfyuJNn1zkZjTh62sGv/F90pPsH7s/AnM9335kQBVKtz8tBKsix1cRstryjCD6bx4C6fqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713953451; c=relaxed/simple;
	bh=6zKEDAEvBxLbCjMNZcZRXq8q5bRF2nGMCa16zu68I40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cnlBqF0kn5FHong2/8jKnA4FnKoJsOx2JGhpujqHPfgU9MUeM7jOH9OoOGgI2M0IYmK/hiyf6Jp9pyQrScMZp6CjYVxXHUMYtDiDKoKmNGBl5HfR0un5SH8z6oecP8K8Fayibj3siHfViY1HexNSQKeY9Q2q3QA+Ivm9vsAokQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdChhVoD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C8B8C113CE;
	Wed, 24 Apr 2024 10:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713953450;
	bh=6zKEDAEvBxLbCjMNZcZRXq8q5bRF2nGMCa16zu68I40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GdChhVoDmTpBARibkFeuhrzqjzNGMJAbGFzNkgIsyWR6Lh3jgVOTCfcqerbg7auy4
	 nNkoFpCsAPzYsk9CNc66sF05pcSQf1EVEWHcqgCSHK8PljjDnVUiZqjIZX9TC2S1Ue
	 aG1MNIWvX5DrGNuQunvSbtLHK+E42IFpXp2QZZoIXS3kfdCZvsg2msVRIxA4T8cmsh
	 T2PwdS2HqkJ0hdUX9bgFTXkkca6CyvyQUVhmfda7nVEwWeW2P+8oHGtQmKKplfVBaS
	 4+XwhF/6Ju2UCtRDTTltrVXKfHClWAAONAonC+aAZRhZsaQWJEaTMBt5Z3HGg1mqbz
	 cjXDgmZIUYbAw==
Date: Wed, 24 Apr 2024 12:10:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed: revised man(7) synopsis macros
Message-ID: <ZijapzYRRVvceOhs@debian>
References: <20240424011955.yznszuo3r5jdv2tk@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1uHxJwrcIcKaTKxn"
Content-Disposition: inline
In-Reply-To: <20240424011955.yznszuo3r5jdv2tk@illithid>


--1uHxJwrcIcKaTKxn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Apr 2024 12:10:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed: revised man(7) synopsis macros

On Tue, Apr 23, 2024 at 08:19:55PM -0500, G. Branden Robinson wrote:
> Hi folks,

Hi folk,

> I have been dissatisfied with groff man(7)'s SY and YS macros for a long
> time.  My primary grievance is one that has frustrated its uptake by
> documenters of libraries: the macros are designed for synopsizing Unix
> commands, not C library functions.
>=20
> After working on the ncurses man pages for a while it became clear to me
> how to modestly revise the way groff man(7)'s SY and YS macros work to
> serve both set of authors better.
>=20
> My proposal, as a diff to groff Git HEAD, is attached.
>=20
> Here are the highlights, starting with the most disruptive:
>=20
> 1.  The `SY` macro no longer puts vertical space on the output.  That's
>     up to you now.  You can use whatever paragraphing macro you please
>     to separate multiple synopses.
>=20
> 2.  The `SY` macro now initially breaks the output line _only_ if it is
>     encountered repeatedly without a preceding `YS` call.  Formerly,
>     it _always_ initially broke the output line because it put vertical
>     space on the output.  This is largely a guardrail in case someone
>     forgets to call `YS`.  (Using `SY` multiple times before `YS` used
>     to be idiomatic for synonymous command invocations like "foobar
>     --help" and "foobar -h"; no longer.  Now you bracket each with `SY`
>     and `YS` and leave out a paragraphing macro if you don't want one.)
>=20
> 3.  The computed indentation of synopsis lines after the first now also
>     includes the width of anything on the line _before_ the synopsis.
>     This is so that you can precede the synopsis keyword with other
>     syntax.  The most likely application of this is a return type for a
>     C function prototype.

It would be interesting if consecutive SY/YS blocks would have the same
indentation.  See man-pages(7):

     (2)  But, where multiple functions in the SYNOPSIS require contin=E2=
=80=90
          uation  lines, and the function names have different lengths,
          then align all continuation lines to start in the  same  col=E2=
=80=90
          umn.   This provides a nicer rendering in PDF output (because
          the SYNOPSIS uses a variable width font where  spaces  render
          narrower than most characters).  As an example:

              int getopt(int argc, char * const argv[],
                         const char *optstring);
              int getopt_long(int argc, char * const argv[],
                         const char *optstring,
                         const struct option *longopts, int *longindex);

Would it be possible to store some register that remembers if there was
a previous prototype with a different indentation?

> 4.  The `SY` macro now accepts an optional second argument.  This
>     second argument is typeset in bold and replaces the fixed-width
>     space that is appended to the synopsis keyword in `SY`'s
>     single-argument form.  As with that fixed-width space, the width of
>     this suffix argument informs the indentation used on subsequent
>     lines of the synopsis if it needs to break.[*]
>=20
> 5.  I tested the portability of these changes to DWB 3.3 troff, Heirloom
>     Doctools troff, and Solaris 10 troff, and worked around what appears
>     to be a glitch in their man(7) packages.  That helped, but a small
>     problem remains: the computed width marked with an asterisk[*] in
>     the previous item is 1n too short.
>=20
>     Concretely, instead of:
>=20
>      int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
>                  chtype bs, chtype tl, chtype tr, chtype bl,
>                  chtype br);
>=20
>     you get the following on DWB/Heirloom/Solaris 10 nroff.
>=20
>      int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
>                 chtype bs, chtype tl, chtype tr, chtype bl,
>                 chtype br);
>=20
>     I regarded this defect as too inconsequential to worry about, but if
>     someone wants to research the innards of AT&T man(7) to see if a
>     workaround can be found, I'll be receptive to suggestions.
>=20
> 6.  I discovered that mandoc mishandles indentation; it does not honor
>     the rules set forth in =C2=A76 of CSTR #54 (supporting evidence
>     attached).  The result is merely ugly, however, and no text is lost.
>     Since mandoc is actively maintained I assume that eventually this
>     will get fixed, perhaps after a strident exhortation to migrate
>     one's documents to mdoc(7).  ;-)
>=20
> 7.  The first argument to `SY` remains the keyword.  I avoided the
>     complexity of a three-argument form partly because I didn't need it
>     and partly because I wanted to preserve the invariant of the first
>     argument being the name of the documented thing.  A potential
>     advantage to this practice is that we can, in future groff man(7)
>     development, automatically generate hyperlink tags for these items.
>     Need to know where a command or function is synopsized?  With tags
>     you can find out much more quickly than with a textual search.
>     (The invariant is actually a bigger advantage for hypothetical
>     external tools--or grep(1)--because the `SY` macro would "know"
>     which item was the keyword based on the argument count.)
>=20
> The payoff is that, if adopted, you can write a function synopsis like
> this.
>=20
> .P
> .B int
> .SY wborder (
> .BI WINDOW\~* win ,
> .BI chtype\~ ls ,
> .BI chtype\~ rs ,
> .BI chtype\~ ts ,
> .BI chtype\~ bs ,
> .BI chtype\~ tl ,
> .BI chtype\~ tr ,
> .BI chtype\~ bl ,
> .BI chtype\~ br );
> .YS
>=20
> ...and not worry about the line length or line breaking or any of that
> stuff.

LGTM!

> Compare to the status quo for the foregoing function in ncurses.
>=20
> .SH SYNOPSIS
> .nf
> ...
> \fBint wborder(WINDOW *\fIwin\fB, chtype \fIls\fB, chtype \fIrs\fB,\fR
>             \fBchtype \fIts\fB, chtype \fIbs\fB, chtype \fItl\fB, chtype =
\fItr\fB,\fR
>             \fBchtype \fIbl\fB, chtype \fIbr\fB);\fR
>=20
> .fi
>=20
> The foregoing looks messier to me as input, and moreover it does not
> adapt to the width of the terminal, thanks to those `nf`/`fi` formatter
> requests.  It will waste space on wide terminals and overrun the line on
> narrow ones.
>=20
> You may notice that I haven't changed `YS` at all.
>=20
> The implementation is in the permissively licensed "an-ext.tmac" file,
> so there is no _legal_ reason for those allergic to copyleft (or even
> Apache-style) licenses to have any compunctions about adopting it.
>=20
> The documentation is under the traditional GNU documentation license,
> known to SPDX as the LaTeX 2e license.  (I don't know which is the
> earlier provenance, and I would like to.)
>=20
> My questions:
>=20
> A.  Does anyone object to me committing this change to groff's master
>     branch?  It will of course require a NEWS item, which I will write.
>=20
> B.  Does this look enticing enough to any documenters of C libraries for
>     you to adopt it?

My only meh is the indentation of several functions in the same
synopsis.  Other than that, I had been trying to workaround SY for C
synopses in the past, so yeah, I would.

Have a lovely day!
Alex

> Regards,
> Branden

--=20
<https://www.alejandro-colomar.es/>

--1uHxJwrcIcKaTKxn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYo2qEACgkQnowa+77/
2zLB7RAAijeu1HlMKkDWmhOYMTI+JZRShIYPLSv0iJsPiaRCQ2CXcCpd6wpwb2z9
fXQaMHonK/kS6uKlhY4CUCGtt5dBtVSSk9Z3qAB9wx3ypAo/NxyOeokwJVhKlqqE
GTZ4OOQQjQMrcE4nGnW81Y5YLTj8TCgauheXjrSLdVf8QD5ABZKkr8TrZtWg3KMk
umRifID+37rLDZ5celtTjQtfb6N/GyJfpZeZMP8fEQy2oeu/pyPStFZ8p5WFghyi
9JxVc4pY+HKOmv+QL5WtIeV2D7lSZwuxLpXQMXo4klWC0jZxr5YoLVrQzJ+Q7XmE
B4oaimGTFzXOaDiNX+AIVIjZ3jyKPET9IvZT+cE0cOG0MtvmpXaPd4wZzYCUtL1H
jD0TrMItQuLkCcnhHNBFCGHnz5vF+yN0bzo3Ldcuv22PW+0CwWNYBmHf4AYl18iR
4RKbVwX4com+l/HP/ccDSrc1FO04NkgM3gBXP1BPPFE54yvNOu1tlm7bt7LHmVJl
KwVSmL2Wv8xLsE8lwE+sVLSSZYqyMPPHqGAvrI9h0QKJnD0okxeJoOqdhcRfkSYY
QUyThacT+sj6qufgTPRi3Yl+eiUv4bngfV8d4CfOt5PgpziminEzWP4kbN6Ws6E+
lsj2iarGJgUVaokwZ1LASoVJ1/odflVU+u2R/TJqfsbrj2uigWo=
=3KrH
-----END PGP SIGNATURE-----

--1uHxJwrcIcKaTKxn--

