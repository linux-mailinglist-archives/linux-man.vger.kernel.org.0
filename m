Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A052B788E2B
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 20:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbjHYSAZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 14:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231245AbjHYSAM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 14:00:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B90B2683
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 11:00:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A5E4862BE2
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 18:00:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 907D0C433C8;
        Fri, 25 Aug 2023 18:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692986408;
        bh=eG5SWKCo5l5kphNRMDuoCvXiGmfaPZpzuIlMWR6neLM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=vAWrqPliZa4Ph9GeJeK6uiy9allesV1d0QHQq+EkjyELKuZHIS0yFDqh6Sn3SAZ8n
         Uijju5n7ocoKglpIIKqGx6epBQ+YQzaY7e6FJKsdNbESLxGJBv4ZHKbxPmY5sWIBvu
         tWqX5GsqCyc65HD4ok3Rapvs00lPsGZRJmGy7pf4fnxix4qV11sMrSPTKPZbUuFXHs
         p4ZE7ndYm8v0d4SKM9mj2GpUX2t2gKf/8GH7NzWGZaMX35fHFWugnrr12wLmoVpR/Q
         g2rtgyFhuPpFyl9q8ru9oTPWocTePJKeqX3XL06sHeV3ODR6fD7TGTNvRBSgNNdLSn
         mrclCF3GA/xQQ==
Message-ID: <c0d758bd-752a-1e31-c58d-72617b200adc@kernel.org>
Date:   Fri, 25 Aug 2023 20:00:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] clone.2: refer to VERSIONS for raw clone prototype
Content-Language: en-US
To:     Kir Kolyshkin <kolyshkin@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230824051452.1293717-1-kolyshkin@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230824051452.1293717-1-kolyshkin@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Jl0jvJ3wB60DOnLS1mJUxKqA"
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
--------------Jl0jvJ3wB60DOnLS1mJUxKqA
Content-Type: multipart/mixed; boundary="------------S6syr3xX0X1AIQjAnfpVYNPC";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <c0d758bd-752a-1e31-c58d-72617b200adc@kernel.org>
Subject: Re: [PATCH] clone.2: refer to VERSIONS for raw clone prototype
References: <20230824051452.1293717-1-kolyshkin@gmail.com>
In-Reply-To: <20230824051452.1293717-1-kolyshkin@gmail.com>

--------------S6syr3xX0X1AIQjAnfpVYNPC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kir,

On 2023-08-24 07:14, Kir Kolyshkin wrote:
> Commit 2a15a76bba35c ("clone.2: Document raw syscall interfaces on vari=
ous other
> architectures") adds this note:
>=20
> 	/* For the prototype of the raw system call, see NOTES */
>=20
> but places the raw syscall prototypes into DESCRIPTION.
>=20
> Next, commit 1874193ebf07068b ("clone.2: Add NOTES heading") makes the
> information to appear in NOTES.
>=20
> Finally, commit 4131356cdab8d ("man*/, man-pages.7: VERSIONS, STANDARDS=
,
> HISTORY: Reorganize sections") moves the NOTES section (with some but
> not all of the old contents from NOTES and VERSIONS) down, and thus the=

> raw prototypes are now under VERSIONS.
>=20
> Fix the comment accordingly.
>=20
> Cc:

Did you want to CC someone?  :)

> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index 4a75b557b..73ad5a6fa 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -58,7 +58,7 @@ Standard C library
>  .BI "                                       void *_Nullable " tls ,
>  .BI "                                       pid_t *_Nullable " child_t=
id " \fR*/\fP );"
>  .PP
> -/* For the prototype of the raw clone() system call, see NOTES */
> +/* For the prototype of the raw clone() system call, see VERSIONS */

LGTM.

Thanks,
Alex

>  .PP
>  .BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_a=
rgs" " */"
>  .BR "#include <sched.h>" "          /* Definition of " CLONE_* " const=
ants */"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------S6syr3xX0X1AIQjAnfpVYNPC--

--------------Jl0jvJ3wB60DOnLS1mJUxKqA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo7CUACgkQnowa+77/
2zItjg//WyDWtbzpy8XpCTaXtj5IxDaJ/AFGi37KAjPkJX9nkR1HASZKdyVjHCSA
SP4gwpol0tQBWaBQqe67exu0tMUrcKBixpnCsMEmmFsdoFXw7M34XSpLsPaB/u5Q
TKnbERdjUTZH5lwO75FX2kGBipLi2Nvpoj2REdKY80oeetIB1Q9eSov+MawpnD+6
1vMKESFegeHbyeMSqvIBmzvNJ9dm/3khfVqjYOICjdugQHDMmQy9Jlj+LW4FO84L
wEgKGWmyltxVFtBVFyx/86SUtBXOT7A0bHUq0qf8jzUDDFg6YJBk4vEOLuGfDoU4
u/l6TDw6q28XTkpatm+iAa26s6A2xtgDm4SPf6ia9gOWlJCwsgM2JtHhVuO0Gcwc
WF3/OvPpjAS3R/OZ44VnCmQMl6BGQJloeDLYjGHeafavSFEHwU6aPxGt9PnclH9E
EWTljX5ZCj7M+9J+/lwZEiUrH23vPCVPrxYX7uK/1S4ayWVKqC8q1/Ki/nEzK8zL
p2zVPiAAmpS99baFwsDooI4iNfXSD0GFCqKZGvCrhyxcexxdTEsFYbXiE+HDwICM
ks3QxEWEIPBZEvg4nISvPX68sup31kVgkpyJzGVQfhypudHr43S/dCUBAd5KUV0r
jrFB8BvoH12fxD1d8fNenAR5PhFQ+cO2Qtgn1WZOGTzBWAAm+NA=
=oL6b
-----END PGP SIGNATURE-----

--------------Jl0jvJ3wB60DOnLS1mJUxKqA--
