Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D81DD408263
	for <lists+linux-man@lfdr.de>; Mon, 13 Sep 2021 02:17:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236797AbhIMASR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 20:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236774AbhIMASQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 20:18:16 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20219C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 17:17:02 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id k23-20020a17090a591700b001976d2db364so5244167pji.2
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 17:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xOnXKEs9J2VG6lHSMRShfja5S90Ap0g/76rYfF6AK+I=;
        b=cB7Vm9i0kQQPjtM6ZxEHP5uwBPC1dTvptH2RjO/UwhgzEGoAGS5/7EXVTzx4f4LcSX
         e4iySNukTHOctaXYIiktzHCIChG2u/lz/9GepggmhGgnAqa8ZR5/lBM9NX6hGFnDNngG
         dySrd+2P4dTx9KxCU80iR6PKopL8TRLiV/8K6LCi85uI+cnM7diryg46OZwofauQdJoy
         X3Z6sRPilvb07Nild875avlVMPVA53vjnJqoJpK4OSbfCsy9igwHI/c41ADAxpFdK6JQ
         1KJvgoHj78dnfmDwsRaAorVmmnmDt3uLdx8r572CijbftgTzAUPFTDJk7o51bsHSF69/
         grFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xOnXKEs9J2VG6lHSMRShfja5S90Ap0g/76rYfF6AK+I=;
        b=kFvgsKoF+KoIchK0cP+KZdNkb99hKtJPAP/+5ndV52dkqVNbw+qo1CtOqEFUgE6SJJ
         kSZSo91Fvk6BrjwV8Ox2Btt8YhOv5ljLzDrh28nr7SnvKsQSUvUtTkgUr7nkRXWonXQv
         gO2flxTt4FOvSFu/TH0H9KtzW5jIqXlV4Kl0qwMXsZCA/mxPCA54tO/KO0I4AbMmBb+L
         9Ig1z7NGrjcXu5Eop15TsEvmaWU30xDY0clxDwh9LGKMGWLvqssYnNFpHp4ftm4RssPT
         QnHq9sjqld/ygHmayWrc062RJ7OZmwaV7DzNz9G3AUa7LsmegBh/pvyyZPuGCSa5u6Vc
         tw8g==
X-Gm-Message-State: AOAM532U7Pn+WFE3BqCkyFziOpyeSxyFValZYMSwT7/IXvHgnpKyBSQz
        AgS/5uuiwka6iPLVr66IfQ0=
X-Google-Smtp-Source: ABdhPJweLvJgw36opqe44WaQ0/Dz1iUBRD3c3tF3OJXwtwv2hWKTg8qO0nhcOkGpxyUnI6+wt7igvw==
X-Received: by 2002:a17:90a:17e1:: with SMTP id q88mr4287533pja.99.1631492221434;
        Sun, 12 Sep 2021 17:17:01 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id l12sm4850611pff.182.2021.09.12.17.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 17:17:01 -0700 (PDT)
Date:   Mon, 13 Sep 2021 10:16:57 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
Subject: Re: .B, .I disable hyphenation?
Message-ID: <20210913001655.hcqh2pxlkmiy6vkg@localhost.localdomain>
References: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
 <20210912172749.uziql5vofxi7sjth@localhost.localdomain>
 <b7ddd4e8-6faf-278f-b32f-6bf46d834d3e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="znua75y2fnbgzq3y"
Content-Disposition: inline
In-Reply-To: <b7ddd4e8-6faf-278f-b32f-6bf46d834d3e@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--znua75y2fnbgzq3y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

I realized only after sending my previous giant message on this subject,
that I may have overlooked the elementary step of ensuring that readers
know of the existence and function of the *roff hyphenation control
escape sequence.

groff_man_style(7)[1] explains it as follows.

       \%     Control hyphenation.  The location of this escape sequence
              within a word marks  a  hyphenation  point,  supplementing
              groff=E2=80=99s  automatic hyphenation patterns.  At the begi=
nning
              of a word, it suppresses any automatic hyphenation  points
              within; any specified with \% are still honored.

This escape sequence is ultra-portable and has provenance all the way
back to Bell Labs in the 1970s.

At 2021-09-12T22:09:37+0200, Alejandro Colomar (man-pages) wrote:
> On 9/12/21 7:27 PM, G. Branden Robinson wrote:
> > At 2021-09-12T14:56:39+0200, Alejandro Colomar (man-pages) wrote:
> > > Usually, when a manual page highlights a term, either in bold or
> > > italics, it usually is a special identifier (macro, function,
> > > command name or argument), for which hyphenation can hurt
> > > readability and even worse, turn it into a different valid
> > > identifier.
> > >=20
> > > What about disabling hyphenation for .B and .I?
> > > Are there any inconveniences in doing so that I can't see?
> >=20
> > The problem that arises is that the font styling macros are
> > presentational, not semantic, so it's hard to know whether someone
> > is using them for emphasis or to suggest syntactical information.
> > This is why you made a statistical argument ("usually").
>=20
> Truly, even though most cases of .B/.I are identifiers (or literals),
> some are emphasized words or phrases.
>=20
> I think no identifier should ever be hyphenated, if possible, mainly
> due to the confusion with other possibly valid identifiers.

Agreed.  This is especially true for those who view man pages using the
legacy 8-bit output terminal devices (ascii, latin1, cp1047), none which
have a distinct hyphen glyph, and even for users of UTF-8 terminals
where the distributor has configured a remapping of the *roff hyphen
character - to the HYPHEN-MINUS code point, making it indistinguishable
=66rom the *roff minus sign special character \- (which is also what has
been used for the Unix option dash since Ossanna first wrote troff).

> I'd also argue that for the cases when the writer wants to emphasize a
> word, hyphenating it does the opposite.  The writer wanted it to stand
> out from the rest, but now it's broken into two incomplete pieces far
> apart from each other.

I think that's only sometimes true.  If I'm emphasizing a long passage
or an entire sentence, switching off hyphenation can be superfluous.

For example:

man2/execve.2:.B "Do not take advantage of this nonstandard and nonportable=
 misfeature!"
man2/getunwind.2:.I Note: this system call is obsolete.
man2/ptrace.2:.I This operation is deprecated; do not use it!
man2/sysctl.2:.B This system call no longer exists on current kernels!
man2/timerfd_create.2:.I "is successfully rearmed"
man3/mallinfo.3:.B Information is returned for only the main memory allocat=
ion area.
man3/random.3:.I Numerical Recipes in C: The Art of Scientific Computing
man7/mailaddr.7:.I "This behavior is deprecated."
man7/spufs.7:.I The Cell Broadband Engine Architecture (CBEA) specification

While I was performing the above search, I came across something
unfortunate, but on a different subject.[2]

> I think I really want to disable hyphenation everywhere I want a word
> to stand out from the rest, be it an identifier or just an emphasized
> word or phrase.

That's not my preference, particularly in cases of work titles or cases
where an entire sentence is emphasized, both of which are exemplified
above.

> Ingo's option of disabling hyphenation _everywhere_ in man pages seems
> too drastic to me.  There's still a lot of prose, and it's not so
> important there (although I admit both ways have their benefits; not
> saying it's wrong).  But that adds a point against the only downside I
> can see: disabling hyphenation may (in rare occasions where many long
> identifiers are together) produce an awkward number of spaces due to
> filling; but if no-one has complained against mandoc, I guess that's
> not so terrible or doesn't happen that much.

mandoc's audience may share the proclivities of its maintainer; Ingo's
made no secret that the only two output devices he prioritizes are
terminals and HTML.  (Ingo, please correct me on this if necessary.)
groff, like troff before it, is a typesetting engine, and PDF is one of
the formats in which I proofread our documentation.  With a little bit
of care, man pages can be written to a professional quality of
typesetting.  I'd like to preserve that trait.

Is it too much to ask man page writers to remember to type \% before
language keywords when they're using them with the font style macros?  I
dare say that the groff man(7) implementation is much better documented
than it was five years ago.  What else, in your opinion, needs to happen
to improve its ease of acquisition?

Regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff_man_style.7.html

[2] There's some eye-watering stuff in bpf-helpers(7), like this:

:.B \fBvoid *bpf_map_lookup_elem(struct bpf_map *\fP\fImap\fP\fB, const voi=
d *\fP\fIkey\fP\fB)\fP

Unsurprisingly to me, there's a comment at the top of the file:

=2E\" Man page generated from reStructuredText.

=2E..but it doesn't identify the precise tool used in generation.  Do you
know if it was rst2man, or something else?)

--znua75y2fnbgzq3y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+mGUACgkQ0Z6cfXEm
bc5Idg//bkPeX5z+xxh/gxrOcLQjFkdoZmI8JSpRck4fF1UarOoe9m+9B/ftdRCB
ixN81ktsMtTulgCka6cFrq7UfLlt8doOPMp9KqLMFXOO9218JO37fp37XyoAE8z1
F2rao8Lg/HhNGIeLpO/xdfpDCCLdsLvVeBFFiDJmEWCCU3H59QZ5KKGdd7QiEn5h
N2KTT7xFxXPWc4iXrTfYq7GQckdFwJCM0EhUXhZLk46CxdcI5cckIW+joim8+C1D
6uVnQKk48S3OZlFzNdeZ9U3HdgnpITl6RjJRqPqDsFjMq2Eedh+kVbDXDoNSkQ5e
MshRRgp7YGLtzlajaolklGCwhmtC20i+msK0dMUlLWmGE2IFJqun7H0oT8P5jkn5
/mTQ90YWDK1E3HDUsh99cIHX9w3tbZxmJUFDi1ux+V90IS4DMWWAraDuuKuWMuun
3mkqLX8A9on9RElGBcVTCxbUMI7cU49qK6yBwY4rJs8X3XStFmjT6aeHoMvmqvN/
mKmBmLFFJt+9vOk9z5k4y06++JaXWyqYbhhQ9MLOoLJVVElOq4Ff6LBAsxfiPJbo
Sbbkm/FHao33DtzBaE3rDGKTe/CAEhyLOxogy1qOZclHazKz2RcrUjrrWpso/iTJ
L6qiBbfQ5AoFEIEJv5vnCGmApp9LXBGE1awyFucwPaN5i759FZg=
=IKks
-----END PGP SIGNATURE-----

--znua75y2fnbgzq3y--
