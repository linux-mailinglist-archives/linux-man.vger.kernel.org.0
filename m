Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE6471F709
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 02:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231279AbjFBAMd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 20:12:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjFBAMc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 20:12:32 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 434F212C
        for <linux-man@vger.kernel.org>; Thu,  1 Jun 2023 17:12:31 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f6077660c6so14174785e9.0
        for <linux-man@vger.kernel.org>; Thu, 01 Jun 2023 17:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685664750; x=1688256750;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sNnURZ8nY9lSSO5/+JPx54OS1TWzf76WBALenZzolDI=;
        b=S9VszzZbVvdlLkZfYBHM7BIab6rZ+fOmUp9M3jU+jjzxKuO1S2krP7/fmGUraH8jmN
         BFRP0Ft5RIk/1Zwsu0OgzLEjelE4Sd2YK/tqUdMG0nIK26+0Gi6aM13/aYb0WDe+hupY
         K8aLDTCl6x1tzWcn+E/r0qiCvqhIS3E8zxRHKybr/V/EQ5DZE3TU3PP8vhLo2kBMcKeI
         IWCuF9SJzWU6LhxE3knMuA8FgyaOzu0kCInLSGqWIHNQwTZh3gtzF/xFiF+xiA0ZKQRS
         NrhvixtsCYbEGJwGFg55eYNBc0hb6/TWU2Ta7tn6GHu6eQAtBffRxZfjgX8RBB4numrB
         WAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685664750; x=1688256750;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sNnURZ8nY9lSSO5/+JPx54OS1TWzf76WBALenZzolDI=;
        b=dJr9XO3ElPP66AWiPU9kK87+KNbo6qEquDQPerVMRofbJuoHKD+BDCnsYC37n3uG1Q
         CEagAq+GBXRcpZ7y8ThSGd8y2IxQIjSJckI1KoUvv6tImDakm8dbHPRbA6+ojYsc6F8A
         7p6oN4Gyl2w61VHA07nrGAv9IQ2CqjN0pcNnX+s+giKvwWSF1GIz+I7goYKVJvDRhm7F
         voLsGDYfZ/RxO+MkKGV1uQlI9JTHTNsV4cnq4Uejtyiuk8BdVwIXSOHtZ2JYG3cLu/E8
         bB0KugjP73DIwWw/NVeAeP3S+Nn0vi2JExnquChkVtjRYnOkWBWX1LWIG2VNjIku7fLh
         XgIw==
X-Gm-Message-State: AC+VfDx5M6rnzGL9bN9cnCqt4ESqfwUVqyBvoTBw7bGP/aJLSLo8Ym2d
        XBbJH3FJGyehDQW3DvsEH9RRJwn6mfc=
X-Google-Smtp-Source: ACHHUZ6RV0aOyK2Kf/7iZAyM5amFLg4lad8+KfPwVt9CFnskTN/JueI5ma+ogCNV7+3U7QFtdtPkyQ==
X-Received: by 2002:a1c:6a0d:0:b0:3eb:42fc:fb30 with SMTP id f13-20020a1c6a0d000000b003eb42fcfb30mr630044wmc.32.1685664749544;
        Thu, 01 Jun 2023 17:12:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l22-20020a1c7916000000b003f6f6a6e760sm3749145wme.32.2023.06.01.17.12.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 17:12:29 -0700 (PDT)
Message-ID: <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
Date:   Fri, 2 Jun 2023 02:12:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gW03b1QSpK9Maztdkz3ltUln"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gW03b1QSpK9Maztdkz3ltUln
Content-Type: multipart/mixed; boundary="------------eo0qTH0FlV2V7Q3qyaZXgK0g";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------eo0qTH0FlV2V7Q3qyaZXgK0g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:23, =D0=BD=D0=B0=D0=B1 wrote:
> Explicitly spell out the ranges involved. The original wording always
> confused me, but it's actually very sane.
>=20
> Also change the [0]. to -> here to make more obvious the point that
> pmatch is used as a pointer-to-object, not array in this scenario.
>=20
> Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does it =
change
> R_NOTEOL? No. That's weird and confusing.
>=20
> String largeness doesn't matter, known-lengthness does.
>=20
> Explicitly spell out the influence on returned matches
> (relative to string, not start of range).
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

I forgot about this patch set.  Could you please resend anything that
is still pending?  Thanks!

> ---
>  man3/regex.3 | 33 ++++++++++++++++++++-------------
>  1 file changed, 20 insertions(+), 13 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index d77aac2e7..74f19945d 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -141,23 +141,30 @@ compilation flag
>  above).
>  .TP
>  .B REG_STARTEND
> -Use
> -.I pmatch[0]
> -on the input string, starting at byte
> -.I pmatch[0].rm_so
> -and ending before byte
> -.IR pmatch[0].rm_eo .
> +Match
> +.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
> +instead of
> +.RI [ string ", " string " + \fBstrlen\fP(" string )).
>  This allows matching embedded NUL bytes
>  and avoids a
>  .BR strlen (3)
> -on large strings.
> -It does not use
> +on known-length strings.
> +.I pmatch
> +must point to a valid readable object.
> +If any matches are returned
> +.RB ( REG_NOSUB
> +wasn't passed to
> +.BR regcomp (),
> +the match succeeded, and
>  .I nmatch
> -on input, and does not change
> -.B REG_NOTBOL
> -or
> -.B REG_NEWLINE
> -processing.
> +> 0), they overwrite
> +.I pmatch
> +as usual, and the
> +.B Byte offsets

I'm still unsure about this.  Please do whatever you prefer, and let's
discuss again after you send the patch(es).

Cheers,
Alex

> +remain relative to
> +.IR string
> +(not
> +.IR string " + " pmatch->rm_so ).
>  This flag is a BSD extension, not present in POSIX.
>  .SS Byte offsets
>  Unless

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------eo0qTH0FlV2V7Q3qyaZXgK0g--

--------------gW03b1QSpK9Maztdkz3ltUln
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR5M+wACgkQnowa+77/
2zJOMw/+KpbmgKJ6yxGsi+7RF77D8m61lkFPoZdXoDGQZrqQFTOj0NgyPNxnpH7j
GB5DoYY8wIdy1OueqBJTEoAiBeUnZZg94cQUHfDgLu8OA0MVEt9133uSgqozC94m
EHDcGsaUhDs4Q21kJXuulyBSUsoQSrNf6gsW/cKWGZ4xqMeWKFcC9zzlyG1USvg7
POK7J3BCdMJRhkeeu5/dLZmISKaOfd3dtekMHBnfZ2d27D/F8qXJOpyfarS+Nk7U
Aa5rqaqHXI9WVRtSedgZ4wsTi9RigVfpceqx2sWoAZLCadf7AQ0wk2a5eE2ckKdS
1NsNqvzgYXrFqk7xWKVTVtbpaYLMPLzSkJIRzehbORNm5lp3u7yk0sSqfNIfCPQF
/HP4IMAQO1mkD282CM9RiDl8K3pSPOk5MWzOcWFehYdn/mgUlOeIR6m/duIpeoCB
cXTSQ9xQHice66eyfScPVLqv3fcaMyzJK/JMBqeidmtMpS38n20DU3omSFlHwzCw
AjLzPf9yDbFdVVCIqtx343M3IeXw6K0t75WDFIyntMVNB+YQI3UtviTuz2eEtgbH
QqOU/brntzOB23CZGNgPOKioGSWTAOhV0fQg2IdACLCJDDiVn44WnQZ8G+P1p4vg
IJ5UJSW8oy90awO+fTVh8X/KjrbvFRUOCzLQseHxJhVu6ksqef8=
=tO2K
-----END PGP SIGNATURE-----

--------------gW03b1QSpK9Maztdkz3ltUln--
