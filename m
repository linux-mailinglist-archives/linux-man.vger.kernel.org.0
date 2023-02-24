Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08B386A24D9
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 00:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbjBXXEp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 18:04:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjBXXEo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 18:04:44 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83AB512F39
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:04:43 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso2919368wmi.4
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5/tpnZ7If3CnFv5crNO2QbdcS58xd2Z6zA/8+AjI30=;
        b=Z+lgZ0n+dUYhbwTVKQGht9GRMs5c010skbdVpFIOuR9NFfyRzy6hRQguqhDS4S9z0g
         500dZvp+oZ5ujPYlAIRcnA06toCbVkAvZ97xWOGQp2oMFQMLt8Tn3ZQFG6ev+PS6bAiE
         WUX2Yyg8bhMgwA1IKO8l+4l1+sLXguIXEqbG90E8hm9NCm/VAg3ctdlNnI7Az8Q4KvG5
         GTD6a7SQUKO7guhYytNzoubjToA4jTHYGuMrSCn9abIyF+7vawIz6VUP7T/FO9+9jokY
         f4/o1nE5q2VhrManOQXvhP8pTFZgPdt62jzDI+TVAwW38D5LWvmxC1g1z2AcSLSf8BkK
         6/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q5/tpnZ7If3CnFv5crNO2QbdcS58xd2Z6zA/8+AjI30=;
        b=iJfyCMBHM+Z//g59VaFSO+R1Gl8Zo/2gJ66C9Y4kwrzs/CWq7BviwfRAfOZKNFla81
         +QxG1pdjhwDARVIarSgs4WyR9k8d81NrX9JqJpwNuajye4MWTuZlbC49TCxqcd4vdIUh
         LTLtWUoXvj7rT81pPfZpMTyvXPOrHbtCt1g4CQfX4BSNwzfsmgcX8LmUoDiTA9HC5X0k
         4LcuqNW68dN4aK3STBOFUJ+0wb8o7omGM16JZKlwayJQbqsLVWRv++bv0ynxRUmRR06s
         9KOHkPGZQe0qvsBeWCMfhlkw43fhrzm4anLJHAgwWLMjPFjltwwwVtKiFyPvs3SFVPre
         cJHQ==
X-Gm-Message-State: AO0yUKXb0MhPsZi/Oa2sdtl/F1+6vViWaRV01/PfSeavTQMqlz01WY8S
        qZLa/rn4hwaFyQx8zUcQwPU=
X-Google-Smtp-Source: AK7set/2ranNBNhF6zwQak+ESL0uAorSVxjQEf6GhaYUQVrjzSbnvc5M0NXUf+y5rDdPMhuCK2Jf9A==
X-Received: by 2002:a05:600c:16c7:b0:3ea:25b9:c518 with SMTP id l7-20020a05600c16c700b003ea25b9c518mr6710429wmn.5.1677279881874;
        Fri, 24 Feb 2023 15:04:41 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id l20-20020a05600c4f1400b003e20cf0408esm594537wmq.40.2023.02.24.15.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 15:04:41 -0800 (PST)
Message-ID: <1b43ad85-1008-9f3e-03a1-2f060dedb93b@gmail.com>
Date:   Sat, 25 Feb 2023 00:04:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3] landlock.7: Move the warning about missing features
 into the CAVEATS section
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230221205023.2739-1-gnoack3000@gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230221205023.2739-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7rsT9GFOOpa0trrY2U62C0c0"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7rsT9GFOOpa0trrY2U62C0c0
Content-Type: multipart/mixed; boundary="------------lKOvHbdlDQTUMGNw3r6Q0X2b";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <1b43ad85-1008-9f3e-03a1-2f060dedb93b@gmail.com>
Subject: Re: [PATCH 1/3] landlock.7: Move the warning about missing features
 into the CAVEATS section
References: <20230221205023.2739-1-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-1-gnoack3000@gmail.com>

--------------lKOvHbdlDQTUMGNw3r6Q0X2b
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR8O8bnRoZXIsDQoNCk9uIDIvMjEvMjMgMjE6NTAsIEfDvG50aGVyIE5vYWNrIHdyb3Rl
Og0KPiBQdXR0aW5nIHRoZSB3YXJuaW5nIHRoZXJlIG1ha2VzIGl0IG1vcmUgcHJvbWluZW50
Lg0KPiBDQVZFQVRTIGlzIGEgc3RhbmRhcmQgc2VjdGlvbiB0aGF0IGV4aXN0cyBpbiBtYW55
IG1hbiBwYWdlcw0KPiBhbmQgaXMgYWxzbyBkZXNjcmliZWQgaW4gbWFuLXBhZ2VzKDcpLg0K
DQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43
L2xhbmRsb2NrLjcgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9sYW5kbG9jay43IGIv
bWFuNy9sYW5kbG9jay43DQo+IGluZGV4IDA4MThiNGJmOS4uMDk5ZjY4MDY3IDEwMDY0NA0K
PiAtLS0gYS9tYW43L2xhbmRsb2NrLjcNCj4gKysrIGIvbWFuNy9sYW5kbG9jay43DQo+IEBA
IC0yMDEsNyArMjAxLDcgQEAgY29tbWFuZCBsaW5lIHBhcmFtZXRlciBhbmQgZnVydGhlciB0
byB0aGUgdmFsdWUgb2YNCj4gICBXZSBjYW4gY2hlY2sgdGhhdCBMYW5kbG9jayBpcyBlbmFi
bGVkIGJ5IGxvb2tpbmcgZm9yDQo+ICAgLkkgbGFuZGxvY2s6IFVwIGFuZCBydW5uaW5nLg0K
PiAgIGluIGtlcm5lbCBsb2dzLg0KPiAtLlBQDQo+ICsuU0ggQ0FWRUFUUw0KPiAgIEl0IGlz
IGN1cnJlbnRseSBub3QgcG9zc2libGUgdG8gcmVzdHJpY3Qgc29tZSBmaWxlLXJlbGF0ZWQg
YWN0aW9ucw0KPiAgIGFjY2Vzc2libGUgdGhyb3VnaCB0aGVzZSBzeXN0ZW0gY2FsbCBmYW1p
bGllczoNCj4gICAuQlIgY2hkaXIgKDIpLA0KPiANCj4gYmFzZS1jb21taXQ6IDg4N2I5MTNl
YjI2ODdmMzRiYzA1NjU5N2MwNTAxYTQzMjViZWJmMjgNCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENF
MzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoNCg==

--------------lKOvHbdlDQTUMGNw3r6Q0X2b--

--------------7rsT9GFOOpa0trrY2U62C0c0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5QogACgkQnowa+77/
2zIiZA/+MM06AnOfK9GujS8S0n7TnjblhvNUHXYh5qLSybz2wV5XGW8xYwf0CYgS
xk+2dfrzF+WMGtxaLb/C8v37FRLdLucheuuSx3nBumDCuVMK+ziGBQYEB3CiKxkk
lmfsi+7rk08moS5FyMCXyy20HBcLhijWp6Uqf/QMHtNgA5Y5nv/tQ19NCAk3JVsQ
jRbhwO/cgtUxiT20rTMNQoTF95GGqQeUvj0WTtrYD4DSxnJ5S1Irvr9WkTOUsrH3
S8yBDrMWeVR7bVuokTY0QvDsyXroOHaAx+gmnRyjOk29KgxZ1sY9d/O0hhfawJvx
WGjCpgB3Ndrb8j2sRwae+pIpPFEEdY1hjwBcypN9rvWJlmd7H5AYH3JQUmQwwfUf
3n95quYU6KUJwWxUcrx62PgjcgeK4G5fL5FI67Su/DVCJ5S9RM5WAN2dXxaj2r51
oju0IFVLdaKJojHdU9ZzxijX1KwSZIknwNPwtZjY8GhbFi/qzqxjRZQAI1cAgPtR
8FAlBBJOZqaLJJgrGiqHYonPykCYrD3VyxkzGKhH8tG8eShhoubW6MmVHxyKzODF
3we+k0UquxaWHMGjugUeBFXVCqwQkCJTuGuuaHwY1cxaABwXXtkEEO4R/Bsth9q5
9GAIq1NAHvRGWM8sGcREKpT4I5XOgXFaGs+eB6IpJ5WERPaS3Uw=
=KkjC
-----END PGP SIGNATURE-----

--------------7rsT9GFOOpa0trrY2U62C0c0--
