Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19EE977A2CC
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 22:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbjHLUtW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 16:49:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbjHLUtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 16:49:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4689910F2
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 13:49:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CFC6B60C73
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 20:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80F19C433C7;
        Sat, 12 Aug 2023 20:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691873364;
        bh=H7SCJbGagQmKnDDEFgM8+m1n/O+wD7rXZGAYpkD3Bb4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bd7RVQ/P/vENPLqVknZvvvlBJvLD9VfE/DIef0wv9kiPuC7vDw2bP7SmguYnGX23S
         6T7RWSd+QfgJuDFdCs0AIdglRBuJgno1wxM9ssNHxmB7H3Ov4wapBXpbDRHMOassaA
         LqwefxXvXiV+sktXAEs0eWW+8+ryQmSpuIIjnwa0oNBgPsoWv62g2DVZczz2JkN0+v
         6pDTEdl+tVJbRMuCQ2OXM/Es75TMpC62yg0h0+afIQJQ1OJqQPrC20P4qBzrUWxmSL
         yVoRmIjHcEZQ3GNQw65njhvs+O6tMA6MEvzQAfoWNlCO17m/Z4eS/SxMr86sgzrCkz
         ZwQOVNOkQI7eg==
Message-ID: <d284b5e9-9b61-e9a6-1888-e58f7bf5bffe@kernel.org>
Date:   Sat, 12 Aug 2023 22:49:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20230812190401.4bf7xay4fws43tza@jwilk.net>
 <yqduyx6v7k3ziu2fcwoqibrwwrg2fznga6l5xsvwgxvnkcsu4m@gqbl5hu4bw5m>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <yqduyx6v7k3ziu2fcwoqibrwwrg2fznga6l5xsvwgxvnkcsu4m@gqbl5hu4bw5m>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4EwEBa11kJlFgDjtK0dKZVAw"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4EwEBa11kJlFgDjtK0dKZVAw
Content-Type: multipart/mixed; boundary="------------j3N0xKnUKUqXmx7njnhoO0yO";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <d284b5e9-9b61-e9a6-1888-e58f7bf5bffe@kernel.org>
Subject: Re: [PATCH v2] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
References: <20230812190401.4bf7xay4fws43tza@jwilk.net>
 <yqduyx6v7k3ziu2fcwoqibrwwrg2fznga6l5xsvwgxvnkcsu4m@gqbl5hu4bw5m>
In-Reply-To: <yqduyx6v7k3ziu2fcwoqibrwwrg2fznga6l5xsvwgxvnkcsu4m@gqbl5hu4bw5m>

--------------j3N0xKnUKUqXmx7njnhoO0yO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-08-12 22:03, =D0=BD=D0=B0=D0=B1 wrote:
> Bitten by this again. Behaviour blames back to at least 2005
> (probably original to shmem.c), documented upstream in
> Documentation/filesystems/tmpfs.rst (formerly .txt).
>=20
> For example:
>   # mount -t tmpfs -o size=3D0 tmpfs /etc/
>   # df /etc/
>   Filesystem 1k-blocks Used Avail Use% Mounted on
>   tmpfs              0    0     0    - /etc
>   # head -c100M  < /dev/urandom > /etc/passwd
>   # df /etc/
>   Filesystem 1k-blocks Used Avail Use% Mounted on
>   tmpfs              0    0     0    - /etc
>   # ls -l /etc/passwd
>   -rw-r--r-- 1 0 0 104857600 08-12 19:55 /etc/passwd
>   # du /etc/passwd
>   204800  /etc/passwd
> whereas the current manual insinuates head should ENOSPC instantly.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,

Alex

> ---
>  man5/tmpfs.5 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
> index cdd5f2fd8..5274e632d 100644
> --- a/man5/tmpfs.5
> +++ b/man5/tmpfs.5
> @@ -51,6 +51,8 @@ .SS Mount options
>  .BR size "=3D\fIbytes\fP"
>  Specify an upper limit on the size of the filesystem.
>  The size is given in bytes, and rounded up to entire pages.
> +The limit is removed if the size is
> +.BR 0 .
>  .IP
>  The size may have a
>  .BR k ,
> @@ -89,6 +91,8 @@ .SS Mount options
>  The maximum number of inodes for this instance.
>  The default is half of the number of your physical RAM pages, or (on a=

>  machine with highmem) the number of lowmem RAM pages, whichever is sma=
ller.
> +The limit is removed if the number is
> +.BR 0 .
>  .IP
>  Inodes may be specified with
>  .BR k ,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------j3N0xKnUKUqXmx7njnhoO0yO--

--------------4EwEBa11kJlFgDjtK0dKZVAw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX8FEACgkQnowa+77/
2zL6eA/+K/PLUG3jEjHeDYcMt7Jg+PIpu6MQxtq4n74tQoxVZqoBuCqumYiNAur2
d+KjyAIN+f4CW+MPqX+QeT2MAaDkcoc0wl9Y0PhY67PmkVFUPwEpkpT4oWzL/sd1
ptlTfaSzrtEALgD0ROOfYv4GwA5QIiNNQfoK4GLCgJI11M1jkUpFVMS90i4MoiAw
Yp11eQoRewBcw8sjdGImbjr5FUHR0KOaTaKgnVrc4mM/kPiXgwIuvNu1VosENQdd
52uQuDRvrJjTLafpQw4cn4EPMM4bIj47TjWz0TxYkiWanQQSRgakd+GKGH2sVU2Q
HTu+CDFVcYljxsvyMs2qGr0TXXxpRGZ7tC4e/MYbKlsajavBWOC/pIYe2++TYm6F
4slgJelm1DD7JF5FGxNOm6CB+EoBjuDpTAs5/vuja1wT/TM8rCf7dR1fWSJPSSwX
f1nVCMjzKwK6eYJz47hngJyaoAg11huivi1+buhb38eYrxte0Qs45PzW+vFywMWm
TyWLP2VBM9dGcNEg0h89aRkgKXyRlvZd3SPESONbKM319X8XOl5yJGHqO9aHJlse
ObxwSPEG2Q4GT7hi+Szt/zamn78nyvhuVt3urkNS/WcpI9adh43NYH34aykwaYF5
YpVOZivbTrOMl7LqIqBJIxvLDGVyCbjl2Rxv7Vye6vOKmdvUK8g=
=+or5
-----END PGP SIGNATURE-----

--------------4EwEBa11kJlFgDjtK0dKZVAw--
