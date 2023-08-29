Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F0578C1B9
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 11:48:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231509AbjH2JsE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 05:48:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235003AbjH2Jr6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 05:47:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 983CCE1
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 02:47:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 36EC861376
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 09:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DCA3C433C8;
        Tue, 29 Aug 2023 09:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693302475;
        bh=nvEEmbI7UgrfK+SNHcjGMv/rxnbaxre6ZdU3Yer6TXk=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=GKAeWTiAVJocqvq9kklA8eL1dqh0+MfZSIya1fOLP2/ACbhZ65UCYziHyftaE6d1d
         0tK9YNye0ozcE967jIQbnCkbZxwQZE6UTLn9PH5Uzi74pv9c1h8nn4au818i2wWgxH
         QZn1Uqr442WitI8hQg8tRx9e250PzjcrLe4itOdLIKDHAAeFTUoopkcmvK+Cw/xfBb
         92q1RknuPm6aSIQbmUTMDeTIjEjJB2LNEHU9t43i/1F0ZzoADPizKi04ulbzOElzVL
         b75d+q+Wx5jtvQJVra/zY5eWUa5PtVHHtWDi7qIJqcCJ40vuwrsk80co1z2IaKWN3T
         GkToxK2zNjxRg==
Message-ID: <8104deed-75b1-1970-5c12-80c0674b9e6d@kernel.org>
Date:   Tue, 29 Aug 2023 11:47:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] mmap.2: fix missing text
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230825155950.17010-1-akumar@suse.de>
 <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
 <7094633.DmTEyPuAzL@localhost>
 <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
Organization: Linux
In-Reply-To: <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------urSoAsiDYaL21E2sTQixPsJn"
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------urSoAsiDYaL21E2sTQixPsJn
Content-Type: multipart/mixed; boundary="------------YGFIV66JKLCEH4G8xviaPZ6t";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <8104deed-75b1-1970-5c12-80c0674b9e6d@kernel.org>
Subject: Re: [PATCH] mmap.2: fix missing text
References: <20230825155950.17010-1-akumar@suse.de>
 <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
 <7094633.DmTEyPuAzL@localhost>
 <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
In-Reply-To: <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>

--------------YGFIV66JKLCEH4G8xviaPZ6t
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-29 11:43, Alejandro Colomar wrote:
> Hi Avinesh,
>=20
> On 2023-08-28 15:28, Avinesh Kumar wrote:
>>> Was this text accidentally lost in some patch, or was it never added?=

>>> If it was there once, please add a "Fixes: ..." tag for it.
>> I am not sure if it was ever there.
>=20
> It was never there, it seems.
>=20
> $ git show 090fdddb43 -- man2/mmap.2
> commit 090fdddb4342f92a1dbeba687462f4bcee816232
> Author: Michael Kerrisk <mtk.manpages@gmail.com>
> Date:   Mon May 17 15:31:08 2021 +1200
>=20
>     memfd_create.2, mmap.2, shmget.2: Document the EPERM for huge page =
allocations
>    =20
>     This error can occur if the caller is does not have CAP_IPC_LOCK
>     and is not a member of the sysctl_hugetlb_shm_group.
>    =20
>     Reported-by: Yang Xu <xuyang2018.jy@fujitsu.com>
>     Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
>=20
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 03f2eeb2c..4ee2f4f96 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -628,6 +628,18 @@ .SH ERRORS
>  The operation was prevented by a file seal; see
>  .BR fcntl (2).
>  .TP
> +.B EPERM
> +The
> +.B MAP_HUGETLB
> +flag was specified, but the caller was not privileged (did not have th=
e
> +.B CAP_IPC_LOCK
> +capability)
> +and is not a member of the
> +.I sysctl_hugetlb_shm_group
> +group; see the description of
> +.I /proc/sys/vm/sysctl_hugetlb_shm_group
> +in
> +.TP
>  .B ETXTBSY
>  .B MAP_DENYWRITE
>  was set but the object specified by
>=20
>>>
>>> Also, proc(5) was recently cut into little sashimi pieces.  You want
>>> to refer to proc_sys(5).
>> Ah.. Thanks for pointing this out, I just checked that thread. I'll se=
nd the=20
>> updated patch if you are fine with no "Fixes:" tag for this.
>=20
>=20
> Please add a Fixes mentioning that commit above.

Never mind.  I'll do it myself while applying.

Fixes: 090fdddb4342 ("memfd_create.2, mmap.2, shmget.2: Document the EPER=
M for huge page allocations")

>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------YGFIV66JKLCEH4G8xviaPZ6t--

--------------urSoAsiDYaL21E2sTQixPsJn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTtvskACgkQnowa+77/
2zLO5Q//dsukO32pxgSnZQKVnrjTqPTJhplUys9Xu8UJTz0odMsgjkoGnNiUeLSC
eAyyslnS4imDerp4jRe2pw/IEp4HjtxKHN4pguO76MNmcIg9ZoKs1AG8iXdtPjPF
hJSWpTQioLwpvZQYA/6J9H+IYtyxBN123wgzo9XC73vNvpuZnxLJsMN0NyUgZ3x7
6ZyQzvCIy76NrBPHrxfph10oILtdMG3hq4oZIKMHROKcglUh4Akz1IzQxKVWyI/r
014McFTf7xrm6bem83ZM8Clw6hrJInfCGq1Yxf6n1kP5yoijRiN/DCt3JW9h5OHk
MgcloELf+DlEE6kMZk29ESCEPU3ucnClk0UWcgkQOfpU5XvyRyqwOf+J9tvG7Tu4
4svC2VAUkgaj2EhWeVc0gnzS9fi39qqZFH4a0AkidBJlZP55snzuRrriwpr4chK3
sFgCRlQLi9cZ3ilP5AqqoqctTEC+zh5gcIH8cynUM97KFR//FQfm1bkoM+/0zGhX
5c6aGMyIkxAhHfqc0pwNcxsgslQkeu+lqxpUN+Yn22iAObt/lK8c2FsJcla7PyR5
JM0791tjK560nm1sFJtESSe/yyDNGTzjAQFqqlXqJKUnH6hNXKP3taUit6JEfEQZ
O9ZeuVf0zw8sGPENft0JBtM+o0c57x7cbCTp9ob5sAc0rUqnfXU=
=yfuW
-----END PGP SIGNATURE-----

--------------urSoAsiDYaL21E2sTQixPsJn--
