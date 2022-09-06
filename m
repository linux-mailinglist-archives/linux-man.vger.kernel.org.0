Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A89A05AE6E4
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230241AbiIFLu2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:50:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233571AbiIFLu0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:50:26 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5CA248DD
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:50:24 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b16so15052266wru.7
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=RakX8tuAIlYfmTll+AN8IOI62Ch5HdOj1NBfhQkLAv8=;
        b=SgZlByZOQpCBozbcZUlKQtmw2BrPYLFbvh/VAxJAa+2LRb42AwjrPtyVWBJt4RwGRK
         9cEvs1TucSEFq1k/R1olpXwLQslC54QvHNXatKMxXwCWIUeHR8IkpQhQLm69ugNNWgL/
         ugdvPNdKT1iwgfpvwQBED+F5hqChv9AZNtf57bOt3F/cr2JqnUAfiW3Tvv0mD4ywzOC4
         goriHOilZZgqioTLYZPZu5/whamTLk4zTpsjOw2B6kA2TPOFmqzaC6nykqZLYdR5v5H0
         /WddVYRj5qpAiVBDAlM9B6ZgVgYf4zIBuxz6Gxh3+XYdTz0a+y29DQx5Q7o0b/GrS2T6
         DR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=RakX8tuAIlYfmTll+AN8IOI62Ch5HdOj1NBfhQkLAv8=;
        b=0bfRcfgdSG72OddsaIhQaHxqBgvVzjaOiCZja1QiW3r6WDJu4tuYcxtaiIoW7sej3u
         dpRI/F2Xy520KzX7J3s/sl5AUypcOLl/X219QvQ0KAJdXmfLoKaHF1UcwJxuroKVZ8TM
         Y4T9TS3Qhc6xoheENweqQZRkfhirIOFxCL/DIYvQ6Wy+0FmlrmvxPmc+hv5z+ZytbnGo
         ki/34vHLQb77gENiNbEGinkKEAKgsR8LDa94eA9W2e6hQ8n3Gux872/Z4GOm8pN24b5P
         x2pJSSlAIrlBgK0mE2IbwqYcMrS6OjEbdMyhY1ilhu3nzuLvdxd/1PPhY7U+6gwjqXuT
         789Q==
X-Gm-Message-State: ACgBeo0Ujhmvd8amwVINeVdTSZhNmsRJson5z2Ke2cAoaaHEdjf6lzHM
        VjdiKswNBYgK7XigAp5KNgcrkLrGiwk=
X-Google-Smtp-Source: AA6agR6jceEZHEdfxDIBRbvHVQfz534JGLAu+A0T5zt/2jPJe0GlHlih5r115ca2jXU2wpt/sKsBng==
X-Received: by 2002:a5d:47c5:0:b0:226:e8d1:f2d6 with SMTP id o5-20020a5d47c5000000b00226e8d1f2d6mr18448630wrc.650.1662465022610;
        Tue, 06 Sep 2022 04:50:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d13-20020a05600c3acd00b003a643ac2b08sm13760135wms.8.2022.09.06.04.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:50:22 -0700 (PDT)
Message-ID: <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
Date:   Tue, 6 Sep 2022 13:50:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [patch] unshare.2: Add note about potential capabilities
 confusion
Content-Language: en-US
To:     Patrick Reader <_@pxeger.com>, linux-man@vger.kernel.org
References: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EcCNS8YZj6oGf6kbfqDdYH2T"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EcCNS8YZj6oGf6kbfqDdYH2T
Content-Type: multipart/mixed; boundary="------------pemvItNdLl0LQv0awOjo6pq1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Patrick Reader <_@pxeger.com>, linux-man@vger.kernel.org
Message-ID: <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
Subject: Re: [patch] unshare.2: Add note about potential capabilities
 confusion
References: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
In-Reply-To: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>

--------------pemvItNdLl0LQv0awOjo6pq1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF0cmljaywNCg0KT24gOS82LzIyIDExOjAxLCBQYXRyaWNrIFJlYWRlciB3cm90ZToN
Cj4gU2VlIGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE2
MjE1IGZvciBjb250ZXh0Lg0KPiANCj4gSSBrbm93IG5vdGhpbmcgYWJvdXQgZ3JvZmYgZm9y
bWF0dGluZywgc28gd2hhdCBJIHdyb3RlIGhlcmUgaXMgYmFzZWQgb24gDQo+IG15IGluZmVy
ZW5jZSBmcm9tIHJlYWRpbmcgdGhlIGV4aXN0aW5nIHNvdXJjZS4gSWYgaXQncyB3cm9uZywg
SSBhcG9sb2dpc2UuDQoNCldlbGwsIHlvdSBkaWQgcXVpdGUgd2VsbC4gIFRoZSBtYW4oNykg
c291cmNlIGNvZGUgeW91IHdyb3RlIGlzIHBlcmZlY3QsIA0KZXhjZXB0IGZvciBvbmUgbWlu
b3IgZGV0YWlsOiBhZnRlciB0aGUgZW5kLW9mLXNlbnRlbmNlIHBlcmlvZCB5b3Ugc2hvdWxk
IA0KZWl0aGVyIHdyaXRlIHR3byBzcGFjZXMgb3IgYSBuZXdsaW5lLg0KDQpPbiB0b3Agb2Yg
dGhhdCwgd2UgaGF2ZSBhICJydWxlIiB0aGF0IGhlbHBzIHRoZSBwYWdlcyBiZSBtb3JlIA0K
bWFpbnRhaW5hYmxlLCBhbmQgdG8gbWUgaXQgYWxzbyBpbXByb3ZlcyByZWFkYWJpbGl0eSBv
ZiB0aGUgc291cmNlIGNvZGU6IA0KdGhhdCBpcyBzZW1hbnRpYyBuZXdsaW5lcy4gIEJ1dCBv
ZiBjb3Vyc2UgaXQncyB1bmxpa2VseSB0aGF0IHlvdSBrbmV3IA0KYWJvdXQgdGhlbS4NCg0K
bWFuLXBhZ2VzKDcpOg0KICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5lcw0KICAgICAgICBJbiB0
aGUgc291cmNlIG9mIGEgbWFudWFsIHBhZ2UsIG5ldyBzZW50ZW5jZXMgIHNob3VsZCAgYmUN
CiAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBi
ZSBzcGxpdCBpbnRvDQogICAgICAgIGxpbmVzICBhdCAgY2xhdXNlIGJyZWFrcyAoY29tbWFz
LCBzZW1pY29sb25zLCBjb2xvbnMsIGFuZA0KICAgICAgICBzbyBvbiksIGFuZCBsb25nIGNs
YXVzZXMgc2hvdWxkIGJlIHNwbGl0IGF0IHBocmFzZSBib3VuZOKAkA0KICAgICAgICBhcmll
cy4gIFRoaXMgY29udmVudGlvbiwgIHNvbWV0aW1lcyAga25vd24gIGFzICAic2VtYW50aWMN
CiAgICAgICAgbmV3bGluZXMiLCAgbWFrZXMgaXQgZWFzaWVyIHRvIHNlZSB0aGUgZWZmZWN0
IG9mIHBhdGNoZXMsDQogICAgICAgIHdoaWNoIG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVs
IG9mIGluZGl2aWR1YWwgc2VudGVuY2VzLA0KICAgICAgICBjbGF1c2VzLCBvciBwaHJhc2Vz
Lg0KDQpUaGVyZSdzIGEgcG9pbnRlciB0byB0aGF0IG1hbnVhbCBwYWdlIGluIHRoZSBDT05U
UklCVVRJTkcgZmlsZSBpbiB0aGUgDQpzb3VyY2Ugb2YgdGhlIHJlcG8sIGJ1dCBJIHVuZGVy
c3RhbmQgaXQncyB1bmxpa2VseSB0aGF0IG9uZSB3aWxsIGZvbGxvdyANCmFsbCBwb2ludGVy
cyBmcm9tIHRoZXJlIGp1c3QgdG8gd3JpdGUgYSB2ZXJ5IHNtYWxsIHBhdGNoLCBzbyBkb24n
dCB3b3JyeS4NCg0KPiANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFBhdHJpY2sgUmVhZGVyIDxf
QHB4ZWdlci5jb20+DQoNCldvdWxkIHlvdSBtaW5kIGZpeGluZyB0aG9zZSBzbWFsbCBpc3N1
ZXMgYW5kIHNlbmQgYW4gdjI/DQpJIGxpa2UgdGhlIGNvbnRlbnRzIG9mIHRoZSBwYXRjaC4N
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICDCoG1hbi9tYW4yL3Vuc2hhcmUuMiB8
IDEwICsrKysrKysrKysNCj4gIMKgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9tYW4vbWFuMi91bnNoYXJlLjIgYi9tYW4vbWFuMi91bnNo
YXJlLjINCj4gaW5kZXggZTcyNDY0OTUwLi44NTExMjkwMjIgMTAwNjQ0DQo+IC0tLSBhL21h
bi9tYW4yL3Vuc2hhcmUuMg0KPiArKysgYi9tYW4vbWFuMi91bnNoYXJlLjINCj4gQEAgLTQ2
MSw2ICs0NjEsMTYgQEAgU3VjaCBmdW5jdGlvbmFsaXR5IG1heSBiZSBhZGRlZCBpbiB0aGUg
ZnV0dXJlLCBpZiANCj4gcmVxdWlyZWQuDQo+ICDCoC5cImJlIGluY3JlbWVudGFsbHkgYWRk
ZWQgdG8gdW5zaGFyZSB3aXRob3V0IGFmZmVjdGluZyBsZWdhY3kNCj4gIMKgLlwiYXBwbGlj
YXRpb25zIHVzaW5nIHVuc2hhcmUuDQo+ICDCoC5cIg0KPiArLlBQDQo+ICtDcmVhdGluZyBh
bGwga2luZHMgb2YgbmFtZXNwYWNlLCBleGNlcHQgdXNlciBuYW1lc3BhY2VzLCByZXF1aXJl
cyB0aGUNCj4gKy5CIENBUF9TWVNfQURNSU4NCj4gK2NhcGFiaWxpdHkuIEhvd2V2ZXIsIHNp
bmNlIGNyZWF0aW5nIGEgdXNlciBuYW1lc3BhY2UgYXV0b21hdGljYWxseSANCj4gY29uZmVy
cyBhDQo+ICtmdWxsIHNldCBvZiBjYXBhYmlsaXRpZXMsIGNyZWF0aW5nIGJvdGggYSB1c2Vy
IG5hbWVzcGFjZSBhbmQgYW55IG90aGVyIA0KPiB0eXBlDQo+ICtvZiBuYW1lc3BhY2UgaW4g
dGhlIHNhbWUNCj4gKy5CUiB1bnNoYXJlICgpDQo+ICtjYWxsIGRvZXMgbm90IHJlcXVpcmUg
dGhlDQo+ICsuQiBDQVBfU1lTX0FETUlODQo+ICtjYXBhYmlsaXR5IGluIHRoZSBvcmlnaW5h
bCBuYW1lc3BhY2UuDQo+ICDCoC5TSCBFWEFNUExFUw0KPiAgwqBUaGUgcHJvZ3JhbSBiZWxv
dyBwcm92aWRlcyBhIHNpbXBsZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUNCj4gIMKgLkJSIHVu
c2hhcmUgKDEpDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------pemvItNdLl0LQv0awOjo6pq1--

--------------EcCNS8YZj6oGf6kbfqDdYH2T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXM/0ACgkQnowa+77/
2zKe8A/9G/J0KhiWUIE9QTRuLlT+6jiEZxzOMEeJhFSaMhT3+xGCneb6N+nQNhuk
danCuCkbNF5+f8xE4Z/X+tgdWkr07rGO0eO1yr0xSyYWhX2B6Q+/piAhU29CMzT/
ey58XP8nngrUjSgrBqmSy0dUxsm7Wvd2kA5FgzeGcXTQXpXQAYOPjNgjpOe4r2bN
J31ywjrnBIyL6OO6rJWLfV/S7o5SYVFyRMZw4Di2s0Ee/8RniISx+LtoD2Z9dRch
WYfY1SfO9VVWqxiNec+3R78o8M4bfgu9gRMunTXxgORwHgU7RJ0sodB5PTVJBQmb
kyBY+qEvxs0EZ8oY/ATFRnyhd9IAQ7Jpj7XCvFYHNVnfimOwJpGFVax2nrOhlNob
f+ZnpGDXD+J/SLCgmbVGAwXMubgqI0uTf0wJTckAk6ZFL/WuyfhWaWrhvRDNPK0w
4p81ra6YCu+Q7f3RbiL2PrM5h4+or6Oq+mif1mDYO38W53RpfkMyx9Ef5uu3+JPD
ufBnno1xs4mXH3Ez2MK2NxM2VGyPRsJscBARMMAA+2ACifpeiLLDw77TCRh4ghJH
F7eYQTpQv6G13OFtzEIZ/fwoU7EDkZHMM1iY5TWciJ2548m7X7Lo8Qy7VZupmYMj
ic2iZfluqVk/ALMdxgCUG+Ojcb6d7kXtL3VH3z3wDc0Jv2VR0JU=
=MsuS
-----END PGP SIGNATURE-----

--------------EcCNS8YZj6oGf6kbfqDdYH2T--
