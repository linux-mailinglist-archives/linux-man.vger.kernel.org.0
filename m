Return-Path: <linux-man+bounces-1601-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 350C694CB85
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 09:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABE3E1F20FFC
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 07:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC6917625B;
	Fri,  9 Aug 2024 07:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O1zluSjy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6130626AD4
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 07:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723189060; cv=none; b=VMiGO57Sj540NUGMlEw6PEeor2WnoreL5S4/vWEsPNBC1E2UicRiE0aV16AIRvoo2Gajb9eTibMp2brX/hr1Z01Y3SASrDqtm0+Gfyz+8gYgP3kiyYv5h1oyN82XESCE1LfG09DmsXKf7RTtJdz/ZF8vf9efab2nBt3vUbhU6pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723189060; c=relaxed/simple;
	bh=Q3/yS6/zWjX3EIMQoea/WK/moZ7SQjXI9d/clphBWRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cyKuZ/j2JRtNZiz1z7FYnI2Yl5MeLnTsEiUM9UwtZUVbVx3pfOyxY+yjSp24pIsS6nmHFA3aAuCImP+m3EfWhTfXfm6CZXFrIfQmao7FgRDxKI/herfXxY4fgfcDCPerd85fRfVj1s+SBFvBkL12XdWsM7hBxVbuxOTRNZJUteM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O1zluSjy; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-260f863109cso1004889fac.1
        for <linux-man@vger.kernel.org>; Fri, 09 Aug 2024 00:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723189057; x=1723793857; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WN6SwI5NpyOS3c/PlERGfu9oYNkXuuIknjMdAMmHTrk=;
        b=O1zluSjyLxG7xMkP64N3Eb0zWepBMk93cXaiGjUbCrWuPDigU0bpd5P9FH0cWhsM1v
         3e1LVO12GYbvcuWbvTeNNTw9r2rSaPaofbiBKzCX/O2TL9aWIHgo07Y1+Bs0Rbqpf7CQ
         if7bL+i7umQ+wr/DGxFEw03GuIi+q8wX2qxruihuDP+6rssjdCPUmZOLVSsdL98uaiqJ
         SdjnuYV1U1QlsOo/8OG4FBA+haRgNgmqgZdRPFCybV5OjiTLUJXDW/9PXANGjw7cM4xi
         t6+kh65k6ICwSA5gbTQm594bn652TaHx8obE1W3TI48qJn/z2LVZ16xh/OLJXlj2lIce
         NDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723189057; x=1723793857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WN6SwI5NpyOS3c/PlERGfu9oYNkXuuIknjMdAMmHTrk=;
        b=slgYpKwksnTIbSRa64r7p1FVMphQATkUP1fVi0mBjrXvTYV78ygehc0elOhBCqRqQS
         JAJK8Ze9Hu9heuam+FGqQAy4IIqo2VZasEJRgkHgYPCaRnhJenwSSSOrEoanJ4CyX0Si
         XnDoQteH26gnVDktckRk/+ag1E7EiuSyWMgtruW1DnDYWMV4sTC2mdsOthUFZAVwBdiP
         PwMPN/rgexKZxrJ2plLrOtfYC5odWb+lTmr6RplU4vuDW84GoACfb8YJlUu2gqDh3qXd
         dIi7Qa2hCdJ5sbGiJqQF++5chZpElX3rJfURnneqzKXYEUHJ7ENNwLVJfnjJNTysZGNO
         MpSA==
X-Forwarded-Encrypted: i=1; AJvYcCUVQm3IMr1qDcjIacy1OCMMq3o0yfKpz/zye3scroH8ePYQmsPt8iLh+UIxI8yMGNr2Q8+EtR4dbNvImvCTErNGNO06rYd4Fk7/
X-Gm-Message-State: AOJu0YxmWlOnQI3TlC3ukGJccC7vFA+2We/EvQeviNdvXc4Dmlb5eW79
	KndDViljm3wBPPEWHCxaud/oz8awBP4W4ppojHOctoqeMGpYqWNX
X-Google-Smtp-Source: AGHT+IEODec3mWmeV9W6azwsdoOx1BQC+o2FMq+xp1ACVWnnAxnFIVDs9+Lnpk4yYCY+3EFD+gz4sA==
X-Received: by 2002:a05:6870:d62a:b0:260:fdda:5068 with SMTP id 586e51a60fabf-26c62c150bbmr845745fac.4.1723189057238;
        Fri, 09 Aug 2024 00:37:37 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70a3a750c82sm5984735a34.61.2024.08.09.00.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 00:37:36 -0700 (PDT)
Date: Fri, 9 Aug 2024 02:37:35 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: John Gardner <gardnerjohng@gmail.com>
Cc: Dave Kemper <saint.snit@gmail.com>,
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240809073735.zq6amvvzcl37o3a2@illithid>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
 <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
 <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
 <20240809061900.yxo7uncxwt47pbms@illithid>
 <CAGcdajd_+tT+7QTYFzRTe=MnpJd_5YtxWL+fhr_EUAnaZ2OE2w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5orjrlezwab2wav"
Content-Disposition: inline
In-Reply-To: <CAGcdajd_+tT+7QTYFzRTe=MnpJd_5YtxWL+fhr_EUAnaZ2OE2w@mail.gmail.com>


--x5orjrlezwab2wav
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] nextup.3: minor improvements
MIME-Version: 1.0

Hi John,

At 2024-08-09T16:41:11+1000, John Gardner wrote:
> [I wrote:]
> > All of the terminal output devices groff supports lack overstriking
> > support.
>=20
> Whoops. I forgot that what I was seeing in less(1) was actually duped

I don't think it was duped.  It was being clever.  There is lots of
cleverness in less(1).  Some of it makes me cringe.

> using an underline effect. On that note, am I right to assume that
> \fI+\fP0 is equally implausible by virtue of terminals diverging
> wildly in their italicisation support? (Underlining, obliquity,
> ignoring the effect outright, etc).

Not equally implausible.  Most terminals one encounters support enough
of what ECMA-48 calls "graphic renditions" that, _generally_, in your
exhibit the '+' and the '0' will appear in visually distinguishable
styles.  But little beyond that can be said: they might be different
colors, the plus sign might be in standout (reverse video) mode, it
might be underlined, and so on.

And a document author, particularly of a man page, does _not_ want to
rely solely on text style changes to communicate meaning.  Such things
go away when people do unspeakable things like copying and pasting
chunks of man pages into email messages, losing all formatting.  As a
rule it's prudent to ensure that your meaning is adequately conveyed
when the text is read aloud.  That's a laudable practice in all writing.

(I assume that Slack and Discord clients support "rich text", and
eagerly convert each word of styled text into 100kiB of CSS-ful HTML
overhead.[1])

> That reminds me (and I'm being dead serious here), if anybody knows
> where a Model 37 can be acquired in 2024, *please* let me know. (I
> spent all arvo yesterday searching=E2=80=A6 seriously).

I read somewhere recently, possibly on the TUHS or COFF lists, that
Model 33 machines experienced an active and deliberate period of
junking.  And as far as I know Model 37s were not very common outside of
Bell Labs, which partly explains why such devices were known mainly as
"ASR 33"s, a misnomer in multiple respects.[2]  Who needs a Greek box,
anyway?

Good luck.  If you are ever successful I may send you a draft notice
enlisting you in the improvement of groff's hardcopy terminal support.

> Why stop there? Such a conditional could match against a named field
> (and optional value) in an output driver description (DESC) file,
> whether it's recognised by Groff or not. Something like:
>=20
> .if T unicode \{
> .if T res > 50 \{
>=20
> I mean, if we're gonna extend the syntax to include something this
> niche, we may as well go all the way.

Much of the machinery is already in place for this.

Numeric expressions are already valid conditional expressions, so all
we'd need here is a syntax for interpolating an output device parameter.

As it happens, `\T` is _not_ yet taken.  So I'd write your thought
experiment as follows.

=2Eif '\?\T"unicode"\?'\?1\?' .tm hooray! we've got Unicode!
=2Eif \T'res'>50 .tm output device has good resolution

Except in AT&T troff compatibility mode, switching up delimiters when
nesting them is not necessary, but doing so can be kind to humans.

And yes, there's a story behind all those wacky `\?` things.

---snip---
5.23.1 Operators in Conditionals
--------------------------------

In 'if', 'ie', and 'while' requests, in addition to the numeric
expressions described in *note Numeric Expressions::, several Boolean
operators are available; the members of this expanded class are termed
"conditional expressions".
[...]
   If the first argument to an 'if', 'ie', or 'while' request begins
with a non-alphanumeric character apart from '!' (see below), it
performs an output comparison test.  (2) (*note Operators in
Conditionals-Footnote-2::)

'XXX'YYY'
     True if formatting the comparands XXX and YYY produces the same
     output commands.  The delimiter need not be a neutral apostrophe:
     the output comparison operator accepts the same delimiters as most
     escape sequences; see *note Delimiters::.  This "output comparison
     operator" formats XXX and YYY in separate scratch buffers; after
     the comparison, the resulting data are discarded.
[...]
     Surround the comparands with '\?' to avoid formatting them; this
     causes them to be compared character by character, as with string
     comparisons in other programming languages.

          .ie "\?|\?"\?\fR|\fP\?" true
          .el false
              =3D> false

     Since GNU 'troff' reads comparands protected with '\?' in copy mode
     (*note Copy Mode::), they need not even be valid 'groff' syntax.
     The escape character is still lexically recognized, however, and
     consumes the next character.

          .ds a \[
          .ds b \[
          .if '\?\*a\?'\?\*b\?' a and b equivalent
          .if '\?\\?'\?\\?' backslashes equivalent
              =3D> a and b equivalent
---end snip---

(Anyone who hates the word "comparand" can blame me.)

I don't know if we'd want to support a `\T[]` syntax as well.  Maybe.

Regards,
Branden

[1] I am informed that these technologies, along with GitHub Merge
    Requests, are the only means of collaboration that developers need
    take seriously these days.  Email is for old men attempting to
    thwart all progress.

    https://salsa.debian.org/dep-team/deps/-/merge_requests/8

    One can almost see Mark Shuttleworth, or someone of identical
    properties,[3] holding the control bar of a marionette.

[2] "Teletype" was (is?) a trademark, and thus should not be used as a
    noun.  "ASR" was not a model identifier, but an option, and that
    option specifically designated a unit _without a keyboard_.  One is
    not going to emulate Thompson and Ritchie that way.  What people
    _mean_ when uttering the slovenly, Eric-Raymondesque "ASR-33
    teletype" locution is closer to:

    "Western Electric (or Teletype Corporation) Model 33 (or 37) KSR
    (teleprinter or teletypewriter)"

    ...where "KSR" means "keyboard send and receive".

    There are many ways to abbreviate that lengthy identifer; "ASR-33
    teletype" is a poor one.

    I don't claim to know whether the vertically integrated structure of
    AT&T, Western Electric, and the Teletype Corporation was stable
    throughout the lifetime of these products.  Regulated monopolies
    lead to fascinating (and/or dismaying) ownership structures.[4]

[3] Like Luca Bocassi plus one billion dollars?
[4] https://coppolacomment.substack.com/p/thames-water-and-its-dividends

--x5orjrlezwab2wav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAma1xzcACgkQ0Z6cfXEm
bc40kA//aIB1i2ndhm51W2FuFBk/KPjlUL5AMJ5KKMpg+T4eLV2xJaBl0CAgS25U
XoID1h3L4CK1Mpy+stvRtnFZmhoGSE8TzxL7AsNJeAQgSC0G/iZcBDSqfglY/7Mc
KbTm3OvQ3vbCxAzb6PEeZkBKipuP/RUaqrYmGrShT9j0KKENfYOvC2f3G8o8bVyM
TIHUoxXP2uDYe2/OFftk3SyqQsAtwM55bxMxPywfeexMltemPY8b1gJfdZfvYgMH
rUpKnD6T0hxaEoFhfOINXzKZ6sthKttN9K7zF7uvkx0jZ8UnLT5RZquqTKcqBCep
KxGDgfm4HEoiqmZhgFIUmwSYOsGXlZmQArL2cPUYVNJrviPoP9uDlr/9thy91vyi
vFHu2Dxg09hW2r3nqqdR/OGDw05ze3HKZSzQrD9XQedQK3OxIn86YOBrQbB9BvnV
MeYuq5+Ixpu++JwlNEhfFdZsRc4bQLEQUTXy/1JTYdH151kdq6OPMpa1dgHRBQl2
Cl/GSahV8TXJE4MKSe3mUiGIWx75+QrgMC1ZokrNcEum6egvSPCQN+6wAKlzaYRp
VbL7O5FeI7248+EPdiG8gMugaboMAgvcBNw+bENaYnir68iOZeQyk4dtKikpcThe
xt9y/e/ItGgdIwVCEsqvNuY/TZH+HWrQsUPfOELSzAcS2DEtGW4=
=6/tA
-----END PGP SIGNATURE-----

--x5orjrlezwab2wav--

