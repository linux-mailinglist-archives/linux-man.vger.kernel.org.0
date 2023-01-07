Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3044466116B
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 20:52:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232493AbjAGTww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 14:52:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbjAGTwv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 14:52:51 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 751BB4E414
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 11:52:50 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id ay40so3348172wmb.2
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 11:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EUEvS06ItVgYpJcQwzk9ERLwFD8F/5vlAnYcTAMFqzw=;
        b=qXZkH+bxyJup1vpWHq1soAKzFC6TW52qkmBSzFE2P9kU+fn8+92vmdmFDTzCWyhaca
         /wflNXYWRO92KOcoWtFd+kwSAeuhs7zFndxl/ztJvy/NM0576cfdwjD4o7WeaIGwxQ4s
         sO3idMIB+iawQmEa2j1lDHhKKPqrsxaZRdcWzcGAzwQOTykDxAIOwsX4Xj/kdZoDLRxi
         28U4hF5PNNECHQo3wX+pEAfycx3pRMl4wSKh2bdZg92XF5QmGNnZv4qUZ54MjEAl2aI1
         ZUpnaRcYcEe/lXnxTBwzbM4yvky+jBTfBkGeYDcNwB4IMZHujG2sc8MBq/0RhsYcKyKk
         4fng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EUEvS06ItVgYpJcQwzk9ERLwFD8F/5vlAnYcTAMFqzw=;
        b=zcIBqyLOZz2ilxzPSy1eh24Ejd5PDIh3pznHLOURsGI/RyAH7OryFC3OETkj0y4rmN
         g2A+CpKICMj84/axAH4YTYTDRbKyLQyVTfA/onYkv2sNgzLp04x+P1v0XOJvpT23awtE
         r4LOr1+R1UNymNWnyAJuGKgaQICEtTkQgtWBa4OfhEbf96bYOD+VGVxOImFcWupajBll
         ZEmXiyRqWLixDNyjjdm7rgL0kFygM465WlbJiZo13XBWAXkf6PrzNQum8Bcmb+xsrjhw
         oZdCqFDdAyEhyNJ4mSAmRfxOnW0jtXNsLUS1rDGoNYdhoRtD+wehDRRIoW2EdJuIQJ0X
         wazw==
X-Gm-Message-State: AFqh2krLNEGxvBjPENZUk1JzOWgahYCIpiBStzgyuuO1taM+bAGsOCpQ
        g2qfVgjVvqQk5n6hq/EgQp2lpdBF+YE=
X-Google-Smtp-Source: AMrXdXt9Shb9Ugm57vXYe9xLyVWsVzq2j3AIDLuihHjKe0Bz6rJfpzmpkD+ymTDHPzAEaEmx4UQ/pw==
X-Received: by 2002:a05:600c:d1:b0:3d3:4d21:704d with SMTP id u17-20020a05600c00d100b003d34d21704dmr42517561wmm.14.1673121169065;
        Sat, 07 Jan 2023 11:52:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t12-20020a05600c198c00b003d9de0c39fasm7301285wmq.36.2023.01.07.11.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 11:52:48 -0800 (PST)
Message-ID: <ab19b4de-9460-1a1e-5bbe-f1e8856bcc0f@gmail.com>
Date:   Sat, 7 Jan 2023 20:52:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
 <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
 <20230107151520.7a6yvbs7bpvmci4e@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107151520.7a6yvbs7bpvmci4e@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dtLrM2uWlWQ7mbdI6Z7dN2yP"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------dtLrM2uWlWQ7mbdI6Z7dN2yP
Content-Type: multipart/mixed; boundary="------------RdLlbYMYvmGpaeDRg2WInUF7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <ab19b4de-9460-1a1e-5bbe-f1e8856bcc0f@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
 <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
 <20230107151520.7a6yvbs7bpvmci4e@illithid>
In-Reply-To: <20230107151520.7a6yvbs7bpvmci4e@illithid>

--------------RdLlbYMYvmGpaeDRg2WInUF7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDE2OjE1LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wN1QxMzozMzoxNiswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiBQYXRjaCBhcHBsaWVkLicNCj4+DQo+PiBT
b3JyeS4gIE5vdC4gIEkgcmVwbGllZCB0byB0aGUgd3JvbmcgcGF0Y2guDQo+IA0KPiBXaGF0
IGFyZSB5b3VyIGNvbmNlcm5zIHdpdGggdGhpcyBwYXRjaD8gIFRoZSAiaW5mbyBsaWJjIiBp
dGVtPw0KDQpJIG5lZWQgbW9yZSB0aW1lIHRvIHJlYWQgaXQuICBJZiB5b3Ugd2FudCB0byBz
ZW5kIGl0IHVudG91Y2hlZCBhbiBhbiB2NSwgdGhhdCdzIA0KZmluZS4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------RdLlbYMYvmGpaeDRg2WInUF7--

--------------dtLrM2uWlWQ7mbdI6Z7dN2yP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5zY8ACgkQnowa+77/
2zLeOg/+PCFkRmjeXBHldCuC5z4/Hnu50MgSh8jFtfUqJp7tMIVy6tLiy1+aUXE+
cJAfYAaX7RsT/owrdZ/JNrrWwSr3QN67TESkGoHEPw8o58JGnWaSrCzVaW8O32Nw
MoFdR2VGAEF9R2X0ldFosKrP2n6twbuaJiRPLtubHvwSKNk4BifVysvnN+ORBeja
Pai0FoMEJrn98FEUpbcCK+H0boz1vzKfXE6DqIYpz6MYFqAu9mQsHM1of5CIyZJs
OOIb+8PMd9awcnDhSFfaWvB7jwWUyl6lI09w91rbF/V5LvjmD73b2LkwjPH6zk3F
lj8TJxpXBRVJ/TQYD4AaRtx70XGmM23JH/5BLqKeXHjw0iIMiU9EYYsHP6T+9ITY
PxCAoXkijiuwCN9Iq5Hytq0RdOlkNa1s5JLBAJGhnZB/CaLld7s/1qaLQlG4OcZp
cEzKEQ01/RlXIU5O4wiViqR/6I/N33rcbm9VOP+6IgNrABFpJyYglq/qGf6Qg0+b
gkScsUyHZVtmL/U5An/GHsYQLjIbCEYgqGyc56GgeodWB+U9nmj0rvrkHsdP/GzD
D+IxBYLP9BzykgUXwPUCk5vK0GNGpQJuyiCpkoPw9rNR0WAtn/6JiZUjBpPNN+9S
isX6k4kAb4BbPfSMsxr3+tPhJNCH6c22hdEbab3Nw4Xub6uZBCc=
=4SS3
-----END PGP SIGNATURE-----

--------------dtLrM2uWlWQ7mbdI6Z7dN2yP--
