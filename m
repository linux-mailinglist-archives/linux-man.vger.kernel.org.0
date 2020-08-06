Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 964C323D580
	for <lists+linux-man@lfdr.de>; Thu,  6 Aug 2020 04:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbgHFCeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Aug 2020 22:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbgHFCeN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Aug 2020 22:34:13 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BC4AC061574
        for <linux-man@vger.kernel.org>; Wed,  5 Aug 2020 19:34:13 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id w17so26729365ply.11
        for <linux-man@vger.kernel.org>; Wed, 05 Aug 2020 19:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZGr7Q64rmL0hr08SPLLi9Ttrfy7D5NJnuYZnOauKefk=;
        b=F9UuoEdeWo+a1Nhnsj4njQf47Rc40lo6KDoiUPAZDA7NF3Lmxxv4tTrqS34tI1ATS6
         zHWo5D4DWbSBrHCG6RrQJv1+9k1vOd22mnjBO3ymUCie8FWS54Jyp5WIDtZB7FETD0/o
         ASMMvX3LPeHZ2netn+W/joguXuARnZOYHm+Opv9Kdh25fVRY7cuU0ycAUJhHg8OvjTE0
         E1LgOkDwP6vwEj9j8KJ3RCmMxHhWnpg5oi5YQTlHe1QYlD1+oyoJA/n9kMx+2Lk0H9vA
         aXfQ3vFvqD5EOKBW0TOrCnjD5Y0uc2KrPcEtvpeL6aVJoKtMQBRZmm9/r5lncXz7jFwT
         TGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZGr7Q64rmL0hr08SPLLi9Ttrfy7D5NJnuYZnOauKefk=;
        b=erHHgjT3geoQbvsan79gtTFk1vhNGlnKTerwxvapr4umft7wKBny7lXSHpewwhUh5G
         eERqWlKpan0NWwZtMqEkk4FCCzA8QJk0TRLJWPDj+q3mgfI68f/d7CBCoET9FsrHnnjA
         8yXp5pdkBGnvNFLu8paowBwKZW1XL7+lxvTimww65rKjoAT1vHhwYqYG3wbbiHZ7jpUx
         bayM44etylLvYua36Fb/VyNRXGvwRUX3YdejQM2tJBz9rptQY8DtZJUZqM1Ia+y3CkRn
         Mh5wgNvcAEUJq/6Fh0SXmY06nH83fKYtgZ5wveyBBDdARMa1q9/GrkU3ETw+syMBeWVT
         o9WA==
X-Gm-Message-State: AOAM530jAtGX84NaUn7EP3ngQqdESZSsmgGavGYRhhiHxh2bvi1FRY5O
        sEkLbemaEuqqZGsHzKukKiw=
X-Google-Smtp-Source: ABdhPJzcOllpzX6jb7GbpcBc6IUJRbQh/3xx6KcaKL4m1DEYGzl5nQfeKtZd9zmlDhCWZQl0DJBfbw==
X-Received: by 2002:a17:90b:358d:: with SMTP id mm13mr3778402pjb.88.1596681252890;
        Wed, 05 Aug 2020 19:34:12 -0700 (PDT)
Received: from localhost.localdomain ([1.129.248.74])
        by smtp.gmail.com with ESMTPSA id a26sm4580273pgm.20.2020.08.05.19.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 19:34:11 -0700 (PDT)
Date:   Thu, 6 Aug 2020 12:34:01 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Dave Martin <Dave.Martin@arm.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: bulleted lists and indentation (was: prctl.2 man page updates for
 Linux 5.6)
Message-ID: <20200806023355.wldh4izfqpbpgd4i@localhost.localdomain>
References: <1593020162-9365-1-git-send-email-Dave.Martin@arm.com>
 <c17e330c-69f7-da7a-feae-cb8b8f5d7ea0@gmail.com>
 <20200720165205.GI30452@arm.com>
 <CAKgNAkggayFEjHgPNu1HzvXGfSDoCq=Y-Ni4iv=RBYk2Eb6U1Q@mail.gmail.com>
 <20200729145630.GH21941@arm.com>
 <CAKgNAkhrjuAXOey2Mp64oitqyjyTu1Zbtx0dy5J2-qzpyFf33Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cbc5ixtnjp6tr2yu"
Content-Disposition: inline
In-Reply-To: <CAKgNAkhrjuAXOey2Mp64oitqyjyTu1Zbtx0dy5J2-qzpyFf33Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cbc5ixtnjp6tr2yu
Content-Type: multipart/mixed; boundary="gztyhz5kneg57fsh"
Content-Disposition: inline


--gztyhz5kneg57fsh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list trimmed]

At 2020-08-04T14:52:05+0200, Michael Kerrisk (man-pages) wrote:
> > > >         There is already inconsistency here: there are may
> > > >         top-level lists using ".IP *" in prctl.2, and plenty of
> > > >         places where the default indentation is used.
> > >
> > > I must admit that I'm in the process of rethinking bulleted lists,
> > > and I have not come to a conclusion (and that's why nothing is
> > > said in man-pages(7), and also why there is currently
> > > inconsistency).
> > >
> > > Using .IP with the default indent (8n) results in a very deep
> > > indent between the glyph and the text, so it's not my preference.

Technically the indentation _amount_ is 7n in groff for nroff output
(7.2n for troff).  So with repeated indents you get text on columns 8,
15, 22, and so on (where the leftmost character cell is numbered 1).

> >
> > Is it worth trying to change the default indent in the macro
> > package, or will that just upset other people?
>=20
> I imagine it would break other stuff.

In well-written man pages, I don't think it would, but it's still not
worth doing within man pages themselves.  However, a solution does exist
that people can apply to their own environments, if their man pager uses
groff as the typesetter (this is likely true of anybody reading this
unless they know they use the mandoc program).

The same indentation value is used for multiple purposes in the groff
implementation of the man macros, the language in which classical man
pages are written.  These purposes are:

	1. The amount a standard paragraph (.PP, .LP, or .P) is indented
	from the left edge of the screen (where the section headings
	defined by .SH are aligned).

	2. The amount a "relative indent" section is inset from the
	existing left margin.  In other words, how much an .RS/.RE
	region lies "inboard" of the surrounding material if you don't
	give .RS an explicit argument.

	3. The amount of space allocated to the tag in a tagged
	paragraph (the macros .TP and .TQ).  (If the tag overruns this
	amount, it gets the output line to itself and the entire
	subsequent paragraph is set indented by this same amount.)

	4. The amount of space by which an indented paragraph (.IP) is
	indented.  (.IP takes an optional tag argument, and is ideal for
	itemized or enumerated lists.)

A nice feature of the above extensive re-use of the same parameter is
that it pushes the man(7) language in the direction of being more
semantic and less presentational.  On the other hand, some people just
don't like the resulting esthetics.

This parameter is a register called "IN".  (There's one exception to
this generality; the indent of a subsection is controlled by the
register SN, and defaults to 3n.)

But rather than customizing each man page to the writer's preference,
which will (and does) lead to an explosion of different conventions
leading to an inconsistent user experience for readers of man pages from
diverse sources, we can give tell the man macro package what we want
this indentation amount to be.

You can edit your man.local file (on my Debian system, it is in
/etc/groff/man.local), and add a line like this (without the leading
tab):

	.nr IN 4n

If you're practiced with the *roff language you can write conditionals
to tune the application of this setting.  Say I only want to change the
IN register only if groff is my typesetter and if I'm rendering the page
to "an nroff device" (a terminal, basically).  I can do this:

	.if \n(.g .if n .nr IN 4n

The first condition is probably slightly contrived because I'd be
surprised if any non-groff typesetter opened /etc/groff/man.local to
read it, but I don't want to come across as unecumenical; there are
users out there of Heirloom Doctools troff, Plan 9 troff, and neatroff.

I'm attaching an example man page to demonstrate the above.  If you use
Colin Watson's man-db you can view it directly with "man -l".  I put the
register tweaking directly at the top of the page to make it easy for
people to experiment but *PLEASE* don't do this in actual man pages.  To
reiterate my earlier point: we want to empower the _reader_ to configure
the indentation in a way that pleases them, not encourage a hundred
different man page writers to subject the rest of the world to their
varied and conflicting preferences.

Regards,
Branden

--gztyhz5kneg57fsh
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="indentation.man"
Content-Transfer-Encoding: quoted-printable

=2E\".nr IN 4n=0A.\" The foregoing line is for EXPERIMENTATION PURPOSES ONL=
Y.  Do NOT=0A.\" write man pages that set this register.  See the descripti=
on of=0A.\" "-rLL" in groff_man(7) for a cautionary tale of how overriding=
=0A.\" user-configurable parameters in man page text leads to chaos and a=
=0A.\" miserable user experience.=0A.\"=0A.\" To uncomment and activate it,=
 delete the first three characters.=0A.TH indentation 7 2020-08-02 GBR=0A.S=
H Name=0Aindentation \- an example for the Linux man\-pages list=0A.SH Desc=
ription=0AThis page illustrates the consistent use of the same register to =
control=0Aindentation of=0Aparagraphs,=0Arelative insets,=0Aindented paragr=
aphs,=0Aand=0Atagged paragraphs.=0A.=0AFirst let's start with a section hea=
ding of easily perceptible width.=0A.=0A.SH 12345678=0AWe can see how far t=
his pagragraph is inset from the section heading.=0A.=0A.SH 123456789012345=
678901234567890=0AAnd now.\|.\|.=0A.=0A.IP=0A\&.\|.\|.let's see how far thi=
s paragraph is indented.=0A.=0A.IP \[bu]=0ADoes that change if we add a bul=
let for a tag?=0A.=0A.TP=0Atag1=0A.TQ=0Atag2=0AHow about in a tagged paragr=
aph?=0A.=0A.TP=0Averylongtag=0AWhat happens to a paragraph with a longer ta=
g?=0A.=0A.PP=0AOkay,=0Awe're done with indented and tagged paragraphs now.=
=0A.=0A.RS=0ALet's have some relative inset excitement.=0A.=0A.PP=0AThis is=
 another ordinary paragraph,=0Ainside the inset.=0A.=0A.RE=0A.=0AThe inset =
is over now.=0A.=0A.PP=0AAnd so is this descriotion.=0A.=0A.SH Files=0A.TP=
=0A.I /etc/groff/man.local=0AIn many=0A.I groff=0Adistributions,=0Ayou can =
customize the identation value for the above by setting the=0Aregister=0A.B=
R IN .=0A.=0A.RS=0A.RS=0A.PP=0A.EX=0A\&.nr IN 4n=0A.EE=0A.RE=0A.RE=0A.=0A.S=
H "See also"=0A.UR https://man7.org/linux/man\-pages/man7/groff_man.7.html=
=0A.UE=0A.PP=0A.IR groff_man (7)=0A
--gztyhz5kneg57fsh--

--cbc5ixtnjp6tr2yu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl8rbAoACgkQ0Z6cfXEm
bc7uew//WnpptvR3dXgBXbuWaSgdfalbdbjZr8ZzZ1CUdzIucw2ZYKrOdUxLf4C4
COXgNSQqdyAunC0T8mFydxLET7E05jVVrW5ieqm5szS6IVYJV/biNPTTdeSuBfyv
vjV6rbZFbt9iluE3QcUa3dhyGry/ZFW7/ocdvXZNAk2UAtKQlIIl+/e3VMwne9IX
cacZvbhzRibv/VWrAqTd3zWWDJXA4fumOVQgquUbPNEuKqGcbvpFCRfj5MjIh9Tq
ofBDN7L/pQfIDU5ZICKSv/XocLUy9cFJFmiygVS1zdPCl/j52n11Z2maI550WHRN
v9kMdCRaNvcFd2F4rP+0jcN11HcmIhWkU6s3c18pCiWU5GkrKUNjyOiiy19VbPL+
OmyBH809Sdj6k2vqpIVsJOsZca6Zkx3Icvu8EWkRwq4GV2WIIVE9FwvXSf5xkwYs
LznKq4j7SDEPsWxUxyyBczHKxaHFxCo9273dW/Ay5KLfXNZr+NJDsJDBkZJ8tA6n
x2g0HGd+ZO5KGeThtsUcU+afPiypeUxjoBpnXHFJ02O+l9aImFTIZCCiS7c4Hxbl
QVcI0XM6B+CBh8klVF9rMQZQArRDl5zyfZGe0Gq5RI8/9PqwdFFKzINbrxGDcSWx
ipfsOOEsckOrItkUKmcdN7GaFYLEZZNGkKTCQUWvAS0PGSKpo04=
=KQ2P
-----END PGP SIGNATURE-----

--cbc5ixtnjp6tr2yu--
