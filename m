Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 332247DD7B6
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 22:23:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbjJaVXH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 17:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjJaVXG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 17:23:06 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD9083
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 14:23:04 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D83F5C433C7;
        Tue, 31 Oct 2023 21:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698787384;
        bh=VS2GN2Dp013eo1iXycpaISbADkGqPAF88cywFMIRppM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YO+koYx1aGZp6hUtOQdDT4CfwdG0I3TwXXfuB8wbBHgukM4WLq/bDkWmiAqqjuVea
         ZLlF3efLy16uURWeTBbp/7LlmPWEsfl/H+5n5PoKE6BixKclqt8oTklxPjXwcdYbP+
         7Mpazq7GyS+RxogmWRk4KhxaVLsZvRJyz/S9ucuyhvzXmrkm9h8YeBZ+0IquDZbMoO
         i5MBbXQ8yOe0lTqstjfV8V/QSkWEyOb8j/YEzUEUv8l3ueXjqBw06ZVeUGYUNXLR+p
         Wx/Al15EKoelsJXpg5rnTGlC9CO/VsSvbrBtp/UNmkFM44+TThb1zrQYjb81nIOKwj
         Qdn6+IfQ4F9iQ==
Date:   Tue, 31 Oct 2023 22:23:00 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUFwNEo6z8MCHjgA@debian>
References: <4678853.9Mp67QZiUf@nimes>
 <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian>
 <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
 <ZUFKMkXrsvahfK3k@debian>
 <CAJgzZoo+szFoHqY-V+1Fuv0wp6tvGwwxsc0na89FYdqZ3Z7gfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="oOVn2BBaqGsrvsSD"
Content-Disposition: inline
In-Reply-To: <CAJgzZoo+szFoHqY-V+1Fuv0wp6tvGwwxsc0na89FYdqZ3Z7gfA@mail.gmail.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oOVn2BBaqGsrvsSD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 22:23:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Bruno Haible <bruno@clisp.org>,
	linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo

Hi Elliott,

On Tue, Oct 31, 2023 at 12:15:43PM -0700, enh wrote:
> "operation" is certainly the most general, and i struggle to see any
> value to the current wording --- it's not like any of them help the
> reader know "what goes here" without accompanying documentation.
>=20
> TL;DR: "yeah, if you change the man pages, i'll definitely change
> Android's headers to simplify them in this way" (and i have no

I'll do it; will CC you on any such changes.

Cheers,
Alex

> particular opinion about _which_ word, and that sounds like a bikeshed
> it's not worth going near :-) ).

--=20
<https://www.alejandro-colomar.es/>

--oOVn2BBaqGsrvsSD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVBcDQACgkQnowa+77/
2zLXvA/7BIVbPWyXDK98gjxPDaZLTSpl+WZqWBtyvTFtBvajGC6Wl/5AOV962SFM
ZTqkSir1chKtKaquc0mnIXjYIsN2KXjTz6VzDeKNkTwYCjIHpJq+1tZIgaUMrw/V
oFkwnhNe1nOP2u8G6L6q1h2R1Ija7cbTrF12u5Ycb+iXgHb+qEh6t7/0SoQOWBfc
dFu2qwnilPFlat41S1G2pFPJjWLbowoyxQheRWOe3y8c437ltPwotQRWiKX0X2/T
lHC1W+pzVYW21soT7jDJ87UiwK/23oCpIr+B3wzJ5jZeTur7G6uWRMNBn1UfkA85
RheEYV5Y8mZhKlF26sFHHWStpL8KYWPA3ssJLKD14ke4yguTDMtfUqdi1XlDIWWQ
qjScZ0wpgzbLspRjXSRyWKXGujgALYOSgp7aEPkLDkW01ylPtQTpHq3gwIflbJbF
03h5SqOPhWFT+HWJWsclRjABJ1lDN/wgwnK43vnfB7QFrMFALuYDIPLxRKyqUAGc
jNl2RuFZjC5yi37WN669YBTZWSW6Tz71tAUm/0Zvsj7J/AvwF+wY+N5OP8ua/8TU
lgUE6p57C8COjzv+DQOoaFYoDudcdarIgHFTK7WEw9L7AW0SmcMvSrgr7mZMWwYY
aG3Rc03NeQGkoa29xLQXSlhM/ph5/iWxLktpgmF5Pcl4WRZBJwM=
=UJAo
-----END PGP SIGNATURE-----

--oOVn2BBaqGsrvsSD--
