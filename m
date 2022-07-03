Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE902564952
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbiGCSix (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiGCSiw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:38:52 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D682DE4
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:38:51 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id k129so4228763wme.0
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 11:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=ebvx1/qhFfkwyZ3/XIOXI0Q10ZXue9+Fg0PwPnFVgIU=;
        b=Jf1nAbEvKOLIQ6ubylKGddEioHysmkXYmKu4XqZd2bJ60aIDN794mKHtMsKcCxKD7u
         5SEOyzI1U4ji8e6DnnNEYFk+vPnDMKgJs/4c6EUs4tdNGHjr6dTABcKNDnVcczW9ays4
         rendTB8TplyDG4+7TlZcpy5q8kE8LSSs/6GesUwUfgXBbPe7vQx3HtVf70ncLozRbPv9
         9+2fOpSCpDiYhMW42eFBoQNn+irSfsk5xbDOaHqdzGkQDFn/v2SWCgRHKXRUk/c3hvn4
         fcgfn3Azdk6zUczMnKlNgEwti44sSM8GT2DWarGksjADqvIiWJpU13UtUtcMe57gcJ1s
         2MeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=ebvx1/qhFfkwyZ3/XIOXI0Q10ZXue9+Fg0PwPnFVgIU=;
        b=vqaLqlndFYKUJEk2VBhuXl46zjmZNB9iX6xSQ7KzwCLofsPE7jWhKiamyxn+0VDj+V
         PScvuTQPBijelmwIbmn1NvcxRrhoGspKUgJ3NGE6ZBPYnPUVpCsBLii8ijL+95IWTPBL
         EtjuOykWqmTchR54zv4BWA6WLKiONR7iaJdpniZnn3MlDHjj+N5H3/fBcgWXZtqBDzlt
         3SaNJJZXUh0/SgbyJeFhLCMsOzFT5d6NvZ88gDtOKVHpq7HMfLaEDc8aDErQe4ExIZYK
         Jk4+iRZTbhpvOlRXjec70+JVeSRb483lCKwRIZyUNMeN0rXnUC15bIMi2fOAVszPKoEA
         HH4Q==
X-Gm-Message-State: AJIora+ejHQoZgjQIXnAvqbxd8uqED2IwuynFI9+NcpFrhmjFRZB8IYf
        ClKJGKKdjAVeN75jUey1OHs=
X-Google-Smtp-Source: AGRyM1tcQ0E8cQDAqwg7TSKX8UBWKnua356R7YaOyiuL9AXaDGZ9UOeC+daX4+XY0L1vNQk8EQrcfQ==
X-Received: by 2002:a05:600c:a4c:b0:39c:34d0:fd25 with SMTP id c12-20020a05600c0a4c00b0039c34d0fd25mr27927889wmq.172.1656873530258;
        Sun, 03 Jul 2022 11:38:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r185-20020a1c2bc2000000b003a0484c069bsm19831353wmr.41.2022.07.03.11.38.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:38:49 -0700 (PDT)
Message-ID: <61367ef4-d7ab-d27b-6b9b-79a643c76119@gmail.com>
Date:   Sun, 3 Jul 2022 20:38:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20220622164153.2188751-1-amir73il@gmail.com>
 <20220622164153.2188751-2-amir73il@gmail.com>
 <CAOQ4uxjYnK4phEuyotFCwCcdjx4sAJsZtaNabCxAgfUBe9+V5g@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxjYnK4phEuyotFCwCcdjx4sAJsZtaNabCxAgfUBe9+V5g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p5GnzRNrRV7mJWXvyhg030gb"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------p5GnzRNrRV7mJWXvyhg030gb
Content-Type: multipart/mixed; boundary="------------kb0d0SWaSDpASLPdH90h5d6n";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <61367ef4-d7ab-d27b-6b9b-79a643c76119@gmail.com>
Subject: Re: [PATCH v2 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
References: <20220622164153.2188751-1-amir73il@gmail.com>
 <20220622164153.2188751-2-amir73il@gmail.com>
 <CAOQ4uxjYnK4phEuyotFCwCcdjx4sAJsZtaNabCxAgfUBe9+V5g@mail.gmail.com>
In-Reply-To: <CAOQ4uxjYnK4phEuyotFCwCcdjx4sAJsZtaNabCxAgfUBe9+V5g@mail.gmail.com>

--------------kb0d0SWaSDpASLPdH90h5d6n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciENCg0KT24gNi8yNi8yMiAxNzozMSwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQo+
IA0KPiBBbGV4LA0KPiANCj4gSSBob3BlIHRoZSByZXZpZXdlcnMgd29uJ3QgbWluZCwgYnV0
IGJlY2F1c2Ugd2UgYXJlIGFkZGluZyBtb3JlDQo+IHJlYXNvbnMgb2YgRU5PVERJUg0KPiBs
YXRlciBvbiwgSSB0aGluayB0aGlzIHNlY3Rpb24gd291bGQgbG9vayBiZXR0ZXIgd2l0aCBl
dmVyeSBFTk9URElSDQo+IHJlYXNvbiBpbiBhIHBhcmFncmFwaA0KPiBvZiBpdHMgb3duLCBs
aWtlIHRoaXM6DQoNClRoYXQgbWFrZXMgc2Vuc2UuICBPdGhlciBwYWdlcyBhbHNvIGRvIHRo
YXQgYWxyZWFkeSwgc28gaXQncyBmaW5lIGZvciBtZS4NCg0KSSBtdXN0IHNheSB0aGF0IGl0
IHdhcyBhIGJpdCB3ZWlyZCB0byBtZSBhIGxvbmcgdGltZSBhZ28sIHdoZW4gSSBzdGFydGVk
IA0KcmVhZGluZyBtYW51YWwgcGFnZXMsIGFuZCBJJ3ZlIGFsc28gcmVjZWl2ZWQgYSByZXBv
cnQgcmVjZW50bHkgZnJvbSANCnNvbWVvbmUgd2hvIHRob3VnaHQgdGhlIHNhbWUsIGJ1dCBu
b3cgaXQgcmVhZHMgbm9ybWFsIHRvIG1lLCBzbyBJJ2xsIA0KYXNzdW1lIGl0J3MganVzdCBw
YXJ0IG9mIHRoZSBsZWFybmluZyBjdXJ2ZSBvZiBsZWFybmluZyB0byByZWFkIG1hbiANCnBh
Z2VzLiAgUHJvYmFibHkgaGF2aW5nIGEgbG90IG9mIHRleHQgdG9nZXRoZXIgaW4gYSBzaW5n
bGUgZW50cnkgd291bGQgDQpiZSBldmVuIHdvcnNlIGZyb20gdGhlIHJlYWRhYmlsaXR5IHBv
aW50IG9mIHZpZXcsIHNvIGdvIGFoZWFkLg0KDQpGb3IgdGhlIHJldmlldywgYXMgbG9uZyBh
cyB5b3UgZG9uJ3QgY2hhbmdlIGV4aXN0aW5nIGNvZGUsIHlvdSBjYW4gZG8gaXQgDQphbGwg
aW4gb25lIGNvbW1pdC4gIElmIHlvdSdyZSByZWZhY3RvcmluZyB0ZXh0IGF0IHRoZSBzYW1l
IHRpbWUgYXMgDQphZGRpbmcgbmV3IHRleHQsIEknZCBwcmVmZXIgaWYgeW91IGJyZWFrIHRo
ZSBjb21taXQgaW50byAyLCB0aGUgZmlyc3QgDQpvbmUgYmVpbmcgdGhlIHJlZmFjdG9yLCB0
byBtYWtlIGl0IGVhc3kgdG8gcmV2aWV3IChzYW1lIGFzIGtlcm5lbCBydWxlcywgDQpJIGd1
ZXNzKS4NCg0KPiANCj4gLlRQDQo+IC5CIEVOT1RESVINCj4gLkkgZmxhZ3MNCj4gY29udGFp
bnMNCj4gLkJSIEZBTl9NQVJLX09OTFlESVIgLA0KPiBhbmQNCj4gLkkgZGlyZmQNCj4gYW5k
DQo+IC5JIHBhdGhuYW1lDQo+IGRvIG5vdCBzcGVjaWZ5IGEgZGlyZWN0b3J5Lg0KPiAuVFAN
Cj4gLkIgRU5PVERJUg0KPiBUaGUgZmFub3RpZnkgZ3JvdXAgd2FzIGluaXRpYWxpemVkIHdp
dGggZmxhZw0KPiAuQlIgRkFOX1JFUE9SVF9UQVJHRVRfRklEICwNCj4gLkkgbWFzaw0KPiBj
b250YWlucyBkaXJlY3RvcnkgZW50cnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAoZS5nLiwN
Cj4gLkJSIEZBTl9DUkVBVEUgLA0KPiAuQlIgRkFOX0RFTEVURSApICwNCj4gYW5kDQo+IC5J
IGRpcmZkDQo+IGFuZA0KPiAuSSBwYXRobmFtZQ0KPiBkbyBub3Qgc3BlY2lmeSBhIGRpcmVj
dG9yeS4NCj4gLlRQDQo+IA0KPiBUaGUgZW5kIHJlc3VsdCBbMV0gYWZ0ZXIgdGhlIGZvbGxv
d2luZyBGQU5fUkVOQU1FIHBhdGNoIGxvb2tzIGxpa2UgdGhpczoNCj4gDQo+ICAgICAgICAg
RU5PVERJUg0KPiAgICAgICAgICAgICAgICBmbGFncyBjb250YWlucyBGQU5fTUFSS19PTkxZ
RElSLCBhbmQgZGlyZmQgYW5kIHBhdGhuYW1lDQo+IGRvIG5vdCBzcGVjaWZ5IGEgZGlyZWN0
b3J5Lg0KPiANCj4gICAgICAgICBFTk9URElSDQo+ICAgICAgICAgICAgICAgIG1hc2sgY29u
dGFpbnMgRkFOX1JFTkFNRSwgYW5kIGRpcmZkIGFuZCBwYXRobmFtZSBkbyBub3QNCj4gc3Bl
Y2lmeSBhIGRpcmVjdG9yeS4NCj4gDQo+ICAgICAgICAgRU5PVERJUg0KPiAgICAgICAgICAg
ICAgICBUaGUgZmFub3RpZnkgZ3JvdXAgd2FzIGluaXRpYWxpemVkIHdpdGggZmxhZw0KPiBG
QU5fUkVQT1JUX1RBUkdFVF9GSUQsIG1hc2sgY29udGFpbnMNCj4gICAgICAgICAgICAgICAg
ZGlyZWN0b3J5IGVudHJ5IG1vZGlmaWNhdGlvbiBldmVudHMgKGUuZy4sIEZBTl9DUkVBVEUs
DQo+IEZBTl9ERUxFVEUpLCBhbmQgZGlyZmQgYW5kDQo+ICAgICAgICAgICAgICAgIHBhdGhu
YW1lIGRvIG5vdCAgc3BlY2lmeSAgYSBkaXJlY3RvcnkuDQo+IA0KPiBCVFcsIEkgY291bGQg
bm90IGZpZ3VyZSBvdXQgd2hhdCBjYXVzZXMgdGhlIGxpbmUgYnJlYWsgYWZ0ZXIgRU5PVERJ
Ui4NCj4gT3RoZXIgZXJyb3JzIGxvb2sgc2ltaWxhcmx5IGZvcm1hdHRlZCBhbmQgZG9uJ3Qg
aGF2ZSB0aGlzIGxpbmUgYnJlYWsuDQoNClRoYXQncyBub3JtYWwuICBUaGVyZSBtdXN0IGJl
IGF0IGxlYXN0IGEgc3BhY2UgYmV0d2VlbiB0aGUgdGFnIGFuZCB0aGUgDQpwYXJhZ3JhcGgg
aW4gYSB0YWdnZWQgcGFyYWdyYXBoICguVFApLCBzbyBpZiB0aGVyZSdzIG5vdCByb29tIGZv
ciB0aGUgDQpzcGFjZSwgaXQgYnJlYWtzLCBidXQgaXQncyBub3JtYWwuDQoNCmdyb2ZmX21h
big3KToNCiAgICAgICAgLlRQIFtpbmRlbnRhdGlvbl0NCiAgICAgICAgICAgICAgIFNldCBh
IHBhcmFncmFwaCB3aXRoIGEgbGVhZGluZyB0YWcsICBhbmQgIHRoZSAgcmXigJANCiAgICAg
ICAgICAgICAgIG1haW5kZXIgb2YgdGhlIHBhcmFncmFwaCBpbmRlbnRlZC4gIFRoZSBpbnB1
dCBsaW5lDQogICAgICAgICAgICAgICBmb2xsb3dpbmcgdGhpcyBtYWNybywga25vd24gYXMg
dGhlIHRhZywgaXMgcHJpbnRlZA0KICAgICAgICAgICAgICAgYXQgIHRoZSAgY3VycmVudCAg
bGVmdCBtYXJnaW4uICBTdWJzZXF1ZW50IHRleHQgaXMNCiAgICAgICAgICAgICAgIGluZGVu
dGVkIGJ5IGluZGVudGF0aW9uLCBpZiBzcGVjaWZpZWQsICBhbmQgIGJ5ICBhDQogICAgICAg
ICAgICAgICBkZWZhdWx0IGFtb3VudCBvdGhlcndpc2U7IHNlZSBzdWJzZWN0aW9uIOKAnEhv
cml6b27igJANCiAgICAgICAgICAgICAgIHRhbCBhbmQgdmVydGljYWwgc3BhY2luZ+KAnSBi
ZWxvdy4NCg0KICAgICAgICAgICAgICAgSWYgIHRoZSB0YWcgaXMgbm90IGFzIHdpZGUgYXMg
dGhlIGluZGVudGF0aW9uLCB0aGUNCiAgICAgICAgICAgICAgIHBhcmFncmFwaCBzdGFydHMg
b24gdGhlIHNhbWUgbGluZSBhcyB0aGUgIHRhZywgIGF0DQogICAgICAgICAgICAgICB0aGUg
IGFwcGxpY2FibGUgIGluZGVudGF0aW9uLCBhbmQgY29udGludWVzIG9uIHRoZQ0KICAgICAg
ICAgICAgICAgZm9sbG93aW5nIGxpbmVzLiAgT3RoZXJ3aXNlLCB0aGUgZGVzY3JpcHRpdmUg
IHBhcnQNCiAgICAgICAgICAgICAgIG9mICB0aGUgcGFyYWdyYXBoIGJlZ2lucyBvbiB0aGUg
bGluZSBmb2xsb3dpbmcgdGhlDQogICAgICAgICAgICAgICB0YWcuDQoNClRoYW5rcywNCg0K
QWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy8+DQo=

--------------kb0d0SWaSDpASLPdH90h5d6n--

--------------p5GnzRNrRV7mJWXvyhg030gb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLB4ioACgkQnowa+77/
2zJQGw/+IlXav36u/qKBiL2vquq5ip1Jc2ntzv3/yuF4Y9i7EoRRsHBXw/pALNhj
/k5vhSYU39jDT1CnoQ0bhwW7ZmGuT8osmzfflAYktDCeJBf8nm9Y8htfZ4VCCmTC
ybkxMcQKUXczxkBSYLtkqcYzCaZXB3exMyLIGmFe+E0/LPt2moShWFFedPOUSTto
j/s5Wu/2lcY1pw4hkHFOcs0DBYSdOoyYYZWjGEg8RrDYGEkhkYl3nP6StfC18/gq
XC/5ILUuuyJYK6d68GLl4st0KEfr9Vx7YUBF0Dq7NZa77ecSUvN6zmus7ImEX8lo
fq+8OKhndp8umdKnHMhnFpffSkb3+Dw21zZVlMC8FhvFLwR/rwlF00jZrwL0nWnt
jghaw/TA8mEwhIAbI1zy0tusMSNtnzX2EVOtkeCXvRsw1oTjXZVTeGTpYbA31G6G
2oiwy7U5IbOoS4VDjGCtTzv9idenPRps/jfjTCvjDSgncL70O5LOukK1PfvV+vQ2
1V4sTPBIDsQ2SxmQg00UrU7ZQqka7M594oKLycbViBmL4r2q5NJYBof5qK86Xrhf
u/ztvnDSEVpP7++hc5rW6lTF0e+T8QewKdtdN9w5jUhCIdMRyd+1DAWP+a9tWhIL
BlTePECJ7WBGMlJVde4+/0Gl00IZRcS1gcflkfhnpwspJMPhYtM=
=t74t
-----END PGP SIGNATURE-----

--------------p5GnzRNrRV7mJWXvyhg030gb--
