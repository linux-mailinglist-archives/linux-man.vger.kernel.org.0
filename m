Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E16BB64A615
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 18:43:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbiLLRnW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 12:43:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbiLLRnV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 12:43:21 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA919658A
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 09:43:19 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso5841593wme.5
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 09:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFOfwJuMkKD+DrzCV0rJyOJXWThiBgbRNG2CoqEYxsQ=;
        b=PLl+BKAiXlL3DEJazPkH22wieaFCjb/uDgbx6LKuWhXoFs+L35Vd/jil0tHZPwycQ8
         Euspw6D1r1iRxwcG1RgzN9eGCvroABIrPpVldlWb0X+SzEZiSDBMeg7RtN0FZoUflIby
         Y2dzPWZnrjzdAnXHKlXCJM6y0cgloUB3jOGq3rw1q7nu098Yh8C3kNv/CVYOgix1Kfy6
         qnsqsIOyuFAI6bW04KhU4dCRe4jmefvRydIGQBbdKbYVL2s0vWs7L3l3SXvGwe35IHJb
         o9sJkn0iqSQ82MOWjb8JRdR4euzPt97Izz2QwdtzkT+/RNCEWYOQz9FG9DpR/knzH5ds
         D6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sFOfwJuMkKD+DrzCV0rJyOJXWThiBgbRNG2CoqEYxsQ=;
        b=7OaWhffdhUrRLqTYNKiLBpYzQUFZ1Sk2ckXBXMb8zMspQZDREsAeYT4MXFW/JHp57+
         bP3VzPFyVRfcxKNJS6fJzXay8W0Lis998blWPPUIFYQzPJtbwmZ2pGl7G2YOc4x4mg2e
         wJ5GGP3S6oxNvIsCzi9fDeW68cauZOUowTWB99HmOqySvg9lGIX3ZTeZCpHGjJLtyUPb
         84JvnV/y0D7wo8gJKC3Fc9A8kSUrSIox/4C9M9U9AygnlD7VCt8U/hDY7mf2bPlSWIAN
         wqEQnyZbuk4huD6yRJlWWUkT+J4K9Z0YdeSQ5ibK128r0MzGvd6GzWPNlJ3IsFHZD0Ht
         4WTg==
X-Gm-Message-State: ANoB5pkWgA+el/2rdhA1pNXMpw3hR26qSQi5HOpiB6cNTvFmDKMsxJDR
        wvwyUPDKdC+mrSlzOvvH0nkPxk2lhxg=
X-Google-Smtp-Source: AA0mqf60wmZNNGzo14+zSIl8fOcY65RtK+6dFIvjki2Z3r/r4ZnlArNwbgnsJs1rE05ge/U3MS6Yug==
X-Received: by 2002:a05:600c:1f09:b0:3d0:7d89:2256 with SMTP id bd9-20020a05600c1f0900b003d07d892256mr13629018wmb.13.1670866998423;
        Mon, 12 Dec 2022 09:43:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o19-20020a5d58d3000000b002421a8f4fa6sm9139602wrf.92.2022.12.12.09.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 09:43:18 -0800 (PST)
Message-ID: <7ab2036d-4fc5-76e7-92fc-03beb88cbf9b@gmail.com>
Date:   Mon, 12 Dec 2022 18:43:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Systemctl man page
Content-Language: en-US
To:     Josh Gentry <josh.gentry@cargt.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n9jncNZLS5s1zAw4J5xQWXo0"
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
--------------n9jncNZLS5s1zAw4J5xQWXo0
Content-Type: multipart/mixed; boundary="------------e0nvcr3p00i40bJP6lLB68YZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Josh Gentry <josh.gentry@cargt.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <7ab2036d-4fc5-76e7-92fc-03beb88cbf9b@gmail.com>
Subject: Re: Systemctl man page
References: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
In-Reply-To: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>

--------------e0nvcr3p00i40bJP6lLB68YZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gSm9zaCwNCg0KT24gMTIvMTIvMjIgMTg6MzgsIEpvc2ggR2VudHJ5IHdyb3RlOg0K
PiBJbiB0aGUgc3lzdGVtY3RsIG1hbiBwYWdlLCB1bmRlcjoNCj4gDQo+ICpiaW5kICovVU5J
VCBQQVRIL1svUEFUSC9dDQo+IA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQmluZC1tb3Vu
dHMgYSBmaWxlIG9yIGRpcmVjdG9yeSBmcm9tIHRoZSBob3N0IGludG8gdGhlDQo+IA0KPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3BlY2lmaWVkIHVuaXQncyBtb3VudCBuYW1lc3BhY2Uu
IFRoZSBmaXJzdCBwYXRoIGFyZ3VtZW50IGlzDQo+IA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdGhlIHNvdXJjZSBmaWxlIG9yIGRpcmVjdG9yeSBvbiB0aGUgaG9zdCwgdGhlIHNlY29u
ZCBwYXRoDQo+IA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJndW1lbnQgaXMgdGhlIGRl
c3RpbmF0aW9uIGZpbGUgb3IgZGlyZWN0b3J5IGluIHRoZSB1bml0J3MNCj4gDQo+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBtb3VudCBuYW1lc3BhY2UuIFdoZW4gdGhlIGxhdHRlciBpcyBv
bWl0dGVkLCB0aGUgZGVzdGluYXRpb24NCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBw
YXRoIGluIHRoZSB1bml0J3MgbW91bnQgbmFtZXNwYWNlIGlzIHRoZSBzYW1lIGFzIHRoZSBz
b3VyY2UNCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYXRoIG9uIHRoZSBob3N0LiBX
aGVuIGNvbWJpbmVkIHdpdGggdGhlICotLXJlYWQtb25seSAqc3dpdGNoLA0KPiANCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgYSByZWFkeS1vbmx5IGJpbmQgbW91bnQgaXMgY3JlYXRlZC4g
V2hlbiBjb21iaW5lZCB3aXRoIHRoZQ0KPiANCj4gKi0tbWtkaXIgKnN3aXRjaCwgdGhlIGRl
c3RpbmF0aW9uIHBhdGggaXMgZmlyc3QgY3JlYXRlZCBiZWZvcmUNCj4gDQo+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB0aGUgbW91bnQgaXMgYXBwbGllZC4NCj4gDQo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBOb3RlIHRoYXQgdGhpcyBvcHRpb24gaXMgY3VycmVudGx5IG9ubHkgc3Vw
cG9ydGVkIGZvciB1bml0cw0KPiANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoCDCoHRoYXQgcnVu
IHdpdGhpbiBhIG1vdW50IG5hbWVzcGFjZSAoZS5nLjogd2l0aCAqUm9vdEltYWdlPSosDQo+
IA0KPiAqUHJpdmF0ZU1vdW50cz0qLCBldGMuKS4gVGhpcyBjb21tYW5kIHN1cHBvcnRzIGJp
bmQtbW91bnRpbmcNCj4gDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkaXJlY3Rvcmllcywg
cmVndWxhciBmaWxlcywgZGV2aWNlIG5vZGVzLCAqQUZfVU5JWCAqc29ja2V0DQo+IA0KPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbm9kZXMsIGFzIHdlbGwgYXMgRklGT3MuIFRoZSBiaW5k
IG1vdW50IGlzIGVwaGVtZXJhbCwgYW5kIGl0DQo+IA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaXMgdW5kb25lIGFzIHNvb24gYXMgdGhlIGN1cnJlbnQgdW5pdCBwcm9jZXNzIGV4aXN0
cy4gTm90ZQ0KPiANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoYXQgdGhlIG5hbWVzcGFj
ZSBtZW50aW9uZWQgaGVyZSwgd2hlcmUgdGhlIGJpbmQgbW91bnQgd2lsbA0KPiANCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGJlIGFkZGVkIHRvLCBpcyB0aGUgb25lIHdoZXJlIHRoZSBt
YWluIHNlcnZpY2UgcHJvY2VzcyBydW5zLg0KPiANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
IE90aGVyIHByb2Nlc3NlcyAodGhvc2UgZXhlY2VjdXRlZCBieSAqRXhlY1JlbG9hZD0qLA0K
PiANCj4gKkV4ZWNTdGFydFByZT0qLCBldGMuKSBydW4gaW4gZGlzdGluY3QgbmFtZXNwYWNl
cy4NCj4gDQo+IEkgYmVsaWV2ZSDigJhleGlzdHPigJkgc2hvdWxkIGJlIOKAmGV4aXRz4oCZ
IGJ1dCB0aGlzIG1heSBqdXN0IGJlIHdlaXJkIGdyYW1tYXIgYXMgd2VsbC4NCj4gDQo+IEkg
dXNlZCB0aGlzIGxpbmsgdG8gcmVmZXJlbmNlIHRoZSBzeXN0ZW1jdGwgbWFuIHBhZ2U6DQo+
IA0KPiBodHRwczovL21hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW4xL3N5c3RlbWN0bC4x
Lmh0bWwgDQo+IDxodHRwczovL21hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW4xL3N5c3Rl
bWN0bC4xLmh0bWw+DQo+IA0KPiBUaGFua3MgZm9yIHlvdXIgZXhjZWxsZW50IG1hbiBwYWdl
cyENCg0KVGhhbmsgeW91ciBmb3IgeW91ciByZXBvcnQhDQoNCkluIHRoaXMgY2FzZSwgaXQn
cyBub3QgYSBwYWdlIHByb3ZpZGVkIGJ5IHRoZSBMaW51eCBtYW4tcGFnZXMgcHJvamVjdCwg
YnV0IG9uZSANCnByb3ZpZGVkIGJ5IHRoZSBzeXN0ZW1kIHByb2plY3QsIHNvIHlvdSBzaG91
bGQgcmVwb3J0IGl0IHRvIHRoZW0uICBTZWUgdGhlIA0KY29sb3Bob24gb2YgdGhlIHBhZ2U6
DQoNCg0KQ09MT1BIT04gICAgICAgICB0b3ANCg0KICAgICAgICBUaGlzIHBhZ2UgaXMgcGFy
dCBvZiB0aGUgc3lzdGVtZCAoc3lzdGVtZCBzeXN0ZW0gYW5kIHNlcnZpY2UNCiAgICAgICAg
bWFuYWdlcikgcHJvamVjdC4gIEluZm9ybWF0aW9uIGFib3V0IHRoZSBwcm9qZWN0IGNhbiBi
ZSBmb3VuZCBhdA0KICAgICAgICDin6hodHRwOi8vd3d3LmZyZWVkZXNrdG9wLm9yZy93aWtp
L1NvZnR3YXJlL3N5c3RlbWTin6kuICBJZiB5b3UgaGF2ZQ0KICAgICAgICBhIGJ1ZyByZXBv
cnQgZm9yIHRoaXMgbWFudWFsIHBhZ2UsIHNlZQ0KICAgICAgICDin6hodHRwOi8vd3d3LmZy
ZWVkZXNrdG9wLm9yZy93aWtpL1NvZnR3YXJlL3N5c3RlbWQvI2J1Z3JlcG9ydHPin6kuDQog
ICAgICAgIFRoaXMgcGFnZSB3YXMgb2J0YWluZWQgZnJvbSB0aGUgcHJvamVjdCdzIHVwc3Ry
ZWFtIEdpdCByZXBvc2l0b3J5DQogICAgICAgIOKfqGh0dHBzOi8vZ2l0aHViLmNvbS9zeXN0
ZW1kL3N5c3RlbWQuZ2l04p+pIG9uIDIwMjEtMDgtMjcuICAoQXQgdGhhdA0KICAgICAgICB0
aW1lLCB0aGUgZGF0ZSBvZiB0aGUgbW9zdCByZWNlbnQgY29tbWl0IHRoYXQgd2FzIGZvdW5k
IGluIHRoZQ0KICAgICAgICByZXBvc2l0b3J5IHdhcyAyMDIxLTA4LTI3LikgIElmIHlvdSBk
aXNjb3ZlciBhbnkgcmVuZGVyaW5nDQogICAgICAgIHByb2JsZW1zIGluIHRoaXMgSFRNTCB2
ZXJzaW9uIG9mIHRoZSBwYWdlLCBvciB5b3UgYmVsaWV2ZSB0aGVyZQ0KICAgICAgICBpcyBh
IGJldHRlciBvciBtb3JlIHVwLXRvLWRhdGUgc291cmNlIGZvciB0aGUgcGFnZSwgb3IgeW91
IGhhdmUNCiAgICAgICAgY29ycmVjdGlvbnMgb3IgaW1wcm92ZW1lbnRzIHRvIHRoZSBpbmZv
cm1hdGlvbiBpbiB0aGlzIENPTE9QSE9ODQogICAgICAgICh3aGljaCBpcyBub3QgcGFydCBv
ZiB0aGUgb3JpZ2luYWwgbWFudWFsIHBhZ2UpLCBzZW5kIGEgbWFpbCB0bw0KICAgICAgICBt
YW4tcGFnZXNAbWFuNy5vcmcNCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------e0nvcr3p00i40bJP6lLB68YZ--

--------------n9jncNZLS5s1zAw4J5xQWXo0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOXaDUACgkQnowa+77/
2zJxhA/+IJlaeC3vubvnqzAbNB8sPbogtAYGjigvkLPp4c6j9Yw17or5PlN2MfCf
+oQXaoL+4mpGtOegYY77k8QPqL2WajgXFSWAekNubbCne58Ik9FGBAvZkpAt3baS
qt3Df3iP3zpyQCjdz2Z1+tLyJt915J/PwamiIOvkN68iywelqx2nSqyxWlnnDhV6
V4447jSpTZ6vosA1n1imTnBfX2gtlWvhZCCpi8ev5MvtTp50sLcbhZsbHn+qEfgQ
cWNiXSdjsFgBIwy/YYCX7lgnBkVGsYhvglDqATs+VtJ+In+WaDM2tKJUr3rsOV5R
78AG9BZkbuHO4Y8f0uhm8m/MrkRob5K2l5+tmNyZUK69mj4PBhVu5RKeygT469F+
Zos2LjrhYyUdJODb3i9CkugtaSfKvvTcnmbfa2+6bHznNGvptVC9cZU/wwnehcod
rovN21s1SnQ1LC7ElI8+uuecorA8bZK1qWxGJM+NhfTMHI9DPx3Mmd7zRw187xRg
b1z79j0YV65MlaTHhs4dBbb5/799Hzv2QnXHZJkDS6PdAahLKHfnRQeIELOMma0y
tv+V7apua15PTJV9bsefacndrNJXfy6DLO9ywc9q6nG6xfCyV16UTHAOG4WM+yzf
K9eJDOKOjwPC15R3MaIIgp8svWR2y4h0lHlQBXwT968HI/HncDU=
=YxuS
-----END PGP SIGNATURE-----

--------------n9jncNZLS5s1zAw4J5xQWXo0--
