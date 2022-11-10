Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51B4862408A
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 11:59:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbiKJK7M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 05:59:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230055AbiKJK7K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 05:59:10 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D0956AEDB
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 02:59:06 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m7-20020a05600c090700b003cf8a105d9eso869733wmp.5
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 02:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bX1Ky48w9I5w5ZunVrEbCZ7DGwOzxhlPY6W51YGIAYQ=;
        b=I36vOaNuoI/z8kUu6nkN+bD6D0bxeyaek15N8yDqP0+0qBuxB4o/xKb0IeK/lp8nVa
         mkJzCHnWfl75C7+p5EDXjCjC89Cka8fPq4Qv4RDwzSlL2JedeVc9VOEe7igq4Ac1vcJh
         DnDet5qR5EgKg5/JzA0pm7qLxgRaFB6t0oohUpe/vgh4kALbDgoqJUgQWuBp1LglZGBj
         bh5Q8W+FnuRGTOaiXl2XasI4Ao1TYoVJbWIflFeA8AxMIxJBuUHKCS4H+1TFivuatHlp
         CyRIh/U3CjGcwjjKnxzSUrVh9/1wEugA28Ll37YVJNvJNM/r4X2imOvofy8NEky4435j
         +Hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bX1Ky48w9I5w5ZunVrEbCZ7DGwOzxhlPY6W51YGIAYQ=;
        b=V+cDeL6V4nPF0SXRiVtV9/jJtJnpLaFyuWeur9NmBmTCbKK1LGFAOFcJF1zfOeFcDN
         idR/C3mXdwIfxmYnFIaQdLu0GjGaiJutPVINvjLdisUlbKwAhUsxdJN/Vj60cNW0t5TL
         0cftqnSoGhT9Ghe1uezJ/rLysMaNDwNC5PNcrnux7aXjtJHNLsGt5ucGglUTeU6R++ew
         eL4oChRvqMQQaopwr7JNUiEtfUDi0U1YiT/Gmlu8ChzjtjTdkGRbnK/8+nIUHs5wQVmq
         aYFtQIskxaTTJclc5zeyCPQutjSsbFiT+5dmCuDXtx32eijqzXExBQgGwSFCnixolcfz
         KcDw==
X-Gm-Message-State: ACrzQf2DSDeaqGp+e+Lor8tztJZNu8400PW7Ziaqv7gv3+qk5K2AUEHK
        8LvaOz2XW6LB6wqTc07WUbs=
X-Google-Smtp-Source: AMsMyM6gIyZvQUqZlfL0IBSQSs1+r+OiBK6ekYyDIzFv8CgCr7RDe9IFG3R5XdSQmFgpumNVsETYXg==
X-Received: by 2002:a7b:c303:0:b0:3b4:6e89:e5d5 with SMTP id k3-20020a7bc303000000b003b46e89e5d5mr43606216wmj.111.1668077945028;
        Thu, 10 Nov 2022 02:59:05 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bw9-20020a0560001f8900b00236c1f2cecesm19287484wrb.81.2022.11.10.02.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 02:59:03 -0800 (PST)
Message-ID: <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
Date:   Thu, 10 Nov 2022 11:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221110094033.ptpfsqpvvx2yd5xs@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------v7an0q7V57u4vzTwo4CofpJS"
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
--------------v7an0q7V57u4vzTwo4CofpJS
Content-Type: multipart/mixed; boundary="------------lpHACPHuBTUwPfwGqvyCRCMs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
In-Reply-To: <20221110094033.ptpfsqpvvx2yd5xs@illithid>

--------------lpHACPHuBTUwPfwGqvyCRCMs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMTEvMTAvMjIgMTA6NDAsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTExLTEwVDAxOjA2OjMxKzAxMDAs
IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gTm93LCBJJ3ZlIHJlbGVhc2VkIG1hbi1w
YWdlcy02LjAxIHZlcnkgcmVjZW50bHkgKGp1c3QgYSBmZXcgd2Vla3MNCj4+IGFnbyksIGFu
ZCBJIGRvbid0IHBsYW4gdG8gcmVsZWFzZSBhZ2FpbiBpbiBhIHllYXIgb3IgdHdvLCBzbyB0
aGVyZSdzDQo+PiB0aW1lIHRvIGRvIHRoZSBpbXBsZW1lbnRhdGlvbiBpbiBHQ0MuICBGcm9t
IG15IHNpZGUsIHBsZWFzZSBjb25zaWRlcg0KPj4gdGhpcyBhbiBBQ0sgb3IgZXZlbiBzb21l
d2hhdCBvZiBhIHB1c2ggdG8gZ2V0IHRoaW5ncyBkb25lIGluIHRoZQ0KPj4gY29tcGlsZXIg
c2lkZSBvZiB0aGluZ3MgOikNCj4gDQo+IERvIHlvdSBtZWFuIHlvdSBfZG9uJ3RfIHBsYW4g
dG8gcmVsZWFzZSBhZ2FpbiBmb3IgYSB5ZWFyIG9yIHR3bz8NCj4gDQo+IFlvdSBrbm93IHdo
YXQgTW9sdGtlIHNhaWQgYWJvdXQgcGxhbnMgYW5kIGNvbnRhY3Qgd2l0aCB0aGUgZW5lbXku
ICBGb3INCj4gb25lIHRoaW5nLCBJIHRoaW5rIHRoZSBMaW51eCBrZXJuZWwgd2lsbCBtb3Zl
IHRvbyBmYXN0IHRvIHBlcm1pdCBzdWNoIGENCj4gbGVpc3VyZWx5IGNhZGVuY2UuDQoNCkhl
aCwgYXQgdGhpcyBwb2ludCwgSSBidXJudCBteSBzaGlwcywgYnkgdXNpbmcgZW5oYW5jZWQg
VkxBIHN5bnRheC4gIElmIEkgDQpyZWxlYXNlIHRoYXQgYmVmb3JlIEdDQywgSSdtIGV4cGVj
dGluZyB0byBzZWUgYW4gYXZhbGFuY2hlIG9mIHJlcG9ydHMgYWJvdXQgaXQgDQooYW5kIEkg
YWxzbyBleHBlY3QgdGhhdCBHQ0MgYW5kIGZvcnVtcyB3aWxsIHJlY2VpdmUgYSBzaW1pbGFy
IGFtbW91bnQpLiAgU28geWVzLCANCkkgZXhwZWN0IHRvIHdhaXQgc29tZSBsb25naXNoIHRp
bWUuDQoNCj4gDQo+IEFsc28sIGFzIHNvb24gYXMgQmVydHJhbmQgYW5kIEkgY2FuIGdldCBn
cm9mZiAxLjIzIG91dFsxXSwgSSBhbSBob3BpbmcNCj4geW91IHdpbGwsIHNob3J0bHkgdGhl
cmVhZnRlciwgbWlncmF0ZSB0byB0aGUgbmV3IGBNUmAgbWFjcm8uDQoNCk5vdCBhcyBzb29u
IGFzIGl0IGdldHMgcmVsZWFzZWQsIGJlY2F1c2UgSSBleHBlY3QgKGF0IGxlYXN0IGEgZGVj
ZW50IGFtb3VudCBvZikgDQpjb250cmlidXRvcnMgdG8gYmUgYWJsZSB0byByZWFkIHRoZSBw
YWdlcyB0byB3aGljaCB0aGV5IGNvbnRyaWJ1dGUgdG8sIGJ1dCBhcyANCnNvb24gYXMgaXQg
bWFrZXMgaXQgaW50byBEZWJpYW4gc3RhYmxlLCB5ZXMsIHRoYXQncyBpbiBteSBwbGFucy4g
IFNvLCBpZiB5b3UgDQptYWtlIGl0IGJlZm9yZSB0aGUgZnJlZXplLCB0aGF0IG1lYW5zIGFy
b3VuZCBhIGNvdXBsZSBvZiBtb250aHMgZnJvbSBub3cuDQoNCj4gDQo+IDx0ZW50cyBmaW5n
ZXJzLCBsYXVnaHMgdmlsbGFpbm91c2x5Pg0KDQo8YWxzbyB0ZW50cyBmaW5nZXJzLCBsYXVn
aHMgdmlsbGFpbm91c2x5Pg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQo+IA0KPiBb
MV0gT25seSA2IFJDIGJ1Z3MgbGVmdCENCg0KTG9va3MgZ29vZCENCg0KQ2hlZXJzLA0KDQpB
bGV4DQoNCj4gDQo+ICAgICAgaHR0cHM6Ly9zYXZhbm5haC5nbnUub3JnL2J1Z3MvaW5kZXgu
cGhwP2dvX3JlcG9ydD1BcHBseSZncm91cD1ncm9mZiZzZXQ9Y3VzdG9tJnJlcG9ydF9pZD0y
MjUmc3RhdHVzX2lkPTEmcGxhbl9yZWxlYXNlX2lkPTEwMw0KDQotLSANCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------lpHACPHuBTUwPfwGqvyCRCMs--

--------------v7an0q7V57u4vzTwo4CofpJS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNs2XYACgkQnowa+77/
2zL54A//XHa9mHmsn8pLQReNHNBm5WAksW0ObQCi2ghToYiqHYxFr39008FG2xpE
JvDhW9dYKO2cKWvm3DuGb0C8aud2WA8n4mCZD/Gmp4fqvxQ4OqWa9xR+5PY4RFkY
U9VMfMFUhsHV+pSDF3rgdioGvtCe5J9KI/q1T6JOFpqsmSR/wxEGs8RVvrEdOWX1
kjExeVK5QgQuYje+ll2uEGuF3Z3z0p8Q5uYHBdeyCsMznhT+YzDJlhy+chWRBapm
oiEauvAxbktI1Lg+2G3BCfLM7TXCw9ikHYI0R3IMWkZYz/YPLmWYb8lpnCP1IzEE
3t+pLGWtc0/TUtgXrLmmMfgO8LOuEhMWLM5Ce2QPz57a9VaWoK3O3vQoWrIe4d9W
/a/F13tZfGCq5t2R+nW4W4SYguba86BwO+70+Qm8mMMzbfkPMseCIJbkjvC/H4Sz
VYhZyYtdNXLPd/lo3vA3zpXoURdkRFuagmUvJ2nPA++7ZqokS2ZaRrUFuxF8/4mJ
X59Sa/WnqJPMgscQ4tJMX+74OIyRL19L/8lbdMvCLZODVHtWFBY9bbHWA+qJuTCE
29AqhyGLjAU6Of4OgG1/a/NT6avL2m73nC7MU9WltRnI5Zv3sjwV3qngW3bQAOgD
+uAQji5pgr9S6kV+bTxSxhTn7dykMpWZmcuqqy6OtJU4yKlMPIY=
=B4Oj
-----END PGP SIGNATURE-----

--------------v7an0q7V57u4vzTwo4CofpJS--
