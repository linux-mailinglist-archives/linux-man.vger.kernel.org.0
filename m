Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1DE262CF51
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:06:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232905AbiKQAGu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:06:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbiKQAGt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:06:49 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE70E289
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:06:48 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id n205so208856oib.1
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yL430yzJUoQXMlyodR3dZlPBQI1x8p4Nff0nFIjdGcs=;
        b=nktfd0MLagkUlGgLRMuukqrXYbH2AVwmxDeaaxLBYyKZxebvT3LEQK3oIXxrjXNUU3
         vTwU0JDfWfmi+NLQ6GUM1n8wYVqGzV4CA13Qsa+B6uHUVSbtajlfWQvqHUNZJz3d2ozw
         CMc/w4oaWq3we9r5qChKipFTNdjYOxP/VDSaJFOH1f1VuxdPgCVZX3eID8QA+IPGaEPu
         IOcDwLhFio7xviiii8wXNFqd0cH/GRABmPF5rAW+SZR9RzyFC4CuEIeOh6LFCIZuWDOE
         w1+Q6phQvmPMtpEzGH3ELlaqK6MeKlSkhY6Dyr6qub61NbTLFqNnDMXWHq/YyZXLI2+y
         UWUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yL430yzJUoQXMlyodR3dZlPBQI1x8p4Nff0nFIjdGcs=;
        b=v5MY0dB/ZUGguQI2E4OstnocD7SpMuJvF3QJ8cOVxtDGsXYm2vvkkWRV/2T6WSjdR1
         Qsb3DnJVEQq0p8Q7GCxjJ49EHgueVKcpmor9RLT4o4mrUUFe4cqqS/0xXhVyfRasgOuy
         QDn51paUgknktcmrAhXe/UrQkuuAIo9IdT0WbkNv+3XuR/dnWXUUZzsMhTTvrO9i9XdU
         1ymqa2YvCzN93Z3aUF96BU1B2IRe2nXEbSmsJP/WQy6xBOBQAvZwrfu3ClhE8Ih2YVW1
         presXHte7mAOoYKSNSHo5qMZAkFRdgkGtyg/yDCsIw+feCkxTxgCQ08H/T3EGiGKaZnQ
         amaw==
X-Gm-Message-State: ANoB5pmb5WGMAjTW5VW+VFQCIw6gwWzxaQnqrLg3e43+ACDL2GS93n95
        Bfib/5sf3KPebWPvcoxPaX/sfebSPs8LWw==
X-Google-Smtp-Source: AA0mqf41xqooVFuM9+CeEcFlHj6YQyco2LiZ0hZT72e3Td4v7sO42Hur3Vcm3DXi63xfokYpLgwVBw==
X-Received: by 2002:a05:6808:3ca:b0:359:d2a1:b140 with SMTP id o10-20020a05680803ca00b00359d2a1b140mr40909oie.274.1668643607994;
        Wed, 16 Nov 2022 16:06:47 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w6-20020a056808018600b003458d346a60sm6667755oic.25.2022.11.16.16.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 16:06:47 -0800 (PST)
Date:   Wed, 16 Nov 2022 18:06:46 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: Re: intro(3type) draft
Message-ID: <20221117000646.pjz5cf43h65emq6q@illithid>
References: <c7f78a1b-a7bb-a077-3445-802e99f5e9c7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kpyvh6hopnnykbng"
Content-Disposition: inline
In-Reply-To: <c7f78a1b-a7bb-a077-3445-802e99f5e9c7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kpyvh6hopnnykbng
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-11-17T00:13:56+0100, Alejandro Colomar wrote:
> Per the request of Branden that I should discourage programmers of
> writing their manuals with subchapters, which fundamentally means
> discouraging programmers of writing their libraries (or modules, or
> whatever a given language uses) in a way that you can't document a
> header in a single page, I wrote the following introductory page
> intro(3type).
>=20
> The caveat that you'll read should go either in all intro([23]\w+)
> pages.  We could put it in the main section into pages too.  I want to
> hear some opinions about this.

I agree with both of those suggestions.

> I used temporarily the term [sub]chapter to see how it fits.

I think the adoption of the term (sub)chapter has a potential benefit in
that it removes a terminological collision with (sub)sections as
subdivisions of individual man pages (man: SH, SS; mdoc: Sh, Ss).

If this terminological reform is adopted, I think it should be done
across all of (1) Linux man-pages, (2) groff, (3) mandoc, and (4)
man-db.  If we can't speak with one voice on this then I think it's
better not to undertake that reform at all, to avoid frustrating the
discoverabilty of man pages.

Possibly the biggest barrier to this is the mnemonic and documentation
of the man(1) '-s' option.  In man-db man, '-C' and '-c' are both
already in use.

Probably a good idea to loop Colin Watson in on this proposal of yours,
which is strictly speaking severable from the below.

Whatever term is settled on, I'll refer to as $SUBDIVISION below.

> intro(3type)                                        intro(3type)
>=20
> NAME
>        intro - introduction to library types

More information in the summary description is better for keyword
searches.

I suggest:

**snip**
introduction to data types defined by the C library
**snip**

> DESCRIPTION
>        Subchapter  3type  of the manual describes the types pro=E2=80=90
>        vided by C libraries.

Now since the description restates the summary description, you'll want
to say something more substantive here.

> CAVEATS

I wouldn't use "CAVEATS" for this, at least not as I rewrote it below.

>        The separation of chapter 3 of this manual into  subchap=E2=80=90
>        ters  is  only  a  consequence of the organization in the
>        Standard C Library.

I would recast this.

**snip**
$SUBDIVISION 3 of this manual is organized into sub${SUBDIVISION}s to
reflect the complex structure of the standard C library and its many
implementations.  This difficult history frequently makes it a poor
example to follow in design, implementation, and presentation.

Ideally, a library for the C language is designed such that each header
file presents the interface to a coherent software module.  It furnishes
a small number of function declarations and exposes only data types and
constants that are required for use of those functions.  Together, these
are termed an API or _application program interface_.  Types and
constants to be shared shared among multiple APIs should be placed in
header files that declare no functions.  This organization permits a C
library module to be documented concisely with one header file per man
page.  Such an approach improves the readability and accessibility of
library documentation, and thereby the usability of the software.
**snip**

But maybe this material is better placed intro(3) itself, unless you
want a lot of duplication for the sake of getting the message across.

Regards,
Branden

--kpyvh6hopnnykbng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmN1ew4ACgkQ0Z6cfXEm
bc6CBA//eAFkl7dCBmeYDWecEEoOLSNJOHjPXhrIdPhVFZEWkZ7GUC4fLl5MIE63
Au0I9Efz1yOKWC7qqy7BvhOmeL82cKAugChYQhe566K88Ma6TMNTwaq+y+r8EfM/
0nXLTTEvOI/2OJdXjdVSckrVsNuPoIe+pI55JQGtdRDZWHQURhHAA2HAVDjC5cws
duZiXGdxPecEHXoWeBxM6p6AUAmbCaVnloA1Oo5eQFphTNv2A+0Qh3UebBKPRK6v
+Gjr8OfZN0bSkCghqMGFC316K2HTwljdHlXjPsxCAYk1j40Ne9B+iaq6Zu07rH5O
Kaie+vC4aUfNspXfHW4j1vE1Gnz0P3IZX43exdWyEEcDQSmu6XaMXOuXtqBpCF9L
XenGep+7cnF16Q0SVKepDZdhZNSAkfazT4uj7VnM1ItEX2JFTDM6nbAaLsyAU8YZ
qcF9GcFzWK6vlkCBmgW1C0a54w9M9abT2gwgKgIDvIbJy+bpUwlyuqHnYo+5IWPo
balOWjuzrYgunkzGhorJXBEwoZwC05FWcRH9qZ9aEEdt/QbQPGhNMdMAGy2UhroL
/0whDbGs2MAJxeil8groIeW6a+YCiGC9e+dAhD6i6F2YWDh2CnLYnQqPC05F+myJ
FYOJFZYm7pXyZYvJ2hqvdrmWU2CeDxkKqHwxU+Uj+Ypa36KEntQ=
=dIXz
-----END PGP SIGNATURE-----

--kpyvh6hopnnykbng--
