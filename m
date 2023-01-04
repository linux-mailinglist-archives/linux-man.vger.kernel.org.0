Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 757C765D79D
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 16:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233514AbjADPzQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 10:55:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234370AbjADPzP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 10:55:15 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF8EF3AAA9
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 07:55:14 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id h185so7314594oif.5
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 07:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hg7sQ2Gm8Oc+fNNMq+ULxWKmndjqNOlSyi/aJRvp/mA=;
        b=XWU5QUTowXG7/5RWRDP5WzUdHahfRIYb+1YXrEQjkZU4Hw21CFtYDsYxQ49KLmDifY
         hUuPk/Eb6faRBDKUEHtPSzZEqGtlmWhm8cKYFZZlSor1RiIzUj7wXiSowYTuhiTOkbtZ
         In8D5aVf97yThC7u1o5Qjs7nXPeDHGyJvUR5iQs/Mm9OXBY5XQfIJUA8fpoUUxhFAnOF
         SQm52+qCTIpVZXgp33D7V0rs0BSSxXO5S0JZljf8Szl/RPUp4vOA97dk06Xm0zB8AbFz
         SuRG3eOFgVgyFHnxzQTkGYlMOA9zXdQmVGwKKvDV4qvl8CKGgs/b5qig1tQgn5iBfHWH
         xpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hg7sQ2Gm8Oc+fNNMq+ULxWKmndjqNOlSyi/aJRvp/mA=;
        b=tKIrwnolrABr7lmwPxxLIgx011LsR1tJv5qdgiP7JkmoVeE3zhnNpzYswnjCl12jrB
         Z4GCHWPM/ecQaKMIR+ESo2RcK3Au39ozfGPrCJpMYcuoVeQWKoaEzP6jYoK69HFtq32b
         pk7iD1flPrFXpxvBXxRic2N4CZsRGx3PFcHzmuEJrbqqLI5VIvrUNMKm0EBgOBm8m8fY
         ynBkuAVqYL8JV8zbFMJWFpLWOdMwV30dgWGalxx4cDRvfAbj7uBDX1O96XSdVONUz2Kq
         rCBBOpHZyfYnkVYtfXcZdAKgv1wA8rN7k3BoFUJY7rx3YlmcY6GU56/fXMIRjKC9IJyV
         8YoQ==
X-Gm-Message-State: AFqh2kpjRk2LmXNGkoJ9erkXHLwRpC9i1MrMifAYZAj6+3EHCh3H8ZvZ
        Gg0ei7IhwigmIHB6IyPItWEQwLpcuSs=
X-Google-Smtp-Source: AMrXdXuesGBIVEm9Sb+iXYR7zD2pY8YHKDsR9dyNquHjJFAQF5hvtJAJVRdOfmmQMQuE1LqsGNkIkQ==
X-Received: by 2002:aca:d841:0:b0:35c:29d0:fda5 with SMTP id p62-20020acad841000000b0035c29d0fda5mr21083236oig.59.1672847714152;
        Wed, 04 Jan 2023 07:55:14 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b66-20020acab245000000b0035b4b6d1bbfsm14196753oif.28.2023.01.04.07.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 07:55:13 -0800 (PST)
Date:   Wed, 4 Jan 2023 09:55:12 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Message-ID: <20230104155512.klkmu62oaz7ore5a@illithid>
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pizu3vs73emap33e"
Content-Disposition: inline
In-Reply-To: <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pizu3vs73emap33e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T13:26:33+0100, Alejandro Colomar wrote:
> This patch looks good to me.  However, I didn't apply it, since I have
> a few comments below.

Ok.  V3, here we come!

> >   .SH NAME
> >   ldconfig \- configure dynamic linker run-time bindings
> >   .SH SYNOPSIS
>=20
> We should wrap this in .nf/.fi

That will have a cost.  It will mean using a lot of \c escape sequences
to connect the output lines.

The existing synopsis fits within 74 output columns on a terminal.

Do you think it's worth it?

> Although maybe this goes better in the style patch, since it's a
> formatting fix.

I can shift it.

> I will suggest again that I believe \% should be the default in manual
> pages. Count how many times you want to break highlighted stuff vs how
> many times you want to not break such stuff.

I don't see good prospects of this for the same reason that I was able
to talk Ingo Schwarze out of keeping section headings in shouting
capitals.  It's a matter of preference, but one preference means
discarding information irrevocably in the source document, and the other
means that the information is present but unused.

groff man(7) _has_ a mechanism for this, and has since groff 1.19
(2003).  It's the `HY` register.  People can put this in their man.local
files (on Debian-based systems, that's in /etc/groff).

=2Enr HY 0

Colin Watson's man-db man(1) also has a feature to suppress hyphenation,
using a hack; it's not pretty but it works even on other *roff
formatters.

I don't insist that people keep hyphenation enabled, but assuming that
no one will do so will keep us from putting worthwhile information in
our man pages.

If you dread the tedium of adding \% escape sequences to "keywords" all
over the place, I don't blame you.  This is one reason I proposed my
most ambitious man(7) extension yet, a two-macro semantic tag mechanism.

https://marc.info/?l=3Dlinux-man&m=3D165868366126909&w=3D2

As with the new `MR` in groff 1.23, you could then suppress hyphenation
in the internal macros that wrap "tagged" keywords.

> > -.\" FIXME glibc 2.7 added -i
>=20
> And this is why comments are harmful.  I fint it rather uncommon for
> comments to be up-to-date with the code :P

I generally find FIXME comments useful.  It's a happy day when I find
one that's already been addressed.  :)

Regards,
Branden

--pizu3vs73emap33e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1oVgACgkQ0Z6cfXEm
bc6zbA/7BLauqrZ7FdLyhmLWFHX6NEKrLcDvIj9IYDzaB3gHV4dPYzV3iT21WZCh
xSZjS0A1fQLSB6D1YeRhoQSz1QzZyIO6jhf1EiFuUsLkobUzFXIR0qNJL30DOxWQ
SZqot/KVC20zaReU4R1a79jLYbMdxT6GPj/q5mxdNO6pkb+fCEoqGozf6e6qWlP4
YZGl6fYs+PirGIggRSghPIExoOa8rCxKjmsZ/bhCLrNBYgR2Wht01jmBuEq635pw
hHboE+J0R0u5dLoKzqE/5KG3aC5EBN9O/AAhUZoNCKId1aIyAvYvG0fzzpwnpbXs
gatHsYRisEkUumgGkZ0xrizDEVwQD2S2DiYqWE9h97uXLI2DqHTZGEKZvIdnp3e6
oxA5GcCvolwKt8m8yZOAYLRkF5+hA9ZCXqCk7cNsCoSVISCL8WjP3ncjo7A6/Il8
e9wd8xxFpKXGomlAuE6wHLZ1k+8Kvu2swfMdbNPyqZU4DLN+N/I0sD7dKamubeuy
m7VbVWcOEXYaMausQYl8Lx0Dq/N/kvLOrI6GUKAO4u8dIsF1DplAV90NhX4mBxdX
czhACZyCfaLtrvXsqXjd8YzV0kxU1jw2piqYlhzvPos9taglJ4A5yvj34Xkc1lDV
Fig+N1I2KZ4l1sQVMfr9nh/jCaQ3jSrzznRQGjB3unvLjSzelDM=
=J8BJ
-----END PGP SIGNATURE-----

--pizu3vs73emap33e--
