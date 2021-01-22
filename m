Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC30300613
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 15:52:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728952AbhAVOwO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 09:52:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728893AbhAVOwC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 09:52:02 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 861E9C061786
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 06:51:22 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id m5so3840427pjv.5
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 06:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0y95TSCM+RlHTMsY6Vb5h1N930msK1uHtEDSHFZrDZ0=;
        b=CvuzGE7pbEkW7edNYIGprUwySbQcxDYH3ERNufc6E8vNDMtos3Yio7XpbCooWP/GIV
         rol4pv6izqvsM5AuDVN3XmMaSbc25U91oimhutBRXZeTayhV0rtUwcBGa8C5MIHj4Tta
         PhY+Ys2KUwNA5N6EaxzhCPXpznYeonL7ZD+5OVsLS33DyKPOIEqeB4PkLYrFtRoG6mr+
         +LlIsTNcZYX4oVn055Z4vk3xaLmHckbEmVKi/7DbRViP9AiLT8bYqWN1KBdoIi/+XPM2
         pLd8AV/JbDQ/om6MdY9N09mGuY12PTJHnjKknBzm2jca2sLjOph8BqfDBbSe7xQU4iPW
         hASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0y95TSCM+RlHTMsY6Vb5h1N930msK1uHtEDSHFZrDZ0=;
        b=GPnJPkHoORZtUVlkOfll3sKP9Gz9oZKPHxot8WBLQBAch5s/FrJkbW++v3VqtoQERw
         Dj+lYQYWcgw3ZGsU5sx1MZ7764w1Ztqgn0/bJeEKb3dBSQ1cLGPFJ7bxXT2r4m27+EbO
         1Tmd42oa6TS2YkjLDnXggUvopNfhIIUIfZUDMV2k6dUe3Gv1kWBi2lodTOM/WYseHpi+
         4GYHDPPp2AKQOw7DJkKHziPu2rdgzEo6tEGOREQsoXVeW00xZE6LHD6drYvNzSAyMmAp
         OdVzj2T2vYRYrLhIiE8Q42dMWnLhI5MPv5AnmGLz34XOCGsFHmr5XJKkOqDFUPJwMS95
         lxAw==
X-Gm-Message-State: AOAM530zkLDWGh0a8wASQOL+zuX6HmShO37BbXxwQ0o9kPRLdnXhpb1J
        5jbYl7ETl6HOyNBIcQjIIwKxyAfX0CI=
X-Google-Smtp-Source: ABdhPJydiDE0urHrBPjxy6oms1ECUpw28gIMznaDlh+CfmNl/4PIkf5JwZvC2rnz6SEGR6vBn2TLGQ==
X-Received: by 2002:a17:90b:100f:: with SMTP id gm15mr5990911pjb.47.1611327082076;
        Fri, 22 Jan 2021 06:51:22 -0800 (PST)
Received: from localhost.localdomain ([1.144.186.68])
        by smtp.gmail.com with ESMTPSA id md7sm9653637pjb.52.2021.01.22.06.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 06:51:21 -0800 (PST)
Date:   Sat, 23 Jan 2021 01:51:16 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210122145114.hc3vsw2gc4sjwkpt@localhost.localdomain>
References: <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
 <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
 <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
 <20210122100718.ab3wkbyf2hv533rz@localhost.localdomain>
 <948982ef-a747-099a-78d5-096610ec0f57@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m2agqnt6ihvxm2gu"
Content-Disposition: inline
In-Reply-To: <948982ef-a747-099a-78d5-096610ec0f57@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m2agqnt6ihvxm2gu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2021-01-22T11:50:02+0100, Alejandro Colomar (man-pages) wrote:
> On 1/22/21 11:07 AM, G. Branden Robinson wrote:
> > I don't think I've ever seen URLs bracketed =ABlike this=BB.
> >=20
> > On the other hand, because \[Fo] and \[Fc] are in the ISO 8859
> > character sets, aren't they much more likely to be supported by the
> > Linux console driver?
>=20
> For that same reason we could conclude that <> (less than, greater
> than) have even better support :)
>=20
> I'd use either u2039/A, or plain <>.

The less and greater than signs are already used to bracket URLs using
the .UR and .UE requests on non-UTF-8 devices and non-groff formatters.

If funny characters (or the Unicode replacement character) are rendering
around the URLs in your terminal window, then there are a few
possibilities.

1.  Something is misconfigured; try a stock groff installation in an
    xterm.
2.  The font you're using in your terminal emulator lacks adequate glyph
    coverage; a look at groff_char(7) may help determine this.
3.  Your terminal emulator inadequately supports some aspect of UTF-8.

/usr/share/groff/1.22.4/tmac/an-ext.tmac:
    43  .\" groff has glyph entities for angle brackets.
    44  .ie \n(.g \{\
    45  .  ds la \(la\"
    46  .  ds ra \(ra\"
    47  .\}
    48  .el \{\
    49  .  ds la <\"
    50  .  ds ra >\"
    51  .  \" groff's man macros control hyphenation with this register.
    52  .  nr HY 1
    53  .\}

The above chunk of the groff man(7) extension macros has not been
changed in 14 years, and no changes to the above string definitions are
planned.  (Nor do I anticipate changes to the value of the HY register,
since it's present for non-groff formatters, but it's a completely
separate issue.)

$ grep -B 1 -Ew '(la|ra)' /usr/share/groff/1.22.4/font/dev{ascii,latin1}/*

/usr/share/groff/1.22.4/font/devascii/B-<       24      0       0074
/usr/share/groff/1.22.4/font/devascii/B:la      "
--
/usr/share/groff/1.22.4/font/devascii/B->       24      0       0076
/usr/share/groff/1.22.4/font/devascii/B:ra      "
--
/usr/share/groff/1.22.4/font/devascii/BI-<      24      0       0074
/usr/share/groff/1.22.4/font/devascii/BI:la     "
--
/usr/share/groff/1.22.4/font/devascii/BI->      24      0       0076
/usr/share/groff/1.22.4/font/devascii/BI:ra     "
--
/usr/share/groff/1.22.4/font/devascii/I-<       24      0       0074
/usr/share/groff/1.22.4/font/devascii/I:la      "
--
/usr/share/groff/1.22.4/font/devascii/I->       24      0       0076
/usr/share/groff/1.22.4/font/devascii/I:ra      "
--
/usr/share/groff/1.22.4/font/devascii/R-<       24      0       0074
/usr/share/groff/1.22.4/font/devascii/R:la      "
--
/usr/share/groff/1.22.4/font/devascii/R->       24      0       0076
/usr/share/groff/1.22.4/font/devascii/R:ra      "
--
/usr/share/groff/1.22.4/font/devlatin1/B-<      24      0       0074
/usr/share/groff/1.22.4/font/devlatin1/B:la     "
--
[...and so on...]

The \(la and \(ra special character escapes map to < and > respectively
for non-UTF-8 terminal devices in groff.

So, as it happens, do \(fo and \(fc.

Here's a simple reproducer you can feed to "nroff -man" or "groff -Tutf8
-man".

	.TH foo 1
	.UR bar
	.UE

Regards,
Branden

--m2agqnt6ihvxm2gu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAK5loACgkQ0Z6cfXEm
bc6tug//fpKxnEaGkPbxcfmBCHTbZjWPxv9kM3ktR5r5ztjsdCiNxvEr4Rfjsgid
i1QMRkmlMOBojPV4zh3TlgLe+/AzvEo9O7WudfGl2sKBpiWEKEu+YSsdm+puRZYH
rZqBLV7bnqhrLTq/x0gnCmzV0Se+Aei57y0PXmCvCvebOofYPL2YzfXX25F+svg0
+9BUfjna005vp/6Oz5s8Z7JlbPk83hp/AT2GQyEpWYrmjZNzSiFKFf2fzUPqYKvF
N7Q8GrlaYRHkrK1StUB2OpUdkYLEQUE9iWis6fujGVv+ItdWQUO8Eqhidb/CIASs
WBwE8VvLNnNDt3TfNXthVYs/cMgMZeb3HcrdU0GTScV7Fxrar+FYJzY3SR3K/SF6
ZsUD52TS+JzkRAb5YY7MBCMeJn+lc8l9eOC0Mi0tbcHrd4bCafjmrqKsF43mn2I+
kX1+lVd0cgUp2awm2+sQnxcmMe0qmVLBm8Ogj+CA5Vui8pViNvGJnZC9dncpqZt0
Ir02rK33Rrm7fkIL8YuAgkAQyS1oPkiNQUX/ot+OGHynbIFOcXeow8DEFu5AFAfT
b5nu48KjNxQMSVhTnoRZy5WjCJ6J+F9dc3mExxLxzyzTacMJlBgbPGdMYveEdxVG
pB6xM9jg67dYW/NCu2kamztsRDdi8iD4RVhwKhVMrtCFMa6cbNk=
=FDEY
-----END PGP SIGNATURE-----

--m2agqnt6ihvxm2gu--
