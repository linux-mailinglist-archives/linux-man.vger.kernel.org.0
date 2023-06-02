Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE20171F6FF
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 02:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbjFBADT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 20:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbjFBADS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 20:03:18 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C2D12C
        for <linux-man@vger.kernel.org>; Thu,  1 Jun 2023 17:03:17 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f6a6b9c079so14308725e9.1
        for <linux-man@vger.kernel.org>; Thu, 01 Jun 2023 17:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685664196; x=1688256196;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8o03kJu1mB8bbXs5MZBiAeU1TnY+Fn1C+qi7f7mu8MM=;
        b=R88T1Vzj+tJTycP2cJO8AWXA0d+IDV7613YzyAIMaNDnxad1bBkZbDbE0SFnjXSREs
         1lnhw9F5fdvjakmNCwyHrpY1PIXGUSHZvOKmagMhdCN9565W8xSJr4atG2Qww0DVrhNZ
         LFpWFDVmAP0EkkUt1q5kqtwIbWP0ZKR1GKpHOHlFeM2AFW3J8jjW8rNgRMieMlBEuiBj
         I2E4PNmAbuFSuKMknJnYfU2H0p2yaOxPiVTz1/6sdZkNaHBzkYDC20B+VBiLSrVTvvMD
         8QVlmn6QPMtFp/THtmHoxRjVkHTmIv+KmVq3ZAkG3t0afMv6yZTtTvniMn5B4p4g0HrB
         HgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685664196; x=1688256196;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8o03kJu1mB8bbXs5MZBiAeU1TnY+Fn1C+qi7f7mu8MM=;
        b=UmfR25H3OTuWVe0dsz67E21bPfSVb/sGKQSq2UubQM/1IEltgVSr9Z1G1w/HIe/2Hx
         sMHYPsnv+NY0+Sc/dDAxKRoRhkFZMLtSD1i++TCMinMhG1++QsSVTKNgDjO01cBFgxsQ
         FoolGCDOmOuzOg6CzE3o2AmfoHSVGFfi4HOp42UkfCxvUmWHwmVfEijMTOk0NmZS/W/1
         gVzlguMGpN1zn8voZh+1RwSklheYtp0SH9mS6yQ4DCkKtDD7C5iCIpKreKWqYHSfrXv6
         l2yqd/1yBE/OE1bjFAhnppqd9UmezMBRdOisIReUH7/zylV6+EFoCaSaEBv7NlRayrzN
         TDAQ==
X-Gm-Message-State: AC+VfDzfSNZtnwAAbXCPpkP/j1tog8xgA/RlWKmDlrjERkjbpbqGMppW
        pP6PAqBxo/DP+ri4+1y67X97KdA8RgQ=
X-Google-Smtp-Source: ACHHUZ4WqioKhfM+AhgbopaLaQM9z3fyvkNjUIrjU7IWRnWfUK78m6gDkLgSI71XVFpkunzCGh5O0Q==
X-Received: by 2002:a5d:4acd:0:b0:30a:ea8b:447d with SMTP id y13-20020a5d4acd000000b0030aea8b447dmr2857723wrs.40.1685664195675;
        Thu, 01 Jun 2023 17:03:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o18-20020a5d6712000000b00300aee6c9cesm11626570wru.20.2023.06.01.17.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 17:03:15 -0700 (PDT)
Message-ID: <8156f762-707b-1ec6-b90f-14058ecc3f4f@gmail.com>
Date:   Fri, 2 Jun 2023 02:03:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] malloc.3: write about another possible reason for ENOMEM
Content-Language: en-US
To:     Masatake YAMATO <yamato@redhat.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20230506173719.2731564-1-yamato@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230506173719.2731564-1-yamato@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DsDIFw4UiaXmTMTUVkuggeZN"
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
--------------DsDIFw4UiaXmTMTUVkuggeZN
Content-Type: multipart/mixed; boundary="------------N2P1UnEHJshXrlCNzD5D6man";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Masatake YAMATO <yamato@redhat.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <8156f762-707b-1ec6-b90f-14058ecc3f4f@gmail.com>
Subject: Re: [PATCH] malloc.3: write about another possible reason for ENOMEM
References: <20230506173719.2731564-1-yamato@redhat.com>
In-Reply-To: <20230506173719.2731564-1-yamato@redhat.com>

--------------N2P1UnEHJshXrlCNzD5D6man
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Masatake,

On 5/6/23 19:37, Masatake YAMATO wrote:
> Signed-off-by: Masatake YAMATO <yamato@redhat.com>

Patch applied.  Thanks,

Alex

> ---
>  man3/malloc.3 | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/man3/malloc.3 b/man3/malloc.3
> index 0ada87a92..4129a55bd 100644
> --- a/man3/malloc.3
> +++ b/man3/malloc.3
> @@ -226,6 +226,9 @@ or
>  .B RLIMIT_DATA
>  limit described in
>  .BR getrlimit (2).
> +Another reason could be that the number of mappings created by the
> +caller process exceeded the limit specified by
> +.IR /proc/sys/vm/max_map_count .
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------N2P1UnEHJshXrlCNzD5D6man--

--------------DsDIFw4UiaXmTMTUVkuggeZN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR5McIACgkQnowa+77/
2zISOQ//fhj+SU786m0S1rdZ6pI0LtPwVUcXKsPF13CkKXKv7JBd4q6ZZsfY2Cxq
On7aL7o+bjSHHL5xEzcIv491xEsJTl6LweAUZWbstTvnsqosa+HCS9halGcesAMK
e33FWZYTLGl05ObveI8Q7ogvyUJoK0GfNfqLb4vdzWKkXGcb1QJArV8MLUo9M8Zf
B4A4hiMW3UtCUAHqT0Us1XdxUPcXt46rRLQjJTR90XdP3eVHGKbbsxuNuw+gJI/t
qQPTt5wqpJLRsKqcp0hhSir17DtQNO7TdDe9F0IAIAOToI4JCM3cKsPCNjXuz1Ja
RcuO+1kIsMXNZ75th4/UOKr3fyXyp83p3JNWB3dng7kK1jLnUXCiJvNsIutSxOa+
xsT3aKQoOURU42UbwshFF6lH/lUFYZCCAGeDo/Rsr3GfN5ocwAphouosYdH/hQ9w
xeeQHrJMv6ydDcOn2hbAqmTyGBRETbL1LGZFvn9mPemy93ZAT+J+Hj1jpF0vlG0C
zcMitU+i7RxWqu7S31clhYUiR2TM6kopvzoXPLE+TH+sWxFvLgX8bwXfBEfGlheX
kUL0Bh79Qc4kqozGSCNZLWY3iro9teHLcP2Nl5VEmbip2/RlTdqMwUA+5H54CAkW
8tbwPXaVv5hgrAKnBmJrSTm64nwEVMFKRYB2B/tFb1peX4OJjt8=
=swmI
-----END PGP SIGNATURE-----

--------------DsDIFw4UiaXmTMTUVkuggeZN--
