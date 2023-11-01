Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 362367DE4DE
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:54:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231843AbjKAQyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQyn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:54:43 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A91FA10C
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:54:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CF53C433C7;
        Wed,  1 Nov 2023 16:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698857676;
        bh=tk41d1RNznGB8QY+Mr1c5cGcijrid5lb/hIYQQBMSzQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=s+gsanCwYaOSvYo0Sh9+fzOyp2xM3Ge7ZS2j24pCE+OJq6fHygXp5umlx3uGqOgCj
         yS5AC02hDBR3asNG7RBq4MLmfmNNy6CRkAK3MuGObXXQXxdIjfNHuRMQHpcm0x2TR3
         uLMYWZNJs8GePfgVbGOb8JKTf0F7kmyyhY5RYJa6ST8qcks/K+j/xEuoBhS4JDo6aA
         KvZ4fobHjlJoK0dT7Wj05YG5esKT/Qr5kqvqXiZC19h+zAN+5xTU40+zD+/xtkUFW7
         vwNZh91r8kRGz+Hlw+jCnBu8M/KMBWnZg28hrUKAMkgk1BHGoO7UFNjtl24e6Ztyym
         7xIhiZkwCzy1A==
Date:   Wed, 1 Nov 2023 17:54:32 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7
Message-ID: <ZUKCyYniLLfYL4NY@debian>
References: <ZUJaZKpi3x1c29CQ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="CTzfnrGX4jrQvi7k"
Content-Disposition: inline
In-Reply-To: <ZUJaZKpi3x1c29CQ@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--CTzfnrGX4jrQvi7k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:54:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<egrep> =E2=86=92 B<egrep>(1)

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df43a9ed0f80c18ca8a033883d726bfa78fa5c7d6>

Thanks,
Alex

>=20
> "Regular expressions (\"RE\"s), as defined in POSIX.2, come in two forms:=
 "
> "modern REs (roughly those of I<egrep>; POSIX.2 calls these \"extended\" "
> "REs)  and obsolete REs (roughly those of B<ed>(1); POSIX.2 \"basic\" REs=
).  "
> "Obsolete REs mostly exist for backward compatibility in some old program=
s; "
> "they will be discussed at the end.  POSIX.2 leaves some aspects of RE sy=
ntax "
> "and semantics open; \"\\*(dg\" marks decisions on these aspects that may=
 not "
> "be fully portable to other POSIX.2 implementations."

--=20
<https://www.alejandro-colomar.es/>

--CTzfnrGX4jrQvi7k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCgsgACgkQnowa+77/
2zIp5g/+NxAn/MFzkdctB0GCGy2+z0UTqXZGBrp2CCcXFCUsLaBRjjJSjrcFrFUW
v3nWdztpA4Nb3HAaXx9lsfBUMpt2Ahp72+l5KfsZcub3Y7cOTww8iHWede/s7ePM
LM0gijjefyzRT5IQGit3tZHloTbU1Aa3+6OJuqEJfyaz8xGU6FrxRCV0Lrs+wnhx
+ShtQrkfFbvnzgIqevPWHjV4zDbpuB8M0fAsTERV4tO34fIyu4h585OqtHf/MkWj
PSiXjuH8pWzsEx+jYm2/ancexDjYLxw7IZOm5rMNh/GpWBS7JwcPqu67BDKgG+5H
40HWWB/l6W3WqANwHva1DE2gnDJ3qNDyIc+SEjk2rio7mC2z2oCQVEwS5nnP6qBE
HOzHlRl38yz768tvOJUQ6NslNkBj1FJFLJYAHylMJZRvwzRdm+INkB68pvSK5Rxa
oFDPqURF6guE70T858qPjta5+MaX7H7zSTVDhMe1Lop/LnqfXCC0FkKfeuVs6GMY
OF//pZDbYda3wJdOfDTPpjTbzNPBNki77YGi5NZvaM5/22qvXTDCzcL5Qo2mQ6gt
OWKxfBKVCMFQ3gYZeGfheNH/TAjmP0ygiZfiAVeQ9lyqKibDDH2tfVQ90G8Gc695
Zk1hV7wu6l8mFENi9/oZaT3TITAtOq6zCQlRpnp/WdOiqXJISJM=
=vMxp
-----END PGP SIGNATURE-----

--CTzfnrGX4jrQvi7k--
