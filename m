Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76B396B6530
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 12:05:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjCLLFw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 07:05:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbjCLLFv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 07:05:51 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06DCE39BB9
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:05:50 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t15so8833270wrz.7
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678619148;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vJ0NplS+/S80TxUTCcDkYouQcYFBHEJvVKP60mpORfI=;
        b=AWBSg5ibn4DA1IqaD6lWY5vU8MV4K07rkfVgT8L4PSF5ZyO6Ux525wrdrAFouQmPbq
         L4REAhJs7nTvI68tusPOlITBtZa+sxZ9kcyZk7rIJepQk4kBUI7TMHenc/XJi8cIxPYJ
         Ro35NMGiYXfyg/rgcwRsbJqgR6igiJ00vh2mwimfa2xwn5G4oC7reNRJtZ4Im2wZz2kY
         oUjnOZ15Rnj+WV7TbBcuUgFecN8vm3o+BvE23rpPLKpll6yFzfu/S/mLfnKH1H/XiC99
         OnsCvnJNbZ6Wv2vuZqZBxp0yxbIYcxe+vToX/MeVrN2rhJ4x1kAjQ2CurBMAGY9vI6bA
         Mj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678619148;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vJ0NplS+/S80TxUTCcDkYouQcYFBHEJvVKP60mpORfI=;
        b=NUbAzDmzTALMen9FNxjq8jZSRt6JTKX26Rm48RB2Xqfc1SMnTeHnyPdhw86dRt6++h
         JxHplJey8/W0LJCWfoM1+/QRysxwqJ2678EM9PZNMsHkRbzMa1tWsxkAbpezobJ0pE9z
         nhuN811v9sWACZZWMi33dN4Wp+b4ve9Cm8PAMF4nzRwXYGDhxiAacmu8D0DPlcif7Nsh
         vZGvscfN1VZC/JzGNzyLIVyXCRGO89ZhkqxfADMpyDW9vkbm/3gsgnwt3CrevLB7Oau9
         aX/zZnt6FDpyrLj19tntQnnxb3Tfy02MjFRpD+whtEHJvjnzYY8/r6COEQIGyJALA7WE
         Lirg==
X-Gm-Message-State: AO0yUKXKZaISLwSH3xPZ5D8SQyWLZxoeAKk5EhuNHbURwzgBr7Nfy9VD
        cpGQMsPb+pgO+MvxQS7xx6s=
X-Google-Smtp-Source: AK7set9hS4qhGpVLP1C8NeGpu0RZW5A+aUCcTsgIzoBzFviIUClEViiyimNMZaxTLgs6K+0sSnkcMw==
X-Received: by 2002:adf:dccf:0:b0:2ce:adfd:9d98 with SMTP id x15-20020adfdccf000000b002ceadfd9d98mr674812wrm.3.1678619148405;
        Sun, 12 Mar 2023 04:05:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p14-20020a5d4e0e000000b002cde626cd96sm4946034wrt.65.2023.03.12.04.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:05:48 -0700 (PDT)
Message-ID: <cfbeaf79-c6a2-05bd-6618-63aed8482135@gmail.com>
Date:   Sun, 12 Mar 2023 12:05:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Dear linux man-pages maintainer,
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>,
        Seth David Schoen <schoen@loyalty.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
 <20230312052006.GF7927@Debian-50-lenny-64-minimal>
 <20230312054710.GB441010@demorgan>
 <20230312060256.GJ7927@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230312060256.GJ7927@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p1P0k4JpClu9KKjadS0uSXdQ"
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
--------------p1P0k4JpClu9KKjadS0uSXdQ
Content-Type: multipart/mixed; boundary="------------G6DVjVkH0PNAPF0DmAY0fuTm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 Seth David Schoen <schoen@loyalty.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <cfbeaf79-c6a2-05bd-6618-63aed8482135@gmail.com>
Subject: Re: Dear linux man-pages maintainer,
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
 <20230312052006.GF7927@Debian-50-lenny-64-minimal>
 <20230312054710.GB441010@demorgan>
 <20230312060256.GJ7927@Debian-50-lenny-64-minimal>
In-Reply-To: <20230312060256.GJ7927@Debian-50-lenny-64-minimal>

--------------G6DVjVkH0PNAPF0DmAY0fuTm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/12/23 07:02, Helge Kreutzmann wrote:
>=20
> I just wonder if reporting "errors" like these in man-pages makes
> sense.

Yes, it makes sense :)

> Looking at this conversion you are very well aware of all the
> details of English, so my 5 cents are probably more distracting /
> confusing than helpful?

Nope, not distracting at all.  They help me notice details I didn't
think of (I've already applied many patches thanks to your reports.

Please continue reporting stuff you find.  If I later discard some
of them is not a problem.  Some others will help fix things.

> (Though I learn a lot form them).
>=20
> Greetings
>=20
>         Helge

Cheers,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------G6DVjVkH0PNAPF0DmAY0fuTm--

--------------p1P0k4JpClu9KKjadS0uSXdQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNsgQACgkQnowa+77/
2zKGxg//dSHxIvc20GbJ+nfqBNugMdZ5aSkyHVzVFaPgO4yQ+MN0+L750ZFVsIDr
5FyKiZ4AXzn97R7ZNlyG7Z8d5I4DyLDzegScSUp+tTb25vaGs9l79SmOi+J3lfCz
C3u3Ar28/bSruZkzEs/Lr83GP1WfVFJtaEo+jK1B8giONB1ila8QiYKAoLMpfWat
94wkGKimZ4vAu8U6mgzXrB2tJqmVBFKSqwTdomRPP+k+V3w887VsV25468P+uk3O
A0crX6ZLEzTR6PBpjDbQnpmvrBybKFhFT7QUml3Ll3JHN5YOzafwadFTOBnzRaqS
HUn3tD95yP8AbJzZg8jSfRWzotiCX3tQy3maW3LnfsQ3CpsH6uu8RXecIvCtvvOs
7ZjvTRC39Ab4PNzX9q2tOrXSKy/gabj2BGQtwD3VrL5TgnIAzWokFSd9J0n87ggO
pZh23cmJfQbQAgZXYfhuV2Dy++VFtHve7cWLfHDydd+YKXEjyefoeaqauSEIlrCI
jaOYN/ETMu9SEL2z4n8ZPQCS16Fd/x2B1078igrKV0wKwdku2dvdoCb6d0x3bFsE
40Cts55MOC0e1zJHPH4osd0FmWJFIqx3dTOe6XNWoyK+hy4Kj56j+2HQxHF+7Job
srCHShF/QEpwiWxqYrVL8MAbewKVG/62SQbAgkA+rVjEP2Dovdk=
=xIan
-----END PGP SIGNATURE-----

--------------p1P0k4JpClu9KKjadS0uSXdQ--
