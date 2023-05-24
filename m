Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11F527101AC
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 01:26:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjEXX0G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 19:26:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjEXX0F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 19:26:05 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 050E899
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 16:26:04 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f6a6b9c079so4061535e9.1
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 16:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684970762; x=1687562762;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G6dQqD6xKkHVR+0VZQIkoO0alS3CeW8PX5Qik0OkEpI=;
        b=OTXlTd5TAftbKhiulQaoDAh4xdXKLb088J24hBwKDW3KlRUvFSIaUqfeCL6Ufj5r/J
         TH226Yxmn/IKS4RVq8AwC9yu86vzfZhoNFvf/FsIpBlCX+4d+DBJgwmKFCXp9FHnKqCI
         4tFPliKaS2SczpL0M40IB0VkYLril4SrXdDL2RrLad4CzU/6U5VtDIljcou9x/G/dCc2
         miM8Qx4niWBT6sBfSsjVgNGRkoEKCo/oMNFMne3m8CZNwmVxZHrn5U20Qr7D42RapbwU
         R3CL3//latb8v+/P/ZMbNiSNbvGireMXyiXIm3R9QLVnNPZYX8AIGzZMdVbVGb/ZX2mP
         JuiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684970762; x=1687562762;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G6dQqD6xKkHVR+0VZQIkoO0alS3CeW8PX5Qik0OkEpI=;
        b=TzB0xKwcUDzj9yIxDgmnaL0N+o/o6Em75KNkxC9txwd1tOCKvG94415fQvhz+jRmH2
         qo3aYwMlp44Btt5w7NRate9m2NBpbINZy3AZspeoUjubuT+ue/406aiFmDlDbEM2RLo+
         tpximZdjPWNSkOXuCuGznDpy6fqCIs6ljqQB7saec5pesWxxHXUzCV1UQGvFabWqE4Sp
         L/1HrQ1PXYjMtoWLHMaIN01pM8SwD2JBWq1ASR/WVefTC1gUdowjCn9ZJP1D49hlHqVy
         tk+vTVXGMOdSgKpBQKuRSQxl5kYPuM1zaVgYxE+AcCTBK/XZwRsxzL07uIF9nxrXXaeN
         a59A==
X-Gm-Message-State: AC+VfDza+jxs6nAnQZsupxnV5YW1dLwXxiibIJL2xOUecaM+e5quDNG8
        hgeoDUkl/KS+dQd+fvhgxxA=
X-Google-Smtp-Source: ACHHUZ5fw9r/ecAb8LzmqsyGkl6ZZfWNF/IpUjgOd7SdazGq+bIlr5kzuBnBwapUqdgKDVtpfRZ5CA==
X-Received: by 2002:a05:600c:2291:b0:3f6:42ce:a384 with SMTP id 17-20020a05600c229100b003f642cea384mr802883wmf.11.1684970762155;
        Wed, 24 May 2023 16:26:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y11-20020adfd08b000000b002fae7408544sm13679217wrh.108.2023.05.24.16.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 16:26:01 -0700 (PDT)
Message-ID: <2f9c4dbd-7aa6-fc7a-f126-453603ef695e@gmail.com>
Date:   Thu, 25 May 2023 01:25:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
Content-Language: en-US
To:     Bruno Haible <bruno@clisp.org>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org> <2906989.o0KrE1Onz3@nimes>
 <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com> <14654216.O6BkTfRZtg@nimes>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <14654216.O6BkTfRZtg@nimes>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Cc0Yfh76ChdRzhogsCQt6skU"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Cc0Yfh76ChdRzhogsCQt6skU
Content-Type: multipart/mixed; boundary="------------ot0G0fiZ9LXNbeGXJaxc6anE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
 Steffen Nurpmeso <steffen@sdaoden.eu>, Martin Sebor <msebor@redhat.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <2f9c4dbd-7aa6-fc7a-f126-453603ef695e@gmail.com>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
References: <20230521103128.8472-1-alx@kernel.org> <2906989.o0KrE1Onz3@nimes>
 <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com> <14654216.O6BkTfRZtg@nimes>
In-Reply-To: <14654216.O6BkTfRZtg@nimes>

--------------ot0G0fiZ9LXNbeGXJaxc6anE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bruno,

On 5/25/23 00:07, Bruno Haible wrote:
> Alejandro Colomar wrote:
>>> Do you have a better wording than "can ... in some cases"?
>>
>> If you include the full version in the commit log, to be able to
>> understand it in the future, I'm fine with it.
>=20
> OK. Here is a patch with the details included in the commit message.
>=20
Thanks!  Patch applied.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ot0G0fiZ9LXNbeGXJaxc6anE--

--------------Cc0Yfh76ChdRzhogsCQt6skU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRunQgACgkQnowa+77/
2zJ6fA/+K8UxuorDAgHjRWhLZ1MK9Mu32fgXtb6YtQtATzAL6bL0oRVJIZZd/j9M
UhqiNk1gGOVs1FqvspSIPu7ij/amj+sqeiScHjb8+CfRlr3m+bEc2yfRHvtkMdYC
JY2CMqlRFXwMh+WdkrxnoBN/7HMBb9HTzdwq4P/4GyxQHlj2dlsXD5gi5N+noe7F
Go9oEv3XKHX0MOFJud9UiII9ioS0xHkZGJb2wLja7H9fHggr5veqZES+gMBY+vgf
/b0UhUcl5tKxmoIGdxHpaFAbS6N6wunn7f4NVIxfsShN6qrGAQAnmOmiLqzMXQOW
MIewE4p6Kt46+FGs0AwB0CSsieM/p6LucPHvVdOUhe8m9I9e1Wc/yiQqZnPKTUFq
spW4J4Rz/WK0KoDRoxhLy6wJqNF1VUJWaJHPMQoLI47CXcrbdz2HxNh0x1Lx1zPU
vxTNgBw46uqCmUhAt7c7Rinuqbu05zT8siOtCASyEMkY71Z0Ajvw8c+gfPgnbdcm
EF8Z9ram3BlydAoH5d472ezo0zLdhHm/elCyPP1g1ZLgmNO+TKgQTqCayyO3mjD3
4RR7LagBZ7tXSuAEpgSVLRN28RfkjDo8wMlvbpNvma+1AWZLbiLwscqNrfyVmz0t
1D4Ne9M/c0C35TUPYHD5C/g9r3PkfyEjd61FMyLHmkHLHrxFxIQ=
=JgaC
-----END PGP SIGNATURE-----

--------------Cc0Yfh76ChdRzhogsCQt6skU--
