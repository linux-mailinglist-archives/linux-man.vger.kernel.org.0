Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E64D77CA98A
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 15:33:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233684AbjJPNdq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 09:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233822AbjJPNd3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 09:33:29 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C549FD
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 06:33:17 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00E16C433C8;
        Mon, 16 Oct 2023 13:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697463194;
        bh=/EQD6PAq33z/fnoO2NaIWKq//2jJx3uPpH24cPjjFns=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i7NADBVvp8xvhMcn9rC/QnuN6n6brrISey72t2HD3SlvC7qlwZCiZRSmXAJRoDWqM
         VvzB9jz9vEmd4TmwLK3gQTguIhb/lvCA4Mm1ghP63kbZtmjQA3vX++hvlLkhgh5zcz
         DTncYubySsvYgffHvi594oAFLoK7WUfg8NM+i1dW6X1mXKPtvSWuuSt4iQi5/z7KH9
         6sMtrKRryoQPL3BQ3+H+yMM09H5LwY6tDF1YJNqnlGJafVPGXscak1hhttBTHMrFrl
         TZ9aYvI57WfO95h7R4CfSTEGbf4wicNo5lgvCNj8Uq6/s7NODe+wzul+X0RCt6bVY6
         n97FSwDNxMyIQ==
Date:   Mon, 16 Oct 2023 15:33:11 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Message-ID: <ZS07lyyLzTRXO7Ta@debian>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
 <ZS0LipiiOBsntjmb@debian>
 <9af68795-52c0-f376-220c-d13d7adf622a@gotplt.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kq7GPhsL5fIIYrFb"
Content-Disposition: inline
In-Reply-To: <9af68795-52c0-f376-220c-d13d7adf622a@gotplt.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kq7GPhsL5fIIYrFb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 15:33:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc: linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option

Hi Siddhesh,

On Mon, Oct 16, 2023 at 09:28:39AM -0400, Siddhesh Poyarekar wrote:
> > Should we maybe keep this example, and suggest using it with sandboxing?
> > Or is it not useful anymore?
>=20
> I don't see the point TBH.

The point was to add another layer of security, in case the sanboxing is
not perfect.

> I wouldn't mind if that example was replaced
> with lddtree as the alternative since it is functionally equivalent. Howe=
ver
> it would be a safer recommendation to put that too inside a sandbox becau=
se
> IMO you'd generally never want to run or even analyze arbitrary executabl=
es
> without proper sandboxing.

Sure, I didn't know about lddtree.  Feel free to use it.

Thanks,
Alex

P.S.:
I'm deprecating <alx.manpages@gmail.com>.  Please use <alx@kernel.org>.

--=20
<https://www.alejandro-colomar.es/>

--kq7GPhsL5fIIYrFb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUtO5cACgkQnowa+77/
2zIxDw//RVO7EgyxW/ZP1jrY1CKMr1lON8PRS72bTKFLdem8BFhZhWpZY8iCNrrm
mXFpLQveQfaCNnRQp+jGtHXICYcMqqpGxBbCDq3QWQAl1rNOKX+7/iQt+sYJza+t
Wpg2vy51hFGI2CRwz/YIXJHdAvBTPDhAFKmfOeiL0ueuy/5YCsXfhsuio2nbCJgE
6/Q6EbSM+Xl0JWUFg4vrNrccajzCcQnDNaaqLA42LG8AmcyIdn+Mcwegkb1rYH8+
qaee43Td8uqJDizxfvFyMCTySSjB2eAeW+j7ZGVOp8rDY0l+gWyN12touYgBWR4S
s/YGOSWsSolbhaHosb4SZ1R/BjBUHNBGmlxQKXG+d5CPkZGdG6iEt213a9zKiuTn
WTV4Z9eAwm9TBV+cZnDXIYrt4AnvwtOmuXH36r13KrQ0OGXm19o+GdRfP9aSBKEp
W92ulwHAPxCo0zi44MuSCACtC5n9KaMJnlG7uc53Y4cFhq1Qf/EuhogapmwxdqxJ
q8IRwNiA1xV9w05H139IZfvHW+ZC/zFULVqMHO/bvwKXSVI1eF8kGj0UsXW65ntu
N7LMu43X3JfrtZ4B4VgJuafOSL61RMA1BGvOt0LPL2x6DLPjvq1LWoVlgsFWp4S6
7fS+Rjb0GGKqfacsND5II5Grm9PawnMjK8ia1TcmZ3F2jhelBmM=
=AQkA
-----END PGP SIGNATURE-----

--kq7GPhsL5fIIYrFb--
