Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D17476E2F73
	for <lists+linux-man@lfdr.de>; Sat, 15 Apr 2023 09:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjDOHVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Apr 2023 03:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjDOHVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Apr 2023 03:21:21 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52D575FE1
        for <linux-man@vger.kernel.org>; Sat, 15 Apr 2023 00:21:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id rp27so14150998ejb.12
        for <linux-man@vger.kernel.org>; Sat, 15 Apr 2023 00:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681543272; x=1684135272;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DPcnkVhBu+RMoIPyozih75PtOJ57PSpjNrrKSf3KNEQ=;
        b=V7I9ub8c3/ma34GZ5w2EOSf1ijitjE0Z/MxwDbOjrH9WMG1ZlDoMQJZljri7OOSZep
         j9QyzBIuPczSbdz/Lukjc4FrxryNjMWJOif8F0wnhjU8I8WoLHc3xLb62yj6DmBnWEA7
         AVJwkjw7ROrCCgmiVQUIu7faxRFm0KxVtVEScwSvY1RBIyFqAI9yOz4AyIWfF0WzTLql
         UWJsKqF3CqJYpTNSTEU4PpQAURaRzxZG8r8ENvuN08YNcGBZWD6pKBMasAjIbKkMYtMU
         KYaZS9OrcbvRZ11jaV7ICulFGSrXuC7bahQW+mQdt57c0KB246Yh0NQDQdlTF4iJYEyX
         kQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681543272; x=1684135272;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DPcnkVhBu+RMoIPyozih75PtOJ57PSpjNrrKSf3KNEQ=;
        b=i8RurJDAowZEsIfNnaVlhYbVGpkKJVOjR3B/a3I4tgGSwcNfOaVkqALu57yb4HCT94
         ksiX16wce3EH7C4BA3NbUs2lPLuqWHBZM1KtTPJzPxuqldbV6WKWsjErxP2YIosbn4sh
         NbTYE3wsxBNmFTr8RQ4P1LLvezRyAmgqEexC9FpZKfswgDJSxn9g2b2e9V101Ndb8es5
         ewhw+/xqxh9u7adB+WLijJQnz1PR/ZZWl6DCZtRd+Wh3rhwEAtU4BTPFvcpjR6BHqqi2
         LWFMoArZZ6Oo7TVyYy3v0uvYsvNxq47xFqrFYGzAoU88J7/juQlS0gNYVulrt9ACpeq1
         puhw==
X-Gm-Message-State: AAQBX9d67AVk0q1k5zop2luwngVVr7z4QatTPoSeOhIcAW6UF+iekg/z
        E2uqaXZXI5V7Pyh6gBp1G4X+H14V/8Y=
X-Google-Smtp-Source: AKy350bycOmhOuAzuVE5eUh0tthgZwhaCNf0amPG8w7c66NLmwTGEwqXnZTpggxc9e5SDVQW530kZg==
X-Received: by 2002:a17:906:fca3:b0:94a:8b9f:e9de with SMTP id qw3-20020a170906fca300b0094a8b9fe9demr1674239ejb.32.1681543271652;
        Sat, 15 Apr 2023 00:21:11 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id k13-20020a17090632cd00b0094e96e46cc0sm3382741ejk.69.2023.04.15.00.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Apr 2023 00:21:11 -0700 (PDT)
Date:   Sat, 15 Apr 2023 02:21:05 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] bin/stdc: Improve output formatting
Message-ID: <ZDpQYWOGbOEyDEuz@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <ZDjGUp5t5Fefb+zW@dj3ntoo>
 <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4l+9YK4qLYMz4Bqd"
Content-Disposition: inline
In-Reply-To: <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4l+9YK4qLYMz4Bqd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Fri, Apr 14, 2023 at 13:26:59 +0200, Alejandro Colomar wrote:
> Hi Oskari,
>=20
> On 4/14/23 05:19, Oskari Pirhonen wrote:
> > Remove leading whitespace and collapse multi-line declarations into a
> > single line using (g)awk.
>=20
> I can't reak awk(1) :(
>=20

Awww man, but I even left the optional semicolons in...

> But I like the idea.  I implemented the same using sed(1) after your
> suggestion.  Does the below patch look good to you?
>=20

I actually had an earlier version with sed(1), but it used
looping/branching to handle the multi-line bits, so I figured it was a
bit ugly and didn't send it. I didn't think to try `-z`.

It seems to do the same thing, so LGTM.

> Cheers,
> Alex
>=20
> P.S.: I forgot about writing a man page.  I'll start now.
>=20

I was about to say "and license file and appropriate blurb" but then I
saw your commit. I've got some suggestions for the man page, so I'll
send some patches sometime soon.

- Oskari


Since you said you can't read awk, then just to satisfy your curiosity,
here's what was going on:

    BEGIN {
        RS =3D ";\n"
        ORS =3D RS
    }

This block is run at the start before any records are processed.

The default Record Separator is "\n", but here we set it to ";\n". In
(g)awk, a value of `RS` that is >1 char is actually a regex, but we only
need to match a literal string. The Output Record Separator is by
default also "\n".

    {
        gsub(/\n/, " ")
        sub(/^ +/, "")
        gsub(/ +/, " ")
        print
    }

This block is run on all records, since it doesn't have any patterns for
contitional execution attached to it.

`gsub()` does an in-place global regex replace on a string, similar to
the `s/regex/replace/g` you're familiar with. It takes an optional third
arg, but if it's left out then it has an implicit `$0` which means the
entire current record. `sub()` is like `gsub()`, but only does the first
match, similar to `s/regex/replace/`.

`print`, without any args, prints the current record followed by `ORS`.
This was set earlier because the `RS` is consumed from the input as it
is being processed record by record, but we want to keep the output
looking intact.

Hopefully not so bad after all. Awk is pretty nice IMO (and gawk in
particular), and I would recommend checking it out if you find yourself
borded one day :)

--4l+9YK4qLYMz4Bqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZDpQWwAKCRCp8he9GGIf
EdC0AP0cUknQpiW5X4w2SrIUS+cc9tyWMw2fxpp3nSx7n7OLKwEArss19Nxsj2Hp
jWRbNTZreDJMNvpEHguYhZg4jZ8TzQM=
=Ql2U
-----END PGP SIGNATURE-----

--4l+9YK4qLYMz4Bqd--
