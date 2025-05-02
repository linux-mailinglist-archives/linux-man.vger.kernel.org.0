Return-Path: <linux-man+bounces-2846-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D6AA7114
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 503C11B62B35
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EDD124336D;
	Fri,  2 May 2025 12:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jD9q9WBT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405A422A4F8
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 12:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746187306; cv=none; b=KB71f1g1Ztt8qsnDU9jjSQphD/Unk95IvwBcg71y5M90El5WzCjC6szBHJPWFOxGpLSef5tVP95aaedYWCu+jc2LmsSBTfqXXlJC3RUkFTIdZTF6mQEkowjWsHcmLMZNI2knNK4WiO87r/mfPKre/KDPg3go/C4rFTopU9lV5lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746187306; c=relaxed/simple;
	bh=Ygxu9TX18DIqN8j6BOKqCjk+aOvFpOM5whhM/7fvGDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ciixZGTNkNIRl/PJiN4ClAJuo8mYxndJGW7KnoisqxEHB12rKLUmA3IvS2tFAiDuwBRnAty77aMPsY8DRnbbUqxLb0ZosyD9zvFrx2XtIa+3Y7aXVM3gBL7smdkSFyK9DWo/NhsWbZy3SbM/kE0u8LCPscPEJY37SQ6ROktkB0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jD9q9WBT; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2c769da02b0so1562624fac.3
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 05:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746187303; x=1746792103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlUwfgjnHBOEB5QKgSlQo+kxyeT2rnG5toX1vdx45e8=;
        b=jD9q9WBTqhuOIZJ1F4IN6H2Fu3w9BSUPU2jiK4w6ZFCN11AF4mHkLfFyXRlw5MPWez
         Ne/+wasam3zPI/dc2wFxHGJYHjYRDqm8jJ15afE2L0yqtCgfe0IHfmSzeQzrp9Au0N1U
         jz4r7xDoT6feU+UTjusqMMgryNi8pVpxILZV6/qSg5ijCLy2Jxs0pWnIrt7RbXaud+a+
         LZfxh0E4nng59gVjMg2bfof2iZPVosy26yq26QKxZRHm76BFuAF3TXzkgOBvFKRefq02
         sA8QoqSDnBQyagYBg08s8umFjTIZX0JgQjAhBt+kmoZNNxqyKWy6PdCApdvbwx4RfALu
         IBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746187303; x=1746792103;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlUwfgjnHBOEB5QKgSlQo+kxyeT2rnG5toX1vdx45e8=;
        b=q8G1lMh1iYA3utQ53xFeK38b3PvhxpkqFvhtQty77oAXyhLe5jHijNKtyNXTPQE5Sb
         ufRSAoW1yq0EcVmkzhYx5QaIoGaCrC/hN2Z4MxT+R3lWpMZQOgXxhiA9NCHWG9IoCSwZ
         78gbydbkz3AwSZ42Ayg4ymX9t3nUFTMU5mbkavAb+hC3bzU039VJQqgalou5dgmCQOkN
         s5TlLJR5JdHpSGpPUT+uOCFy1o1rs5lY88PRpHqyr0ohTt9juEOiU+tmfJW0GYNyjpQx
         rHyz47bfp8VjlABKzEJtrb4CaYuexVbFnHR3rzq7YS0QylWyg3eJb526QYLvyse9jgUn
         V8cQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7ktoqTsC8SYAklCO4F1y1wnO53k9I5HWFIO04xXt6f2m6+BGKYBWETDIBI0+0A2Tt0fW/8QH6S8w=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/UZhED6xC9I9Wi0Z1otis9MPJCXlJQyb/5wLHlt1rubNfUCBm
	tqJYIbqlI0jtst3w7i4gAwYnNpljbF4uu5Q+X7DU1QLvwGzNgxim
X-Gm-Gg: ASbGnculXXYm25WfMh1/t4BYiPZNoEIHbHyrQux9eAjgY6FYcmQ5BB8CAusesLIAPdw
	qA26ws8G9dvmeB3Kp6pvkJxfqtTfOQZ+8QBWCOO3Ot7ojZPQrRBHUrR4SDt4YezS2m5uTlS7Z/d
	eXJ1ztLUJ1QxbklYzd0/nXPwdeiGrrbwgbgqdrUh9J32tI/KyAkK8d0pk2yKmkE7mg7CaDIivru
	1OBFpY34dD0FxculrQLN1m8aRXqVydLTUlf3cEmH+0tfQ+X4KokVFjEtWeoBCTFiPV77acdaWrF
	Ez5m6/bkRLQd4mkk+A2vigiURgUdHgE=
X-Google-Smtp-Source: AGHT+IHw0aqqjLd5NJnxt+i04gTL9E3GB3uF6jgWxEtvQZECXlGHTh54UJQACWPMx4NvD55nptuYuQ==
X-Received: by 2002:a05:6870:4694:b0:2d4:ce45:6990 with SMTP id 586e51a60fabf-2dab2f9d60amr1318896fac.7.1746187302951;
        Fri, 02 May 2025 05:01:42 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d34d8b2fsm461761a34.52.2025.05.02.05.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 05:01:41 -0700 (PDT)
Date: Fri, 2 May 2025 07:01:39 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <20250502120139.yqstcq32hdtagozl@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tn77w4drq6kgr2aa"
Content-Disposition: inline
In-Reply-To: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>


--tn77w4drq6kgr2aa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0

Hi Alex,

At 2025-05-02T12:56:51+0200, Alejandro Colomar wrote:
> I'd like to understand why groff(1) formats differently a paragraph
> depending on the previous ones.  I sometimes experience different
> placement of spaces for an unchanged paragraph.  I use a script to
> diff manual pages at different commits, which is useful to quickly see
> the effects of a commit in a formatted page.  That script sometimes
> shows suprious space changes (produced by groff(1)) for parts of the
> page that haven't been changed, and which one would expect should not
> be formatted differently.

What you're observing is an artifact of the adjustment process that pads
out filled text lines to a consistent width.  It's a feature of *roff
formatters going back essentially forever--as in, to the early 1970s.

And it is indeed not a man page-specific phenomenon.

groff_diff(7) briefly mentions it:

     When adjusting output lines to both margins, AT&T troff at first
     adjusts spaces starting from the right; GNU troff begins from the
     left.  Both implementations adjust spaces from opposite ends on
     alternating output lines in this adjustment mode to prevent
     =E2=80=9Crivers=E2=80=9D in the text.

Some typography people refer to this practice as achieving "uniform
grayness".  Imagine your eyes defocused so that the text of a printed
page is a smear of gray--if every line were supplemented with space
favoring either the left or right side, you would perceive the opposite
side as being "blacker".  As far as I understand the concept, not being
a trained typographer, it's the same thing, or tautologically related.
Rivers create anisotropies in your grayness.

I have proposed the term "adjustment parity", a property that tells you
whether an output line requiring adjustment gets adjusted from the left
or the right.  Roughly, if you change filled text in a *roff document
that uses adjustment such that you add or delete an _even_ number of
lines, the adjustment of subsequent lines won't change.  If you add or
delete an odd number of lines, it will.  However, that's a *truly* rough
statement because a change prior to groff 1.23.0 made GNU troff ignore,
for purposes of adjustment parity, lines that don't get adjusted at all.
I'll put some more background in a footnote.[1]

When diffing changes to man pages for the groff and ncurses projects
(and occasional others to which I contribute), I disable adjustment when
rendering the pages before and after, using the `-d AD=3Dl` option.

groff_man(7):

Options
     The following groff options set registers (with -r) and strings
     (with -d) recognized and used by the man macro package.  To ensure
     rendering consistent with output device capabilities and reader
     preferences, man pages should never manipulate them.

     -dAD=3Dadjustment=E2=80=90mode
              Set line adjustment to adjustment=E2=80=90mode, which is typi=
cally
              =E2=80=9Cb=E2=80=9D for adjustment to both margins (the defau=
lt), or =E2=80=9Cl=E2=80=9D
              for left alignment (ragged right margin).  Any valid
              argument to groff=E2=80=99s =E2=80=9C.ad=E2=80=9D request may=
 be used.  See
              groff(7) for less=E2=80=90common choices.

As you can see, I turn off adjustment when pasting man page contents
into emails as well.[2]

For example, the script I use to diff groff man pages before pushing a
set of commits has this stuff in it.

BFLAG=3D
#BFLAG=3D-b
=2E..
: ${AD:=3Dl}
=2E..
ARGS=3D"$BFLAG -ww -dAD=3D$AD -rCHECKSTYLE=3D3 -rU1 -Tutf8 -e -t -mandoc"
=2E..
for P in *.[157]
do
    if [ "$P" =3D groff_mmse.7 ]
    then
      LOCALE=3D-msv
    else
      LOCALE=3D
    fi

    echo $0: $P >&2
    echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
    groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
=2E..
done

I then diff(1) the ".cR.txt" file I saved from my last push
(corresponding to "origin/master") to the tip of the trunk.

I will point out something about your diff, though.

> 	@@ -118,11 +130,11 @@ .SH DESCRIPTION
> 	 this operation yields an
> 	 .B EINVAL
> 	 error.
> 	-.RE
> 	 .IP
> 	-Since Linux 6.7, using this subcode requires the
> 	+Since Linux 6.7, using this selection mode requires the
> 	 .B CAP_SYS_ADMIN
> 	 capability.
> 	+.RE
> 	 .TP
> 	 .BR subcode =3D TIOCL_PASTESEL
> 	 Paste selection.

This change involving movement of the `RE` macro call can potentially
change the output as well.

> There are several paragraphs which shouldn't report changes: every
> paragraph that doesn't start with "Since Linux 6.7," should be
> unchanged.

=2E..unless the moved `RE` call creates a surprise.

> Is this a bug?  Is it a feature?

It's a feature.  Some people do hate adjustment of nroff output, though,
which is why I added a feature to groff man(7) to support disabling it.

The history of this practice is inconsistent.  Seventh Edition Unix
(1979) disabled adjustment of man pages when rendering in nroff mode,[3]
and BSD retained that disablement until death.  SunOS commented it as
early as SunOS 2.0 (1985), thus restoring adjustment in nroff mode, and
retained that all the way through Solaris 10 (2005).  When James Clark
wrote groff starting in about 1989, his man(7) implementation closely
emulated SunOS.  With the Solaris 11 release in 2010, Oracle discarded
its AT&T-descended troff in favor of the then-current groff release.
They're still on groff 1.22.2 (2013) today, and so they've been
adjusting their man pages in nroff mode for at least 40 years, as has
groff for about 35).  I don't know what other System V Unices did.

Some people have lobbied me to turn the default for adjustment off in
nroff mode for man pages, but I've resisted, in part for consistency
with groff's own entire history and the expectations of the once large
(but now aging) population of Sun Unix users, but also because I feel
that groff's defaults in nroff mode should be as similar to troff mode
as practical, to minimize surprises when switching among output devices.

As of groff 1.23.0 (2023) the default adjustment setting in groff man(7)
(and mdoc(7)) is completely under user control.

Regards,
Branden

[1]

commit 69efbe0a69a8e7de8904d78e3de8c7e8a58a8b92
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sat Sep 4 23:20:54 2021 +1000

    [troff]: Don't adjust nonadjustable lines.

    This means that the direction from which an output line in adjustment
    mode "b" (or its "n" synonym) is filled with supplemental space is not
    changed if that output line does not require adjustment.  This will
    result in whitespace changes to documents using that adjustment mode,
    and these changes will be plainly visible on low-resolution output
    devices like terminals.

    To illustrate, in the following "A" means an output line requiring
    adjustment; "F" a line that is "full" and does not; and "L" and "R"
    indicate distribution of adjustment spaces from the left and right,
    respectively.

    groff 1.22.4    groff 1.23.0
    ------------    ------------
    A    L          A    L
    A    R          A    R
    F    L          F    R
    A    R          A    L

    * src/roff/troff/env.cpp (distribute_space): Return early if either the
      amount of desired space to be distributed or the count of space nodes
      in the output line to distribute it among is zero.

    * tmac/tests/an_TH-repairs-ad-damage.sh: Update test to expect space to
      be distributed differently.

    Fixes <https://savannah.gnu.org/bugs/?61089> and
    <https://savannah.gnu.org/bugs/index.php?60673>.

[2] $ type mailman
mailman is a function
mailman ()
{
    local cmd=3D;
    case "$1" in
        -*)
            opts=3D"$opts $1";
            shift
        ;;
    esac;
    set -- $(man -w "$@");
    cmd=3D$(zcat --force "$@" | grog -Tutf8 -b -ww -P -cbou -rU0 -rLL=3D72n=
 -rHY=3D0 -dAD=3Dl $opts);
    zcat --force "$@" | $cmd | less
}

[3] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/lib/tmac/tmac.an

    Also see variously:

    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D32V/usr/lib/tmac/tmac.an
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D3BSD/usr/lib/tmac/tmac.=
an.new
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4BSD/usr/lib/tmac/tmac.=
an.new
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD/usr/lib/tmac/tma=
c.an.new
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Tahoe/usr/lib/tm=
ac/tmac.an.new
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.groff_an

--tn77w4drq6kgr2aa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgUtBsACgkQ0Z6cfXEm
bc7Fsw/+J/RhCJS0XwvIxbJn14vVs4ipPhYXhU/Zo3qelOEDo/laM9lPMHKwXOoA
QDtVfNIxv6TX2/Hb0Kxrdj2CiPzUlSKqm96oNMNppASyUjBgcqt5NB9FhREoq08c
pEHkK1Skm02p/cFcIwhZ3gQ7GZwqe+Qyli1gIyDsHYIH5W0koBLpadtm9bVn8Sb9
x6XT0mcRWOH8UNehbrxIwZvv9PrHdm2MrOpdXoYmNNKlNUvPfmGnD0ubD1fqZZqK
fbOz6z3DBZEsESmUafybPeKZI+nVHX9i9JXLEqZr4xcXPuFT3McSWUBcDjcFzWdF
VX90sEbsNeUrzDRy91S1t3eBOLL8hlLUTB3wj4I8SIpuJJlDJ9oAr17tyvTaNcbV
dJ+fBHq5g14Ns9pZZBAahP7NNGkHxDQ4ZrJ0ZGQBSWLwkgF28SmzaZFz4AvHeFH8
u7BpQln5gXXjWGJVhdS3TbyIPBjrx2PEkBeI15IXvjF5GgNeY3jrzOvwnFCVmib5
1rWHfKCQivomYrpsRuSBSV/Cx2LIhDhBGhZsuTyF8YUmU1JzYQPFRr+wwCoOGKAj
Ho/qAtRMH0yBJVP0MT9AbSKeSgB8URVitj/sOXL1XD8lwMjxuBEsudfiOJZ+TFJy
eL6zjZuGFmtSmq+Xm0EB8L0w68ViZMPnHgE3XJRt51Zh/Pa62uQ=
=zbsN
-----END PGP SIGNATURE-----

--tn77w4drq6kgr2aa--

