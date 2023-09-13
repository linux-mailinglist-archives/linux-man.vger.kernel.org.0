Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02B8079EBCC
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 16:58:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234329AbjIMO5w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 10:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241341AbjIMOci (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 10:32:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E207492
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:32:34 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CACC433C8;
        Wed, 13 Sep 2023 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694615554;
        bh=S9eyyiTj7+yTPfsy/wfoOOQuDrFbJxQE/uPUvSNqOFg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=kOpvo5GkoXwG1H4D5MWiTOryc5xwE6E98dqcnZtvaYkPBt5g4tngCjx2ZqYpKaz/Z
         ud9zrqttfnw4wlsCFzPLduoH5xkxfZQKgpCWx1IKutOmqRpY6h5WSUqj4NNbXTL6kz
         zYt1VPwTO2Hejm1ZlXOhucp82iGWzQdwiKU/FWC5O5AmI3p6hWKkWbCBNiID2UWZ2q
         DATYrs8WTyfeYVzIvRF6u6tFAoDJbiyocYZG0/raGvK+vB34+9RBco90XqbCQx6aAI
         lUl1/3N1chEM95KL+vifxt67qxkD9bboeL05LMiXtYO51s2+JAUrsEifYbDAURL/UN
         pbAOcoLD4yE1A==
Message-ID: <87ab1012-7c81-4f1a-a799-603da6d4487d@kernel.org>
Date:   Wed, 13 Sep 2023 16:32:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] mmap.2: fix missing text
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230829102137.17409-1-akumar@suse.de>
 <20230829152959.31056-1-akumar@suse.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230829152959.31056-1-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0prnqHa001Mqke0FEk3X1kJD"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0prnqHa001Mqke0FEk3X1kJD
Content-Type: multipart/mixed; boundary="------------ODGu7MTs6HVe1Apgwg8h1rhZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <87ab1012-7c81-4f1a-a799-603da6d4487d@kernel.org>
Subject: Re: [PATCH v3] mmap.2: fix missing text
References: <20230829102137.17409-1-akumar@suse.de>
 <20230829152959.31056-1-akumar@suse.de>
In-Reply-To: <20230829152959.31056-1-akumar@suse.de>

--------------ODGu7MTs6HVe1Apgwg8h1rhZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Avinesh,

On 2023-08-29 17:29, Avinesh Kumar wrote:
> Fixes: 090fdddb43 ("memfd_create.2, mmap.2, shmget.2: Document the EPER=
M
> for huge page allocations")
> Signed-off-by: Avinesh Kumar <akumar@suse.de>

Patch applied.

Thanks,
Alex

> ---
>  man2/mmap.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index d0530be0f..f7e32013a 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -629,6 +629,7 @@ and is not a member of the
>  group; see the description of
>  .I /proc/sys/vm/sysctl_hugetlb_shm_group
>  in
> +.BR proc_sys (5).
>  .TP
>  .B ETXTBSY
>  .B MAP_DENYWRITE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ODGu7MTs6HVe1Apgwg8h1rhZ--

--------------0prnqHa001Mqke0FEk3X1kJD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUByAEACgkQnowa+77/
2zLN1A/+LEw5n222cTkB2NiWyCrA4D+ALdxuVd5+NZZ3DebTmxlaUj1RbxhS8a3L
3tjWRGzuFICqy1cgPEkKIPND9xmZjL32ioD78hU3uSt4BEZBFbiZxK9VWg3Ekt6A
8Go0/Kd8e9Xwx/WsalSMt8SwYwY7J0jW5S5PmtinC1sfOtu9wEIwtELcu/isGMUv
NOCtKGO4cIQlTaOa+2+i7qzkOxZ+UZN+HrJle+Z6fmK0N67z5D+ynYxkrN2lFwK7
Oujti+bDgRyq9U4ibiLjPH+KPlWzHiRkXKP7ubGaSTrijUDJAHjwFdj0C8ULG4+q
bfI0kVPDZm+Qe526QpSOE09qcMFPcByAn1Sqx8bOUWTZmXlzcqfix+amaUw9Z9gc
S24o9+XBUS20u/dzXuuSzzN0UvEMb5T3uPio32JVSt1Z0PXjFCdNjYwxMUPuKBWF
W/6hTPlAgkn5tKGxL0XZoPMi76AirsGDgKvtFlZVCD8sm4Wm0TfHyUi8NZHhpp7y
fCKKpplKn5iBaYlgx0Xpa4yAHDsX4CZfjpCYXS170zSef+03A1tU+f5eqmMngOcF
+SxD5vqcX7fJyUGhwkFU2P76EGM7bnf/nfOWnwa57APvIg9er4B4pxvMzaDWaPUl
AVDssMeHqFmSTKtGTghSby7INYli2tmzlDQym79M+iN/L1/lfZY=
=pX4C
-----END PGP SIGNATURE-----

--------------0prnqHa001Mqke0FEk3X1kJD--
