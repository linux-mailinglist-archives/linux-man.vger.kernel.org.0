Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075F9679E33
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 17:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjAXQIU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 11:08:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbjAXQIT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 11:08:19 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A13830CB
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:08:18 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id g10so11841954wmo.1
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAt5JQ8lh5opK2Lz7/zy0up/6LH1cVRLoXS1vw8cyZE=;
        b=POQygDKCcUu2X+F0OV9l85x3FqxR0e2VonB1ulOqA1G3thzi35yhchjU+9n+blLbgN
         CVGm0TXa7gfo2EbUU+BTHTHzh6y9c05a2Prurn3nqc060CaRR0qOkf/vEItUFyt3sh+b
         L5DuPO8p7TswhOahQb6vITdsHsfLnvUzF5zlBDWA7+WusUQlkCBICCOz9cO3Iib25/3g
         YwVwvdWOeP+lgHPbJ4sgrNSFa2WNHzed4HX5YLOgRkSAqS4KIvBALvHiQUzJCjyuChk0
         k/75jr0MymDsNrFnkeiuvUYNNLTX9QaT/ZfQCXaiX1F1iwZorI5LYyaNgPyOFYDS9Dun
         xb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VAt5JQ8lh5opK2Lz7/zy0up/6LH1cVRLoXS1vw8cyZE=;
        b=Y+rHA0Bz1cADq2zIxiOWJvtONCimTj1QHcv0f4d6Oh2145dxhdAsec9Dgobpvy3qFO
         J2KLnUlauiH8GXJajAztQOKulJoeDsB1byJgS/9jr8E/wMaYbDojUmKuWP6hTfCuFdQU
         atnDir+g1PnUMPZdqy7b37BqO4K30QGeGURyvfQMln8hpziSqIsi7PlMWLsaGQvPJG7Y
         XUMDltVOptKlTEuH5IULTPPlz+YiSvK+F11HqsrXDb0rjLbQn4UH5CrAAJA4i+hH7Duv
         frxXlLwRj6sW2O7jvhitDdAP0bpVLlKaYyNwsqQv9Xg29ElUjLG6MVTzkfsNNsNc/SoV
         kxqQ==
X-Gm-Message-State: AFqh2krU9oct9Q6S1ihrZT/vxqN9wUoxZ7xFtE228V73KLxXZrGb/ck0
        ZaLZcxnNQRsFdDXhDVSQzkKhTvlIxKc=
X-Google-Smtp-Source: AMrXdXtbqioc3ktNizACUEGoXVVIsgVHecWreq6/S3ye38RuFZWvarpQGk1r16InwMrqABoq4/UgxA==
X-Received: by 2002:a05:600c:1695:b0:3da:f651:8ccc with SMTP id k21-20020a05600c169500b003daf6518cccmr28878778wmn.4.1674576496895;
        Tue, 24 Jan 2023 08:08:16 -0800 (PST)
Received: from [192.168.43.80] ([46.222.154.138])
        by smtp.gmail.com with ESMTPSA id i10-20020a05600c070a00b003db11dfc687sm2266026wmn.36.2023.01.24.08.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 08:08:16 -0800 (PST)
Message-ID: <b1948df5-0634-41af-794d-a7404503d9e9@gmail.com>
Date:   Tue, 24 Jan 2023 17:08:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page namespaces.7
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
 <20230122210207.w25k5br5idyna3c2@illithid>
 <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
 <20230123084555.5oqiuzabsjpv2yas@illithid>
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230123084555.5oqiuzabsjpv2yas@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X2aGSOSU2rzF8BaPqyXPbmvo"
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
--------------X2aGSOSU2rzF8BaPqyXPbmvo
Content-Type: multipart/mixed; boundary="------------FmNep7sGYgId5WG45FjU0MXc";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <b1948df5-0634-41af-794d-a7404503d9e9@gmail.com>
Subject: Re: Issue in man page namespaces.7
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
 <20230122210207.w25k5br5idyna3c2@illithid>
 <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
 <20230123084555.5oqiuzabsjpv2yas@illithid>
In-Reply-To: <20230123084555.5oqiuzabsjpv2yas@illithid>

--------------FmNep7sGYgId5WG45FjU0MXc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8yMy8yMyAwOTo0NSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCwNCj4gDQo+IEF0IDIwMjMtMDEtMjJUMjI6MTE6MDYrMDEwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxLzIyLzIzIDIyOjAyLCBHLiBCcmFu
ZGVuIFJvYmluc29uIHdyb3RlOg0KPj4+IEkgd291bGQgdXNlIFxmUCBpbnN0ZWFkIG9mIFxm
UiwgdGhpcyB3YXkgeW91IHJldHVybiB0byB0aGUNCj4+PiAicHJldmlvdXMiDQo+Pg0KPj4g
QWhoLCB5ZXMsIHRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhhdCEgIFNsZWVwaW5nIDMgaG91cnMg
aXMgZGVmaW5pdGVseQ0KPj4gbm90IGdvb2QgZm9yIHRoZSBicmFpbiA6UA0KPiANCj4gQ2Vy
dGFpbmx5IG5vdC4gIEdvb2Qgc2VsZi1jYXJlIGtlZXBzIHRoZSBlbmdpbmVlcidzIGJyYWlu
IHN1cHBsZS4gIDopDQoNClllYWgsIGJ1dCBwbGF5aW5nIE11bmNoa2luIHRpbGwgeW91IHJl
YWxpemUgaXQncyA2IEFNIGlzIHNvbyBmdW4gOlANCg0KPGh0dHBzOi8vbXVuY2hraW4uZ2Ft
ZS8+DQoNCj4gDQo+Pj4gQnV0IEkgd291bGQgYWxzbyBxdW90ZSBtdWx0aS13b3JkIGFyZ3Vt
ZW50cyB0byBfYW55XyBtYW4oNykgbWFjcm8uDQo+Pg0KPj4gV2h5IGlzIGl0PyAgSSByZW1l
bWJlciB5b3UgbWVudGlvbmVkIHRoYXQsIGJ1dCB3aGF0J3MgdGhlIHdpbj8NCj4gDQo+IEl0
J3MgbW9yZSBwb3J0YWJsZS4gIEFUJlQgdHJvZmYgYW5kIGl0cyBkZXNjZW5kYW50cyAoZXhj
ZXB0IGZvciBIZWlybG9vbQ0KPiBEb2N0b29scyB0cm9mZikgc3VwcG9ydCBvbmx5IDkgbWFj
cm8gYXJndW1lbnRzIGF0IG1vc3QuICBXb3JzZSwgdGhlIEFUJlQNCj4gbWFuKDcpIG1hY3Jv
cyBhbmQgbW9zdCBkZXNjZW5kYW50cyBzdXBwb3J0IG9ubHkgX3NpeF8uDQoNCkl0J3MgaW50
ZXJlc3RpbmcgdG8gY29tYmluZSBhbiBhZHZpY2UgZm9yIHBvcnRhYmlsaXR5IHdpdGggYSBz
dWdnZXN0aW9uIA0KZm9yIHdoZW4geW91IGRvbid0IGNhcmUgYWJvdXQgdGhlIHBvcnRhYmls
aXR5IDpQDQoNCi5TUyAiVGhlIFxmW0ldL3Byb2Mvc3lzL3VzZXJcZltdIGRpcmVjdG9yeSIN
Cg0KPiANCj4gV2hlbiBkb2luZyBtYWludGVuYW5jZSwgaXQncyBlYXN5IHRvIGZvcmdldCB0
aGF0Lg0KPiANCj4gQnV0IGV2ZW4gaW4gYSBncm9mZi1vbmx5IHdvcmxkLCBJIHdvdWxkIHJl
Y29tbWVuZCB0aGUgcHJhY3RpY2UgYXMgZ29vZA0KPiBzdHlsZSBiZWNhdXNlIGl0IGxlYXZl
cyByb29tIHRvIGV4cGFuZCB0aGUgc3ludGF4IG9mIHNvbWUgbWFjcm9zLg0KDQpZZWFoLCBp
dCdzIG1vc3RseSBncm9mZi9tYW5kb2Mgd29ybGQgaGVyZSwgc2luY2UgSSBwbGFuIHRvIHVz
ZSAuTVIgc29vbi4NCg0KPiANCj4gQWRtaXR0ZWRseSBJIGRvbid0IHNlZSBhbnkgcHJvbWlz
aW5nIHBsYWNlcyB3aGVyZSB3ZSBtaWdodCBkbyB0aGF0IGluDQo+IG1hbig3KSB0byBhbnkg
bWFjcm9zIHRoYXQgYWxyZWFkeSBhY2NlcHQgZm9ybWF0dGFibGUgdGV4dCBhcyBhcmd1bWVu
dHMuDQo+IA0KPiBJIHN0aWxsIHRoaW5rIGl0J3MgYSBnb29kIGlkZWEgc3R5bGUtd2lzZSBi
ZWNhdXNlIHRoZSBtYW4oNykgYXV0aG9yDQo+IHNob3VsZCBrZWVwIHRoZSBjb3VudCBvZiB3
b3JkcyBmb2xsb3dpbmcgYSBtYWNybyBjYWxsIGluIG1pbmQsDQo+IGVzcGVjaWFsbHkgaWYg
dGhleSB3YW50IHRvIGVmZmVjdGl2ZWx5IHVzZSB0aGUgZm9udCBzdHlsZSBhbHRlcm5hdGlv
bg0KPiBtYWNyb3MgKC5CSSwgLkJSLCAuSUIsIC5JUiwgLlJCLCAuUkkpLg0KDQpJIGRvIGF2
b2lkICciJyB3aGVuIHVubmVjZXNzYXJ5IGZvciBmb250IG1hY3Jvcywgc28gSSBwcmVmZXIg
bm90IGRvaW5nIA0KaXQgaGVyZSBlaXRoZXIgKGF0IGxlYXN0IG5vdCBmb3IgdGhpcyByZWFz
b24pLg0KDQo+IA0KPiBJbiBtZG9jKDcpIGFyZ3VtZW50IGNvdW50IG1ha2VzIGEgZGlmZmVy
ZW5jZSBkdWUgdG8gdGhlIHBhY2thZ2Uncw0KPiB1bmlxdWUgcmVjdXJzaXZlIGFyZ3VtZW50
IGludGVycHJldGF0aW9uIGZlYXR1cmUuICBTdGlsbCwgd2hpbGUgdGhpcyB3YXMNCj4gYSBt
ZWFzdXJhYmxlIHBoZW5vbWVub24gMzAgeWVhcnMgYWdvLCBpdCBtYXkgbm90IGJlIHRvZGF5
LiAgKFRoZSB3aG9sZQ0KPiByZWFzb24gImNhdCBwYWdlcyIgZXhpc3QgaW4gbWFuKDEpIGlz
IHRoYXQgdGhlIHRpbWUgc3BlbnQgYnkgdGhlDQo+IGZvcm1hdHRlciBvbiBhIGRvY3VtZW50
IHdhcyBzaWduaWZpY2FudCB0aGVuOyBpdCBpcyBuZWdsaWdpYmxlIG5vdy4pDQo+IA0KPiBJ
IHdpbGwgYWRtaXQgcmlnaHQgbm93IHRoYXQgSSBkb24ndCBmb2xsb3cgdGhpcyBydWxlIHJp
Z2lkbHkgbXlzZWxmIGluDQo+IGdyb2ZmJ3MgbWFuIHBhZ2VzIHdoZW4gaXQgY29tZXMgdG8g
YElgIGNhbGxzLiAgSSBtYXkgZml4IHRoYXQgYXQgc29tZQ0KPiBwb2ludC4gIChJZiBJIGRp
ZCBzbywgaXQgd291bGQgYWxpZ24gZG9jL21zLm1zIGJldHRlciB3aXRoIGdyb2ZmX21zKDcp
LikNCj4gDQo+IFNvIGl0J3Mgbm90IGEgYmlnIGRlYWwsIGJ1dCB0aGVyZSdzIHNvIG11Y2gg
aWdub3JhbmNlIGFib3V0IG1hbig3KSBvdXQNCj4gdGhlcmUgdGhhdCBpdCdzIGEgZ29hbCBv
ZiBtaW5lIHRvIG1ha2UgdGhlIGxhbmd1YWdlIGVhc2llciB0byBhY3F1aXJlLg0KPiANCj4+
Pj4gKy5TUyAiVGhlIFxmW0ldL3Byb2Mvc3lzL3VzZXJcZltdIGRpcmVjdG9yeSINCj4+DQo+
PiBJbnRlcmVzdGluZy4gIEknbGwgY29uc2lkZXIgdGhhdCBmb3IgdGhlIGxvbmcgdGVybS4g
IEhvd2V2ZXIsIGZvciBub3cNCj4+IEknbGwga2VlcCBcZlAgc3R5bGUuDQo+IA0KPiBObyB3
b3JyaWVzLg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCg==

--------------FmNep7sGYgId5WG45FjU0MXc--

--------------X2aGSOSU2rzF8BaPqyXPbmvo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPQAmcACgkQnowa+77/
2zKlgBAApul182lVRuM5F2hTr2LR2Cx7EiTANXO6j/HDSdppZAP86HS0S0IN+TKi
TXwgGPoQ3PHKsh4dqQkbQMzRjKrxC28s2GRxfxEWCr27KIrYPEl6JIuzusAFYCOV
gXmC9/w5wJJAUgWaEExv1RckFy+hQnFqkbbiMvltk0JmmeM+iwgzUCWyNXhi5FLU
BYUrxEDi+O8QTgSm3qhw+DIZK5ecgDG1lKBxFUQ1J8V4s57c6CZ65aDp3JUpdJDY
AsBXupsIip82Xuk6kwr9STsAGIReqwE8Wv4bBFvR/LjTMIDmbq6i5uO1zx8QVfrQ
jtPUX42po0rV3XaiPLJNM5gUq8cQyltJShAm9xQi9GXKj0s4hcia/9zuKccPZZUN
S7p6mqw5vV6R5NACNm7lG78/yJw1qTcNmpQkbugXNnivXGQyLaGWmCJYo1vRanFc
Av+Qff/nZNR3vBG97i5ldN9kiOnYrs4L4eEvAIUOcnAW2Kj7y2L0LNzTKw26m773
XUrZzaQx6uo6MT0GOjEfgbnixqKePdlWD5x8A2pomofTJ1mmloqbcFaL+g6SM2NJ
gxpH4l1IRaZoqEkZmN/Tbc1yduKMqmU1luo61vznwyrrbsK/TYtEPPeedUkHV6FE
SN/WiozngDP871SiVhw+1BPbN2GPA9Z3u32jVq6hJdQqgal6qG8=
=Qo6N
-----END PGP SIGNATURE-----

--------------X2aGSOSU2rzF8BaPqyXPbmvo--
