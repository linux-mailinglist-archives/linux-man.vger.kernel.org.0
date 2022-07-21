Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57ABA57D710
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 00:45:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiGUWp5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 18:45:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiGUWp4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 18:45:56 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FD608C167
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 15:45:52 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id j29-20020a05600c1c1d00b003a2fdafdefbso1557376wms.2
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 15:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=kp3mM4iDV4W404pSGbtVwlu21b4gYv7mWojI7nJ27og=;
        b=HTutjX23OWnhpWM+3m0BYWFIByfjswNJ4GQhucg7x3EAfFZBj57hzPuLFbeg1xIPBd
         WJjt0Wzf8aAe7op3wfJ+qL0/GNOPexqR0jbiLmhOc84zxcbKb6efXT7l0pmxnE9uR/6K
         ipwZ8YNAue5RzA4T/7h9XVNqh0Nb5QaKXUxsXjLN4nG8DLrk2hSuMMlfV9YubAGJvG2V
         KN3zLkGjgwrd21IMZgPiWHIIfPFSOmai6J3l3ojOCUpKiHtx850s2cAcLTfg3PlWX8rl
         tZCpurx044kmJoBo116hZgmGOlJO1gPUI4NoINNaXUvTdqyh7Bp5wwo1i6BpVSy34Ioq
         OIog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=kp3mM4iDV4W404pSGbtVwlu21b4gYv7mWojI7nJ27og=;
        b=d4hh9pF56Z4rMdHTdlUIqE+KxcHm2ZS44qPR/PzjfvDBdabGk+VMMsxplSt5MM1gKM
         xd7lzoV50YWh3b+bn9MqirQonFzfPvADp6XNLcVAwN/J3p4jlkxtWmVbJSQxCi9L5T05
         qJEesskYus55pHFyVsxjpZrUswy4pB6qYiuw1RPC48IwP7+6x34odpPUBe49iWag22Y6
         5wfkfN1RmR4+O4yL9e62bcy2AWFOCAATxBoCU2/z8UpN9mXEnJh3O3AknX5zGiEeXvmb
         bpxVHq/2Ytk0Vu3UfJEijf7p8117TQXjRBZVRm7Tg/sfPj1K1LU54bjgX53Q9zZmZebC
         5z+Q==
X-Gm-Message-State: AJIora9KEsKJQHsRL6WFQKwfganAS0g+v4PnIzaJBSabkX5pdPQNAQ8E
        +dcDOW2s+fzO/ViBHj6kC6Lj5jOrQqg=
X-Google-Smtp-Source: AGRyM1uNjlalPhJn0QJNsB/ez2Rr4PjfV8v5jT12JpnF2wGYCUe3Ak79UsSjsrs6ZnzGA3vkEc/Vtw==
X-Received: by 2002:a05:600c:a42:b0:39c:9086:8a34 with SMTP id c2-20020a05600c0a4200b0039c90868a34mr10126786wmq.169.1658443550518;
        Thu, 21 Jul 2022 15:45:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s23-20020a1cf217000000b003a2e2a2e294sm3047504wmc.18.2022.07.21.15.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 15:45:49 -0700 (PDT)
Message-ID: <3ee08567-ad0d-8e27-d993-aef3ba3e4a58@gmail.com>
Date:   Fri, 22 Jul 2022 00:45:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Probably incorrect formatting in timespec.3type
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
 <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9BVyKYTx7CvMDFkuElyZyBDQ"
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
--------------9BVyKYTx7CvMDFkuElyZyBDQ
Content-Type: multipart/mixed; boundary="------------BOfHYQ0pL6Mfp6tSrvQ4v1Nn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <3ee08567-ad0d-8e27-d993-aef3ba3e4a58@gmail.com>
Subject: Re: Probably incorrect formatting in timespec.3type
References: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
 <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>

--------------BOfHYQ0pL6Mfp6tSrvQ4v1Nn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvMjEvMjIgMTY6MzksINC90LDQsSB3cm90ZToNCj4gSGkhDQo+IA0KPiBP
biBUaHUsIEp1bCAyMSwgMjAyMiBhdCAwMzozODo0NlBNICswMjAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+IENoZWNrIHRpbWVzcGVjKDN0eXBlKSBhbmQgc2VhcmNoIGZvciAn
c3lzY2FsbCcsIGZvbGxvd2VkIGJ5ICdsb25nJywgYW5kDQo+PiBjb25maXJtIGlmIHRoZSBm
b3JtYXR0aW5nIGlzIHdoYXQgeW91IHdhbnRlZCB0byBwdXQgb3Igbm90Lg0KPiANCj4gSXQg
aXM6DQo+ICAgIHN5c2NhbGwgaXMgZW1waGFzaXNlZCwgc2luY2UgdGhhdCdzIGJvdGggdGhl
IGZ1bmRhbWVudGFsIHBvaW50DQo+ICAgIGFuZCBhIHN1YnRsZSBkaWZmZXJlbmNlIGFzIGNv
bXBhcmVkIHRvIHRoZSB2ZXJ5IHN0cm9uZyBiaW5kaW5nIG9mDQo+ICAgIHRoZSAibG9uZyIg
d2hpY2ggYWxzbyBkZXNpZ25hdGVzIGEgQyB0eXBlLCBhbmQNCj4gICAgbG9uZyBpcyBTb21l
IE9iamVjdCwgbm90IGEgdHlwZSBpdHNlbGYuDQoNCldoYXQgaXMgZXhhY3RseSAic3lzY2Fs
bCBsb25nIi4gIElzIGl0IHdoYXQgdGhlIGtlcm5lbCB1bmRlcnN0YW5kcyANCmludGVybmFs
bHkgYXMgYSBsb25nICh3aGljaCBJIGd1ZXNzIGRvZXNuJ3QgbmVjZXNzYXJpbHkgbWF0Y2gg
d2l0aCB3aGF0IA0KdXNlcnNwYWNlIHVuZGVyc3RhbmRzIGFzIGxvbmcpPyAgSSdtIG5vdCBz
byB1c2VkIHRvIGtlcm5lbCBkZXRhaWxzLi4uDQoNCj4gDQo+IFlvdSBtYXkgcHJlZmVyIHN0
aCBsaWtlIElbc3lzY2FsbF0gQltsb25nXQ0KPiAod2hpY2ggSSdkIHNheSBpcyBzbGlnaHRs
eSB3b3JzZSBiZWNhdXNlIHRoZSB3aG9sZSBwb2ludCBpcyB0aGF0IHRoZQ0KPiAgIHN5c2Nh
bGwgbG9uZyBpcyBub3QgbG9uZyBvbiBYMzIsIHNvIHRoZSBsb25nIGlzIG5vdCBsaXRlcmFs
KSwNCj4gYnV0IGhhdmluZyB0aGVtIGJvdGggYmUgSSB3b3VsZCBiZSBtaXNsZWFkaW5nLg0K
DQpUaGF0IG1ha2VzIHNlbnNlLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiANCj4gQmVzdCwN
Cj4g0L3QsNCxDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------BOfHYQ0pL6Mfp6tSrvQ4v1Nn--

--------------9BVyKYTx7CvMDFkuElyZyBDQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZ1xEACgkQnowa+77/
2zK/KQ//XrseD7tpaRt4J4DAIUFDzPsutumoQ7EHW23xOQFBzR+GATbm7Vmo9rR8
/F/8NDuGvpp4QRkfAOgCPCXAK6U9CyOQHNiulSExkvOC5cUXT9v59aU2UEVQgnxr
NEZ6Ub26inLkR+aI2Ddn3Y3hMG4Xc3BBhjtErzICe7vzXyofsR9LnyNjnm6oP45u
xoIdCVrx8iSB9LhHzsDi8t7obon6EGRwT4pSGtoC3rlb/w+m7uXBw/bC9MODG40p
OPq12/pPBBI9QULieT9ecQCVhm+m80YBvsDI09ETcSj4SJEQazC0G+MzeUQHUZt3
CAY6pbUkD5GPjDpn1vnRaWLvh8K40zB+WHRha3pliIfxmDioIpIY2yAzM8tJs6J5
FjTP45FOD/nRWZ1AQLFdC7SL6P/R1lzpF+qywUmbgj/BAOYrviEotVotJdoEBJeq
WqJlYBkadR75Z2+Zqehf9/lzWSnm+ymjNe7bkWgZIiU+yLiQl4jYxGxEqT48vbn4
Ef9U/kmXVbMPGulDOm+uXBSWjln15ZQOUeZ0dygyGzRVSz+F2g6f360hbxKP0HSV
MNAUg4yr7UvyZzkHXGCwjaZEMpxx1FXwwhW+YpRdV1Rmk4yWQU9VSoEQlz9ER8C4
R8vd1bGsyWyZpLEfesi3GiXIa8PZCapqW23PawqPWJj0z1zD9OU=
=85q0
-----END PGP SIGNATURE-----

--------------9BVyKYTx7CvMDFkuElyZyBDQ--
