Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3734E7E2FB9
	for <lists+linux-man@lfdr.de>; Mon,  6 Nov 2023 23:20:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232702AbjKFWUp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Nov 2023 17:20:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232005AbjKFWUo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Nov 2023 17:20:44 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A40C183
        for <linux-man@vger.kernel.org>; Mon,  6 Nov 2023 14:20:41 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 689D9C433C8;
        Mon,  6 Nov 2023 22:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699309241;
        bh=MOPsbFcdpDRvZLDvfeuARO25fl1jcxfOcu+qFfIOjXE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r1lNplvusI9sbFp0BZ7S2SmG5tCmlYEMWtQtB76LWnRQz8/vztE1mzFbLJgcQuDcU
         aFtzslQ+e4chRVY2K4RtHC6uCG6N0LJMVTmp6x8pB5kU23uEgy5BPweKOm8dlmZi8s
         O/qs/NxxHaOPbg+u672UcRtPveDP3/XNu7bapzR5HtV5wJpEarQzfgePlYZMJ0iRWk
         HfNHcidCejZPjS7tW6hG/0+rYzGUIgA6+qRuxCXplbT7Q0e8u+a5J9VIr9t8YIat7s
         McO7akON7NONOji5ufq88nbZoxi0wsLTIO6o3qEUv4hEJJ1J70ybmVA1FjYTj2pBRn
         fyHyMeegaoW/g==
Date:   Mon, 6 Nov 2023 23:20:37 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Two STANDARDS sections in strncpy(3)
Message-ID: <ZUlmtik0uAHkOhO7@debian>
References: <CACb0b4mpEWz6D-4SjYmLJsOfdYoSJ1Y2Bri+aFKcgKstXQt33g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="P8basLknDQXgIIJs"
Content-Disposition: inline
In-Reply-To: <CACb0b4mpEWz6D-4SjYmLJsOfdYoSJ1Y2Bri+aFKcgKstXQt33g@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--P8basLknDQXgIIJs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 6 Nov 2023 23:20:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Two STANDARDS sections in strncpy(3)

Hi Jonathan,

On Mon, Nov 06, 2023 at 09:02:20PM +0000, Jonathan Wakely wrote:
> The strncpy(3) page has two STANDARDS sections, which disagree. I
> think maybe the second one is supposed to be HISTORY.
>=20
> https://man7.org/linux/man-pages/man3/strncpy.3.html

Yup.  Thanks!

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dca77220a8fc5d25cf0f040f9ac9529a0cc12ed16>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--P8basLknDQXgIIJs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVJZrUACgkQnowa+77/
2zI6Bw/9G4H6vW2oK1esBlhDUdyC2w0DuOvER4kmZVZhO3ds4pnaUZo3888RFAuJ
sZAJz+uBlA2u048PNGWHrv9PBNJx4BzQRY7i4R5LrchlD0uLLKeoEzq9pNsKX5A4
O82TZ1qDpf6CaenwNefS6aCLn7XP+ajKQAP4qTFWTkJi67Fkl1+IEjk0lloVBc/G
fYDBw65c4wB9hSD6lTBUQ/Bt+nPLIrNVX67HPSOL5MglKKO9NcEmIqLRVT0eLAtN
RgHPk3A6230uhrWI7AEJBd5LAG6CKtJzL0YW11x2Pxz4imxru3Cb23/Z+XcZ7vjo
Zm4/6LryZqlPCde36cKOUbpeo6pXfnHivSto63QL+SSCdby7DU+A5GbfYdIcKJOA
mw20Wm4uaOi3qDX2ByQgta262ilzD/AE0Y1OT/hytu8qa70/sPMAe+12U/aBjf8M
ZhLdKuJZZd0Q7AHKe4BTfHT06CMOBPX7QCZVsdxV/fhfrm7EuoZ72s2kr7yA9lOI
+k8dhF8r0oXnZ6NF3wYwxlyO9ELhqj45LjmmcYuBc2nxZdp2YrLHEJXkaXJBCsvS
xY0cAZX0K7ppm7O+/AO9O1hGBhFpLAQdO50LuuCoU/gj0rzadTY+XbcD2C4zhS79
6nzRrbLErI7VfJ2Bvn4NFmAFe3mhtNBPOSs7T4+BnUjT0BJn+u4=
=as8L
-----END PGP SIGNATURE-----

--P8basLknDQXgIIJs--
