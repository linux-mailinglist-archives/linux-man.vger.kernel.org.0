Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0703F65BD95
	for <lists+linux-man@lfdr.de>; Tue,  3 Jan 2023 11:03:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233057AbjACKDC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Jan 2023 05:03:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233024AbjACKCb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Jan 2023 05:02:31 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851632712
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 02:02:30 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id ja17so22249907wmb.3
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 02:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlTeR/7cDxXRxOqAcb6Q85eOUlgnFmj62k1kYmtmH84=;
        b=fPKrBmut4SkRw+8IZxZ7wZnL8cFbfHzvjHPKgHeau4EFviCEhezAq33+aEdurPfs3C
         0ndk/52JohZmxpPnqULuHIlM6Ef4HM8Mc9ozb5J89zUq3DaEKcPfL4cygVLiywN/07oB
         LXEwo60TXPtn9Vqea2+pNW8kEz1aGNV9HLEL6dv+S7Mn1lk/RoYYRaItS7CmYLAaCamZ
         M0QGljxB5mRhYjbdaVBYBUDT+Z0biDKN8E5E12nY1ah/erkoZTKeUmdddaeKPldDMhAe
         FgrzJWX/LH65bPhC3WxTOfeyLmB/8V2Bh6yj+9EJPR13rTixvcjNuewekzvjTfxc+AkN
         jfSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VlTeR/7cDxXRxOqAcb6Q85eOUlgnFmj62k1kYmtmH84=;
        b=z/yrLlyJmHeRX4wmvUCUR/IKKUnmtq+7+KGjeWnyZUuLwUhY/ZtrRRMV//kNqGj97K
         yRpLb4EH1PxFeFCh7BNUzk/TGHbCavgOWbp8aPQ9XvNeQg9R8XHs2RUiu3ZWiKiqnFzz
         lTSgRA5KFkmPQEI4d4toiKTVOlYGVooE8jFnrNniVyrL6s2YqdPJ3+C88mEIyC19IYCg
         pliju6HzLC9LXVZC+yQTq0cXzW/zBWrvVVIDg4KAEGOYP4aLghvW/gQdgKqLdiF/XlbT
         rPQcsiiwaF+YsJjhCGXeq/710x9nrZ10wDYGPHxXMkAjODuZhQQz0fJK4Aoij48QuIGq
         2Z+w==
X-Gm-Message-State: AFqh2kr19/uv0ElLMEQ+5YasumurdfxisJ+9OVDmVSPKFdeFwJfe/cn2
        6wiM519o6OScgJTA/RMRqds=
X-Google-Smtp-Source: AMrXdXs8GsLCmGdFQxfwT64x09mKDgcn299HrVTQimoWnQ0sr4ILk7rOJtY/H1jesa1TOx7/4kqeGg==
X-Received: by 2002:a05:600c:1f15:b0:3cf:98e5:f72 with SMTP id bd21-20020a05600c1f1500b003cf98e50f72mr33902039wmb.3.1672740149061;
        Tue, 03 Jan 2023 02:02:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c444900b003d997e5e679sm26551375wmn.14.2023.01.03.02.02.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 02:02:28 -0800 (PST)
Message-ID: <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>
Date:   Tue, 3 Jan 2023 11:02:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] prctl.2, proc.5: Document VMA naming
Content-Language: en-US
To:     Nick Gregory <nick@nickgregory.me>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     "ccross@google.com" <ccross@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Kees Cook <keescook@chromium.org>
References: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DxRz6J9YnqDnqY4PLcrU8Z1z"
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
--------------DxRz6J9YnqDnqY4PLcrU8Z1z
Content-Type: multipart/mixed; boundary="------------ue1srgEcQkiqBEOrL824hzTD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nick Gregory <nick@nickgregory.me>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: "ccross@google.com" <ccross@google.com>,
 Suren Baghdasaryan <surenb@google.com>, Kees Cook <keescook@chromium.org>
Message-ID: <0bae90d9-ea36-9c3b-13e4-1e73f9fb470e@gmail.com>
Subject: Re: [PATCH] prctl.2, proc.5: Document VMA naming
References: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>
In-Reply-To: <A9E684DF-4985-4441-BA62-490C2F04AE70@nickgregory.me>

--------------ue1srgEcQkiqBEOrL824hzTD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gTmljaywNCg0KT24gMS8zLzIzIDA0OjI4LCBOaWNrIEdyZWdvcnkgd3JvdGU6DQo+
IEJyaW5nIGluIHByY3RsIG1hbiBwYWdlIGNoYW5nZXMgZnJvbSB0aGUgcGF0Y2ggc2V0IGJ5
IENvbGluIENyb3NzDQo+IDxjY3Jvc3NAZ29vZ2xlLmNvbT4gWzBdLCBhbmQgZG9jdW1lbnQg
dGhlIGNvcnJlc3BvbmRpbmcgdmlydHVhbCBuYW1lcyBpbiBwcm9jLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogTmljayBHcmVnb3J5IDxuaWNrQG5pY2tncmVnb3J5Lm1lPg0KDQpQbGVhc2Ug
YWRkIENvbGluIChhbmQgd2hvZXZlciB3YXMgaW50ZXJlc3RlZCBpbiB0aGUgcGF0Y2gsIHdo
aWNoIHNlZW1zIHRvIGJlIGF0IA0KbGVhc3QgU3VyZW4gYW5kIEtlZXMpIHRvIHRoZSBDYyB0
YWdzLg0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gDQo+IFswXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1tbS8yMDIxMTAxOTIxNTUxMS4zNzcxOTY5LTItc3VyZW5iQGdvb2dsZS5j
b20vDQo+IC0tLQ0KPiAgIG1hbjIvcHJjdGwuMiB8IDM1ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrDQo+ICAgbWFuNS9wcm9jLjUgIHwgMTQgKysrKysrKysrKysrKysN
Cj4gICAyIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9tYW4yL3ByY3RsLjIgYi9tYW4yL3ByY3RsLjINCj4gaW5kZXggNzRmODZmZjQ5Li44
MmI4YTFiMDIgMTAwNjQ0DQo+IC0tLSBhL21hbjIvcHJjdGwuMg0KPiArKysgYi9tYW4yL3By
Y3RsLjINCj4gQEAgLTc2OSw2ICs3NjksNDEgQEAgVGhpcyBmZWF0dXJlIGlzIGF2YWlsYWJs
ZSBvbmx5IGlmIHRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCB0aGUNCj4gICAuQiBDT05GSUdf
Q0hFQ0tQT0lOVF9SRVNUT1JFDQo+ICAgb3B0aW9uIGVuYWJsZWQuDQo+ICAgLlJFDQo+ICsu
XCIgcHJjdGwgUFJfU0VUX1ZNQQ0KPiArLlRQDQo+ICsuQlIgUFJfU0VUX1ZNQSAiIChzaW5j
ZSBMaW51eCA1LjE3KSINCj4gKy5cIiBDb21taXQgOWExMDA2NGY1NjI1ZDU1NzJjMzYyNmMx
NTE2ZTBiZWJjNmM5ZmU5Yg0KPiArU2V0cyBhbiBhdHRyaWJ1dGUgc3BlY2lmaWVkIGluDQo+
ICsuSSBhcmcyDQo+ICtmb3IgdmlydHVhbCBtZW1vcnkgYXJlYXMgc3RhcnRpbmcgZnJvbQ0K
PiArdGhlIGFkZHJlc3Mgc3BlY2lmaWVkIGluDQo+ICsuSSBhcmczDQo+ICthbmQgc3Bhbm5p
bmcgdGhlIHNpemUgc3BlY2lmaWVkIGluDQo+ICsuSVIgYXJnNCAuDQo+ICsuSSBhcmc1DQo+
ICtzcGVjaWZpZXMgdGhlIHZhbHVlIG9mIHRoZSBhdHRyaWJ1dGUgdG8gYmUgc2V0Lg0KPiAr
LklQDQo+ICtOb3RlIHRoYXQgYXNzaWduaW5nIGFuIGF0dHJpYnV0ZSB0byBhIHZpcnR1YWwg
bWVtb3J5DQo+ICthcmVhIG1pZ2h0IHByZXZlbnQgaXQgZnJvbSBiZWluZyBtZXJnZWQgd2l0
aCBhZGphY2VudCB2aXJ0dWFsDQo+ICttZW1vcnkgYXJlYXMgZHVlIHRvIHRoZSBkaWZmZXJl
bmNlIGluIHRoYXQgYXR0cmlidXRlJ3MgdmFsdWUuDQo+ICsuSVANCj4gK0N1cnJlbnRseSwN
Cj4gKy5JIGFyZzINCj4gK211c3QgYmUgb25lIG9mOg0KPiArLlJTDQo+ICsuVFANCj4gKy5C
IFBSX1NFVF9WTUFfQU5PTl9OQU1FDQo+ICtTZXQgYSBuYW1lIGZvciBhbm9ueW1vdXMgdmly
dHVhbCBtZW1vcnkgYXJlYXMuDQo+ICsuSSBhcmc1DQo+ICtzaG91bGQgYmUgYSBwb2ludGVy
IHRvIGEgbnVsbC10ZXJtaW5hdGVkIHN0cmluZyBjb250YWluaW5nIHRoZQ0KPiArbmFtZS4g
VGhlIG5hbWUgbGVuZ3RoIGluY2x1ZGluZyBudWxsIGJ5dGUgY2Fubm90IGV4Y2VlZA0KPiAr
ODAgYnl0ZXMuIElmDQo+ICsuSSBhcmc1DQo+ICtpcyBOVUxMLCB0aGUgbmFtZSBvZiB0aGUg
YXBwcm9wcmlhdGUNCj4gK2Fub255bW91cyB2aXJ0dWFsIG1lbW9yeSBhcmVhcyB3aWxsIGJl
IHJlc2V0Lg0KPiArVGhlIG5hbWUgY2FuIGNvbnRhaW4gb25seSBwcmludGFibGUgYXNjaWkg
Y2hhcmFjdGVycw0KPiArKGluY2x1ZGluZyBzcGFjZSksIGV4Y2VwdCAnWycsJ10nLCdcJywn
JCcgYW5kICdgJy4NCj4gKy5SRQ0KPiAgIC5cIiBwcmN0bCBQUl9NUFhfRU5BQkxFX01BTkFH
RU1FTlQNCj4gICAuVFANCj4gICAuQlIgUFJfTVBYX0VOQUJMRV9NQU5BR0VNRU5UICIsICIg
UFJfTVBYX0RJU0FCTEVfTUFOQUdFTUVOVCAiIChzaW5jZSBMaW51eCAzLjE5LCByZW1vdmVk
IGluIExpbnV4IDUuNDsgb25seSBvbiB4ODYpIg0KPiBkaWZmIC0tZ2l0IGEvbWFuNS9wcm9j
LjUgYi9tYW41L3Byb2MuNQ0KPiBpbmRleCA2NWE0YzM4ZTMuLmUwYTY0ZDQ4NiAxMDA2NDQN
Cj4gLS0tIGEvbWFuNS9wcm9jLjUNCj4gKysrIGIvbWFuNS9wcm9jLjUNCj4gQEAgLTEzNzIs
NiArMTM3MiwyMCBAQCBTZWUNCj4gICAuVFANCj4gICAuSSBbaGVhcF0NCj4gICBUaGUgcHJv
Y2VzcydzIGhlYXAuDQo+ICsuVFANCj4gKy5JUiBbYW5vbjogbmFtZSBdICIgKHNpbmNlIExp
bnV4IDUuMTcpIg0KPiArLlwiIENvbW1pdCA5YTEwMDY0ZjU2MjVkNTU3MmMzNjI2YzE1MTZl
MGJlYmM2YzlmZTliDQo+ICtBIG5hbWVkIHByaXZhdGUgYW5vbnltb3VzIG1hcHBpbmcuDQo+
ICtTZXQgd2l0aA0KPiArLkJSIHByY3RsICgyKQ0KPiArLkJSIFBSX1NFVF9WTUFfQU5PTl9O
QU1FIC4NCj4gKy5UUA0KPiArLklSIFthbm9uX3NobWVtOiBuYW1lIF0gIiAoc2luY2UgTGlu
dXggNi4yKSINCj4gKy5cIiBDb21taXQgZDA5ZThjYTZjYjkzYmI0Yjk3NTE3YTE4ZmJiZjdl
Y2NiMGU5ZmY0Mw0KPiArQSBuYW1lZCBzaGFyZWQgYW5vbnltb3VzIG1hcHBpbmcuDQo+ICtT
ZXQgd2l0aA0KPiArLkJSIHByY3RsICgyKQ0KPiArLkJSIFBSX1NFVF9WTUFfQU5PTl9OQU1F
IC4NCj4gICAuaW4NCj4gICAuUkUNCj4gICAuSVANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------ue1srgEcQkiqBEOrL824hzTD--

--------------DxRz6J9YnqDnqY4PLcrU8Z1z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOz/TMACgkQnowa+77/
2zILTxAAiPEb8iC6UkyZUlBRbSRjHQrdzU6/2clvh1fTGQ5BA2u1LWk7BzDbHb75
6ilK6MlVELnDOuAL7lUY8XiOBU6MXAwuQvdFWIcLqFV539LmW+5EQGetm6MG7O2j
ZNGqXrejFoFKfBcxsCuCVqCdK2YCMvwCZTiDkqVo2lMrximwa/zM7T7sqJ/BcLwt
XnSYu8wz3mEotMpt9KaARpsxRqJj0MFlnyrZ+cEEXR9vmtd+D3Agm0aLXoL2MY3Q
n2T2JG1Qc0Uqyk7Uiy27DdE/Ycl/HzlDv5s3hTHSz5mcjk8KqP9F36p6hr4U/Jc6
Dh9//jhPLYrWdjw/MoShJ1KMNPjlmeeR+h5pRjEAB5LYKcJoB+qWoZU2LfN1X8Nt
1v84b0pFsFzZ5vb0b5jN5YHjQJJp5T3Rx1VcuOtuLZiHRn3D0Ffceyf8Khs51gwv
iu/gKDBhGeh7RjdTHhN+HGbG5VnBbV6DiJsfJ5tWtSlXVJ4+rLlK7EMWIX4g06nT
E1k+fjtfWFZ1bK7iirmJs9uMpniutIJ8+g6xYp+DQr6kG4SHiTE+y9x/71SU+ogt
zoEvC8AAKwJe998PTDusvwYGkINbRhnH95uCP1DquE/h/NrrZGaoqEnD2qrxHKVv
mOoV87qzmhwX1JfFmqKSy6vuF+t/rn+JiaJHzzvRKw0ubduD/o8=
=BBwN
-----END PGP SIGNATURE-----

--------------DxRz6J9YnqDnqY4PLcrU8Z1z--
