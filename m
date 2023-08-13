Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E001077A701
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbjHMOkv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:40:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjHMOkv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:40:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A02BFE65
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:40:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 352DE61BCB
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5D91C433C8;
        Sun, 13 Aug 2023 14:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691937652;
        bh=X+wcVmXxqbYpcxvBWjWJNrJ5CnilPWlTJUmsSF/nzRU=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=Wt6gAbD2qglOwwaLhTUgpFcQ/25jZSPz2oNJBmjiAuTMK3DUgs6HRVv8GGkgzHR8L
         sK4G0YSrt49UukWUEFvLAxEb+27nY9R3w9YzJvKiH/D9YlFLIpu8N8E6Zo5JxiBSK+
         ED2eE1Brn2JuMTAy86evatdTtPlIX8AObKm0PmpvPw0DWYUWJq3sop11mxiBRrVZ8M
         ETlnb9MmmLjW2Z1GnqHkWODnOQKc95nsL9fIzzC22ijNTDsAEfwGxCrzy2oaD+42z4
         0mgpQjpu4BGI89QgJQz8fQM5UthN2A4fAA6S5vZ10yTJzGMpW3A5dAPEp6zzQD+uND
         NPosFssN4cJxw==
Message-ID: <28a1720e-9d52-d285-b677-3345a69ac12c@kernel.org>
Date:   Sun, 13 Aug 2023 16:40:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     "Serge E. Hallyn" <serge@hallyn.com>,
        Sargun Dhillon <sargun@sargun.me>
Cc:     linux-man@vger.kernel.org, John Watts <contact@jookia.org>
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
 <20230813143610.GA1148742@mail.hallyn.com>
 <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>
Organization: Linux
In-Reply-To: <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tEp0f8xB0WJeZLPqnqv5fh4a"
X-Spam-Status: No, score=-8.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tEp0f8xB0WJeZLPqnqv5fh4a
Content-Type: multipart/mixed; boundary="------------mWwjxA81b7cq7jA1huFIJfBM";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>, Sargun Dhillon <sargun@sargun.me>
Cc: linux-man@vger.kernel.org, John Watts <contact@jookia.org>
Message-ID: <28a1720e-9d52-d285-b677-3345a69ac12c@kernel.org>
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
 <20230813143610.GA1148742@mail.hallyn.com>
 <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>
In-Reply-To: <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>

--------------mWwjxA81b7cq7jA1huFIJfBM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 16:37, Alejandro Colomar wrote:
> Hi Sargun, Serge,
>=20
> On 2023-08-13 16:36, Serge E. Hallyn wrote:
>>> Cowritten-by: Sargun Dhillon <sargun@sargun.me>
>=20
> Sargun, would you please sign the patch?
>=20
>>> Cc: Serge Hallyn <serge@hallyn.com>
>>
>> Reviewed-by: Serge Hallyn <serge@hallyn.com>

Oops, I just realized that I accidentally pushed the patch to <kernel.org=
>
a few minutes ago.  I can't add your tag :(

Cheers,
Alex

>=20
> Thanks!
>=20
> Cheers,
> Alex
>=20
>>
>>> Cc: John Watts <contact@jookia.org>
>>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>>> ---

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------mWwjxA81b7cq7jA1huFIJfBM--

--------------tEp0f8xB0WJeZLPqnqv5fh4a
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY63EACgkQnowa+77/
2zIvSw/+LuwgpKVZke81+OLrx66FYa38CXuQeCJ7z4s6YjGinJYuD13Vv1jHlgwJ
iBfpYg/x6KDEzUHgOXQeNhE2jBb2lUX5Nve0peeQDIBJ/iAV63fzjMt+rVTZ5zgI
QFyQ++WK1rmpKUArRrhSAaExCzxNrdNGIt7HO1bYEHjnEcZsWqFba/s6ksxcuOuS
atN+uDi/bN4+TXaG2ITpuMImrH/LPGKtXhNeZzDSRlxIrHSZ2lF7dbGbEncGhaSO
GVS491sFaxtuDwoHZEQrlzzUBohjoMMzZJUQzRhqpyab2hSQc4iuhSjWtl9YL8YC
eNxKPBtZpSVZvl3b5MqW5Kk2ghiASZZUJnO6yvt2hor5/+vX0TIIB1islEUjYx6L
yYFeUCXm+IBXUKh4eFDNRXKtVrlWeuyFqgYYBAGRWkrdS+VwX9qJfvjHxHB8y6w3
cNQ83Yc6WqCjBCcK2j2bXQDtB7naNZbUgV7BVXyXTX7UKbQfJXwRzU9euPZboe6G
ACh33Hx4gQC/K7/e7s6QjSI58Y1Z3xzFrkKgd4KYqbzmCfkozRFpPCsIE8uVk/Ej
pdRtLX8myLAya6xdAGS8NxfyJu0qs25g8at+Mq0zryLZrfqA1jz5nbhQcpYsF+Wl
JHIgJ2hkF1R2o15IP9Ar5mloiVhcYffhMaGi5xIqAk3ClUGwf1A=
=7rDh
-----END PGP SIGNATURE-----

--------------tEp0f8xB0WJeZLPqnqv5fh4a--
