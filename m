Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B12CA6E6766
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 16:47:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjDROrP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 10:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbjDROrP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 10:47:15 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31753C02
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:47:13 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id v10so9036474wmn.5
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681829232; x=1684421232;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ArVeszdvcASQWIqxC5VNCClGT7F74LWN179rCFk0pmE=;
        b=KOlpPaGvJ2Lkkd8FvIYlMJRRfVI6+UYsGcH8A8SrweikkWuodW4UFtk0ph2I65ND7b
         Jz768vUUq5DHm6pAQo0tmA7Sk4fjEHRt5bGFZa2g/XWDZ/iy/1bAaS/h+ztA+3nB0Yyz
         /LAqn8jCAu5fWDPyWHwIqxYQdRM4JTZajL/4pN5Ts3myDCt/mqUiw77NFlTut4Gx4byu
         NgQCHSKptxCwhGGw4aUsT5cB4UrbmYPVfXpulOBZ4zhX4XSVkUmJVnq0lnEwGeNcEuGv
         BlgslaYoPC1Eji+YW3FqQ1Drj041BN9w8ZICIXnv569eXQQYfr4jy/2m7hORBLC/uy15
         gANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681829232; x=1684421232;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ArVeszdvcASQWIqxC5VNCClGT7F74LWN179rCFk0pmE=;
        b=DhbOcVXVyRSW992+aQvGWogM2Jk1PbUqCOfeQDzhFihamxAgYMvlhXbHZty6ATIeSS
         H+nyTXmS3DailpuJN1m3fAkhdT0MBq5viDFOP5vFUbscZEDCDe4Zg9FIk7xBlKHNjB8F
         dsMdK7TY4xsqi9Xhnus3301vu1R7pg4vjIk57P03WQbL0Xcvy3ozS9koSjT9CT92Fw3+
         CWb3FNIIr2WmyrN2ZinyIMGsYgczRld2BbvPy7XQ7TjWLoPciXmdkYUWdz/8W5Rpc1ih
         xCa4718vY3UPR66q3Sl4J/G6WojwQVc+bZkHyWfcz9QBeWcjPtIgOYgalwAYtraPTFtX
         krCQ==
X-Gm-Message-State: AAQBX9daGUofndju69m/mhzpF+Wiosh70UoFinpQCAIRvk6e5wBofSdL
        N7RUqGvlBJa4vIL8zBawSJA=
X-Google-Smtp-Source: AKy350a58beS4tFe+g1aT8q7lN05yvMpgJfUQsKbt9f293AjjEYAbi5CxPeeaPhmzy1fAnE3acrGnA==
X-Received: by 2002:a1c:f002:0:b0:3f1:749b:1cb0 with SMTP id a2-20020a1cf002000000b003f1749b1cb0mr4091369wmb.0.1681829232329;
        Tue, 18 Apr 2023 07:47:12 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b003f0ae957fcesm13333725wmq.42.2023.04.18.07.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 07:47:11 -0700 (PDT)
Message-ID: <bd68a9b6-e6a6-252c-eaa2-14f7ffdc1801@gmail.com>
Date:   Tue, 18 Apr 2023 16:47:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
 <20230404.16675e4d7765@gnoack.org>
 <b2397aa5-9e39-fabd-7a87-8c404dc9f933@digikod.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b2397aa5-9e39-fabd-7a87-8c404dc9f933@digikod.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n8nFGVGZmtcDCVv0C5BemUqV"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------n8nFGVGZmtcDCVv0C5BemUqV
Content-Type: multipart/mixed; boundary="------------TioCmllXOSSjaCZJgb8ProBV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <bd68a9b6-e6a6-252c-eaa2-14f7ffdc1801@gmail.com>
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
 <20230404.16675e4d7765@gnoack.org>
 <b2397aa5-9e39-fabd-7a87-8c404dc9f933@digikod.net>
In-Reply-To: <b2397aa5-9e39-fabd-7a87-8c404dc9f933@digikod.net>

--------------TioCmllXOSSjaCZJgb8ProBV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Micka=C3=ABl,

On 4/17/23 23:13, Micka=C3=ABl Sala=C3=BCn wrote:
>> Micka=C3=ABl, do you have any opinions/preferences on this?
>=20
> Sorry, I missed this thread. I prefer your third solution because it is=
=20
> explicit and relies on non-harcoded/magic values. I replied to the last=
=20
> version of this patch but it might be a bit late now.

No, it's not late.  I already applied the patches, but new patches to fix=

stuff are always welcome ;)

>=20
> I'm not sure that defining a mask per ABI should be part of UAPI=20
> (instead of dedicated libraries), but I'll think about that.

Thanks.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------TioCmllXOSSjaCZJgb8ProBV--

--------------n8nFGVGZmtcDCVv0C5BemUqV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ+rW4ACgkQnowa+77/
2zJCtA//ak8VkxzoK6kHDqbvGqcJ7qfXdqIo1xV6W78Hors8O+7YxmbkfCUiXpy9
wbTYGNHT3LaEwJBSCH15y7yatcA5Dz81X8cx56GZcfPC0hiUIqS2dYvW2Z24JH6M
WmRz5DESo5Vf+YD2bir/L3KvfeiVO698DzHOIhwFsLjBmVDquvVEkWfCT/uc2n1g
+TTR5ypVT1OtmdGjFXA3qOinMfm++B1AtB+rvCy0VFYF1OFFCXUZnrW9mPIODjSm
CGtawoXKzOomEDEHbjTcqBcbjQFXQ/mAO+3ne6iRGijbe02eQxYDe/h7xAWfezj3
d6p+myOWXn/GMvxAEGj6KjQlt0M32dhgL5JcG9K1jL08FKY/5MKGQfDZjVnKyHXD
4ChpGaKwOWvL65rwku0sBnNJlr9jJkaXynJwl/XVW1cmrWU1fbHdfyaC5bd4X6Vx
ei1bn1X5hLdvqFAJ7lEpSIUYR/mZQ8n7is4gihpe7/w0lg466JxOMvAin97wBN5F
/uX6I16cPaVqcR1NMcV9hhN0QZpI/dBqbUl/+fHNLkazIcB9nU6w3BUfpjpjnK9k
RjcsW/H9oJfCKhwULERWB2Z9EpVZpB2BpjaIJ7KjT0k523eTbuVkcOkOwEJ1RZhA
wf6D8ypBsf6gYfZRMuyzn58BknE3wYUVvW+WyT5w0lmsOHCOMvg=
=AIP8
-----END PGP SIGNATURE-----

--------------n8nFGVGZmtcDCVv0C5BemUqV--
