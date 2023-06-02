Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C04571F712
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 02:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230166AbjFBASg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 20:18:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjFBASf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 20:18:35 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FBEF12C
        for <linux-man@vger.kernel.org>; Thu,  1 Jun 2023 17:18:34 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f6d3f83d0cso15112235e9.2
        for <linux-man@vger.kernel.org>; Thu, 01 Jun 2023 17:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685665112; x=1688257112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVgkxOZ3roTTwC1KfgPWl5I1r+TWTeSIEnuZWgw4HNs=;
        b=VXh2IQ1ErfBeCsQZS1biK1buHBB1U7oNRDcypG6H1vK/LLhxB86W7owdnnVxJscTrU
         XEzz9W1wTiogvdbqgBrkb2qYowSbnbhmfJVq1r3Drc27BHAjl0SdC03Akry4yzHGvRMN
         dODXGgmlVsQO2P8QAkiuuXYiPzoeWwyUQf5tDtLLubqCS9bgWzE8wkJYfd9E2JlkbpUT
         jsDx4ugrpny0gnEj3Tbh6tVYqyP6odH/HYyYz1P+j2Jq7YKYzOxn23O+drRHlFAcXjHm
         Jji3nGTnDPxM3zX9kb0GcMRPtYJTt75W6I46rEO3q4gG91/JV89mnfmhAlTDm6tZI5pU
         5j0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685665112; x=1688257112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XVgkxOZ3roTTwC1KfgPWl5I1r+TWTeSIEnuZWgw4HNs=;
        b=aVnpk8OKzaGrWkWoZDtT6GY4L7rYnjv3HaLeS+2K+wp8GjslK7O7mM9gZhw0cCvxcD
         v7koh183bT1okFj+E/5BVqDqBnHzyFNiVJYEqsgnYu3FKi4xiNpl8s3y6pTC0V29XBwo
         TC2mjOvhsTiGSGmP3kijxTU/pRnWPNGF3bblq02NFmZSPyyUAembz9voJlDwUV2+FDz8
         VUvup8F4gIlEnjLImsl6oCO2OxJgUKrgkqbHDZoXQqeDsoNfKZN2LZD8/dSu3Mo4UxOI
         m4zoUkqX3rzFa2Tidj+DROKqu57GwdDB81J11hz40DEyP6HVA1OpeK9Fb00HmwyBKUaX
         Ag1g==
X-Gm-Message-State: AC+VfDwUYq15/CS2IbXADVFiUouGN6UqUagZTFyWKQ9Gz+pF2LOdAH9q
        E0LBmp0IDgroC0AQLeO1g+0=
X-Google-Smtp-Source: ACHHUZ6AXceZdT/S3bosYwwf+gqS6OCh6DMvSTKJpPl148dn+55srYIGIjCFh19jNKdKtS7pQ1Wppg==
X-Received: by 2002:a7b:ce09:0:b0:3f6:906:b659 with SMTP id m9-20020a7bce09000000b003f60906b659mr718929wmc.33.1685665112411;
        Thu, 01 Jun 2023 17:18:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i10-20020a05600c290a00b003f0aefcc457sm3745456wmd.45.2023.06.01.17.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 17:18:31 -0700 (PDT)
Message-ID: <cb2d2dc7-3b71-5d05-500b-320546c562d3@gmail.com>
Date:   Fri, 2 Jun 2023 02:18:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Content-Language: en-US
To:     Nadav Amit <namit@vmware.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
 <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
 <2C89D6DA-8B73-493F-95D7-456507D00EEE@vmware.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2C89D6DA-8B73-493F-95D7-456507D00EEE@vmware.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SUgCKFv1EbQU8L526R0dXbuR"
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
--------------SUgCKFv1EbQU8L526R0dXbuR
Content-Type: multipart/mixed; boundary="------------UewamCA0NgGWn0fmgphapgd0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nadav Amit <namit@vmware.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "Michael Kerrisk )" <mtk.manpages@gmail.com>, Peter Xu <peterx@redhat.com>,
 David Hildenbrand <david@redhat.com>
Message-ID: <cb2d2dc7-3b71-5d05-500b-320546c562d3@gmail.com>
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
 <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
 <2C89D6DA-8B73-493F-95D7-456507D00EEE@vmware.com>
In-Reply-To: <2C89D6DA-8B73-493F-95D7-456507D00EEE@vmware.com>

--------------UewamCA0NgGWn0fmgphapgd0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/10/23 21:57, Nadav Amit wrote:
>=20
>> On Apr 8, 2023, at 6:34 AM, Alejandro Colomar <alx.manpages@gmail.com>=
 wrote:
>>
>> Hi Nadav,
>>
>> On 3/7/22 19:48, Nadav Amit wrote:
>>> From: Nadav Amit <namit@vmware.com>
>>>
>>> A bug in the kernel caused in recent version a different output (mask=
ed
>>> offset). Update the output of the demo program accordingly.
>>
>> I'd like to have some more information about this in the commit messag=
e.
>> I don't really understand it.  When was the bug introduced?  When was =
it
>> fixed?  Was the example in the page created in a buggy version?
>=20
> Hi Alex,
>=20
> Sorry for the late response.
>=20
> The bug was introduced in 1a29d85eb0f1 ("mm: use vmf->address instead o=
f of
> vmf->virtual_address=E2=80=9D) which is circa 2016. It was introduced s=
hortly after
> userfaultfd, so it was determined that no users are likely to rely on t=
he
> intended correct behavior that was documented in the man page, but ther=
e
> might be users who relied on the wrong behavior, which was in the code
> for several years.
>=20
> More information is available in the patch of the fix:
>=20
> https://lore.kernel.org/all/20220226022655.350562-1-namit@vmware.com/
>=20
> Let me know if it answers you questions, and whether you want me to sen=
d
> an updated patch for the man page.

Yes, please, a patch including all this response in the message would be
useful.

Thanks!
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------UewamCA0NgGWn0fmgphapgd0--

--------------SUgCKFv1EbQU8L526R0dXbuR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR5NVYACgkQnowa+77/
2zJGOQ//WAn3ryqwGZDPHxQ72UyOHjTFmrMkAxOwM7OP4tkJtUVq5P1fjAUA+54u
qB4bqFzb90TjUCc8ulvkqkKIZmBCcyiC+p2Bl645MB194Wfsb2kTh+42YdryMm9S
uCZ6rMvm4SxDE/xEywZOZR32NosS496RW6jrZ1ZEdmmmMrDeSmGqd5n5tos5n6j4
mH3s4A7HJSuob+mHy+xVizBhUTOP0IeZJy4tmZtxdJI6KULsKfhOgav9Ci5bHxjX
Zo98uP8S0U0/nROXeZLO2gKtmyUiYvLcxVPLgIujAA+vRp5qRJbeR8h/ezC9uv6K
ryqbp2eNky3QZthGvEVdPEd1zYvdIhktffNFs3dOWgYGEirrv0u8G6dArEKhijbn
BQoHzURr+PGUicFcIyj/x/Z1lzEyTXXhHtFB3jZbsecuXuU4om7+6Tm0ZHQbxVl5
u5hxF+z9ZnzQ49l1mQG9Dw426gb5DAOEUY1ZJKH0CFi6ltOreNbxPmnqBAOK04gy
/J0q4ZbplCP5WnU2cnNTnOywLaHcwBQw3QuvyjN5Wjdv32Om1ozTUX2LpEaL/Rwc
pRwEk5TB42heuQSGdCT89souwd1JD1tu3WM1IVFAzvBiM1y2tq60X8wQVGr3Q9KC
BeHOl3LfKdRcNi5TAW8tpn/7Nswl9ODI1iOgqHFJmEeUWmdZS4E=
=AuXB
-----END PGP SIGNATURE-----

--------------SUgCKFv1EbQU8L526R0dXbuR--
