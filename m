Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8AE7676F9
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:26:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbjG1U0n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:26:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbjG1U0m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:26:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3567E421D
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:26:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A654F621FC
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 20:26:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F81BC433C8;
        Fri, 28 Jul 2023 20:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690576000;
        bh=bfhRDBWOqbrNc82fMjv1ZEAjjQf1cO/0TVrzEXi1b1I=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=u8IZKwMksjoYzx+KnIDtM+eSuMlXyyiIrfQKeTqHKKXQrd2TFDAPRMJ/ob2PStlap
         Yr5hojY3cGO79sW7YjoT1+5FjKmSUhBIN1aAbxaoMZ4KjmE5tRyLRSvXDRtw9U0+7S
         77R4LK89mvXBV0VNemTeUw5eo12XYHgFKTYGGaZ08/V7+HYWmNQsoDmCbqWayn4NUU
         vh2c5E67UmNblrFvHeWkqBkKYypgBcwXqhrkeRXe9EXaUYiy9peTFTjdpSaDbbCfys
         LjsLNNCZbz4MvRpoemUE4u4lUMuec1/9Cmh+mkFIQ3bu/kvgIrlTTAbnK+hRn91vD1
         Lu2SsnzOKzH3w==
Message-ID: <9a0c757e-b5e5-873c-a545-a8ea5e292394@kernel.org>
Date:   Fri, 28 Jul 2023 22:26:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] fmod.3: add note how to obtain modulus/LPR
Content-Language: en-US
To:     Jan Engelhardt <jengelh@inai.de>
Cc:     linux-man@vger.kernel.org
References: <20230724134902.77081-1-jengelh@inai.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230724134902.77081-1-jengelh@inai.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------075gjq5qZBvRcvfK0nrzlqHB"
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
--------------075gjq5qZBvRcvfK0nrzlqHB
Content-Type: multipart/mixed; boundary="------------Ot7Ubc0GkW0lLmSoXLeXPE6F";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Message-ID: <9a0c757e-b5e5-873c-a545-a8ea5e292394@kernel.org>
Subject: Re: [PATCH 1/2] fmod.3: add note how to obtain modulus/LPR
References: <20230724134902.77081-1-jengelh@inai.de>
In-Reply-To: <20230724134902.77081-1-jengelh@inai.de>

--------------Ot7Ubc0GkW0lLmSoXLeXPE6F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jan,

On 2023-07-24 15:49, Jan Engelhardt wrote:
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
>  man3/fmod.3 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man3/fmod.3 b/man3/fmod.3
> index ee2333fdc..a33b83eb5 100644
> --- a/man3/fmod.3
> +++ b/man3/fmod.3
> @@ -58,6 +58,9 @@ is the quotient of
>  /
>  .IR y ,
>  rounded toward zero to an integer.
> +.PP
> +To obtain the modulus, more specifically, the Least Positive Residue, =
the
> +expression "fmod(fmod(x, y) + y, y)" needs to be used.

There's a more readable way (and it's probably also more efficient):
<https://stackoverflow.com/a/2708900>

I think it would be interesting to have an example program that
shows both, and implements a function double lpr(double, double)
that uses the branchy implementation.

Thanks,
Alex

>  .SH RETURN VALUE
>  On success, these
>  functions return the value \fIx\fP\ \-\ \fIn\fP*\fIy\fP,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Ot7Ubc0GkW0lLmSoXLeXPE6F--

--------------075gjq5qZBvRcvfK0nrzlqHB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEJHYACgkQnowa+77/
2zJwig/9EGkn25vjO97YBe2OEmS1NWvwTZUk2xDQYr+WyRcFB/TpDvzvKkxBBE1q
zuzM+ElX6VciBYR6zc1VgW813sM1WYB/BigJsi+JgERXRM3Hi3yszyfqu9SmFcli
1UBg9A/l3uI6NpG3UNSqA0IkNLJy6FUtQxb0lnrKpfyOe0dRkEEundnMJk7ZeW6e
J2jpDU/+FUfS3Xnf5+AU6imAtipDgqyL8hX9uyJclKdtARpHhrMAhNRA8YK2NxoL
z/Ux8w3GpEVf65rD7QVQ53K18uJ7KxtGXMI/AQLnwIvGjAuNlhWxu1X+UaHp9jzi
RIUkn3iuC6iaFNY9BT/KlNpI5vH4Wmmd6nY+sJX7/sBCCZUb9phLdSkPzSRgVYuz
yA+LPoC/bbe1f3qszMkK5bKgmH/muhKi6Z7uZFgyJWMF4oHC1IhiGr3oZUJMF05L
YFpB1XIO0ovAF9zQp7TW2jC2xzJtJhJ//CtSO+f7SInufusYp75Va9YTkfLiaa2T
4OxM1lKkNxMscJKnxUMjSNuauMifoRPGtHJiDTVzhorDnrdfzhYgbH7fvvYdBZ4e
EN4W4V/2mPDL3eLr8QwaZGzSYhb0ffrEgA2uiPJ7iyWkeNZouGkbuTGd8dndZCKv
mSx3STlAwXkvn9qY2zxo3nq+6eLDfbEtg3IKgHUCJOHpup3YSWw=
=rTwl
-----END PGP SIGNATURE-----

--------------075gjq5qZBvRcvfK0nrzlqHB--
