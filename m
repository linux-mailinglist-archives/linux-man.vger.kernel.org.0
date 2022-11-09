Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7397A622D1E
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 15:04:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbiKIOEj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 09:04:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbiKIOEi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 09:04:38 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB8C112D0B
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 06:04:37 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id m7-20020a05600c090700b003cf8a105d9eso1349921wmp.5
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 06:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dq1aIGxF+z4thETAc+46MRcHlb2evd4SEXC8IceSGfE=;
        b=ixHvf0YYwbI4+kPxdXSaUhkLxfpkDVOgOlHYtEwUZj2peHj1eNxhrdkvj7kGF7eLY+
         gUCP4IzIc8zdje2WBOOQ2afMIhC7RaphBn1oS/d7dM84zJNIv955vrFBIT4Mirh03/OB
         4o+15atXtDPu5H1IMCmNivNnwq3Sim6HVa1d0Bzjy8WoX6Kwad3Mr+uWYPdzV+YQQR/0
         ui3LfXxqEOVNdVJaDIWNXu7EsJFaqUpZBNY4bI6TuEZtc5TT99EDwWMfoVJUzou4J1fZ
         BLiucv2ykkacWlY7XXETmDVgfhX3kkhHYs8STWNyIARrX2T61FqcaRvQM+iSSeiP7/4x
         DryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dq1aIGxF+z4thETAc+46MRcHlb2evd4SEXC8IceSGfE=;
        b=n3StlehuCOwZidRJIV378m87xdJW1cVl++soZPzmN+XQ4CY2CNvUuWN1SR0bioEbir
         SOvnE0mhpdrjYo2WIVnsSUs2Y8VE8enc/G+6CRmyyQNQ15Y0vsJBV+Anvw1ZB+vZCHqU
         6oUssomN0AOQQQn9a2vPO+VHcX05gtGSu879HNXsuizf9cUIKVoJK3knLD54jPN6konI
         rHSctxSzUKDw4ZfqEzdFIoNcpTbPUGzOgX9g/aTY9cI0J+d9DQD6QdCTRIldXErBWA0t
         b1S8IRDmSCrETTzajKW1XTSKsIf2o6n/FtNrRR1/mqDKtDYbNhBmxLxLJAOH908XQ97s
         D0yQ==
X-Gm-Message-State: ACrzQf3EMqDyZjxzCYGwG4r7jflUipx1KHOx/jbShGY386irte91711f
        +T81CNu6o34Ki+NRnx9e4BY=
X-Google-Smtp-Source: AMsMyM4X7pLOdSTgyldaV1jwlr0GPGMfZ6Z8CNYjWVsd1yAbprDKDFTAUzfHq0VjgPGGHQtti6fM2Q==
X-Received: by 2002:a05:600c:1d11:b0:3cf:7981:9a2 with SMTP id l17-20020a05600c1d1100b003cf798109a2mr33104253wms.92.1668002676505;
        Wed, 09 Nov 2022 06:04:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d6-20020adfe2c6000000b0022cc6b8df5esm13377797wrj.7.2022.11.09.06.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:04:36 -0800 (PST)
Message-ID: <6e1260c8-559a-45a8-8f38-6244452c93ed@gmail.com>
Date:   Wed, 9 Nov 2022 15:04:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
 <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>
In-Reply-To: <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cUCJ0QtiQuuB5NsLws4k0Y70"
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
--------------cUCJ0QtiQuuB5NsLws4k0Y70
Content-Type: multipart/mixed; boundary="------------rV6bGP7sD7Ja2iHnOFY601hH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
 linux-man <linux-man@vger.kernel.org>
Cc: Ken Brown <kbrown@cornell.edu>, Michael Kerrisk <mtk.manpages@gmail.com>,
 "Michael T. Kerrisk" <mtk@man7.org>
Message-ID: <6e1260c8-559a-45a8-8f38-6244452c93ed@gmail.com>
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
 <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>
In-Reply-To: <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>

--------------rV6bGP7sD7Ja2iHnOFY601hH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFNpbXBsZSBj
aGFuZ2VzIHRvIHNlbGVjdCgyKSBhbmQgcGlwZSg3KQ0KRGF0ZTogU3VuLCA2IE5vdiAyMDIy
IDE5OjUzOjM1ICswMTAwDQpGcm9tOiBKLkguIHZkIFdhdGVyIDxoZW5yaS52YW4uZGUud2F0
ZXJAeHM0YWxsLm5sPg0KVG86IG10ay5tYW5wYWdlc0BnbWFpbC5jb20NCkNDOiBhbHgubWFu
cGFnZXNAZ21haWwuY29tDQoNCkhpLA0KDQpJIGFtIGZvbGxvd2luZyB0aGUgaW5zdHJ1Y3Rp
b25zIGZyb20gaGVyZToNCg0KICAtIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1w
YWdlcy9yZXBvcnRpbmdfYnVncy5odG1sDQoNCiJTaW1wbGUgb25lLWxpbmUgb3IgdHdvLWxp
bmUgZXJyb3JzIC4uLiBjYW4gYmUgcmVwb3J0ZWQgYnkgc2VuZGluZyBhbiBlbWFpbA0KICBt
ZXNzYWdlIHRvIHRoZSBtYWludGFpbmVycyAuLi4iDQoNCm1hbiAyIHNlbGVjdCAgLi4uIERF
U0NSSVBUSU9OIHJlYWRzOg0KDQoic2VsZWN0KCkgYWxsb3dzIGEgcHJvZ3JhbSB0byBtb25p
dG9yIG11bHRpcGxlIGZpbGUgZGVzY3JpcHRvcnMsIHdhaXRpbmcNCiAgdW50aWwgb25lIG9y
IG1vcmUgb2YgdGhlIGZpbGUgZGVzY3JpcHRvcnMgYmVjb21lICJyZWFkeSIgZm9yIHNvbWUg
Y2xhc3Mgb2YNCiAgSS9PIG9wZXJhdGlvbiAoZS5nLiwgaW5wdXQgcG9zc2libGUpLiBBIGZp
bGUgZGVzY3JpcHRvciBpcyBjb25zaWRlcmVkDQogIHJlYWR5IGlmIGl0IGlzICBwb3NzaWJs
ZSB0byBwZXJmb3JtIGEgY29ycmVzcG9uZGluZyBJL08gb3BlcmF0aW9uDQogIChlLmcuLCBy
ZWFkKDIpLCBvciBhIHN1ZmZpY2llbnRseSBzbWFsbCB3cml0ZSgyKSkgd2l0aG91dCBibG9j
a2luZy4iDQoNCkkgc3VnZ2VzdCB0byBhZGQgdGhlIGZvbGxvd2luZyBsaW5lOg0KDQoiSG93
ZXZlciwgbm90ZSB0aGF0IHNlbGVjdCgyKSB3aWxsIGJsb2NrIG9uIHRoZSByZWFkIGVuZCBv
ZiBhIHBpcGUvZmlmbywgaWYNCiAgdGhlIHdyaXRlIGVuZCBvZiB0aGUgcGlwZS9maWZvIGhh
cyBuZXZlciBiZWVuIG9wZW5lZCBiZWZvcmUsIHVubGlrZSByZWFkKDIpDQogIChyZWFkKDIp
IHdpbGwgYWx3YXlzIHJldHVybiB3aXRoIHplcm8gaWYgdGhlIHdyaXRlIGVuZCBvZiB0aGUg
cGlwZS9maWZvIGlzDQogIGNsb3NlZCAtIHNlZSBwaXBlKDcpIHdoZXJlIHRoZSB0ZXh0IHN0
YXJ0cyB3aXRoIEkvTyBvbiBwaXBlcyBhbmQgZmlmb3MpLg0KDQotLS0NCm1hbiA3IHBpcGUg
Li4uIHdoZXJlIHRoZSBwYXJhZ3JhcGggc3RhcnQgd2l0aCAiSS9PIG9uIHBpcGVzIGFuZCBG
SUZPcyI6DQoNCiJJZiBhIHByb2Nlc3MgYXR0ZW1wdHMgdG8gcmVhZCBmcm9tIGFuIGVtcHR5
IHBpcGUsIHRoZW4gcmVhZCgyKSB3aWxsIGJsb2NrDQogIHVudGlsIGRhdGEgaXMgYXZhaWxh
YmxlLiINCg0KSSBzdWdnZXN0IHRvIGNoYW5nZSB0aGUgYWJvdmUgbGluZSBhcyBmb2xsb3dz
Og0KDQoiSWYgYSBwcm9jZXNzIGF0dGVtcHRzIHRvIHJlYWQgZnJvbSBhbiBlbXB0eSBwaXBl
IHdoaWxlIHRoZSB3cml0ZSBlbmQgaXMgb3BlbiwNCiAgdGhlbiByZWFkKDIpIHdpbGwgYmxv
Y2sgKGluIGNhc2UgdGhlIE9fTk9OQkxPQ0sgb3BlbmZpbGUgc3RhdHVzIGZsYWcgaGFzIGJl
ZW4NCiAgZGlzYWJsZWQpIHVudGlsIGRhdGEgaXMgYXZhaWxhYmxlOyBob3dldmVyLCBpZiB0
aGUgd3JpdGUgZW5kIG9mIHRoZSBwaXBlIGlzDQogIGNsb3NlZCBhbmQgdGhlIHBpcGUgaXMg
ZW1wdHksIHRoZW4gcmVhZCgyKSB3aWxsIHJldHVybiB3aXRoIHplcm8uIg0KDQpSZWdhcmRz
LA0KSGVucmkNCg==

--------------rV6bGP7sD7Ja2iHnOFY601hH--

--------------cUCJ0QtiQuuB5NsLws4k0Y70
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrs3IACgkQnowa+77/
2zJImw/+Oq8S2MEXWsq6aaVCmqVNJln4GCUOjLTfRJWG+nHwEB/4D6geSuKAGpmz
grX7oo9lJaJZGor3uL1Di43r6exR8pTKhP6XkyOxKDdLLPSnqHzHRbpOuIOPrtTX
khBzDLZvePu5nl49EGKH4NAm/xCtnCDZCDsiR1NL2DAvokK5IDeKXLC/x+oFfZ3x
z2fMmnyxt8NAvPNuV4V5PIv6zeU1gpcyrYAOzeLJnBBFdiNvIhZPhllHxsJ1rTPX
yDLMj4wJMss7TWsyaXN7Li+y2EVT947uplfUUm8LYi5vaZPfAiqoN+hdBgqrl9T7
AIhj76E7P3Ecq1Duabn4ZL88igkx0F/URjqAdiqDjWTEXhBHMdpXNW4kk0drXCzU
p43P8Sd+Rqh5ZPaGnOgGaHk3r7Z1u40TcJuaqiKvtAbOQ1Pygvli7HsdT9/jC6Dp
kd8WW8HC5tiBbrCf66Q7Gs6zK7S1dnrG/l3DoyODtikQMmzkzDhXdas65j8SQpwP
CuTengHDgs/XKWrL3RQY6p43YjX1Jq/0qCWq24tnqK+RsZFAOqLtTGMGDfcArDXN
Z+LhyAFNgwkJPjGRNhOqqdXaSl9/M1ra4a/c/+rVd7YBt3z/wKgiUvpkhuYENVRd
+Pc308zx9oEGPguBZQNNpXZjYL1oQTgsNkAZtzNw20ci774qypU=
=8wBg
-----END PGP SIGNATURE-----

--------------cUCJ0QtiQuuB5NsLws4k0Y70--
