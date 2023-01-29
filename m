Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6BDD68012A
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 20:29:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbjA2T32 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 14:29:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbjA2T31 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 14:29:27 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A804196A1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 11:29:26 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id a3so2562687wrt.6
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 11:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MbBw3XUbzDdhW68bpIyJQxuJSXl84UK7VS323E1x+v4=;
        b=CORSq5JddcMnOKx7PSFKinoXkvIaNq+WwU8PAMoMxNvobZVDPgHj5B/OU0fVqVxfhj
         Co0SRFouTkiObQcdzmidvC/fjL+a5HhMeBvvP9ZqqeweeM2+YbZwkCgsha9tXWrPtdhp
         kR/IRQF4/TGHAMDjN8/poxyCRFGWOvoe0X1ajUlsXYApGRy/tmG/zS5Ga1hllNW/etjT
         yf+8usi0tCrLG92j25V/Kfm0FzBuuVR5wMYmzBPqlCK/IawrAEYwwhExv5hRlFmnfhNk
         JWKxCcjepp5CVcHq4o5MheQ9anMCFBxQ/fZMo1tR9olN/4OfqDQZOpBKEF80PYLmbnzU
         uk1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MbBw3XUbzDdhW68bpIyJQxuJSXl84UK7VS323E1x+v4=;
        b=s9GBzJ87MRcINJiy/6T0tfRzvncvATVyy/mJ6GTd+2Xaer6l3Jut0f1xaDG3tLqSnU
         zSfMDN+AesZ0szBHljQa45+WNbvlpmzc5PwLBrlo15JRnCdN2lH1+NAaNQXRz+gltMZj
         KRzflKe9b+xUlIX+X1LOZOu6eaawHrOFdLTt3sAS8TP/Ly5R4yzZsBJeaupNrVuWq3jI
         BB0MADpPVrpuv+me45STCNuB73XIpWbreqTIMr2DkVb2gPqsnkIv7JlAnBwHDlW+RQgA
         Vy5UodkA1M99YBuXLXJ37BDpLeFipHVOyov01hM/EMvxnQpvHun5Y9SNQW6eII/u+g5W
         wgVQ==
X-Gm-Message-State: AO0yUKVBEE9aAn9k8NOqpRQCJMZn617eEZb139gmwDbaR4qkJwOoxj78
        SuHoTNSAcr9k/TPncdjWJsc=
X-Google-Smtp-Source: AK7set+oE4DGk3KYaIvjrloBwm+FFjiduEmi40BJCpmuPtDtqkU5CsulLX1nb0x/1vFFQRvD+WNrlw==
X-Received: by 2002:adf:c585:0:b0:2bf:b5e7:7be2 with SMTP id m5-20020adfc585000000b002bfb5e77be2mr16648692wrg.71.1675020564655;
        Sun, 29 Jan 2023 11:29:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b14-20020a05600010ce00b0029e1aa67fd2sm9903617wrx.115.2023.01.29.11.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 11:29:23 -0800 (PST)
Message-ID: <87dbeee1-5f7a-2490-091c-2efd7ba2a25b@gmail.com>
Date:   Sun, 29 Jan 2023 20:29:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Bernd Petrovitsch <bernd@petrovitsch.priv.at>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
 <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
 <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------v2QImRpLsdauW3x05aiaCwwZ"
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
--------------v2QImRpLsdauW3x05aiaCwwZ
Content-Type: multipart/mixed; boundary="------------hM0QzbD3WOeCj45oWnDlVNI2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bernd Petrovitsch <bernd@petrovitsch.priv.at>,
 Stefan Puiu <stefan.puiu@gmail.com>, Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <87dbeee1-5f7a-2490-091c-2efd7ba2a25b@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
 <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
 <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>
In-Reply-To: <a2a3eeba-8292-9759-f29c-205a49f2a9c9@petrovitsch.priv.at>

--------------hM0QzbD3WOeCj45oWnDlVNI2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQmVybmQsDQoNCk9uIDEvMjkvMjMgMjA6MjAsIEJlcm5kIFBldHJvdml0c2NoIHdyb3Rl
Og0KPiBIaSBhbGwhDQo+IA0KPiBPbiAyOS8wMS8yMDIzIDE5OjM1LCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4gWy4uLl0NCj4+IE9uIDEvMjkvMjMgMTc6NDUsIFN0ZWZhbiBQdWl1
IHdyb3RlOg0KPiBbLi4uXQ0KPj4+IE9uIFN1biwgSmFuIDIyLCAyMDIzIGF0IDk6MzkgUE0g
SGVsZ2UgS3JldXR6bWFubiA8ZGViaWFuQGhlbGdlZmplbGwuZGU+IHdyb3RlOg0KPiBbLi4u
XQ0KPj4+PiAiTGF0aW4tMSBjb3ZlcnMgbWFueSBXZXN0IEV1cm9wZWFuIGxhbmd1YWdlcyBz
dWNoIGFzIEFsYmFuaWFuLCBCYXNxdWUsIg0KPj4+PiAiRGFuaXNoLCBFbmdsaXNoLCBGYXJv
ZXNlLCBHYWxpY2lhbiwgSWNlbGFuZGljLCBJcmlzaCwgSXRhbGlhbiwgTm9yd2VnaWFuLCIN
Cj4+Pj4gIlBvcnR1Z3Vlc2UsIFNwYW5pc2gsIGFuZCBTd2VkaXNoLsKgIFRoZSBsYWNrIG9m
IHRoZSBsaWdhdHVyZXMgRHV0Y2ggxLIvxLMsIg0KPj4+PiAiRnJlbmNoIMWTLCBhbmQgb2xk
LXN0eWxlIOKAnkdlcm1hbuKAnCBxdW90YXRpb24gbWFya3Mgd2FzIGNvbnNpZGVyZWQgdG9s
ZXJhYmxlLiINCj4+Pg0KPj4+IEEgYml0IHdlaXJkIHRvIGluY2x1ZGUgQWxiYW5pYW4gaW4g
V2VzdCBFdXJvcGVhbiBsYW5ndWFnZXMsIGlzbid0IGl0Pw0KPj4+IE1heWJlIHRoZSB0ZXh0
IGNvdWxkIGJlIHJld29ya2VkIHRvOg0KPj4+DQo+Pj4gwqDCoCAibWFueSBXZXN0IEV1cm9w
ZWFuIGxhbmd1YWdlcyBzdWNoIGFzIEJhc3F1ZSwgRGFuaXNoLCBbLi4uIG90aGVyDQo+Pj4g
bGFuZ3VhZ2VzIC4uLl0gYW5kIGFsc28gQWxiYW5pYW4uIg0KPj4NCj4+IEknZCByYXRoZXIg
cmVtb3ZlIHRoZSAiV2VzdCIgYWRqZWN0aXZlIGZyb20gRXVyb3BlLsKgIEl0J3Mgc2ltcGxl
ci7CoCBEb2VzIGl0IA0KPj4gc291bmQgcmVhc29uYWJsZSB0byB5b3U/DQo+IA0KPiBBbmQg
aXQncyB3YXkgbW9yZSBhY2N1cmF0ZToNCj4gLSBBbGJhbmlhbiBpcyBCYWxrYW4uDQo+IC0g
SWNlbGFuZGljLCBOb3J3ZWdpYW4gYW5kIFN3ZWRpc2ggaXMgU2NhbmRpbmF2aWFuLg0KPiAt
IEl0YWx5IGlzICh1c3VhbGx5KSBzb3V0aGVybiBFdXJvcGUuDQo+IC0gRmFyb2VzZSBpcyBw
cm9wYWJseSBhbHNvIFNjYW5kaW5hdmlhbi4NCj4gLSBXaGVyZSBpcyBhY3R1YWxseSBHYWxp
Y2lhbiBzcG9rZW4/IEluIHRoZSBub3J0aC13ZXN0IG9mIFNwYWluPw0KDQpZZXAsIEdhbGlj
aWFuIGlzIHRoZSBsYW5ndWFnZSBzcG9rZW4gaW4gR2FsaWNpYSwgaW4gdGhlIG5vcnRoLXdl
c3Qgb2Ygc3BhaW4uIA0KSXQncyBhIGxhbmd1YWdlIHZlcnkgc2ltaWxhciB0byBQb3J0dWd1
ZXNlLg0KDQpXaWxsIGZpeCB0aGVuLg0KDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+ICDCoMKg
wqDCoEJlcm5kDQo+IA0KPiBQUzogS2VlbiB0byBsZWFybiBzb21ldGhpbmcuDQoNCkNoZWVy
cywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------hM0QzbD3WOeCj45oWnDlVNI2--

--------------v2QImRpLsdauW3x05aiaCwwZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPWyQsACgkQnowa+77/
2zIvsA/+JZw6zVt912+e02WckmhBQfNz4DkJLJOLq1DgU8Sov2DrnrIZkrEcBl7t
uYNg2EvOvLEaeyqaG2IkPy3hTsUyKa6LsjDjwSbfYJMD90VpxCiPIvpiaJZiDWn8
wU7hu9ZleMmuNiBQU6pVEsx5pQ7pPy8MZBGgzbEqhOdX5KCveHbVrHkIkVccP/nE
45IwllURzUCz8U2eTICDjzlK62e1nrAQfz3MKhRwBS8Blj3VbfCxcd053vb5kPyO
O2ar1sEsevsGn+uBQPzvwfFaVCpPqZCpfmAHgvW2U1sZcEZUk7yOqEueiybDVP/4
5F1Gyguh5R7whG3HhlfMq3OqNDAE71e9lZqG717FCVwM0RXMbex7hhJ1AcXXGGsG
0vN/XPwJhx6IKEN8JhIHq4aaMXTh5PrSS2Q3GcTsFJPLsTnfPcN6AR8dXHDJ2g4Y
7HgD9xbzqzg+jROcJfo6N+pk6Hm1F+vMXN1dy4QUUOwT+gHmsH5Aw1Wij+Renkii
99OzF7htiQcB3204ZxyiPLY5a7SYbBAD+PWGLB/5QoAjfz7N0wkQGy3Wl1czH6pY
FsBcgFKgV78e+ukkpCh0gEcFxiVhALrkmNP9dopoFsjpnI00ymExGDPxVvsOw5Yj
m2KFRv/ueAPzhxZceA+TMbHLyVA2vcM03OUdGGdL2RYJ2zOasJs=
=mDtj
-----END PGP SIGNATURE-----

--------------v2QImRpLsdauW3x05aiaCwwZ--
