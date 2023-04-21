Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3096EAA35
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjDUMVa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjDUMV3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:21:29 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD2091984
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:21:28 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f4c431f69cso1045069f8f.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682079687; x=1684671687;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R8CIHtohiujayBdkI/Vk6BqI8JJmIyI/ct0C2XLSdx0=;
        b=rr+KcnT3kRT8ndN8p42E+30Cn5qyDahxKJ59HQq/uBkBm/5XvlgydQF819J3VpqVF9
         PndodPQzZpmLLZcrWfx0WWZh7ZhErOZbBKROVDgU/rgfu9J+b1h8dtQw1na2CDL+4Tae
         hkLtbvWttPKp9KSuwbNRhYZ03C9dxgkB5mLpNJnzX0SJU4hcs84aLRN7Z8e6gaVPwHAk
         wK85L4zIE5GrJJXUsA9IrrcxQvxi4YpU9V4gXH2awPVFROT/mjgP+1J3y9V14YbAFRKw
         Slz28WbDVSadAYPltO33yZfK8icNsgG5XicACZOq1a9873BU+UZxKqohQlb1dLGr7MLe
         UiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682079687; x=1684671687;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R8CIHtohiujayBdkI/Vk6BqI8JJmIyI/ct0C2XLSdx0=;
        b=i8o2hnAhSb+u/HJbqCbvTA7ZK4Q2NwafFn2GLd5tJKQfVxqa1SpQEBAwLoXqPyXG0H
         1sPOM+zhQuSiSKx6Y+2mCiu9tEldTiEbuOsQWfmXpAl/Teq84phfKEl/md8oBw9mQmUN
         zoo60FNAlKRixa6pn9yUN0i7VwKfsIjz/aKctkx+yUa71QaXz3dNKluUbY+Um3u3TQ2Q
         qTUzXJvZzkdhvxdvvT1JXphasPPyav5La+89UvBKDaJp632ZKLIUX+cbFYsB1rCtC7bD
         4h37ewc+lQHPPk9ouBhND/w1YW1PvZsfWjRwaSdIaQtboQCrOQb3jaGoMPSaDIr3m4p/
         fGwA==
X-Gm-Message-State: AAQBX9eGmxK5xdVlrqafxeDyGdpPHt6H+iGrT1nw5bbJy5PrkeW7z1E6
        YFvGYnPowhqYDJDP5JbiPL4YqXnwmL0=
X-Google-Smtp-Source: AKy350bhunHjSiqiGnGYcKfFPWlZz76BaUdoneCuWqcoVnQkXx4FK5Q9rJCI452b4MKvwYK5dJE/kQ==
X-Received: by 2002:a5d:554f:0:b0:2ff:1e0f:fb2 with SMTP id g15-20020a5d554f000000b002ff1e0f0fb2mr3346982wrw.13.1682079687209;
        Fri, 21 Apr 2023 05:21:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m5-20020a5d6a05000000b002f01e181c4asm4355827wru.5.2023.04.21.05.21.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:21:26 -0700 (PDT)
Message-ID: <a0fa55f0-7505-b40f-444d-c264ebe3cdec@gmail.com>
Date:   Fri, 21 Apr 2023 14:21:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
 <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rt5a6XA0GeehuC8vT835xhKo"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Rt5a6XA0GeehuC8vT835xhKo
Content-Type: multipart/mixed; boundary="------------11cwhLThtqGKj8Ippl3eb1FT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a0fa55f0-7505-b40f-444d-c264ebe3cdec@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
 <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
In-Reply-To: <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>

--------------11cwhLThtqGKj8Ippl3eb1FT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 14:13, =D0=BD=D0=B0=D0=B1 wrote:
> On Fri, Apr 21, 2023 at 11:45:07AM +0200, Alejandro Colomar wrote:
>> On 4/21/23 04:16, =D0=BD=D0=B0=D0=B1 wrote:
>>> And it passes!
>> Do you mean that make doesn't recognize the error?
> I mean that
>>> Those are the only errors I saw, even on the version with
>>> IR\ string$
> so, even if I'd ran the linter pass, it wouldn't've found the line you
> originally pointed out.
>=20
>> I have the same bashrc (Debian Sid here), and have this same
>> line.  Why is it failing only for you?  Maybe I modified
>> something in my startup scripts?  Maybe you did?
> Unlikely.

$ grep PS1.*return /etc/bash.bashrc=20
[ -z "$PS1" ] && return

> What if you do make ... 2>&1 | less?

Nothing bad.

I edited ~/.bash_aliases, but I don't think I have anything there
that would workaround this issue.  I'm puzzled.

>=20
> Or this is an unrelated bullseye bash bug that's fixed in bookworm.

No idea; it could be.  I don't have any bullseye to test it.

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------11cwhLThtqGKj8Ippl3eb1FT--

--------------Rt5a6XA0GeehuC8vT835xhKo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCf8UACgkQnowa+77/
2zJsMxAAi+5h3rjzncEIYXSRTmEyWsVTFlxIjBPD6J22HvWRZK9NBvlfCcOsMICC
BaqtVHO+EsojiWrIBic4WcR4Un0mpemEEzXtyH9I98Z+z9sr2UMIHMP4y0Xrd3vU
ney32SXmgwizeThWQamW9/90bxNiz80jhxYUe3Hrw58aZCpvuzs8nRs4eETOloCq
/3tsLdXSTaIPVMWE52cVeGWw5+1YUPB4mF5naxRiIirmzP/hOl8s6RajIdSIwMx0
DFf7Sa66Q77OFL/XVJByfs44LNA+Vn28OMvyC29kJNiJ5ETROeMejvbvC8nduWSL
MI2/S1UTlXpqmW4w2v5Bf6VzqE8bWcj12V6ttl0iyj9r+o/0+BitvKiL1SHGyY63
wbl+ylH5n6X/9Uu0tPFwYw8b0YFZthD2eTOreB+1UvZyAR7AApPtA8dNZ8Fkpf5e
cjE5TUo5po1ypvHSYR9xlvFGlNbXl7ntdnVn5CBGbv571nIvXrfiWpdQsfsdw8P/
HRbqzW77CUK+XPDnB6Zaqxx7IRLjLFTlHd7wJnq10gNN/YCk1Z1AAGmTSk3YkQed
dankn/ESZWkWh+6ZW7dQBKivD4sy9cpCFkflbjfNlWGXgWaASCrYd3ObOr4cV3j3
5nO5ZVcHMbGDtNAcI0YLInB3hpr0+trXgqVw1T+0ZnkJvSbd1Y4=
=8vG3
-----END PGP SIGNATURE-----

--------------Rt5a6XA0GeehuC8vT835xhKo--
