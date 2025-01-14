Return-Path: <linux-man+bounces-2226-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8C9A10A79
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 16:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E76937A176D
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 15:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9731915623A;
	Tue, 14 Jan 2025 15:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AdCmENIv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7111D15E5CA
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736867710; cv=none; b=V80vVe/PVN1ZP3Nn1DGUo3u+U1N72fn5Gu7PsN7gTiIjDFErdYrR7944BTVra+qdApPnpVzLU7FPIPgf4LMOc+ASskNkYHOkr5csglKSGbdkWf7Wuli1yxHPnWEPGZmIVYkeiDUowInu/xOI4GPuCvzexhXXZDxTqmZ3ab9nKpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736867710; c=relaxed/simple;
	bh=kA40UTbPn8cGDzkFbxBr/vz4qJ1Z56lqsV+svdRduIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hXeV6yQd2U1VpiKc4tKSeS6EpwCGyi98r6VVaRqhIaiAL2ouGakWkzwFJmX5VNKU2JcnDgwsfvlcKcfmZ2+F99xijfBCbPx2o60KCu/0EFjXH9UIHLBlXb9+XpXl6WDbxMCJWmVfLXI1fRIlIaw3WCePL7hPTUgh0dqz0k45Aos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AdCmENIv; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3ebbec36900so2937687b6e.1
        for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 07:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736867707; x=1737472507; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pJR131weH8AxTNnaJIh5HCTuvfQLs6RnDuXwjalteRQ=;
        b=AdCmENIv0NdIbWcrcDn43UC1i6HJs1zDkFbVa2bWR0OmUOKQa79PuJ+HaCdWL20yI5
         Tx8eCOcKoYCe0a/RHD9NnwgHgP3xOJPs3a8llaBrpp8MqqhXZBeK3G4NYFmKLti8dKMs
         WfH9MY/BDz84QjBwtYHchViQCfDqUWx7WmWnlW0WNLvyJDp2TNX7VmItegSYIsNeri4U
         51IAptukH2zqzsHyMoN0E+OxWfX9G21Fps8T4J/8kn8FZU1nIjgLnhHm5yfx2Kk23ftL
         spDiGtI54gMfADjmRNfRmw3VsyHYtV+aArVYwGPLZ7hx+4HTAuv/3LgbFigUXPg8HHOu
         ajiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736867707; x=1737472507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJR131weH8AxTNnaJIh5HCTuvfQLs6RnDuXwjalteRQ=;
        b=DX2PbYdO5EjuJ5BbFTtTK/y8jHbTDdidUiZqi1BiBob7NYi/IrUTy8BNISNc+Kyv80
         5SisiC8agqsjc2RE7lAowt/eeICTf+D0cVrD2F82Py8swzSvk+60RAB/vw3SgzQaW8fc
         aaToYoahmFUm+vvM35E4RX5mtxoU1h2eZbWxmJOgUfUyjk+Oyz8lfzZ8U5Qon4KI5wlI
         X91Q4rd0dWnXBeaKbf+HD1VbFMo6f3M5922rMYfU0fC8rXkwl3+mMPShInmseneDyVCt
         749yAFC7nOftx5lilddpGul/G1Ch2SH04FzIB661VhfUEgwQX5EzDLNEbaJ5HsXmvSwE
         IwYg==
X-Gm-Message-State: AOJu0YwitgDhzRXayQNOS7QqihM0xOIqrZPSqm6IOvC4nAGTva3ZRy7S
	Vqs2PRt0+jyfq4q9wCTSn9iMBeQ0PfcrPizzu/xwuaS6dYEN+SDGQubEyQ==
X-Gm-Gg: ASbGncuhUfNBq3/XqafRHsvTqJ4s209MPIMS7OGNQb0S+Fii28VgMK3yMU+mr9UPC09
	sKvOgHWPPFvtjc8jkJCtmqiKPIYUKXZcWaxFMEDL94y9rKlFhmkARUoDZYAJGwFt+V1ymbLLzWU
	W0EQ0hvRR+IQPJ0zDnmSkdQzd2K9/+ndRiy4Wnk5YU8lCU16MG2X4OfuQrOrwPgEhvHKTroAoLq
	ACDk8fBu6b3V0N1JBQ+lVJz1f6rr/weUiHxIGa+PkcroH4=
X-Google-Smtp-Source: AGHT+IG6euOvo2ek+UTz3tMxmTV4lUv13iJs46DoU5NY574p63gpm+aOLmWjvG3hktrzNmErD2xWmw==
X-Received: by 2002:a05:6808:350b:b0:3e8:1f5d:b804 with SMTP id 5614622812f47-3ef2ec96cdcmr14124274b6e.15.1736867706525;
        Tue, 14 Jan 2025 07:15:06 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-723186280easm4631196a34.59.2025.01.14.07.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 07:15:05 -0800 (PST)
Date: Tue, 14 Jan 2025 09:15:04 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Jason Yundt <jason@jasonyundt.email>
Subject: Man page titles, identifers, capitalization, and hyphens therein
Message-ID: <20250114151504.3wipct4hpkuzn57t@illithid>
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ptxjf77nbvefbdi"
Content-Disposition: inline
In-Reply-To: <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>


--5ptxjf77nbvefbdi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Man page titles, identifers, capitalization, and hyphens therein
MIME-Version: 1.0

Hi Alex,

At 2025-01-14T14:19:49+0100, Alejandro Colomar wrote:
> > @@ -95,8 +95,8 @@ .SS Title line
> >  The arguments of the command are as follows:
> >  .TP
> >  .I title
> > -The title of the man page, written in all caps (e.g.,
> > -.IR MAN-PAGES ).
> > +The title of the man page, written in lowercase (e.g.,
> > +.IR man-pages ).
>=20
> Actually,

To try to bring order to the chaos and confusion surrounding this
subject, I use the term "identifier".

groff_man(7):
   Document structure macros
     Document structure macros organize a man page=E2=80=99s content.  All =
of
     them break the output line.  .TH (title heading) identifies the
     document as a man page and configures the page headers and footers.
=2E..
     .TH identifier section [footer=E2=80=90middle [footer=E2=80=90inside [=
header=E2=80=90
     middle]]]
            Populate the page header and footer.  Together, identifier
            and the section of the manual to which it belongs can
            uniquely identify a man document on the system.  See man(1)
            or intro(1) for the manual sectioning applicable to your
            system.  identifier and section are positioned at the left
            and right in the header; the latter is set after the former,
            in parentheses and without space.
=2E..
     .SH [heading=E2=80=90text]
            Set heading=E2=80=90text as a section heading.
=2E..
            The content of heading=E2=80=90text and ordering of sections fo=
llows
            a set of common practices, as does much of the layout of
            material within sections.  For example, a section called
            =E2=80=9CName=E2=80=9D or =E2=80=9CNAME=E2=80=9D must exist, mu=
st be the first section after
            the .TH call, and must contain only text of the form
                   topic[, another=E2=80=90topic]... \- summary=E2=80=90des=
cription
            for tools like makewhatis(8) or mandb(8) to index them.

groff_man_style(7):
     =E2=80=A2 What=E2=80=99s the difference between a man page topic and i=
dentifier?

       A single man page may document several related but distinct
       topics.  For example, printf(3) and fprintf(3) are often
       presented together.  Moreover, multiple programming languages
       have functions named =E2=80=9Cprintf=E2=80=9D, and may document thes=
e in a man
       page.  The identifier is intended to (with the section) uniquely
       identify a page on the system; it may furthermore correspond
       closely to the file name of the document.

       The man(1) librarian makes access to man pages convenient by
       resolving topics to man page identifiers.  Thus, you can type
       =E2=80=9Cman fprintf=E2=80=9D, and other pages can refer to it, with=
out knowing
       whether the installed document uses =E2=80=9Cprintf=E2=80=9D, =E2=80=
=9Cfprintf=E2=80=9D, or even
       =E2=80=9Cc_printf=E2=80=9D as an identifier.

> the title should follow the name of the page.

I don't understand how the "name" is distinct from the "title" in your
usage.

> Usually, this is lowercase, but in some cases

It can certainly be mixed case; X11-related man pages have been around
for longer than many Linux users have been alive.

XmCreatePushButtonGadget (3) - The PushButtonGadget creation function ...
XtVaAppInitialize (3) - initialize, open, or close a display

> it should be sentence case,

I wouldn't apply that term here.  A man page identifier (the first
argument to `TH`) will not be a sentence. Nor will comprise multiple
words separated by spaces.  Not because it strictly could not, but
because it would be impractical to do so, and might expose bugs in man
page indexers like makewhatis(8) and mandb(8).

> or upper case,

I advise this only when the identifier would be shouted in other
contexts, like X(7).

> if the name is something like UTF-8,

(by which you mean "uses code points outside the Basic Latin range")

=2E..that's _also_ going to put a heavier load on indexers.  Also, due to
the possibility of homoglyph attacks and the sheer cussedness of
inputting non-ASCII characters in some environments, especially when one
has to bring up a man page from a machine other than one's own
tricked-out, optimally configured, liquid-cooled Genesis Device, I'd
avoid using, in man page identifiers, UTF-8 code points requiring more
than one byte to encode.

> So, I would instead just remove the ", written in ..." part.

Speaking of UTF-8, favoring underscores over hyphens in man page
identifiers that aren't command names or C identifiers may be a good
idea because this is yet another site of ambiguity created by its
embrace some years ago; at long last the minus sign and hyphen were
de-unified in everyday shell usage, and it's frequently not obvious to
the ignorant and swift to anger which character they mean when they
strike the '-' key on their keyboard.

So while the '-' in, say, "xdg-open" should definitely be a hyphen-minus
when appearing in a man(7) `TH` macro call (thus keyed in as `\-`),
because the hyphen-minus is part of its _name_ as installed on the
system, I see the following pages in /usr/share/man/man7 on my system,
where the hyphen appears to be present to make contiguous a noun phrase
that in prose would be written with word spaces.

	file-hierarchy.7
	frontend-spec.7
	gitcore-tutorial.7
	man-pages.7		;-)
	nmcli-examples.7
	signal-safety.7

So, considered as text, are these hyphens, or are these hyphen-minuses?

It depends on how you look at the problem.  When writing prose, they're
neither--we would use a space instead.  But as noted above, a space
isn't going to play nicely with common techniques for manipulating file
names on POSIX systems, and man page indexers might choke on them.  So
we instead employ a visible character to separate the words.

One of the causes of hyphen-minus grievance in our epic struggles of the
past 15 years or so in this area is the fact that people (reasonably)
want to to copy text from man pages and paste it into shell scripts on
the command line.  Where the hyphen-minus has a semantic identity as
such, as in command or file names or C language expressions, we should
definitely be encoding it such that it renders _as_ a hyphen-minus.

When what we're copying has no symbolic representation in a programming
language or the file system, the hyphen-minus loses its reason for
existence (except when discussing the crater that the compromises made
by the ANSI committee behind X3.4 left in our storage and communications
technologies).

(Arguing that all of the foregoing *.7 examples are instances of file
names reverses cause and effect.  They have the file names they do
because someone _chose_ man page identifiers for them that included
hyphens.)

There's long-standing precedent for throwing one's hands up at the
inherent slipperiness of the hyphen-minus character.  When referring to
ISO 8859 character encoding standards, the parts of the standard have
numeric identifiers.  The Linux man-pages project, for example, installs
a page named

	iso_8859-1.7

but provides a symbolic link

	iso_8859_1.7

to do what the baffled user means when they guess wrong.  Of course the
ISO committee didn't give its standard an identifier using either of
those characters.  They used a _typographical_ hyphen, and left its
representation on file systems as a problem for others to solve.

I see no reason to harangue anyone into renaming their hyphenated
chapter 7 man pages to use underscores instead of hyphen-minuses; I am
simply pointing out that whether to say, for example:

	.TH man-pages 7 2025-01-14 "Linux man-pages 6.9.1"

or

	.TH man\-pages 7 2025-01-14 "Linux man-pages 6.9.1"

=2E..is a difficult question to decide "correctly".

The difficulty is compounded by bros who shriek like toddlers -- knowing
nothing of typography or the histories of character encoding standards,
the challenges faced by the groups developing them, or their
implementations in operating systems and applications -- and insist that
only one symbol is under discussion here, and it's whatever shows up on
the screen when they mash a "-" key with a saliva-saturated finger.[1]

The solutions we've developed for these problems are designed _so that_
one doesn't have to possess such specialized knowledge to access the man
pages one wants to read.  More people read man pages than write them.
The burden shifts to the man page author, who occasionally, in man(7),
has to type a `\` before a `-` instead of bashing out text in a single
draft and never looking back as they would in Markdown.  When one
undertakes to instruct others, as the process of man page authorship
implies, one must be humble enough to also engage in the process of
_learning_.  I admit: that's not the Cowboy Way.  Not the Rock Star Way.

Getting back to the capitalization issue, the rendering aspect of it is,
of course, configurable in groff.

>On 10/30/22 23:00, G. Branden Robinson wrote:
>> For those to whom this change is coming as an unpleasant surprise,
>> the forthcoming groff 1.23.0

Now released for over a year and a half.

>> features an option that will reverse this change at rendering time.
>>
>>  From groff_man(7):
>>
>>     -rCT=3D1 Capitalize titles, setting the man page title (the first
>>            argument to .TH) in full capitals in headers and footers.
>>            This transformation is off by default because it discards
>>            case distinction information.
>>
>> This register can also be set in a site-local "man.local" file to
>> force it on for all pages.  On Debian-based systems, this file is in
>> /etc/groff.  The following line will do the trick.
>>
>> .nr CT 1
>>
>> The groff_man_style(7) man page offers further examples of such
>> rendering customization.

Regards,
Branden

[1] https://lwn.net/Articles/947941/

--5ptxjf77nbvefbdi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeGf3AACgkQ0Z6cfXEm
bc6DoA/+LssnnU0aW8qBN0J5H8MMuuI09+eHs6IdpwXAdgdOkK7VsOLS0idkbV0x
lubg2xw3aM/jbxHtlg73OWk9Q+5RPP+Fb+nyX2N7cvmAav04TpBWPD+B0n1+M82v
dvGzdjVFvQmQk/FFWpIKeP8Fkhdq36qjeSbmBcBIkpVmXg3x/n6QAJUnuKDUOP/+
1VL6894/+QfdxGbFYKEGuVNOPEH5Jzb4TjCYte2kAbyCBlPeI19gMbQpkRvFfzvg
PkINqyPDQwY7jnx6nYHwzmnwuabxWpcnXSOCnXny3m4y4j8NAke9kGJjTPz9HANu
HRePcs7qAyrTeORX+Rx3lNd8Wrm5k/U0wwIU3/Ci6EQSHtFGsEn4d71gVuFpzkCK
VHPJWnCxrnNOE2Rv6EdHRZhiLgYfYSZM7EVD7+T1LWW4FVkeRi4AS2O80xZuayXh
jHn2N4M8VoqvjC4UGbQdR8bBQHlPriOSCCVbxhb8sgb5ZLSrTJh4WBMtLVdSGNWb
BFatwkDrQD2zX1proNJKZ/SWAMUCPMNuyFtPx2ouugJHWLqatIVa5RF0zQ4HAL39
IyeqcjBbVQQAtos+dtJECV3QCU+KFnGq0aS8mXRkx7BI9oJdvjwNqsgAf7EasufJ
JnbecNV01zu7aehVETjldMPsJVAHu05Z6iYvMeKOmSKmQPzfzfw=
=wPG9
-----END PGP SIGNATURE-----

--5ptxjf77nbvefbdi--

