Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6B82659B8A
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 19:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbiL3S6z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 13:58:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiL3S6y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 13:58:54 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F11B1B9CC
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:58:53 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so13474090wms.0
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ld9i9mRQDO10qXDcH3/7hErsDbSUSpHPKxXcxiG9PVA=;
        b=Xy2lOD0dDkHyMfFQ01kLNv0pNySrkJDilVLd9/0ny0qQgEJTv3h8Ug93q/yXMqUd22
         r4k1Ck7Vh45XkfK+l/y0vJZLbSOqcMJeojewX9mEm3dCtJaR/917FfsNDHPC3rQ1qMcF
         yd86tzWau6CxaLoVDVg5RuFEX4OFlplU89RN4BSFI52V3QVabcBUpSUY6tdAKZ+b7efp
         X/Q2OqEjvRL2/CGOSMS/5ND8lAoPWKI2f/EYB4DC0MCMEoFX1lwyIV+3KbV4SZ/axHww
         4aOAQiPrOqnM/yhVu75Lhk4Ryrebak53r4SKe4ccBwKnnvbQBsMjdSj9eOgObHrk4a6z
         wLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ld9i9mRQDO10qXDcH3/7hErsDbSUSpHPKxXcxiG9PVA=;
        b=0DJyEiSU2I78tToFgloASsC7atsAvfS+4Es8WgnCR+zrUFnd128VvTMcp2LAqfqP2J
         0QrElfA6TL3SYYvAAs1q3L9bn2dTF+2COMVAUJHa9C9USEmATxdNyI+yIuu+lxyXWcwZ
         bO86+TdtMjyXuPiB2MIXsYZfbmemnfv4auTmx509/XkaGfLEo2l/6DlraXVHtAu5zodo
         dWCbEUf65AcA2y2TlknDnRlBfW0x/kdt2zbcZErKeyG2r4+nMIfOSnrbG/IrZcp2et42
         L77Ft+x/JHxapi433evnUjvmy7TayeiH+8aWT+Qc+VOddCkpvQzIMAMgyOCcuAnQnqX2
         pjZg==
X-Gm-Message-State: AFqh2kruehbMTWHrIoZ3Y2Lpr2A/XiAwVbltxrYqPii/3tKi4kJOGLTZ
        6iXO1hLznHwwZSvzQFMXPfE=
X-Google-Smtp-Source: AMrXdXvajCzj2pArRtuIZ6NvuAtGSu9WrbGkFLaMJVN7edKmp/0RpMMPlTGYSII9OrK8lbnCkiIpUA==
X-Received: by 2002:a05:600c:18a3:b0:3d6:b71c:117a with SMTP id x35-20020a05600c18a300b003d6b71c117amr29124897wmp.31.1672426731645;
        Fri, 30 Dec 2022 10:58:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c468c00b003cf57329221sm32813356wmo.14.2022.12.30.10.58.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 10:58:51 -0800 (PST)
Message-ID: <ebd9ced5-cb9e-b110-9749-c5e1a54c640f@gmail.com>
Date:   Fri, 30 Dec 2022 19:58:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
 <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
 <6df5ca5f-5a51-5922-be72-354aa8a29a7@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6df5ca5f-5a51-5922-be72-354aa8a29a7@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------A3x088loucgaZlhvb5KYXjIP"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------A3x088loucgaZlhvb5KYXjIP
Content-Type: multipart/mixed; boundary="------------3Af0wMYEJcEvi3Rf7MGS64T0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <ebd9ced5-cb9e-b110-9749-c5e1a54c640f@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
 <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
 <6df5ca5f-5a51-5922-be72-354aa8a29a7@codesourcery.com>
In-Reply-To: <6df5ca5f-5a51-5922-be72-354aa8a29a7@codesourcery.com>

--------------3Af0wMYEJcEvi3Rf7MGS64T0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMi8zMC8yMiAxOTo1MCwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBGcmksIDMwIERlYyAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBo
YSB3cm90ZToNCj4gDQo+Pj4gSSBleHBlY3QgdG8gaW1wbGVtZW50IHRoZXNlIGZ1bmN0aW9u
cyBpbiBkdWUgY291cnNlIGZvciBnbGliYyAobm90IEdDQywNCj4+PiBzaW5jZSB0aGVzZSBh
cmUgbGlicmFyeSBmdW5jdGlvbnMsIHdpdGggdGhlIHVzdWFsIHJlcXVpcmVtZW50cyBmb3IN
Cj4+PiBkZWZpbml0aW9ucyB3aXRoIGV4dGVybmFsIGxpbmthZ2UsIHRob3VnaCBtb3N0IHdv
dWxkIGFsc28gaGF2ZSBpbmxpbmUNCj4+PiBoZWFkZXIgaW1wbGVtZW50YXRpb25zIGJhc2Vk
IG9uIGV4aXN0aW5nIGxvbmdzdGFuZGluZyBidWlsdC1pbiBmdW5jdGlvbnMpLg0KPj4NCj4+
IElzIHRoZXJlIGFueSBidWlsdGluIGZvciBzdGRjX2JpdF9jZWlsKCk/ICBJJ3ZlIHRyaWVk
IHRvIHNlYXJjaCBmb3IgaXQsIGJ1dA0KPj4gZGlkbid0IGZpbmQgaXQuICBJIGNhbWUgdG8g
dGhlIGNvbmNsdXNpb24gdGhhdCBJIG5lZWQgdG8gd3JpdGUgdGhlIHVnbHkgY29kZQ0KPj4g
YXJvdW5kIF9fYnVpbHRpbl9jbHooKS4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBz
dWNoIGEgYnVpbHQtaW4gZnVuY3Rpb24sIHNvIHllcywgdGhlIGlubGluZQ0KPiBmdW5jdGlv
biB3b3VsZCBuZWVkIHRvIHVzZSBfX2J1aWx0aW5fY2x6LiAgKEV2ZW4gdGhlIHN0ZGNfbGVh
ZGluZ196ZXJvcw0KPiBpbmxpbmUgZnVuY3Rpb25zIHdpbGwgbmVlZCB0byBkbyBtb3JlIHRo
YW4ganVzdCBjYWxsIF9fYnVpbHRpbl9jbHogLSB0aGV5DQo+IG5lZWQgdG8gY2hlY2sgZm9y
IHplcm8sIHNpbmNlIHRoZSBzdGFuZGFyZCBmdW5jdGlvbnMgaGF2ZSBhIGRlZmluZWQgcmVz
dWx0DQo+IGZvciBhIHplcm8gYXJndW1lbnQgd2hlcmVhcyBfX2J1aWx0aW5fY2x6IGRvZXNu
J3QuKQ0KDQpUaGFua3MgZm9yIGNvbmZpcm1pbmcuICBUaGF0IHdhcyBteSBndWVzcyA6fA0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy8+DQo=

--------------3Af0wMYEJcEvi3Rf7MGS64T0--

--------------A3x088loucgaZlhvb5KYXjIP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOvNOMACgkQnowa+77/
2zI6Kg//bRRN8Q7yoeVa+9H1bAX+VwC0F/NE8cvCIt4wkVf8+vdHHdW2+sRFWk4U
scynhyEkdKiEgmrwj3nwOd72j23b5goaVjJoEpsVS+kalD76STDPv6Vk+MWKJqWQ
8gxM9cS33OHXqwpsU8PPjQPwXuE7VMGqx932B7mWIWNBT0GpnrqlpnzPorWbKJzt
Or9H/+h6ps+n2vmCBQWNUreJIhyydJqastdojRaNtsLk1VDGAI1Iwo3Ey8mErkA0
Y9W+BBp+DzBcIrtLKBkXQ/TiKNzVJQYpvvFgsilUgzOtdG1g0fpOicQX3/6L3IqW
sTbo7cQobcHM8WmDYfePN6fnq2PwPFskRTHQinDTVPeOhMYCnbDjOj+0ralLm89g
hEPXg3xWWQdQz1/Ph0RLN9Ic/1ESk6YKtIuFD1t47wfBWCbxpU4kmU/4TrcyDHcj
/7g6VfGHcwRyqKwufs+3nOdrEufrZ+vCFrMckGz3x0fnPAKKhzdUiWUODIXQh9R5
g1L49kpf5ODjjJY7TXXLKQOrSobOUyvJDzIA3u47byugS3ktRCDvE05X3jndXpKI
G4NcAzySQc/b0wVQpHbSG9hLUQPG45A+2tPKDFm06a//KQBVVAPt90Xd1DWmW6si
QC8+WgGjCUVBa3nRRhd1UJXQZhYErOMBh5WoyOpHGoYeFcbxhDY=
=01QB
-----END PGP SIGNATURE-----

--------------A3x088loucgaZlhvb5KYXjIP--
