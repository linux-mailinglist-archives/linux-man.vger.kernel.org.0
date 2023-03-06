Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2218F6ABFC4
	for <lists+linux-man@lfdr.de>; Mon,  6 Mar 2023 13:41:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230074AbjCFMlt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Mar 2023 07:41:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230197AbjCFMls (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Mar 2023 07:41:48 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FCC2BEEA
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 04:41:44 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j3so5551583wms.2
        for <linux-man@vger.kernel.org>; Mon, 06 Mar 2023 04:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678106503;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MYrGKdrG80iJIe4wDFi5pUX7J1rzFoeKbBLNfLiqKYI=;
        b=HFxWPcjvL5dhjh+AmcVAIWFZf+Qlnl8+PzHaBcQEIZr5lUEszkTQWwpM2SjLGtpggr
         xWQySRd4DHljmdwedtBp9lXg3ryo9HMuoOdrPxeiuco0rUNqYAp2TND7wc0OogPzlePH
         OiNau14PTipoaZ2IolowgNRqP8KjMRDjqAAEshGWoVSDL01H7DhvHi1Exlaa4DLbK3Be
         eF4ghT879THHGi+tdnHkeybgPpqSatXwZ2akRrggVgAnOSdJHlb2z/6CAuqq5B/DtZzW
         KLGnyzip7caG1VmfFsn2k1GoXHH4IM0DfoNe+xNWA8biICDiY51eEdCVLG9i16KCixMN
         H5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678106503;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MYrGKdrG80iJIe4wDFi5pUX7J1rzFoeKbBLNfLiqKYI=;
        b=6je1H0MT964hdGVBIs01mwAznRG4AMM8fxUfPxEgp5iOfVFGH8ryRxK+7BS4MOEAMr
         ASF2WPgyebXJJzuS1Bqk2wxakLg8myK/Ufd0q2tI/7tJ/k7kEAgzG4D+DvXCBFEJf1x9
         BkBPVeRHlRpA2ocJ3soMG64nABE69MbL4h3x/7IJ39lK51bsrccqPMgpb66S8unRujkn
         5fRYJB90X5Nl7fvJvuWf31d2OhQKYCRimagNWXd/vcIiYZG29oNf4UHnchWNdjRnr7g/
         GMnBrc0X4ugSjApe1/64F3U7CHIVXKF44QzROYiuD8QufOt9v8Wvje+nCyrsjOl/Pkta
         AVRA==
X-Gm-Message-State: AO0yUKVgAPFN1RFQRc37Q3Yi86ctb18rMDe72GolebcsNmE6SCPEp5nt
        cKUJdSqVn8/E6x8pJ7YLOLI=
X-Google-Smtp-Source: AK7set/Sf1Zg8o2iip4bc1wBifhHuNTXGFB/tfombYhry0VfM52crsuB2vKrb3L5gnDPl0BbPqB/5w==
X-Received: by 2002:a05:600c:4f53:b0:3ea:dbdd:b59c with SMTP id m19-20020a05600c4f5300b003eadbddb59cmr9204013wmq.15.1678106503050;
        Mon, 06 Mar 2023 04:41:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r22-20020a05600c435600b003eae73ee4a1sm10020532wme.17.2023.03.06.04.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 04:41:42 -0800 (PST)
Message-ID: <fee0bb29-593f-869d-044b-3bb25e02c6c4@gmail.com>
Date:   Mon, 6 Mar 2023 13:41:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch] read.1p: Split format and argument of printf call
Content-Language: en-US
To:     Florian Loth <florian.loth@yahoo.de>, linux-man@vger.kernel.org,
        elmono@mailbox.org
References: <c9684666-8915-42fe-c44b-2d90c18f71e0.ref@yahoo.de>
 <c9684666-8915-42fe-c44b-2d90c18f71e0@yahoo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <c9684666-8915-42fe-c44b-2d90c18f71e0@yahoo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------01ZZ7MYQnFL1kMwHsBc4qwPk"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------01ZZ7MYQnFL1kMwHsBc4qwPk
Content-Type: multipart/mixed; boundary="------------hLE0w5FGWnZ0epleddDRtsCh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Loth <florian.loth@yahoo.de>, linux-man@vger.kernel.org,
 elmono@mailbox.org
Message-ID: <fee0bb29-593f-869d-044b-3bb25e02c6c4@gmail.com>
Subject: Re: [patch] read.1p: Split format and argument of printf call
References: <c9684666-8915-42fe-c44b-2d90c18f71e0.ref@yahoo.de>
 <c9684666-8915-42fe-c44b-2d90c18f71e0@yahoo.de>
In-Reply-To: <c9684666-8915-42fe-c44b-2d90c18f71e0@yahoo.de>

--------------hLE0w5FGWnZ0epleddDRtsCh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On 3/2/23 23:05, Florian Loth wrote:
> As printf expects the format and arguments as separate arguments, split=

> the string accordingly. This is already fixed in the HTML version of th=
e
> standard.
Patch applied.

Thanks,

Alex
> ---
>  man-pages-posix-2017/man1p/read.1p | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man-pages-posix-2017/man1p/read.1p b/man-pages-posix-2017/=
man1p/read.1p
> index e09b896..d7e3a0a 100644
> --- a/man-pages-posix-2017/man1p/read.1p
> +++ b/man-pages-posix-2017/man1p/read.1p
> @@ -196,7 +196,7 @@ The following command:
> =20
>  while read -r xx yy
>  do
> -    printf "%s %s\en$yy$xx"
> +    printf "%s %s\en" "$yy" "$xx"
>  done < \fIinput_file\fR
>  .fi
>  .P

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hLE0w5FGWnZ0epleddDRtsCh--

--------------01ZZ7MYQnFL1kMwHsBc4qwPk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQF34UACgkQnowa+77/
2zJvmBAAnVPhXJTbX1GlY0fcHL68Cpz2wfwpQxTIswm6WBxOeq2O8EprKr5weXmU
8ayubLC1j9nqnJ8wDEf6b9WOprqSWIwOqs1dSyCRkjWkxl9BM0s70LWOV8Gjt5pM
FWEGuuRPEtT1JPHyuYZqIr5Vi+tTr2/qipV5Ib+bhW9t5GFA5L/iXlc8iWouxMFl
Ec31j6imT1W/hk9PvAAc/Tlq6E+NFqSuBvZgLWHkGIB67zGVK4vuK4+m6VlZXZB8
gV1aKIfX4rpgIpZ5gg6tME+xSFuePFEymq/1qnuxxpMgmpC3hluaFG74sjrMX4FD
ozMm9ecaXBZ0/OOr8pkJRQX9dHvMH0O11hUp6/vT4rPN6YhW32O4cAYZAAqbDHRl
CJZX/G6gL1vI6d8Ej//y/HFn92YkDNj7bY8ov0+VNAjZNK7zHNUYnJgDWGkeWonV
8ZjlBsFaITfWI+ix8TSndyv4MMyibGcyK5Nbrm8GXSD4w2IGoyqD/IownLuyoDjc
leSDbO2GeQzQtc4hkgv467L38VDdqwi70T/NiYR1BlrM3j2FSFi/PJ7EV7TLeAb9
DG+FAqmPmfQSMIxZRc954R1wLPAJx3yaqvoEfUrb7UZdvXi+h9VvVGDtR8KK9Mui
BPH53pLJgAItcPTrHOIUcdnbItZJyG1n15HqfUMOySnGfUrC+mQ=
=OgXX
-----END PGP SIGNATURE-----

--------------01ZZ7MYQnFL1kMwHsBc4qwPk--
