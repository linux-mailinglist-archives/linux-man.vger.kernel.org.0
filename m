Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A4A7CFA26
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345953AbjJSNA5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:00:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345992AbjJSNAl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:00:41 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C80F249EC
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:58:30 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D36C3C433CD;
        Thu, 19 Oct 2023 12:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697720199;
        bh=9Uf65HPjYot7hnhgBy85klD5z2mzCBwHOPVoWAlGeHg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mhqJhgSpjbxebAZKDF0cwJh5HwRqp+JR7njAIWC77D4kToGuBAGEErZA3orcTnzr+
         uKnU0C+jR2yJ06Bv6aJf4yMZcAoGEtPAc8yrU7mqA05lBGoKhSr8pR/2wv/XdrSnTX
         6lplEnDIYgZxUvuubv2wT1GKEggWLrj4BU/WicfaHnzoOAX3oWMfgHRAjaH09wDzjJ
         GzRht6xdvKyIMDJ+RxZKvQz2SXJwgWrHf+mGd1NNPzS+jtry7Sdm6HqxK06VYwLaG9
         cN2MRRtswIE1GIYr/VvROg3Ggi2iFk05HAIFAWEjJf5jGcBDeSlNT5KvOrf3mdbGrm
         KvuWg9dUhRjDg==
Date:   Thu, 19 Oct 2023 14:56:36 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ld.so.8: Clarify LD_PROFILE in secure-execution
 mode
Message-ID: <ZTEnhCGvc6yNedct@debian>
References: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
 <20231019123139.1808532-2-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jzDObKzmDWRrCe6m"
Content-Disposition: inline
In-Reply-To: <20231019123139.1808532-2-adhemerval.zanella@linaro.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jzDObKzmDWRrCe6m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 14:56:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ld.so.8: Clarify LD_PROFILE in secure-execution
 mode

Hi Adhemerval,

On Thu, Oct 19, 2023 at 09:31:38AM -0300, Adhemerval Zanella wrote:
> Different than specified, glibc 2.2.5 does not ignore LD_PROFILE in
> secure-execution mode.  Instead, it uses the default LD_PROFILE_OUTPUT
> (/var/profile) folder.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>

Patch applied.  Thanks,

Alex

> ---
>  man8/ld.so.8 | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index d4eb27a70..cf03cb85e 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -687,7 +687,7 @@ Profiling output is appended to the file whose name i=
s:
>  .IP
>  Since glibc 2.2.5,
>  .B LD_PROFILE
> -is ignored in secure-execution mode.
> +uses a different default path in secure-execution mode.
>  .TP
>  .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
>  Directory where
> @@ -701,10 +701,6 @@ then the default is
>  is ignored in secure-execution mode; instead
>  .I /var/profile
>  is always used.
> -(This detail is relevant only before glibc 2.2.5,
> -since in later glibc versions,
> -.B LD_PROFILE
> -is also ignored in secure-execution mode.)
>  .TP
>  .BR LD_SHOW_AUXV " (since glibc 2.1)"
>  If this environment variable is defined (with any value),
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--jzDObKzmDWRrCe6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxJ4QACgkQnowa+77/
2zI1lBAAlY61vizirxf9QFZQeuoP8biKJYjHbD6YcWvhr65jsyZUn4mZCvpUvh02
6fNYOObfg1XK4LWa9YSYaT2LxG1P+9rVbuF77TSqa3Um4iNu7MM+FhpTBq0R2fF1
LpVyOD1ZcWmLRnACisyEVYlF28gDhTQ0ptuZyVKxQr2Xq6mukfbqziiwQk1WfjkI
Aw/B/eNnur+3aEcCmEjKBuJBSnUi223M7uZfHX+0KTys8NAv3YMXqX3Lt/qNp3HN
h6Itx7I6HeSdvZYVU5w/pJpkazEVdoD2F3YaohlyAqZlAA1PS/NBkkJL4qFLoz6X
Q764bGVQD+3SCBbXRTSh7IXaO20ewvtBHEZBCGWntVigfiYDu+MPTC2mXbjM995t
g/837HhkkNLL4s5J9mkt0pLsfY4/MnhwLdGsn1YBxYS+NsCl42Q4Ylm0NkuZoq6+
7DKsKMuFfdOEeMq+fdLLfG19sl2jyQnjljQEkNbB7FDWML5sBIvrqdBVaG2jdRic
yLIff5bbtBYXjyRgLBFKOjtdg2Qjv7QrZx67uA2xNCmCN2Du29Fa7xi8SKjONnm7
ReomoLvOZi8ccqdWMQXPmtb9vEKcMZQ+j0TdK5KmFf/nvjN8lwlvM+hgCquxkCm7
avG00YMAbcYClN6VqcYx1OrHBSvB1W0sDYybLWOiYDItjRI8yM0=
=TXPb
-----END PGP SIGNATURE-----

--jzDObKzmDWRrCe6m--
