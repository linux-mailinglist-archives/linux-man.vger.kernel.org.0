Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AEBE7DE421
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbjKAPsu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:48:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230091AbjKAPst (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:48:49 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E58BFD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:48:44 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03E00C433C9;
        Wed,  1 Nov 2023 15:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853723;
        bh=WPySw94j53jYmojCYc2BDXviYhovhktVpppc9OZK+L8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LJJ4yQSyX4S77hR2LUokXjXjZ6feKN43OOOMXw8i2Ohrql1Hk1SNM1UP6ebFd2uQi
         wgCb0fAI1QiRFXBx9LdvYJclB9hxbB8K11A9iEl2Uy7QpQwn6mhYya8J5tsCAOOCfx
         E1zUxmIae3y1zMS1tW6atuVdska9bDaB++UQcJsUZ7rQ6xANQJt7ERE+SeEBcI9O54
         I8UPwZnL8hoqs6UfJEOq998lLpEpYsY7sWDgAj3y8BKyWN05sW0fYiscimhW4M/54M
         VyTYRD5URfn+0QXqVp7BPGuMQWwgmgwh7M4XbuXZ9PBU2NVoxr118Zb2JUnuXkHOKi
         MApXn3X2N0VuA==
Date:   Wed, 1 Nov 2023 16:48:40 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2
Message-ID: <ZUJzWLU74kFIIThX@debian>
References: <ZUJaYzdZ28TxB6nY@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="8YWI5hmOo96nbheb"
Content-Disposition: inline
In-Reply-To: <ZUJaYzdZ28TxB6nY@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--8YWI5hmOo96nbheb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:48:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Linux. =E2=86=92 is Linux specific.
>=20
> "B<openat2>(2)  Linux."

Just 'Linux' is simpler, I think.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--8YWI5hmOo96nbheb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCc1gACgkQnowa+77/
2zLcdBAAkkX1FvT8FbkpF3574BJBZCjXm5J92eqUjv08BgbiP0U/nTILPv34zCsD
jX3iw5AiTGlGAdczFcIt2dtGIm4fez9kP1td8mjR3xZQlia3AOyaeVa1E/c3nKcC
SDfkf9PpxQ0oszvfKMhuOH1dhtdmgzDQoiv9ej5CKraGRILD0KVH+yD2PRTgv0CJ
nHDnyPF+s0mUD/E+1wYWra8SGrqR4gwxzgfFKLfEueFeGp5USh//xVHo69DyemVB
XHLJ9QeY4B3+oot6qLGG/vDA5D/0TtoGSIQgaGU+WL1n6KF3kYYUWAE9Wl6AMqT5
N01AL2S8p/Mc1uQVZhtZBDIsQKb5IRXYrhIRuFdVFelAH7P4Mj+LvEKCMaPo3NAT
xlTUCepT1H675DQ5xfZKQ8IBD9EsWNpNjlHy+QNoUTAbL4QnPe5vG6z4mmb2ucwK
4vq1/fsoec4arNAc4004j90wlMTZrrtDOZvfqUvkN2EJFba+37hrgWgtrNv/XTbX
4hjuP17u80tqMC3Lh9+oDrEPIex2TDWrXUGwDphtbPayCmzhl+V3a/AIszeIDBom
wQGEqTqjsWhGWgOeOloSwK0pmEoZemwF+U4UkmAso7JKEFAzSe1gBN7A/c+RSAuy
W5VCG6ympBzGbvKpRM2YRtUQH98ou0lraTALSWI6gwfiWMtysT0=
=2YPe
-----END PGP SIGNATURE-----

--8YWI5hmOo96nbheb--
