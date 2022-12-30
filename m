Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7EF2659C6D
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 22:15:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiL3VPT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 16:15:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235589AbiL3VPS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 16:15:18 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC24D1CB07
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 13:15:17 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so13425891wmb.2
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 13:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qIt62XZmfbA7cxagubVUUU+tEUc4M7IhuEH4sALf9UI=;
        b=hdLgQe5U19xYwAZOm4LwCyGmnPFQoVio2EGtJexgnCv3cvDbcCoVYgdxfB06DRYymo
         kYIOQVGfE0azX4sgKP4797MBLbGwjgTwtoGBpYN9JBcaNFS6t7/gNTjBO+PIMahRxJZ1
         Or7IXeR64ekPs3VljwBuv7VOp6NXdNa2t/GU3RXR73n0pwNQWBHyFFZYOLgGn+pMoyTx
         pz88liTKjQnjpeH7dMxx8iw5BnkQmRZhzHGdEWHmlp+ibQfgrEy0B39aFCcKYCDC1D/F
         iLZGUPj3WTyfjlCIcgoS78ehotcUYDLh8UVLqAKuoqcQZDo95SZPW6eXgEpBV0UMIqTD
         z+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qIt62XZmfbA7cxagubVUUU+tEUc4M7IhuEH4sALf9UI=;
        b=i758s71uKcTrTYUSo7wf3YOY8unyWpY22WOReLtPsNTFKFKudbyv6+TshRf+wCGZCC
         OCBaD9SjTY7zsdfXF/cmTwoxacNr+Xivn7j3LvBVCksMFjeLhYik/QxzWV+ZBQkVX1+C
         4XewOkM0E4p9WkktSE1JapRxXHoAe48/2NXASQJcz5HCvns/LOpkNbKTbYknUbRONFXm
         yyiwk1te1IjVJ9/avw7HO7AgGqgdKef/Vv912cCjZhjK+5uEuVcLUspYiZ50Wki4Oxk3
         VdzWQlbfgcoRoTPKq6Xf11uowqAsxwEbynBAm/XmuFcZx1aAzYub6CziOm+0MTs9u27N
         BzpA==
X-Gm-Message-State: AFqh2krb3st0zRyW4PJKQ1UAtL015lYvnVHEFlHSJty2CpK9ua1GyAjt
        rxEzzHAmvtxWnkfeyCg3WSE=
X-Google-Smtp-Source: AMrXdXskwDHgX59nWj0Bk74unBzq6X978lk7OZmdxSqlTKL4hnmrNFfknnI7wkiPJmcSIdKwZKBIag==
X-Received: by 2002:a05:600c:4da2:b0:3d2:39dc:f50e with SMTP id v34-20020a05600c4da200b003d239dcf50emr23387033wmp.7.1672434916224;
        Fri, 30 Dec 2022 13:15:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bh12-20020a05600c3d0c00b003cfa81e2eb4sm29550093wmb.38.2022.12.30.13.15.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 13:15:15 -0800 (PST)
Message-ID: <49e90587-8f1a-111e-8937-40afbbf55106@gmail.com>
Date:   Fri, 30 Dec 2022 22:15:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Internal organization of "the implementation" (was: [PATCH] Add
 example to rand.3)
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>,
        =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
 <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
 <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fpPkUxphF0KFNs1jQTXAJqaM"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fpPkUxphF0KFNs1jQTXAJqaM
Content-Type: multipart/mixed; boundary="------------EmgjdutrLH3xc9miPSVncOrR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>,
 =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <49e90587-8f1a-111e-8937-40afbbf55106@gmail.com>
Subject: Internal organization of "the implementation" (was: [PATCH] Add
 example to rand.3)
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
 <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
 <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com>
In-Reply-To: <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com>

--------------EmgjdutrLH3xc9miPSVncOrR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMi8zMC8yMiAyMjowOCwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBGcmksIDMwIERlYyAyMDIyLCBDcmlzdGlhbiBSb2Ryw61ndWV6IHZpYSBMaWJjLWFs
cGhhIHdyb3RlOg0KPiANCj4+IE9uIEZyaSwgRGVjIDMwLCAyMDIyIGF0IDM6MTUgUE0gSm9z
ZXBoIE15ZXJzIDxqb3NlcGhAY29kZXNvdXJjZXJ5LmNvbT4gd3JvdGU6DQo+Pg0KPj4+IEkg
ZXhwZWN0IHRvIGltcGxlbWVudCB0aGVzZSBmdW5jdGlvbnMgaW4gZHVlIGNvdXJzZSBmb3Ig
Z2xpYmMgKG5vdCBHQ0MsDQo+Pj4gc2luY2UgdGhlc2UgYXJlIGxpYnJhcnkgZnVuY3Rpb25z
LCB3aXRoIHRoZSB1c3VhbCByZXF1aXJlbWVudHMgZm9yDQo+Pj4gZGVmaW5pdGlvbnMgd2l0
aCBleHRlcm5hbCBsaW5rYWdlLCB0aG91Z2ggbW9zdCB3b3VsZCBhbHNvIGhhdmUgaW5saW5l
DQo+Pj4gaGVhZGVyIGltcGxlbWVudGF0aW9ucyBiYXNlZCBvbiBleGlzdGluZyBsb25nc3Rh
bmRpbmcgYnVpbHQtaW4gZnVuY3Rpb25zKS4NCj4+DQo+PiBVbmxlc3MgSSBhbSBzZXJpb3Vz
bHkgbWlzc2luZyBzb21ldGhpbmcsIHRoZSBjb21waWxlciBpcyByZXF1aXJlZCB0bw0KPj4g
cHJvdmlkZSBhbiBpbXBsZW1lbnRhdGlvbg0KPj4gb2YgdGhlbSBhcyBpdCBpcyBhIGZyZWVz
dGFuZGluZyBoZWFkZXIuLnJpZ2h0ID8NCj4gDQo+ICJmcmVlc3RhbmRpbmciIHZlcnN1cyAi
aG9zdGVkIiBpc24ndCB0aGUgcmlnaHQgZGlzdGluY3Rpb24gZm9yIHdoaWNoDQo+IGNvbXBv
bmVudCBpbiBhIChjb21waWxlciArIGxpYnJhcnkpIGltcGxlbWVudGF0aW9uIHByb3ZpZGVz
IHdoaWNoIHBpZWNlcw0KPiBhbnkgbW9yZS4gIFRoZSBhY3R1YWwgZGlzdGluY3Rpb24gaXMg
Y2xvc2VyIHRvIHdoZXRoZXIgYSBmZWF0dXJlIGludm9sdmVzDQo+IGxpYnJhcnkgZnVuY3Rp
b25zICh3aXRoIGV4dGVybmFsIGxpbmthZ2UpOiBpZiBpdCBkb2VzLCBpdCBiZWxvbmdzIGlu
IHRoZQ0KPiBsaWJyYXJ5IChnbGliYyksIHdoZXJlYXMgaWYgYSBoZWFkZXIgZG9lc24ndCBp
bnZvbHZlIHN1Y2ggZnVuY3Rpb25zLCBpdA0KPiBiZWxvbmdzIGluIHRoZSBjb21waWxlciAo
R0NDKSwgYWxvbmcgd2l0aCB0aGUgbGlicmFyeSBzdXBwb3J0IChpbiBsaWJnY2MpDQo+IGZv
ciBsYW5ndWFnZSBmZWF0dXJlcyAoaS5lLiBsaWJyYXJ5IGNvZGUgdGhhdCBjYW4gYmUgbmVl
ZGVkIGV2ZW4gYnkNCj4gcHJvZ3JhbXMgdGhhdCBkb24ndCBpbmNsdWRlIGFueSBzdGFuZGFy
ZCBsaWJyYXJ5IGhlYWRlciBvciBjYWxsIGFueQ0KPiBmdW5jdGlvbiBmcm9tIHRoZSBzdGFu
ZGFyZCBsaWJyYXJ5KS4gIE15IGxpc3Qgb2YgdGhpbmdzIHRvIGJlIGRvbmUgZm9yIEMyeA0K
PiBpbiBHQ0MgaW5jbHVkZXMgdXBkYXRpbmcgdGhlIEdDQyBkb2N1bWVudGF0aW9uIChzdGFu
ZGFyZHMudGV4aSkgdG8gcmVmbGVjdA0KPiB0aGlzOiB0aGF0IGlzLCB0byBzYXkgdGhhdCBH
Q0MgcHJvdmlkZXMgdGhlIGNvbXBpbGVyIHBhcnQgb2YgYQ0KPiBmcmVlc3RhbmRpbmcgb3Ig
aG9zdGVkIGltcGxlbWVudGF0aW9uLCBhbmQgbGlicmFyeSBzdXBwb3J0IGZvciBsYW5ndWFn
ZQ0KPiBmZWF0dXJlcyBhbmQgaGVhZGVycyBub3QgaW52b2x2aW5nIGV4dGVybmFsIGxpbmth
Z2UgZnVuY3Rpb25zLCB0byBiZSB1c2VkDQo+IHRvZ2V0aGVyIHdpdGggYSBjb3JyZXNwb25k
aW5nIGxpYnJhcnkgaW1wbGVtZW50YXRpb24gLSBub3QgdGhhdCBpdCdzIGENCj4gZnJlZXN0
YW5kaW5nIGltcGxlbWVudGF0aW9uIGJ5IGl0c2VsZi4NCj4gDQo+IChJdCB3YXNuJ3QgcXVp
dGUgcmlnaHQgZm9yIEMxMSBlaXRoZXI7IEdDQyBwcm92aWRlcyA8c3RkYXRvbWljLmg+IGFu
ZA0KPiBsaWJhdG9taWMsIGFuZCB3aGlsZSB0aGVyZSBhcmUgYSBmZXcgYXRvbWljXyogZnVu
Y3Rpb25zIHdpdGggZXh0ZXJuYWwNCj4gbGlua2FnZSwgdGhlIGJ1bGsgb2YgdGhlIG9wZXJh
dGlvbnMgaW4gPHN0ZGF0b21pYy5oPiBhcmUgb25seSBnZW5lcmljDQo+IGZ1bmN0aW9ucyB3
aXRoIG5vIGRlZmluZWQgZXh0ZXJuYWwtbGlua2FnZSBmdW5jdGlvbnMgdW5kZXJseWluZyB0
aGVtLA0KPiB3aGlsZSBpdCdzIGJlZW4gZG9jdW1lbnRlZCBmb3IgYSBsb25nIHRpbWUgdGhh
dCBhIGNvcnJlc3BvbmRpbmcgbGlicmFyeSBpcw0KPiBhbHdheXMgbmVlZGVkIHRvIHByb3Zp
ZGVkIG1lbWNweSwgbWVtbW92ZSBhbmQgbWVtc2V0IGFzIHRob3NlIG1heSBiZQ0KPiBnZW5l
cmF0ZWQgZnJvbSB1c2Ugb2YgbGFuZ3VhZ2UgZmVhdHVyZXMgd2l0aG91dCBiZWluZyBjYWxs
ZWQgZXhwbGljaXRseSBieQ0KPiB0aGUgdXNlcidzIGNvZGUuICBCdXQgQzJ4IG1ha2VzIGl0
IGEgbG90IG1vcmUgdmlzaWJsZSB0aGF0IHRoZSBwcmV2aW91c2x5DQo+IGRvY3VtZW50ZWQg
cnVsZSBvZiB0aHVtYiBmb3Igd2hlcmUgYSBmZWF0dXJlIGdvZXMgaXMgbm8gbG9uZ2VyDQo+
IGFwcHJvcHJpYXRlLikNCj4gDQoNCldoeSBpcyB0aGlzIGR1cGxpY2F0aW9uIG9mIHJlc3Bv
bnNpYmlsaXR5IGZvciBsaWJjIGZ1bmN0aW9ucz8gIFdoeSBpc24ndCB0aGVyZSBhIA0Kc21h
bGxlciBzYXkgbGlibWVtIHRoYXQgcHJvdmlkZXMgYSB1bmlxdWUgaW1wbGVtZW50YXRpb24g
Zm9yIHRoZXNlIG1lbWNweSgpLCANCm1lbW1vdmUoKSwgbWVtc2V0KCkgZnVuY3Rpb25zLCBh
bmQgYm90aCBnY2MgYW5kIGdsaWJjIChhbmQgZXZlbiB0aGUga2VybmVsIA0KY291bGQsIHdp
dGggc3RhdGljIGxpbmtpbmcpIGRlcGVuZCBvbiBpdD8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------EmgjdutrLH3xc9miPSVncOrR--

--------------fpPkUxphF0KFNs1jQTXAJqaM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOvVOIACgkQnowa+77/
2zLbnBAAp8HdRfE0b78ez7opDDN+ohntR6H7BaZXLVx51OaLmVeLNR7o1UYcdkSU
OEmP2Xmke842JWlOPf9NedKNCfUl7LWl+YrH5y4FoeucnMbNBZ+NP6PGA6wn1ixc
fdxDucAKG9iNhMf5k+A8HW5vr5H+GcQpM98lx+yreY8Ljvmwtdt17ZSuq+T56+VL
n+I88qKHfQex5viQfezbI+PitItd2hqHa++FQ+aIoLsTFIiDd45usrItuD/KbSby
cCjmVVpnRS071iP7/UMYu5E8YqvKN+jy3N24BhUiVgROiwn5VqybXRK0QSZWkAWK
jHyUVKecKfmZ8E12eHOQ0FRwq4ifxmiG/IFQliSJhVu7hv+Hu9zrgUiOZ/LAkIWb
1aQmekcZEr03Qk/rtaB4inU/yx4KEy0+mAdxeLtAw1jTW7nMu+7+cA7v4OiMUwU0
CLAFgSiJst7dsWTyoEpyIi/eN+Tr9xkA3iGC4MocviOtbv2VoAGmlMjW2q1EW34k
I/+vyVI1qVNxX1+OxG6pdZAAHg30NQqoOxB3mHM8VDwulqGu5m/FdWOazjakbosP
ZmhEteMhHUXUSIqmi6MuEmI+zyOW1ARif6InEoGslICjlnKtCtFb6ESBiM4fYWTG
DIvK+c4Q2oGlFNaU/jKTFuAlquYKJ9lm44LMxMd9LKt8kl/ueGE=
=Vm6W
-----END PGP SIGNATURE-----

--------------fpPkUxphF0KFNs1jQTXAJqaM--
