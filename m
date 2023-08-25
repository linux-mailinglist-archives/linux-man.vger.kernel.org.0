Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE75788E13
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 19:53:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbjHYRwt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 13:52:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239665AbjHYRwp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 13:52:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5DCC26B1
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 10:52:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 80378645DB
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 17:52:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 627FDC433C7;
        Fri, 25 Aug 2023 17:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692985951;
        bh=0JDM7A+ZTZZ0mP4ro52iKBqT3mArCLmkey4k6FjZRQ4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=aLy32BENpok5tqiGIABsU753PR0Rer5G0SxR9vKDPx0pMLLsfAe+wnWN2Wk8ht8ba
         VYe7AQ05l+vE9htmWksdyPWJoRubmLs+07OjSHCQS8u46fOzKfSyl488PQLZCiLGvm
         2BlBWBHZN3EoJKiMo1vnc2b3zVgkxI8dLkVcPk2i3SNDXdh2VX1qO3FEX4NRKv6cwk
         AFqfa05D8PLm5kknH/f7CVU3h4A3SFeClU4DUlCyoE9kapQm6f0CUqWbt8IBHtgKfy
         CzlK227tzL1J5duDpH8h15th9uRAdpyUjPtAxUYtJhH3Xfx+FJf/WRrxuQjhx5+2g5
         Y049SKANIj1Ag==
Message-ID: <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
Date:   Fri, 25 Aug 2023 19:52:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] mmap.2: fix missing text
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230825155950.17010-1-akumar@suse.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230825155950.17010-1-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PSVElMrZbNr0sltHzG5ZYpJT"
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PSVElMrZbNr0sltHzG5ZYpJT
Content-Type: multipart/mixed; boundary="------------Z20r5kMPL3ZeQQuDCVGjVEwI";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <284f129a-5d21-76fa-7cf5-851512ee5914@kernel.org>
Subject: Re: [PATCH] mmap.2: fix missing text
References: <20230825155950.17010-1-akumar@suse.de>
In-Reply-To: <20230825155950.17010-1-akumar@suse.de>

--------------Z20r5kMPL3ZeQQuDCVGjVEwI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Avinesh,

On 2023-08-25 17:59, Avinesh Kumar wrote:
> Signed-off-by: Avinesh Kumar <akumar@suse.de>
> ---
>  man2/mmap.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index d0530be0f..9de6b2796 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -629,6 +629,7 @@ and is not a member of the
>  group; see the description of
>  .I /proc/sys/vm/sysctl_hugetlb_shm_group
>  in
> +.BR proc (5).

Was this text accidentally lost in some patch, or was it never added?
If it was there once, please add a "Fixes: ..." tag for it.

Also, proc(5) was recently cut into little sashimi pieces.  You want
to refer to proc_sys(5).

Cheers,
Alex

>  .TP
>  .B ETXTBSY
>  .B MAP_DENYWRITE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Z20r5kMPL3ZeQQuDCVGjVEwI--

--------------PSVElMrZbNr0sltHzG5ZYpJT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo6l0ACgkQnowa+77/
2zJ2Rw/+NxECIIsaup4kXTjF1vvxjuvTrp7fyy5LwrRJPpRJrGYD55dyq28haxc6
ps8uGa9h3WOkKfUSOBVCAbQuy4RWWP5866fIlXyTpakx9Ts9RCrnEnrmwtqbtNbb
lgpivXSpN2QTycXa21QuKzj3dAVtrVOIIQm8YTpGROYUAAkQLhV64gA+Mi2VMelP
SK+deH1wlhmbkwHHcONAVoSq9Ea9h16gONTqGWGGkxjKhmMOgQltLsNRAZlPTdZ8
wuEq1qc1CFYbYi6f4pRD0K4JwNvEcZ5d6APFhyFF/8emCjtkpjoVMD/yb1IvUWli
RkMpLDdX/EBy8JMA08d5Fc6DnPDKeu34RP7svcYBopTWGiCX9ifcJ7BbWsf7CXwE
q64T+VZikIx/Od1kf3/LfTsQiehCQkYKwy3bde+wes8/COW9qTUC2URZdIRlQ1i0
eVhY2e4IUM6RD+uo7LAtNC21kZzWgjEpZB/Ryf8z4flfcG9qmhcE1CbYuQcLylc4
B1zOYDncTjPtVJM7MLTU+wPTcYqwS0MyKaGAy5mgu/iphkYXHFINYtGQ+be638Ed
Lwe1YDAPRw2GTSd92CZiK/eBkXQY28l/St7oIidHW0xjaXcF95+23XSQKNVF5KbO
FGllfSNILRUaN4cU6JLA4q5AAxsbOpVCwVHoR6WAwtVXvbTBaco=
=r14t
-----END PGP SIGNATURE-----

--------------PSVElMrZbNr0sltHzG5ZYpJT--
