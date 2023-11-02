Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 089217DF120
	for <lists+linux-man@lfdr.de>; Thu,  2 Nov 2023 12:27:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjKBL1y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Nov 2023 07:27:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbjKBL1x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Nov 2023 07:27:53 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5527E13A
        for <linux-man@vger.kernel.org>; Thu,  2 Nov 2023 04:27:48 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEDBAC433C8;
        Thu,  2 Nov 2023 11:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698924467;
        bh=eLSBgM3wCKAuXOl58wB65vw1EqRjubF7OppXtgzNSXo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n4VlZjrBVOE7wUJg0ZFgYRJPTOpRWu3XLvX1BwOUDVp1i/qo2vZ74C1ZK/DzCDgHr
         6pVeVuuTV110CfvtQsOOsjN25frYtpW0PSGzXXEE1rn75FL/A5B8ARIX3YiS9QfoYw
         Zu94dyVSBgrYePddelPV4bs8B8GresN1iIOQLBGDxugHmv5Krpt58fCRKnc2uMz8Kl
         Tbf56MIzJk0eiurg5zg926MxKpmE02iVNICfE4CQ+TvqnMoa2wdb1REbgm65egUCrW
         2fB2L6/6u2p+G3xzTPhWf6R2VH2dL5orsF9vssWbHqPhP6/CEKjhPLgSV0ciwtNh9h
         duci0XtsPlOdA==
Date:   Thu, 2 Nov 2023 12:27:44 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.
Message-ID: <ZUOHsAtcS2Ze6JQx@debian>
References: <ZUJaZPqi0HGylv3K@meinfjell.helgefjelltest.de>
 <ZUJ7zYWY2yspm3Ec@debian>
 <CACKs7VAKY4tvY3yEq3Y6x10MBaY+_jW37_VJWbpZX0dX5V+cEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="slBP3xjTyf5y4uX4"
Content-Disposition: inline
In-Reply-To: <CACKs7VAKY4tvY3yEq3Y6x10MBaY+_jW37_VJWbpZX0dX5V+cEg@mail.gmail.com>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--slBP3xjTyf5y4uX4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 2 Nov 2023 12:27:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.

On Thu, Nov 02, 2023 at 12:06:34PM +0200, Stefan Puiu wrote:
> Hi Alex,
>=20
> On Wed, Nov 1, 2023 at 6:25=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
> >
> > Hi Helge,
> >
> > On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >
> > > Issue:    Who is "it"?
> > > "B<bcmp>()  is identical to B<memcmp>(3); use it instead."
> >
> > Considering that the rest of the page is there just to say this function
> > is deprecated and even removed from POSIX, I guess a suggestion to use
> > 'it' can only mean use the other one, that is, memcmp(3).
>=20
> Maybe 'use the latter instead' would be clearer?

Hi Stefan!

Yep, I like that wording.  Thanks!

Alex

>=20
> Thanks,
> Stefan.
>=20
>=20
> >
> >[..]
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--slBP3xjTyf5y4uX4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVDh7AACgkQnowa+77/
2zIktw/+IUZqT+s5kq+JcSpCXjVEZ8V9lpw3TSJKTmoTujTwI+Tr7LQ0g90xlOvr
agTiUFR9zYYqEfOVh24VwGlkdOwAAWrnbZq6MkM2LQJvjJvKvUSg1CRn/p3idJ36
Y8JS4JH5RE6GvDwF03xIJsAqCg96t7Zgi3Y5NLt+wgJDtbs7IEbX5EAiXRczferD
D51ao9wzWO/p3JtXP4D3FfkAP7qM4BCjrnx7swaoyM2/i1F59U95bSxN/aDufe84
XbA1EA5tlCA3vEoRGEtY+EVJe5VdgiLHVf0XgosXwNf9JvpkWH5Y327odhNg6qxp
E8JidRNjvO3QdZq3paR030qfYrRbf7WJh5ziYh5Fh36QcKCX6P8aHsfUr7UbLWG9
hOETu9xw8CVMmXHzGYu4enJK8+OSBYRlcveolchqvCvR9SNvkFNkO3Shkpkb+b2I
7OVJcT7RbEW7A2Gq1fzLsAFrrq7J6S7A9bJsJ/R+cbRyuEqxt6xCoYGM/Vs7hLa4
2gsJWsM8VBu/eGsMC7dSpv53rMfiT/F5ODlERrwhQ/tRFCF+7wiKXqYLvyNRX/kV
YegRVs6afREM9fHTJCNnhbB8/pFZOE9WT3iULp3YJdvQvQnNV3G7myfmmYV8zg2e
YKzgckl8geWx0pClYnE3rbImVuABdIPtFqlDECYBzWuvKpjlx1I=
=Aqte
-----END PGP SIGNATURE-----

--slBP3xjTyf5y4uX4--
