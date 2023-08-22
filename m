Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B80E784A71
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 21:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjHVT3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Aug 2023 15:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbjHVT3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Aug 2023 15:29:49 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B76D5DB
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 12:29:47 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bca3588edbso3198877a34.0
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 12:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692732587; x=1693337387;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6ZJt3wavYD0Wh2H8tMEu3RsK/f+hGEvgqEr8fz07r5w=;
        b=rVCwDEN3uwdMSgAADII4hkEmaaqbIo9Khvt3G+OJsMZpq5LAd1VvadBOJ2FZa6twle
         nA99B/5uMY0M4gEknKoJS48qjFfB39lAzywx0g4h6XviwrSmOWxsNfkWOvCeDARsR2cH
         rmth8utxZ4xx3qCG3v3L6kbGVNsvDBUwpp5Gp8wZJh+xfBRwhQB/lFoRuST1vfMbJN4C
         1zb/GzUvn14P68wxDX49ZNYMbeb9KB4bd9R6hfCEUSzNBsR2xoBDSg2cNaizJ4CdcAJG
         aoIL8KbLPkAZO80Zx2AXK4g/dW4+4jYYFITRM7DDaCabGXadJ8wSpF7Q6qSH9I++YixG
         r3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692732587; x=1693337387;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ZJt3wavYD0Wh2H8tMEu3RsK/f+hGEvgqEr8fz07r5w=;
        b=lYPoUCi7+Qi5tAVAZs0h/C5AR8Ga3bLSlnQKiFng2kxc0DVDVqgFz7A0yIIxOSmf1/
         3KX83IHJPM5XJcerIGIvKuOIeWI+/yxjfMz5t6aOzN4QlG5v7c51melJi9t7YETnlYBw
         3iat3PJNpCc6g6b4twnwX0bmKAB5gOdYDycdB39ENzn7rtl1JuZzZBEhOrhm5BPyFAZv
         NoGnNBRanYs4iw7CcVYUq6z4RmdxBwaDv7zSgI+Chr8oYm47JtzwHpOm2+GW2JMdFUTq
         O7mn345hTjL9MuNvgTYTzZktYL8PqUWWI0qb0m6NEjmu7+PtlfahWbJpNw4fvHpwPwY2
         1apQ==
X-Gm-Message-State: AOJu0YzjrPnPbwzSL7h8Aw4VnQD1Bstdj8Zh/50hHJ8BpE+EmNbOkjkU
        EL8FqAjkfQEMmVDFr3XpQTkJ6kwZH5Y=
X-Google-Smtp-Source: AGHT+IHzLmlqBr+XUE4SEf4tt6G8eFut1oo42cNtHPccKYyFcRfVA9j1qzuwCagxu68v9u4nIhzw3w==
X-Received: by 2002:a05:6870:8a09:b0:1be:cca5:3df6 with SMTP id p9-20020a0568708a0900b001becca53df6mr10637356oaq.35.1692732586921;
        Tue, 22 Aug 2023 12:29:46 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d70-20020a4a5249000000b0056e8fa44691sm2552628oob.39.2023.08.22.12.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 12:29:46 -0700 (PDT)
Date:   Tue, 22 Aug 2023 14:29:44 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: '-' vs '\-' in TH (man(7))
Message-ID: <20230822192944.mxan33g7aapbyy2x@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="g5noth34hwpzn576"
Content-Disposition: inline
In-Reply-To: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
 <8204da79-bca6-02b7-a883-6fd77b4f97a5@Shaw.ca>
 <b05dae48-4304-7b87-8b58-a0734fdd2bb9@kernel.org>
 <ZOK3DO3QAI2L_IXB@fluorine.ljabl.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--g5noth34hwpzn576
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I have divided feelings about this issue.

At 2023-08-20T21:10:52+0200, Alejandro Colomar wrote:
> I just noticed that the Linux man-pages use '-' in TH.  That's
> surprising to me, as Michael was careful to use '\-' correctly.
>=20
> In the documentation, I couldn't find anything that says TH
> should be different than anywhere else, and so I'd expect he
> would have used it there.
>=20
> $ grep -rn '^\.TH [^ ]*-' man* | wc -l
> 30
> $ grep -rn '^\.TH [^ ]*\\-' man* | wc -l
> 0
>=20
> Was it just an oversight, or are there any obscure reasons to do
> that?

At 2023-08-20T15:51:04-0600, Brian Inglis wrote:
> Those are just normal *hyphens* *within* the page title command

=2E..not a command.  When a Unix command name has a hyphen-minus in it's
name, that's certainly what you want to get when you cut and paste from
the page title.

'Course, back in the days of screaming capitalized page
titles, it was easier to not take those literally.  And most of the
examples on _my_ system seem to have both hard-coded screaming caps and
Unicode-General-Punctuation-Block-destined hyphens.

And whatever its representation in the man page sources, that character
is going to be represented on the _file system_ as U+002D hyphen-minus.

> /function/...  name; perhaps you are thinking of '\-' used as a
> *dash*(/minus) after the page title command/function/... name
> following .SH NAME in all 1111 files?

Naw, he wasn't.

> See groff_char(7):
>=20
> "For best results in roff systems, use the =E2=80=9C=E2=88=92=E2=80=9D ch=
aracter in input
> outside an escape sequence only to mean a hyphen, as in the phrase
> =E2=80=9Clong-term=E2=80=9D. For a minus sign in running text or a Unix c=
ommand-line
> option dash, use \=E2=88=92 (or \[=E2=88=92] in groff if you find it help=
s the clarity
> of the source document)."...

I stand by this advice, but it doesn't reach the question of how "-"
characters in Unix file names should be represented.

At 2023-08-21T00:41:29+0200, Alejandro Colomar wrote:
> Are they all?  I see they are all in man7 (there's one in man5, which
> is my bad, actually), so it's more likely that the names don't
> represent some identifier that has a minus sign in it, however, I
> still have doubts.
[many examples snipped]
> See for example time_namespaces.7 and session-keyring.7.  Any reason
> to prefer a hyphen for one thing but an underscore for the other?

An underscore would seem to wriggle free of _this_ problem.

At 2023-08-21T00:59:56+0000, Lennart Jablonka wrote:
> > Should the '-' in e.g. UTF-8 be hyphen, or should it be a minus?
> > Are all of these hyphens?  And if so, why would a hyphen belong
> > there?
>=20
> It should be a hyphen.   All of these are hyphens.   A minus sign
> would belong if it was math stuff.

Your perspective is consistent with troff's design until man pages enter
the fray.

> A =E2=80=9CUnix dash=E2=80=9D (being the same character as a minus sign),

In small character encodings, yes.  In Unicode?  No.

> would belong if those were not names for use in prose but names to be
> interpreted by the software, that requires the use of hyphen-minus.
> Your programs won=E2=80=99t accept command line options introduced by U+2=
010 =E2=80=90
> HYPHEN.   Your program called fun-program won=E2=80=99t be executed when
> typing fun=E2=80=90program with U+2010.   Otherwise (and beside its use in
> NAME),

My understanding is that other dashes are accepted there by
makewhatis(8) and mandb(8) programs.  lexgrog(1), which is used by
man-db mandb(8), in particular parses them fine.

> there is hardly any reason to use \-.

In man pages, especially of Unix commands, the exception seems to nearly
swallow the rule.

> Perhaps an argument could be made about the copypastability of man
> page titles.   I don=E2=80=99t want to make it and would disagree with it.
> Unless the thing you describe explicitly contains a hyphen-minus,
> don=E2=80=99t use \-.

Here's an exercise for the reader.

$ (cd /usr/share/man/man1 && ls -c *-*)

Regards,
Branden

--g5noth34hwpzn576
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTlDKAACgkQ0Z6cfXEm
bc4Mtw//bERMebIRe4wC/BG2HabnBG9EvVhGH2h3LObwgHEyZiotCDd6mzjPJkdS
GqHIYJZVF76kvvvbYOHLTPb6QSXkm+87hJ4HGVQGPoFIeuuSbyZCSqaQVZl1I5ZM
E9bRc5cT5Rya+BJQzhEoZTwaZHIjtL2v9zYDw3Afaa76iw4UMSI9qrTvgWMqbJqi
iNXawlSkaAF9Obj7Qgmo+36yUl3kJGMOYpb0yNtDwemvOWXKEvyBFAD1ouVLVeYt
DLzEVY7DVzUtfOMNQ+R8h3oy5T1euGmbP0qg50yIMLgh9LaWkJ1m3Gphj7hEKRWx
OZTbTkVuatwaptNYqgbJZ1ZudLHjSkKkr/tEavq8VzKsZ6gjHA0HRFQ2BjKM0sOK
PiOzxVWH8aX7bsv0xuw75CK3cgQ19nN5wfsi+QzjVH4t43sOSxb/oxcvRoRFQfiX
mE6roLW7qhx/BkIGaFXOArtycKtfdju/WNNkJ00aDXOh9XgR7ILhDM1/Ffb9DRoy
4lfpL+2Rrfqqv1po/7Q4LLAGDyOyf+amPvT5H0Q4Na4bGh8o8heXGp0HdWwvT294
yDGaLeFZEZoUH/GSUSg5lJkYdhmtW+XNmG9MzJ+rP0y6cxrDA3ALjwgt95csCF+K
AmMJlJ6q85MQx0c/xtd/TWGENAxMYT/vSD9zYTl28oax7tSUkQk=
=AyvZ
-----END PGP SIGNATURE-----

--g5noth34hwpzn576--
