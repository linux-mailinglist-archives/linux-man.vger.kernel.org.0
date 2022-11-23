Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4863D6369B0
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238590AbiKWTOV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:14:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239534AbiKWTOU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:14:20 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 811AB1096
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:14:17 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-142306beb9aso21870427fac.11
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s1bc6gUsaIgSnUNjPBM3qX/eKEXAvDNEq3G2CkMQODU=;
        b=PDzd3R6Hy24plSFr56/bOF9LDBUw12v1o9fx69FjK4s5m7Oq+CkM9NBvutUx+cqNig
         rIuCOFghtcJYLAEBb1vd4Ek/DjMJecuCmz3FHggGYk0oseiUzP6r1M9eL/bbbGIyacQR
         RiArk3hle4RppyVhMwT1aWJIWDLdtq5XYOHl83P67ZHXcI2wQ9O60As/NYakFC5YL/yI
         s5tYpMKSd5OpJMIc5XUnZ4vUEy47D1R61imQC/LZOqaiv22eZnCIynGAKMmb5SaFjwfY
         RsgZIlUGDVnxP+C1QA9Jp0Zkdgs4iMbhwKM5DtxM6uQVZE4Ri8nFj3ibzqGprYsTePUB
         qnGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1bc6gUsaIgSnUNjPBM3qX/eKEXAvDNEq3G2CkMQODU=;
        b=Iy/hVR0wwpmFzafUpMKelAGwP+AxD8gVkBd6ZgfsnqcOeyDUzZGJn8hkm4smFrmGwE
         2wvxHHdk47OSL4dpa906fxzyV98frkKPcjyUm1PtrSEGKGK/ryl3Fnj20AjP+URlTCVY
         cxOK1IkLqkSEPru1UKgULemaV3YQeSi2c320ABf6Rof4r39lgYc815R3kPIb1mZSw5Rc
         GY5awK6zK4cPmKbfUTqDR7IQYCtyQQLSIQoLvAgXTTf98nSTg+LhOdVUKdhv18OAIEoe
         upq+74no1zFruXEu+pdnJrTzovis+Tc7D4o4s6yzlosVpPNK9Ds1DadKioP0wrsz40ZU
         80dQ==
X-Gm-Message-State: ANoB5pmZ02EMCVPpJ8EAqb4M8cKHKnOeD+HIwHx7DNLPWPAb/xORLO1p
        lUyxcHbSD7omXYLbaS4bGDY=
X-Google-Smtp-Source: AA0mqf5xvMgvwXn36+X4WiwwXc+GwTyw6JOrP2diDj+ONbU79z9mzuHZzpaH6ZCB/ROyhK6IIoZBmw==
X-Received: by 2002:a05:6870:e99f:b0:142:dd10:b688 with SMTP id r31-20020a056870e99f00b00142dd10b688mr9178974oao.236.1669230856790;
        Wed, 23 Nov 2022 11:14:16 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c126-20020aca3584000000b00354948e04e4sm6894461oia.2.2022.11.23.11.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 11:14:16 -0800 (PST)
Date:   Wed, 23 Nov 2022 13:14:14 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2 2/4] zic.8: s/time zone/timezone/ for consistency
Message-ID: <20221123191414.k6whc4zwg6vmj7hm@illithid>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-2-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i5vsqttcfnfzjq44"
Content-Disposition: inline
In-Reply-To: <20221123134827.10420-2-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--i5vsqttcfnfzjq44
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-11-23T14:48:27+0100, Alejandro Colomar wrote:
> This adds consistency across other manual pages, and with POSIX.1.
>=20
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  zic.8 | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
[...]
> -A time zone abbreviation uses a
> +A timezone abbreviation uses a
[and so on similarly]

I mildly object to this on English style grounds.  Like "filename" or
"filesystem", it seems like a corruption of an English compound noun by
programmers accustomed to writing identifiers in programming
languages.[1]  Such people might also write "icecream", which is widely
recognized as a solecism, if ice cream were to ever be discussed in the
context of an API.  The space is semantically significant: a
"greenhouse" is not the same thing as a "green house".

I believe there are a few advantages to preferring spaces in compounds
except where _general_ English usage (as opposed to that of Unix nerds)
has beaten a track the other way.

1.  They may be easier to parse for non-native English speakers.  I was
    going to say that this point would not apply to a German speaker,
    who can morphologically analyze a 100-letter compound without
    reducing the blood glucose level in their brain an iota, but on
    second thought that may not be true.  English is notorious for
    borrowing from any language in the world, and a triple compound
    combining Germanic, Latinate, and Mi'kmaq roots is conceivable.
    This process may challenge even a native German's world-class
    ability to detect morpheme boundaries.

2.  When divided, spaceful compounds don't need to be added to anyone's
    spell checking dictionary if their roots are already present (as
    they certainly will be here).

3.  When divided, spaceful compounds are at less risk of incorrect
    hyphenation when typeset.  (We speak of TeX and troff and other
    systems as having hyphenation "algorithms", and while this is
    literally true, they are algorithms with huge lists of rules and
    exceptions, and they are applied to large and ever-growing open
    classes of inputs.  They therefore _behave_ heuristically [albeit
    deterministically], I submit, and can produce incorrect hyphenation
    break points through no fault of the algorithm itself.)

4.  Compounds that retain their spaces will fill and break lines more
    evenly, reducing the risk of large gaps between words when
    adjustment is performed, especially on terminal devices that can
    only adjust lines coarsely (an entire character cell at a time).
    If, in context, one fears that a line break within a compound used
    in a man page will damage the comprehensibility of a sentence, then
    one should probably recast the sentence, but in a pinch one can use
    a non-breaking space to avoid the problem, as with "time\~zone".

I acknowledge that any of the above can be of little concern to some.

So if it were me I would start driving man pages toward consistency in
the other direction (spoiler alert: I've already done this for many
groff man pages) and not worry about consistency with POSIX.1 here.

Regards,
Branden

[1] _Most_ programming languages, that is.  Some are lexically analyzed
    such that spaces are permissible in identifiers.  In Fortran's old
    fixed-source form, this was the case because spaces were completely
    ignored in input (outside of string literals, maybe).  There is a
    famous, albeit semi-apocryphal, bug story arising from this.[2]
    Fortran implementations, like those of C and Perl after them, spent
    many years being quite liberal in what they accepted.

[2] The bug was real but legend often hyped it up into causing loss of a
    spacecraft (cf. "space craft" ;-) ).

    https://www-users.cs.york.ac.uk/susan/cyc/p/fbug.htm

--i5vsqttcfnfzjq44
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmN+cP8ACgkQ0Z6cfXEm
bc5S/hAApzJT8VU8RMsawZeUARamGCEYgny9QG0SjO47V6iahUKTytC4MPZClCvF
xU4OQhC89OQ9sh4U6iIG+5Dy9lhSmTXF24hTA/+CKvr1Vm1pT3K018Kt3afSxAA5
lK0RzhFRhb+gTrOvznY670ieyZYINb5r46e9CYiWm27Vy6u5wMx9+pT/UNXBv9c3
U+vsxHv6S+gnTbJetRg9rj3RqClCUoq+5BimCZkEddlbeLnecC87T9sG7ENc4cNs
L/rNXGOhOMZu00Z5PyXSjm2dTy9Qmc2Ns+F2utUGlIxexEfbuCe105bDVV7A5ReU
nlPkaUnXF8DVc6Og1dqvmu9IV8NmXkne1iwut+MEzQkOkPdTyMzpLdQD37s0rKTn
oA15rWZAkjhf6W7YERKRN1xQiOSV9vflxmdgeWfN/n4lMahFbguPD6D5clGc5jo7
KFsIT4I7zzauPj9TSpetXULMcopxf9PxoFgeeTQ/OSU7s22Y4dSCwLBN5IngF4a6
LOD0GFJ7Z2evskKtQ9/HWC9kEuk+DUVTMoHk5Mq3rDdbJZXk6OzcayJcR1WqDEPw
TWz8rihi0bt8MKk/cK2OrvJ4H85ACMAtU3A8FZbVnuVPxNz79dyWDjw2qI1zfWbe
4CXhjeYKlAlS1hr+uUl9NmeTSP59CsZ6ayFldVcVKGtiqdo/qFo=
=EZBl
-----END PGP SIGNATURE-----

--i5vsqttcfnfzjq44--
