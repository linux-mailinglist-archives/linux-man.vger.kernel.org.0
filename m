Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7A1F6BC5F6
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 07:08:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbjCPGID (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 02:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjCPGIC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 02:08:02 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F8335F6CD
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 23:08:00 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h17so474878wrt.8
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 23:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678946878;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UMTaoHXsqx1HRPkykvoG5KAhRCPZuizKxesz9jFWvPQ=;
        b=GxaTJlp/TqpLxgeUS0M6+mqOSkoEHlLYEbf3dxD7qQPtPuDA7ZpL4AFF52kxRVCIr2
         HZkmIgd1ck9+SZf/vHGXimThDWNdtiJU1h+vmHPOmgPPTEBgxlJ/G08mRx3rQuLJir6w
         KE3gVyogeRV/Wth/MSBLpgxlg3Nmr4rXVyEwvZAH66cXLWyM2VhI5EemdksVx6Q7ZU33
         gwCQW24mYsElOCsCT23OzSeaIhSc9/IyonowcAvVwNtReRzVR1l5+kknSjdmC9dBLz70
         ZOKRBzhPzK2/vXyQ3+2CUFtM+5jlfTCawL3fg4UR0r5UgYyCYStakCm/dC2TnwzwuKXT
         YHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678946878;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMTaoHXsqx1HRPkykvoG5KAhRCPZuizKxesz9jFWvPQ=;
        b=1USr0A3W9ODnehIXh5k5bt9RWqGbDWaD9z9RgBCHafRWCKGW1WiuMmvec0x1ajpSq2
         YDyov7Tg8WQpQ1i2+wPEGTYJfJYAa7undYBNUra7ge3XRlg7NOK0GVw93fcc+dG0tw13
         YEJvMrAfp2BCkkRu4R/1xIfpCtXcn08zeoFD5Y36s7rQpXDRsLlGWd29JTgDByF/GbaV
         mxU5cjq93DEy1vzC4mNhLIUhqWa7skbSKXI7qLJOX8UR/oPUU9c8XcZuEMl7VmxlPrNK
         3Gl+MKG5W4QsE3Ia2odaiVBOt1DE96j+wxX9zkFOGhc3dxIbp474d6EDsiCqg7k5mk93
         h28w==
X-Gm-Message-State: AO0yUKWCJ/A9kXOxMicCyqTwjMYiZ23hQtkbiz9zxw292dzy/gicIidE
        2CMVkXp71Vm1ozcbUOboCh+kc/kcxeg=
X-Google-Smtp-Source: AK7set+BtzRiMHc/U3dSrBgPaKAhB9j+a9Ofz32MWVvv4+PB6ypW7TxcvjIGFaSMS9XDmNwK58gAFQ==
X-Received: by 2002:adf:fb8e:0:b0:2c5:a38f:ca31 with SMTP id a14-20020adffb8e000000b002c5a38fca31mr3791154wrr.7.1678946878348;
        Wed, 15 Mar 2023 23:07:58 -0700 (PDT)
Received: from dj3ntoo (222.sub-72-110-0.myvzw.com. [72.110.0.222])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d4687000000b002c5544b3a69sm6296988wrq.89.2023.03.15.23.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 23:07:57 -0700 (PDT)
Date:   Thu, 16 Mar 2023 01:07:50 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: online manual pages
Message-ID: <ZBKyNofdYGBEQucW@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        enh <enh@google.com>, Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
References: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ZQugLSgebmPHK+e8"
Content-Disposition: inline
In-Reply-To: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ZQugLSgebmPHK+e8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Feb 12, 2023 at 22:37:22 +0100, Alejandro Colomar wrote:
> Hi Elliott,
>=20
> I've pushed the new PDF book of the Linux man-pages (Deri produced the sc=
ripts to produce it) to kernel.org with the 6.03 release of the Linux man-p=
ages.  Since you mentioned that you needed Michael to maintain the pages in=
 man7, and we don't seem to be able to contact him to do so, maybe this is =
good enough for you for now.  Please have a look at <https://mirrors.edge.k=
ernel.org/pub/linux/docs/man-pages/book/man-pages-6.03.pdf> and see if it s=
erves your purpose.  Maybe you can suggest some improvements.
>=20
> You can already link to specific pages (and specific sections within page=
s) within that online PDF.
>=20
> So far, I don't plan to add an HTML website of the pages, but if groff(1)=
 improves in the future, I might add HTML manual pages in the kernel websit=
e.
>=20

DDG has these nifty things called "bangs" [1] which let you search sites
directly if they have a search feature, although some just use a "site:"
Google dork in the DDG search itself. One of the most common ones I use
is "!man7" to pull up man pages on the web.

It would be nice to have some kind of new official Linux man page
website (at some point) if Michael doesn't have time to keep man7.org up
to date so that a new bang could be suggested to DDG.

- Oskari

[1]: https://duckduckgo.com/bangs

--ZQugLSgebmPHK+e8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZBKyMQAKCRCp8he9GGIf
EfSEAPUWNcP9RaJmgLntRksZ0rU2lVr3gaQC0R5SxL2bvSaKAP4r2j/+yZEHLCMr
BlI5/5JE4kZbnMV15JKegOED+6RNAg==
=rvP1
-----END PGP SIGNATURE-----

--ZQugLSgebmPHK+e8--
