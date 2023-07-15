Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB33754A11
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjGOQPu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjGOQPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:15:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EDE0E52
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:15:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B3F2F60BBE
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BDD5C433C8;
        Sat, 15 Jul 2023 16:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689437748;
        bh=jrUmnhUfmd0+nb2eqNZXMf/fx4F9HPKDiZnWJnQ+feg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WI6QkvFM0GylsEJtX/Mdfji/fDfqn1ziDsLUEKQaQgfFM5WTzEpj0wNiAmmN1wwHC
         nx0vNrPJUYBJtG3sEUJUUA638CqujYKicpRgvlMAJSFImSMjBS/gr4nVAhG7DdzTJY
         11OO56YMGSarkMuD8s7L+EM+NLOoMT4IqgfF6zyq102eWmnMdIP92R98sb/OqtvOhN
         E2fkMGaqZ5TGroIuoJUpiTqcPj+OMGN6+X2tRxYqfaQ8oScuWwxnPZ0pVOsUXGI4wm
         KgYdfAfenmdj27o/Y7yfiDqv5iwEe9V9NzziOuCunn6XtUZrCHdQDhtOfnjiDuid+i
         Lg5bubR2HQ9aA==
Message-ID: <e615332a-ce05-efe8-6c6f-c89506dfff18@kernel.org>
Date:   Sat, 15 Jul 2023 18:15:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3] abort: clarify consequences of calling abort
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <c4d5acae26ab43479e269a5a2f5b8e263a483a91.1689149490.git.tgolembi@redhat.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <c4d5acae26ab43479e269a5a2f5b8e263a483a91.1689149490.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NoRwihqlBXBSk9ylsHtLutcX"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------NoRwihqlBXBSk9ylsHtLutcX
Content-Type: multipart/mixed; boundary="------------yM4isrrIQK3K8s5mC9Wo8JGK";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org, Stefan Puiu <stefan.puiu@gmail.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <e615332a-ce05-efe8-6c6f-c89506dfff18@kernel.org>
Subject: Re: [PATCH v3] abort: clarify consequences of calling abort
References: <c4d5acae26ab43479e269a5a2f5b8e263a483a91.1689149490.git.tgolembi@redhat.com>
In-Reply-To: <c4d5acae26ab43479e269a5a2f5b8e263a483a91.1689149490.git.tgolembi@redhat.com>

--------------yM4isrrIQK3K8s5mC9Wo8JGK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-12 10:11, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> Clarify that atexit/on_exit are not called because those are called onl=
y
> on normal process termination (as documented on their respective manual=

> pages).
>=20
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>

Please add these:

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>

Thanks,
Alex

> ---
>  man3/abort.3 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man3/abort.3 b/man3/abort.3
> index c63eace5e..8e1554eae 100644
> --- a/man3/abort.3
> +++ b/man3/abort.3
> @@ -47,6 +47,10 @@ function will still terminate the process.
>  It does this by restoring the default disposition for
>  .B SIGABRT
>  and then raising the signal for a second time.
> +.PP
> +As with other cases of abnormal termination the functions registered w=
ith
> +.BR atexit "(3) and " on_exit (3)
> +are not called.
>  .SH RETURN VALUE
>  The
>  .BR abort ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------yM4isrrIQK3K8s5mC9Wo8JGK--

--------------NoRwihqlBXBSk9ylsHtLutcX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyxjEACgkQnowa+77/
2zLQlBAAnYRM1ofQw94Fj3ln6OJvJfHJMxflPM1/n0LRjMxVrTij+RfBsX6CibTF
/P8Y9fEGJk2oLTDH88ckz2WyjfQ/QlZjLZDtFtu9wDjZj42rT4n8nd/t+5hgTyUo
UHVv5NQaje+60lWSxAlLkrQy0UL8MDV409EXNXOBBfsfQ+GA7j35BaRmg6dSE++m
aBsP0BOXSET2rhCkpSnqZ/qqsBhUcxTCXi8+YPZpRtglzt1+3J0ZGK8/1bB1iurP
BiFBiXURCBbr0A4QQpmtAWpAd3DEMTyDP8q6V6kvRwEtuX+Faz3NQNQRA1S2j3QT
YhV899uFNh6LKa1PDsB2zTVj6tGiJxjDXmGIxcqJzZc99GltaelyPrN7UGuDL4oV
KH+OEX5buIOCr3JiB56Ssw7sJ5cIqwT/CnxJvtyZPsyyZuhzjtt8GsxjWDxcPHE+
1HqQitDM/cAOwyLdI9rhqDWLh/CdRzXtNXARksbUSTH0t7CfchjwrSkR7zULZ2o7
gznanjCvzv7BgTtCrcUq6YgLfbA/EiTaxArMY/jYx/PrpAMwGFxAW695DvxZbr4t
llFC2xmJHCowfPRIaC8yrFoqIDP7/Y/5y9N+n+m5XTrWGD+05xahysHc4kZBHAVt
AWzur3uhfS0sjrXXS6Bg1s2FQxYxzZ+Q9mb5zQTLvFeFvyN4bwM=
=7GF1
-----END PGP SIGNATURE-----

--------------NoRwihqlBXBSk9ylsHtLutcX--
