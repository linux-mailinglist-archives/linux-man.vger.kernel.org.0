Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73D2666D438
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 03:22:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235216AbjAQCWi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Jan 2023 21:22:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235119AbjAQCWh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Jan 2023 21:22:37 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7F1C23876
        for <linux-man@vger.kernel.org>; Mon, 16 Jan 2023 18:22:36 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id d2so9020531wrp.8
        for <linux-man@vger.kernel.org>; Mon, 16 Jan 2023 18:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mBb7SwqqypllLPqQqFCEpjhOdozURJrwBExtKewgnas=;
        b=MvznHkv2zPrlt+l8x3WsorVcepYFacCABUL17UT9DFFqrNIW1CLPA5WSIr5or67x1N
         q//wAG20Ef0Gd5pfN+uIViC3+ryWt/oxuUobSFjntzPd6dcLGfAwlvhkwGOEawy1mbhx
         UrUJ//ttAV0KJ2yfpfNaLS53oMpY/IgrFJ9lFcz99KPu2hw1wmDPgydH9TQc//R0v92M
         eFSctSyhs8x2TkqEN1IjO4EYZ2p67NI4S8647DP/PQmkYXQ0iWycxOQA09eSUZVLZhOy
         SWZDgtmRIrOoRQ9CKgdX+QXaIys+SmckSGLwaMXUZxM/8AeSOH3kQf8Zg3Hbwrfu5upR
         OH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mBb7SwqqypllLPqQqFCEpjhOdozURJrwBExtKewgnas=;
        b=pFuyLmISnP/TnoV/zE8mtiWXAUkfpqscKbdVp1Z7ZU6nfYldNsmNyT+ph8xHBQJH1A
         J5bhZnEaDq/fPCSsrePOG+prabBAHEaY5gA5o3EpCNlQHEEMoL3jiwMdDWUG/DErECM2
         GbgCK2Z7Lzri3DJuW32KSjoivefSYSndF4daY5nO1J4bW9UQ4h7hbeYhar7+RKHKG0vj
         LHCZAAtEJiSZo7a38SxFKRGgiuUzDPv2aIi57u4d5NUTBtNqTaROAz8QQb84SPpeD7X1
         m9FQUyQttSyNUOAx37TWD+DrR7+0uL4715m5n5ZbGTk+zi1RMmY0cGFpGl/hJ0eXBTxT
         HV+Q==
X-Gm-Message-State: AFqh2kofX+zkNTvTeqfWbD5yU+R3xDBjyXAi+jkXubZjZXIuWf3qs6lx
        xYO25Tm0udH83D4Wj+kRWreD//EMkh4=
X-Google-Smtp-Source: AMrXdXskHeK8FYDz/0xxRs0MJFaX0ZRQ56/ArQruocZBJBmFY2qJHTyNqsHDPoqWZ1HypTwZss4HFQ==
X-Received: by 2002:adf:b646:0:b0:2bc:6947:75d6 with SMTP id i6-20020adfb646000000b002bc694775d6mr1368500wre.27.1673922155225;
        Mon, 16 Jan 2023 18:22:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q17-20020adff511000000b002366553eca7sm5027071wro.83.2023.01.16.18.22.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 18:22:34 -0800 (PST)
Message-ID: <6a25455b-b137-4db0-aca5-91d08341af6a@gmail.com>
Date:   Tue, 17 Jan 2023 03:22:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: bug in roundup(3) from <sys/param.h>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
In-Reply-To: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dobVvSpYk82qOqfDLGW9QV0C"
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
--------------dobVvSpYk82qOqfDLGW9QV0C
Content-Type: multipart/mixed; boundary="------------j8f0soLsJOcMz3IFwXb3GUD8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <6a25455b-b137-4db0-aca5-91d08341af6a@gmail.com>
Subject: Re: bug in roundup(3) from <sys/param.h>
References: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
In-Reply-To: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>

--------------j8f0soLsJOcMz3IFwXb3GUD8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMS8xNi8yMyAyMTo0NiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIQ0KPiAN
Cj4gSSB3YXMgdHJ5aW5nIHRvIHVuZGVyc3RhbmQgd2hhdCByb3VuZHVwKCkgaXMgKGRlZmlu
ZWQgaW4gPHN5cy9wYXJhbSxoPikuDQo+IA0KPiBJdCBzZWVtcyB0byBiZSBraW5kIG9mOg0K
PiANCj4gU1lOT1BTSVMNCj4gIMKgwqDCoMKgwqDCoCAjaW5jbHVkZSA8c3lzL3BhcmFtLmg+
DQo+IA0KPiAgwqDCoMKgwqDCoMKgIHJvdW5kdXAoeCwgc3RlcCk7DQo+IA0KPiBERVNDUklQ
VElPTg0KPiAgwqDCoMKgwqDCoMKgIFRoaXPCoCBtYWNyb8KgIHJvdW5kc8KgIHggdG8gdGhl
IG5lYXJlc3QgbXVsdGlwbGUgb2Ygc3RlcCB0aGF0IGlzIG5vdCBsZXNzDQo+ICDCoMKgwqDC
oMKgwqAgdGhhbiB4Lg0KPiANCj4gSSBmb3VuZCB0aGF0IGl0IGRvZXNuJ3Qgd29yayBmb3Ig
bmVnYXRpdmUgbnVtYmVyczsgYnV0IHRoYXQncyBleHBlY3RlZCwgYW5kIGl0IA0KPiBjb3Vs
ZCBiZSBkb2N1bWVudGVkIGFzIHN1Y2guwqAgSG93ZXZlciwgaXQgZG9lc24ndCB3b3JrIG5p
Y2VseSB3aXRoIHVuc2lnbmVkIA0KPiBpbnRlZ2VycyBlaXRoZXI6IGZvciB2YWx1ZXMgY2xv
c2UgdG8gemVybywgd2hlcmUgd3JhcCBhcm91bmQgaGFwcGVucywgdGhlIHJlc3VsdCANCj4g
aXMgYWxzbyBib2d1cy7CoCBTZWUgbXkgZXhwZXJpbWVudHMgYmVsb3cuDQo+IA0KPiANCj4g
DQo+ICQgc2VkIC1uIDkyLDk4cCAvdXNyL2luY2x1ZGUveDg2XzY0LWxpbnV4LWdudS9zeXMv
cGFyYW0uaA0KPiAjaWZkZWYgX19HTlVDX18NCj4gIyBkZWZpbmUgcm91bmR1cCh4LCB5KcKg
IChfX2J1aWx0aW5fY29uc3RhbnRfcCAoeSkgJiYgcG93ZXJvZjIgKHkpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA/ICgoKHgpICsgKHkpIC0gMSkgJiB+KCh5KSAtIDEpKcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDogKCgoKHgpICsgKCh5KSAtIDEp
KSAvICh5KSkgKiAoeSkpKQ0KPiAjZWxzZQ0KPiAjIGRlZmluZSByb3VuZHVwKHgsIHkpwqAg
KCgoKHgpICsgKCh5KSAtIDEpKSAvICh5KSkgKiAoeSkpDQo+ICNlbmRpZg0KPiANCg0KSSBj
YW1lIHVwIHdpdGggdGhpcyBpbXBsZW1lbnRhdGlvbiwgd2hpY2ggaW5jcmVhc2VzIGNvbXBs
ZXhpdHkgcXVpdGUgYSBsb3QgDQooY29tcGFyZWQgdG8gdGhlIG9uZSBsaW5lciksIGJ1dCBt
YWtlcyB0aGUgbWFjcm8gd29yayBjb3JyZWN0bHkgZm9yIGFsbCBpbnB1dCANCihvciB0aGF0
J3Mgd2hhdCBteSB0ZXN0cyBzaG93ZWQpLiAgSXQgb25seSBoYXMgVUIgZm9yIHNpZ25lZCBp
bnB1dCB3aGVuIHRoZSANCm91dHB1dCB3b3VsZCBvdmVyZmxvdyA8VFlQRT5fTUFYIChidXQg
b2YgY291cnNlLCB0aGVyZSdzIG5vIHdheSB0byBhdm9pZCB0aGF0KS4NCg0KQXBhcnQgZnJv
bSB3b3JraW5nIHdpbGwgYWxsIGlucHV0LCBzaWduZWQgb3IgdW5zaWduZWQsIHVudGlsIHRo
ZSBlbmQgb2YgdGhlIA0KcmFuZ2UsIGl0IGFsc28gaGFzIG5vIHByb2JsZW1zIGFib3V0IGRv
dWJsZSBldmFsdWF0aW9uLg0KDQpJZiB1c2luZyBHQ0MgZXh0ZW5zaW9ucyBpcyBhIHByb2Js
ZW0sIHRoaXMgY291bGQgYmUgcmV3cml0dGVuIGEgYml0IGxlc3Mgc2FmZWx5IA0KYW5kIG1v
cmUgc3RhbmRhcmRlc2UuDQoNCg0KI2RlZmluZSBhbHhfd2lkdGhvZih0KSAgICAoc2l6ZW9m
KHQpICogQ0hBUl9CSVQpDQoNCiNkZWZpbmUgYWx4X2lzX3NpZ25lZCh4KSAgKCgodHlwZW9m
KHgpKSAtMSkgPCAwKQ0KDQojZGVmaW5lIGFseF9zdHlwZV9tYXgodCkgICgoKCgodCkgMSA8
PCAoYWx4X3dpZHRob2YodCkgLSAyKSkgLSAxKSA8PCAxKSArIDEpDQoNCiNkZWZpbmUgYWx4
X3JvdW5kdXAoeCwgc3RlcCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFwNCih7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwNCglfX2F1dG9fdHlw
ZSAgeF8gICAgPSAoeCk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXA0KCV9fYXV0b190eXBlICBzdGVwXyA9IChzdGVwKTsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBcDQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XA0KCWlmIChhbHhfaXNfc2lnbmVkKHhfKSkgeyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBcDQoJCWlmICh4XyA8IDApIHsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA0KCQkJeF8gPSB4XyAvIHN0ZXBf
ICogc3RlcF87ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA0KCQl9IGVsc2UgaWYg
KHhfIC0gMSA+IGFseF9zdHlwZV9tYXgodHlwZW9mKHhfKSkgLSBzdGVwXykgeyAgICAgIFwN
CgkJCXhfID0gKCh4XyAtIDEpIC8gc3RlcF8gKyAxKSAqIHN0ZXBfOyAgICAgICAgICAgICAg
ICAgIFwNCgkJfSBlbHNlIHsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBcDQoJCQl4XyA9ICgoeF8gLSAxICsgc3RlcF8pIC8gc3RlcF8p
ICogc3RlcF87ICAgICAgICAgICAgICBcDQoJCX0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA0KCX0gZWxzZSB7ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBcDQoJCWlmICh4XyArIHN0ZXBfIDwgc3RlcF8pIHsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXA0KCQkJeF8gPSAoKHhfIC0gMSkgLyBzdGVwXyArIDEpICogc3Rl
cF87ICAgICAgICAgICAgICAgICAgXA0KCQl9IGVsc2UgeyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwNCgkJCXhfID0gKCh4XyAtIDEg
KyBzdGVwXykgLyBzdGVwXykgKiBzdGVwXzsgICAgICAgICAgICAgIFwNCgkJfSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
DQoJfSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcDQoJeF87
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFwNCn0pDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------j8f0soLsJOcMz3IFwXb3GUD8--

--------------dobVvSpYk82qOqfDLGW9QV0C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPGBmIACgkQnowa+77/
2zJXSRAAm15rcw2ia5Kd8TudA7w7sFT5hm8WBOUn6+cZoFVxVab2t5yPcKvdsHtl
7dI3cTFzkw2OoBIgW1RDEIaqm79XpQysO+BCmiBwQ/Qql9Xf+dpR70EyFXTpfYTe
Ua6Foc6FUBHCUe9V0KcvVTHQ8In9ub5AUDhj5qwwmETGM8Z+gL95JdvN8Vl3i4mR
quRmLnK8uIVwHywzpaBnSDUFldm25d8zX6NRXnH/G6I39CdQqeVIZp5GBrZ3TSPu
NGfOui1ek/clUEwTkJeO7L7gDBnjkcwLPUy7pw/R4B9XUPSAX+dqvO9TU1N/UDL1
OKs6Hf+VwkUyoooUsCiTNi4YmeqgF5kuErMZS1nE3tyL7UumW+qmmDl1mKuBpfCb
MAd3984hcg9GkaMjIFM/CFF6EhsqbHvRVtFIp4oesBeH25EmNY7KaUwDMHGDisPr
NxCoHK+4LvTzpeWy3svtp8XVqe4ISc7q5oieYrRBRSJkOK9H0AGV2Zt873599d6y
xdzM05Ww1h74TcN1AvNTPsGQhLu3+btHA+/SQODPqHDlAeKF1oeJBgq2sHjoIyg+
t4oixCNnBqiImgDOJp7Gv/Zu9YMjQEVISWWZh7xnjTBA7Vc5cKRjl9GjrfYEPgaX
3T5r+ZgHvybO9d+aIZTPJmWUfh/Ym8CwGr7/P5GPNQNgPUwV87Q=
=4/1x
-----END PGP SIGNATURE-----

--------------dobVvSpYk82qOqfDLGW9QV0C--
