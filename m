Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC5478C34F
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 13:29:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbjH2L3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 07:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbjH2L2x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 07:28:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC7B6113
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 04:28:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 81409654C9
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 11:28:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7197AC433C7;
        Tue, 29 Aug 2023 11:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693308530;
        bh=lTOshN4mU3fI8HtaPFiBQSbrYJxcyVa6/yaX/HeNVCw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bS86U94zPqG+DN3TZ9L6AZmVgNKtiS6sQwJJ4AdqsEEE3l/PH/x7W1YvA6dykOm5p
         H2e1P3+L9v37V3LyDg9Hpom+uFGJJ+MfswU7nCmU+IRCFSdJngNk5xS2HOrqmAunci
         o07OLDpAV14CKVuMX8YdAaZcu3wQoGMilsZZ4c5dPMBRFokHEeC40O7v7+KHvbZU+s
         lWBzyNXjk7n/M6qfDIlpfMflhy+fAFhKB7rvo/IUKv4EUwQgz0oN9jG+TiZ8Uhv0UE
         /MYB5v9tXZPgGam7/VuGUyg+5DfuOgBYCXoRsEcYU8F+Vf3pVoZJ4zucIO2EVYxNj4
         h9MdG6SNUCJ5Q==
Message-ID: <7f7f2644-d408-969b-6916-ee9cae0962b9@kernel.org>
Date:   Tue, 29 Aug 2023 13:28:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man.7: Replace page with `so` of groff_man(7)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230829112041.sdogksosoylkcoqg@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230829112041.sdogksosoylkcoqg@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fun0anpxThqFeMojFKp9PXk8"
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fun0anpxThqFeMojFKp9PXk8
Content-Type: multipart/mixed; boundary="------------QO0J4liRFsBD0X1azAIhMFGo";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7f7f2644-d408-969b-6916-ee9cae0962b9@kernel.org>
Subject: Re: [PATCH] man.7: Replace page with `so` of groff_man(7)
References: <20230829112041.sdogksosoylkcoqg@illithid>
In-Reply-To: <20230829112041.sdogksosoylkcoqg@illithid>

--------------QO0J4liRFsBD0X1azAIhMFGo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-29 13:20, G. Branden Robinson wrote:
> Suggested-by: Alejandro Colomar <alx@kernel.org>
> Acked-by: Ingo Schwarze <schwarze@usta.de>
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Heh, nice solution!  Patch applied.

Cheers,
Alex

> ---
>  man7/man.7 | 508 +----------------------------------------------------=

>  1 file changed, 1 insertion(+), 507 deletions(-)
>=20
> diff --git a/man7/man.7 b/man7/man.7
> index 583fe354f..f460f4ad3 100644
> --- a/man7/man.7
> +++ b/man7/man.7
> @@ -1,507 +1 @@
[...]
> -.BR mdoc (7)
> +.so man7/groff_man.7

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------QO0J4liRFsBD0X1azAIhMFGo--

--------------fun0anpxThqFeMojFKp9PXk8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTt1m8ACgkQnowa+77/
2zLoOw//dcm3wrmMpKQB2nvYJo3db81WA2n50LSMbY5MntS2XKFbKvGFuQfqMy9Q
vX7118KnboFmJcoIk57rfXnLGNNFpGYq/wmT0RfyoiRR7IrNd7vpLt8ZztvGa5jc
dUKC+CFMwux9diLS4+3+LhBylpNcD4/2y/nBlYmb/lSKfVwI4UQ8e/o+R4btX+q5
2nuR1H5bRECRsUE1A3oRZ1ka1BF9wFAeqk6ye2fcV+MJ5BB7UkSmGpLN1xew+ITh
ygz9fkss8ysWzELtbh+SnVQR8+1oaUe9yMJlMBIADD3ZRW1KRm0G3U1DfrzwmnOV
o/3Dxh6OmRFJSa6OJHURXI4dNE8xopETv1Q2ssNFBOZ4wPAtfyaui9AoYBqKKQR1
ic1ZacLJPs9blxMlCnSpH7sr6t45KYGtikRjEVdDm4zGrTfFhpHfHybw5lbdlXHy
5c0TA0nsue80mUiG8wBa9ry75ULRjS66HtR9hcsK9hefgrxKKBlcfUD0DLs/6i6V
RwvihtfY5zVfOYUQgnFAbXuHgBPHzRG3vRCWYwHj91Uh4Dkbr4AzZpLRfY4DVPfN
XjN/UUXD0r1Xicxv0BYBT6xmancNgt9WLgvaku+UWJAUgd1TdNPb4O26EdK2aAC2
Uttg1D4PaoIe6NJhtWE2YTiHzl/zYvRX0grRQJ8elWAhHOhE6Q4=
=vBpJ
-----END PGP SIGNATURE-----

--------------fun0anpxThqFeMojFKp9PXk8--
