Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B529691652
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:44:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjBJBoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:44:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjBJBoG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:44:06 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D573C68AF3
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:44:05 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id n13so2773985wmr.4
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1tmHaRb4arGoViobjUBRxvBQ7gZUA9tNHzdrncBfAA=;
        b=LAC/pF2uqh+i8AAcohvzUEdehTA9uF2K4s5OZIoNXuOM48qOo3DTtpms7pRn2zyprI
         Uf0W1WkdMGGlyNQtBL0tH+hWWWTyAfeev3EJ+sX1wpRixqK6XnjlHN/T0K0SGtYJ+PK+
         KVQCRIlH8ayBFTYgO0vuP630umK3+DVPJ0nkn6/XwnG49K9+RTcvS1CCnRj7Y7H3PFA7
         nHjKyb6nA+JzH5u4TSdpsfDN5OCyroA5rm5mn5RPd2kxGeX4YdLSlAF/37Xn7YxGnqI8
         XLWnAHxOwUZOexo1DblgYzkl3sDByOeQ90ff18FqBD+PhMe61iQexUmIKW8skxPTmgyS
         nzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f1tmHaRb4arGoViobjUBRxvBQ7gZUA9tNHzdrncBfAA=;
        b=RPoVjoJg0EJfotY2/JFHlfzSoaWQWZbSJNAWAstiG+72hCBP55K2F8tYlPuJtWhXmC
         h7i0Vdab3p8xu0/yXFRPwy3763jYXduWF/jNhqT6HHKLUie/4Qb5Gq2+M7aBhrAMGdzR
         VBLy0E2lBkrV8peC5f+5FIx5Zq8w8kYv3QG17i4/r+6gtwkxLvWv20Wvn1EMWm6eelaB
         MlY1xiUyZaGqcgGsIByAb8NCbS5rzQlG6yu9SLPL1yBrl74/tsNVKSYN1mWM7vJ2b89U
         2dUzQNtrAbc6glx5P2uxi0GwI/lBhR3KFpGViithFkSQrJNzsdch3gMIyQU8rkZ9Hxf9
         kMtQ==
X-Gm-Message-State: AO0yUKXObn7Bn3Jq9XVRZkJOPeK/OpzYSG3SS9GJV3rlKwyXFxbgloCh
        Syw95nLr6T5NyVUJuzBFFBk=
X-Google-Smtp-Source: AK7set+d+Mm1Bk2FGptJ+fdjyRKOzE52m3AiGsKDx3aZFXcBJyWcU86CkrfgG6dmoRFtc0MKa+xxew==
X-Received: by 2002:a05:600c:5112:b0:3da:2a59:8a4f with SMTP id o18-20020a05600c511200b003da2a598a4fmr11325122wms.38.1675993444407;
        Thu, 09 Feb 2023 17:44:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n13-20020a05600c3b8d00b003dc434900e1sm3710690wms.34.2023.02.09.17.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:44:03 -0800 (PST)
Message-ID: <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
Date:   Fri, 10 Feb 2023 02:44:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tSbobjvJP3RZRDNPDHZNhtML"
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tSbobjvJP3RZRDNPDHZNhtML
Content-Type: multipart/mixed; boundary="------------qSZZD3yQD3gv09Ccz3oyPS09";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <0c370824-a968-410c-1c8e-1e650ea21761@gmail.com>
Subject: Re: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
References: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
In-Reply-To: <20230209181142.6gmv4ygmbxjtj7wu@illithid>

--------------qSZZD3yQD3gv09Ccz3oyPS09
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/9/23 19:11, G. Branden Robinson wrote:
> "UNIX and Scientific Computing Services Pages
>=20
> The information that was previously in this area is out of date.
> Please refer to the SCS Confluence Page or contact unix-admin."

Do you have any idea of what that link maybe provided, and if there's any=
 new link that provides something similar?

Cheers,

Alex

>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man2/adjtimex.2 | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index d76ec04a9..c2ee2156d 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -593,8 +593,3 @@ for the leap second to be inserted or deleted.
>  .BR time (7),
>  .BR adjtimex (8),
>  .BR hwclock (8)
> -.PP
> -.ad l
> -.UR http://www.slac.stanford.edu/comp/unix/\:package/\:rtems/\:src/\:s=
srlApps/\:ntpNanoclock/\:api.htm
> -NTP "Kernel Application Program Interface"
> -.UE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------qSZZD3yQD3gv09Ccz3oyPS09--

--------------tSbobjvJP3RZRDNPDHZNhtML
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPloWMACgkQnowa+77/
2zI/fw/6Ap+mgoWbBY1D18sHxoEfi0ZWrm1m2dMcs4Zd1VXvsw+NTd2oxh/uEMeO
ypTHWfHywSaxf3vul7OEZNUykVR4CYHvhLkzQGVRJaU4HH6KuQdfI42BZ/8oVmTf
qiWelMNYPWH9l8rrbCCcTeIp5M32CtBVH+h0Qx0/CQzEA2m6CVa/p4JL8uJP+X4H
mNxDUlZCbl3JAvBVqemDhTB4CKIGYC+Ywf+Jkh0SrM18TZdSCEie6HOdxscV+O0p
cYrdeAe8FYS06J3CVGsFKYaJ85rx23X98AbDL33Bj2CVTdu8lB9jVvoDWE1FYqGS
TOwTQOIMfjFYB9jUonam7aMgJQu86lyNy25YZIg3OCmdQhZCuFwwmyhXFIPA7G+O
qlJZ6nmHImowsNxZqyZTG/FM4rWcnZmqb9wTov1T2t4oV+VTOfdnO5NR51WDbtyR
h9Iif2i6+zJySE1BSeR5B65ub+jpTebVrPPd+yot74F+oZTDRSIRWpbPJxhTB2HP
urDLCghBNQab0i2HNrKHm6G1dXdjd3QHhsZvZwYnRjtSUqk93syfcMfUJTSAIWmG
tyWrc8kWlmNgmAFmPA6wH1eJaUcPL9TWK+w5NtUxAU6cmgdOtkULVMhgdy6jtqzQ
xfqN9Ea2mIiT12M5o+5w0lZXSiRHZUpY6Gnt/xPzIZ45+H2o/88=
=dLTh
-----END PGP SIGNATURE-----

--------------tSbobjvJP3RZRDNPDHZNhtML--
