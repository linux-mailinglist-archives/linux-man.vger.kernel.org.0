Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C165F7D940A
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 11:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230502AbjJ0Jn4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Oct 2023 05:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345655AbjJ0Jny (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Oct 2023 05:43:54 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2A4F9D
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 02:43:52 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91E12C433C7;
        Fri, 27 Oct 2023 09:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698399832;
        bh=nS3S+kpUtj7ISIRIU+VliDk5LNcOG+dqWIO/Q39lQn0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=G+l+DHrBLdNY5t6IE47KmjCSA6dN5rTMsgNYHdPWafCgxCBGfECIUtuF+9SIpnx2j
         gE8/vkge1BG84g2SI/VDu/dhXt6lp6s6H2te+b9p8prgUKjJznsQTs4p2d+vF4EGfH
         uTLENCm0AUSTAXyiFkggYozCiYHM7hQ4aCI09sHNVSfhkZRhtCAx24DUKqVUGh9I6a
         fvzth6V7S8WAJ2CYOTvsIwm12Jivwvgs2UBGYoW/Z6AuDgzCpkyknkwAQpqx3xl2Ih
         TLjt01t4HVlkdNW1ypA7cLN1dwFoEeTYskp7u76OCyXJgkBlUzix4C/y1UclC4LFut
         HxUPF1wmBBomg==
Date:   Fri, 27 Oct 2023 11:43:49 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTuGVYV0qMGL9PqJ@debian>
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
 <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="RNyjhwCmjnKNNDGN"
Content-Disposition: inline
In-Reply-To: <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--RNyjhwCmjnKNNDGN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 11:43:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Adhemerval Zanella <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities

Hi Stefan,

On Fri, Oct 27, 2023 at 11:57:51AM +0300, Stefan Puiu wrote:
> LGTM, thanks!

Should I count that as an acked-by?

Cheers,
Alex

>=20
> Stefan.
>=20
> > --
> > 2.34.1
> >

--=20
<https://www.alejandro-colomar.es/>

--RNyjhwCmjnKNNDGN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU7hlUACgkQnowa+77/
2zLC/w/+Pi0eynehDrFinNmRIWKheuPPXy0+emXV8Ulwx15c8KGrAPnAukUOERit
xpLzBeedDUZNrKHnyqcYELAxcQTnHFtBcK7y0LwFF6ry92LuIbT84sAJsg1UG6Qj
OLLAR/brmvM7Rjtq8vlY0pFKqAGCBxWGQyR6M+ap43fM6VS1x2Zil1CpPoXxKdD6
yG9OljLZV+ZQqMGVVz7olWHLPWBdC3OjWSaJJVTx2CkpeFH7n9tWznub8yK+xWg/
owR1V/0TjKH83eG574j8SVr+uD53WRj9do78bZ9AAwqYYxuzAuQBFrB+FHeFkpKF
8SeXnkYSdc8YSD7ItP0mHdwL7xrncT7aTLhn3cIilpiWJk/zQxv/rbxM9+YJMTzj
dUwz5NdFHpKvIvDfNH2mJQ0wFvAbT0QyxCNaWu67EbYNQACWKQbqFHlTo2BCvZFT
wM4wTn5nnJ0z8efPtQdHXSrOlQGqoyfeXPv/r31g/it4wRcCA+MBBVy46yLlhu0m
Faq/w+UxscWAeBUW3r5m5u/q+sk51Mn2037ZiWabz7eJjirVIu6F7MpPGpRDebDb
Sidq3X8v5aC3IXXRvD6RE/HeIo/Qg6suzISbjsVhM5Bbhu8VMo1dUaarKWVwJjQZ
aiEa2b60isi6ARPwxyxxzpslZbNRCtDaa67/pJd3+AyJg7KdSSs=
=qTdV
-----END PGP SIGNATURE-----

--RNyjhwCmjnKNNDGN--
