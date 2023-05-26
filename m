Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA0971288E
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 16:37:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbjEZOh6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 10:37:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242816AbjEZOh5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 10:37:57 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA59E6F
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 07:37:34 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-19f20f406c0so197354fac.3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 07:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685111852; x=1687703852;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M/++sZAHtJaetNPlnn8VpqQGGEwCD8vmOREzMhjd3ds=;
        b=ht0TJTswJ7Rz1OoxogoJ4RrXgYUDP5Vp9Jqw/Mt6F9k5efkTt1tz9HxNeEiH5x4iaP
         iWBK/ox7fYTendlIxKqefEfJ+vnFblLBGR7Y8nsUa1nMZKK/rx0xpolGP44jBrE3ek2M
         csZBRSssptNsYhIq2/frJI1dimKA1z+v4j7v9LGyYpqhisnbZITJXP5pe/+pZADKRrWE
         dZXIOdVsY6gsEfOadU5tCkuqZztz1SN2sBuppKKbJ209e7lFwWvaY++kGiCLCX4z0oSS
         bgmgH7AcWmKV7troHz10VtKIciSk9gN8kK2fa2sdehXci4v5i1PaX++iScOH2OlZMUk5
         k3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685111852; x=1687703852;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M/++sZAHtJaetNPlnn8VpqQGGEwCD8vmOREzMhjd3ds=;
        b=IiO4U2XidkSiKceC5LqS+7yEkz931wE7QATC3bHsnFkYA8sz/uUpoXqh4JbpWzHoRx
         MiptVLn2WkWuKmxJXpEeLM0/kZ02Sb9ZtaKe1kVvBNLAT+OmqccTZVdb3sVaNHRPz5XD
         IPzZ4VhJmwTqeUNcFuwBF2X74pwFrAYlfnzMS52iR6qmSa+AcWDXEu8gPipaqr6AcO5A
         L4PWM3gLci+o3q6+UKvXuxNi84xsIAqAkqhn3zDtttHGVPYtARnDET5TWvPVv5zAPsHR
         oNyzL7zbDtPdeFbQt1x5BA2QRfsocWWZKpW/yLePnTMUgUkW0U3sJnAxoA4r2r9brTm2
         PTOw==
X-Gm-Message-State: AC+VfDxZYC18L3ElDY4SM4CDxLh9roLJdtrBc1/Vom5PMlZ10OIoHVgD
        V+u9Xk9ImIEYJt3doD0PIDLRfb2Rsmk=
X-Google-Smtp-Source: ACHHUZ5JFVrubOZ2uzl8OIBH+lD9gmmGGW0fMpXqBO7cJowcNr6rdrKlVSJ/0wroZCg+k+jVqOh1tw==
X-Received: by 2002:a05:6870:7688:b0:199:8945:7119 with SMTP id dx8-20020a056870768800b0019989457119mr1127949oab.36.1685111852415;
        Fri, 26 May 2023 07:37:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c16-20020a05687093d000b001762ce27f9asm1782381oal.23.2023.05.26.07.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 07:37:31 -0700 (PDT)
Date:   Fri, 26 May 2023 09:37:30 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: SPDX license review requests
Message-ID: <20230526143730.mg3bhbwxj4ohidvy@illithid>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <20230526131503.vvejwh3cgsrobgl3@illithid>
 <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rxjh6vd5whmhfq3g"
Content-Disposition: inline
In-Reply-To: <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rxjh6vd5whmhfq3g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-05-26T16:10:47+0200, Alejandro Colomar wrote:
> On 5/26/23 15:15, G. Branden Robinson wrote:
> > I suggest taking a few days to shake out some points (it's going to
> > be a holiday weekend in the U.S.  anyway, so some engineers may
> > already be on PTO), and then re-announce the relicensing effort
> > subsequently.
>=20
> I'll go on trip around Europe for a couple of weeks starting this
> weekend, so I'll be relatively quiet for some time.  :)

I'm sure you can guess what I hope is released by the time you return.

> > I see from your follow-up email that _this_ is the one Fedora
> > claimed to have a Freeness problem with.  Can we scare up a cite for
> > which one, exactly, they were referring to?  The concern their
> > determination causes me is that _none_ of the four license you
> > present here explicitly grant permission to translate.
>=20
> Sorry, I was already confused with so many threads.  So, there's one
> more license, not derived from these, but which seems related to GPL.
> It's the LDP (v1) license.  That's the one that was rejected by
> Fedora:
>=20
> <https://gitlab.com/fedora/legal/fedora-license-data/-/issues/211>
>=20
> The reason was the prohibition to recommend an info manual.

Ahhh.  Here it is.

>> You may modify your copy or copies of the Document or any portion of
>> it, thus forming a work based on the Document, and copy and
>> distribute such modifications or work under the terms of Section 1
>> above, provided that you also meet all of these conditions: [. . .]
>> c) You must not add notes to the Document implying that the reader
>> had better read something produced using Texinfo.

Hah!  That's actually funny to me (and maybe to anyone who's shared a
discussion thread with Eli Zaretskii).  But I don't think it belongs in
a license.

> I confused that thread, with the one about VERBATIM_TWO_PARA, in which
> you accused it of also being non-free.
>=20
> <https://github.com/spdx/license-list-XML/issues/1947#issuecomment-155469=
5533>

Well, hang on--I was extrapolating from inadequate information.  I said
I didn't _know_ if permission to modify implied permission to translate,
though I have reason to fear it doesn't, and I dropped the IANAL and
TINLA disclaimers to cover my rear.  SPDX has real copyright lawyers.
Let them opine.

If the Fedora Project doesn't have a problem with the LaTeX
2e/"traditional GNU documentation" license missing its translation
permission paragraph, then I do not propose that they acquire such a
problem.

But I think if we're going to go to the trouble of a relicensing push,
we might as well employ all four clauses of LaTeX 2e/tGdl while we're at
it.

> They renamed GPL-2.0 to GPL-2.0-only, AFAIK.

Ah.  That seems likely to have been of much higher impact.

Regards,
Branden

--rxjh6vd5whmhfq3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRwxCMACgkQ0Z6cfXEm
bc5g2Q/+LEQbjg+G8L82fk1gZwSoe2xy47A6yx5kRTzXqWyvylBXzTFx+bmv1dfe
SUUnINExwiahr8UWrG+qMv2Sq//QcX8ANvMZIYbsYgpMqhzc6U4KdI/xjk379uYh
KVmV0LklZTx5SzOT7nyEAyEz2NFYUpUAA9t7j+fEU/58ZsX0s6j9WUCdIBTZDESA
TW3Jdl/BsPWd5fDhIKAt+y238MAIrPWJ6ZoxFwxgXShgihbXbjfxJryCefHBHXEG
9tSu+2Ih6tRsz7AZo2PRcveiGF2j1gAfAbWoEirpDSyt5cH8H7qFcSiQqzgpDi6p
tJD5YtCWU5J/FiwD7BKkhXTuVYp+UlHPNUqbjC3WXK55sUmhD+nvePHGFQ+LA1/9
y0kmgDfPYyqKrSPU3HCoRKS67mok5lh1/7PVkfXtB3KY27028ki+RrDsM1/P0Maz
hawfnVsOK1W7nbDxlZxDWl7CEtZX59fbTU7sqd0oPEoZvHsJ3EzrfMNHJ3EmhAkI
/8ZLV0IkLXgDSOdANE/TYxaSEGJX/l+ZVI9lsWfgfsAtoqm5fs95/7hWi04JP4c/
wy73/zsT5vqJx6aurQfFWX+VP4io5r8oDRDxu8+bVpGn5rLCJFsfP8DU5j2HOnKZ
hBH8OTrbCq9bZCTmLXnotlFTeQ5HNGzJELJ6XGWZQ3Q42zTH2GU=
=L4t9
-----END PGP SIGNATURE-----

--rxjh6vd5whmhfq3g--
