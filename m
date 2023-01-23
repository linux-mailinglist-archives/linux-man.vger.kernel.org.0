Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA0806785B5
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 20:03:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231597AbjAWTDc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 14:03:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231548AbjAWTDb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 14:03:31 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F96E658F
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 11:03:30 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id u13-20020a056830118d00b00686def09868so564583otq.7
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 11:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pN//lFPzlxyBmn0utwUzVqlTyNtWn80J0UqRUU/Nt+k=;
        b=jgcBTdTnxmDEh+JZP4Hu+9fmfDvtPoOBbV7bORSY3O0SX49fit92jkNJdHqtUMuWmz
         jsGi5mjTgA+ZtscJForRJFNxfvhqR30n5EvoaPBE1OzNMgAADQ8dxwYrtVf4kLQjUVGe
         Na13nD9WTRTQfa8SSf+3av7tw8ArJotYKZFw6L9aMKsyV1NWP5PvrkABrc6OLDcEkPf2
         3YbjmYSiNmY1kPMj/tUbyET9pv1Adn98pRF88CUrCcMqOxuL6oC5P7SB7KisH5tI3yiD
         CX4w1GkrL/hMMPG6Wf5Uov5Wn2BIe6og3S9PjURHDSWk2HoChKxxAfQU+7hsoAtk8CMF
         68Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pN//lFPzlxyBmn0utwUzVqlTyNtWn80J0UqRUU/Nt+k=;
        b=mI94YWvkaLRjX9kCbJa3mANNvwzOC6puNrRtt1CDIYjTlRD9S3KmT1oGoAUUvejlEf
         ASLHIbS2aWmNBERiLK7HlarEclAztfxiGbqqzghBZbNoap2DGmhdxKZZqEEUgIlBS99X
         8EOKm+FZYEaLYR0eU9XSF6fE960Y36JUzumQGI6BFCd8dN1JpMc7E6o36nW6M3kZGvyK
         8ionRcD9xFP/nS29eRayt6ngGXxHu6mLiZIDwQSCOwrDDvCjOnhCfbxeIPtPYyq3T20p
         rgCfD95LRnSnE1WHFgbYQ0LnCAj9PUdcbwkUUbyUoP9KX1KHrGhwiTQI4qsIcbTPZkHV
         ghGw==
X-Gm-Message-State: AFqh2kp69iLepvDf5gnbtnlmEU/emHG9xs9Ph6g8uOf80uld++z9f52d
        VXJylcYUfwETSo3EdpIDo5Y=
X-Google-Smtp-Source: AMrXdXvgScXE3B78FJ/ZL0QVFbovhkwHw8SWJ80W7RXUUpxPXjd8zfhGgErtqeBHRW9kMbx2i62e2w==
X-Received: by 2002:a9d:62c4:0:b0:672:3f94:26a2 with SMTP id z4-20020a9d62c4000000b006723f9426a2mr12127858otk.11.1674500609451;
        Mon, 23 Jan 2023 11:03:29 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u15-20020a9d4d8f000000b00684e4d974e6sm11498otk.24.2023.01.23.11.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 11:03:28 -0800 (PST)
Date:   Mon, 23 Jan 2023 13:03:26 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.3
Message-ID: <20230123190326.4mnvzasguf4dbfww@illithid>
References: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
 <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
 <20230123174706.GA32751@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ghpltyef37wzzxne"
Content-Disposition: inline
In-Reply-To: <20230123174706.GA32751@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ghpltyef37wzzxne
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-23T18:47:06+0100, Helge Kreutzmann wrote:
> On Sun, Jan 22, 2023 at 10:03:46PM +0100, Alejandro Colomar wrote:
> > On 1/22/23 20:31, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    How can a variable (I<preg>) free memory?

It doesn't, but no claim is made that (by itself) it does.

> > > Isn't it B<regfree>() which frees the memory?

Yes.

> >  Supplying
> >  .BR regfree ()
> >  with a precompiled pattern buffer,
> > -.I preg
> > +.IR preg ,
> >  will free the memory allocated to the pattern buffer by the compiling
> >  process,
> >  .BR regcomp ().
>=20
> I don't really see a change here? It's only the markup, that changed?

The addition of a comma makes clear that the subject corresponding to
the verb "will free" is "regfree", not "preg".

https://thecriticalreader.com/commas-names-titles/

Without the added comma, the sentence reads as if it has a comma splice,
and would thus be (strictly) invalid.

https://www.grammarly.com/blog/comma-splice/

Regards,
Branden

--ghpltyef37wzzxne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPO2fcACgkQ0Z6cfXEm
bc5USQ//ak6jiqL+yyKVLelGTtn9pRMKBYbGV3Z8i9u5+sekDUZAlQhh3xLrCVAu
k/qb5hIbxsiew3JIhvCKBjXw0Fe7Y+sBbl2cwVpEUWU29A+oJbiSYpAquxTvj5RF
G3xjbb/lq0ru1uNAML22yPBNQz8QqTXC2OtOfwpK2ohqde4tOyhYLHBe6qDBbzmw
aV8QISOl9Qk27LW4GKayiK9ac5SCuPGz8PJu9eTJBwvCKnnUzbzpWS8eXTrH4yy4
kzFI9Bt5mvjnMem0oPVHHOiEAX88Oku7tbVE68iuJFPjHkaPsk1bgj0KIMa3as+4
xvOCNdX8v5yeBOg8ka5/vBCOYUPHV1CGdDXkaRuNaqLCqqn1A5VWuYTXpTKmAfBA
Pn+myq091Zml6/BaIZHbA7f0oCpwE+dzVbU15KBVpVewHOlbgPqW1DurcClVuQ+W
6tJV63aRkxqVomlgDlS9H7cKK1GW9wjyNrzkAyjVMJIbswo1gsP2drmlAkcWSiPV
0oaumQf8v+Y6qdjn3SI/IAbUWNs6I8bZht1pcq4cB2ygpiBV+4qoDPpe6R00n5r5
bpFyajmybYJFOD19ktVKuuhgHM0y7oXifiekk33Z3TEhZEe/wyTr4QJyCbVr7sSt
y9hdDLzhcFlwGWnTBmUfT7+xfAF1CZmgjQXXrSV/2nADfwMQxiI=
=eg01
-----END PGP SIGNATURE-----

--ghpltyef37wzzxne--
