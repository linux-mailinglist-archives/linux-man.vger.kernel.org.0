Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A56C0622D47
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 15:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbiKIOPf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 09:15:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiKIOPf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 09:15:35 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5E73318
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 06:15:31 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id z14so25964470wrn.7
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 06:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNqEpa6F+zwfbavyqRrbydj+IBjj2FIqheUqdZHAJ3w=;
        b=qnA/35xJpCk8pgsQBqQhys6QrWmKSmaPANOu60QJjM9bw1inWeTgt9cTdXop0IGh3F
         K9Bmm1xz00okCB2Dtd+qZsZyx7RVyo14adoJlUhEUBoOeYhdtNWfKgsbmNugxBUjYOd3
         b8YQI1puWAq5NWtk7YScNGuC1K7pGhORy2MTI9WHKblpVi34ynEnlA04mxiPnEEVfQ2V
         GxkbEBGVIivkBa5rt+IcsXg7jkBzjuaf23IlbQMc/XiGiEGHZshQ8hU0gRCo4afoPn1G
         PDctUop0JzZUfsnqTKiuVAsUhw0KeITN9rB4wzFUenUVs/qAAw6AmKoRSo70gh6JbXsU
         iIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kNqEpa6F+zwfbavyqRrbydj+IBjj2FIqheUqdZHAJ3w=;
        b=EZf6tm0FHD7OFWanM+SeScFb2L2w+qlx2WbFCofrULM8pRjTg/yE9I+W2ByFNOnUnB
         xvCry5ZSHtK1lMC7dAJ1+kfd0mvFP6vX3DkBfLNT13/y/9sos/21bB91jVnHtt0R5MBK
         Bgrh7eL4CzrgmaBKQ3uqBgTLgoc2y1rv185UccxOVSLFrc0nRLZyYpx1dh63C027HsF+
         hrOnfwU0WZ4IQvzHONqqjUckQv6OKgCo2oF5EswY0gzw5t6hVZITB94hASstVS6/SX7V
         gOHIUhrXjJvxc4oFLPqA1O/lyMM37FsY0i+aF8f5/xwO9oEkSi1JVyfI7qegp6j3971L
         JOJQ==
X-Gm-Message-State: ACrzQf3QuwQFRPDRHG982sC5Sd+hz2BZP369rM7ev1EawfNh3t+FzHYI
        zYk8fPhscQpeyPABZSsVs44=
X-Google-Smtp-Source: AMsMyM4kme7+VhKwZeIKg3t8JvQLZoNobyTr8uypG0Seeqzig8qYFwtKXvfqJUshtjpHsg5fFMbzSA==
X-Received: by 2002:adf:b304:0:b0:236:debd:f6ef with SMTP id j4-20020adfb304000000b00236debdf6efmr30653362wrd.213.1668003330417;
        Wed, 09 Nov 2022 06:15:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k34-20020a05600c1ca200b003b47b80cec3sm2100724wms.42.2022.11.09.06.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:15:29 -0800 (PST)
Message-ID: <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
Date:   Wed, 9 Nov 2022 15:15:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
        linux-man <linux-man@vger.kernel.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
In-Reply-To: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dSeU07mHwTccIDBbHkWbyxey"
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
--------------dSeU07mHwTccIDBbHkWbyxey
Content-Type: multipart/mixed; boundary="------------bBjqA46aPdrPqTn6kItEZpo0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
 linux-man <linux-man@vger.kernel.org>
Cc: Ken Brown <kbrown@cornell.edu>, Michael Kerrisk <mtk.manpages@gmail.com>,
 "Michael T. Kerrisk" <mtk@man7.org>
Message-ID: <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
In-Reply-To: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>

--------------bBjqA46aPdrPqTn6kItEZpo0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVucmksDQoNCk9uIDExLzkvMjIgMTQ6NTcsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPiAtLS0tLS0tLSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQ0KPiBTdWJqZWN0OiBS
ZTogU2ltcGxlIGNoYW5nZXMgdG8gc2VsZWN0KDIpIGFuZCBwaXBlKDcpIC0gZXhhbXBsZSBw
cm9ncmFtDQo+IERhdGU6IFdlZCwgOSBOb3YgMjAyMiAwOTo0Mjo0MyArMDEwMA0KPiBGcm9t
OiBKLkguIHZkIFdhdGVyIDxoZW5yaS52YW4uZGUud2F0ZXJAeHM0YWxsLm5sPg0KPiBUbzog
QWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KPiBDQzogTWljaGFlbCBLZXJy
aXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPg0KDQpJJ3ZlIGZvcndhcmRlZCB0aGUgZW1h
aWxzIEkgZ290IGZyb20geW91IHRvIHRoZSBtYWlsaW5nIGxpc3QsIGZvciBhbiBvcGVuIA0K
ZGlzY3Vzc2lvbi4gIElmIEknbSBtaXNzaW5nIGFueSwgcGxlYXNlIHJlc2VuZCBpbmNsdWRp
bmcgdG8gdGhlIGxpc3QsIGFuZCANCnByZWZlcnJhYmx5IGFzIGEgcmVwbHkgdG8gdGhpcyB0
aHJlYWQuDQoNCkkndmUgYWxzbyBpbmNsdWRlZCBLZW4gaW4gdGhlIENDIGxpc3QsIGFzIHRo
ZSBDT05UUklCVVRJTkcgZmlsZSByZWNvbW1lbmRzLCANCnNpbmNlIGhlIGtub3dzIHdoYXQg
d2UncmUgZGlzY3Vzc2luZy4NCg0KSSd2ZSBpbmNsdWRlZCBib3RoIG10ayBhZGRyZXNzZXMs
IHNpbmNlIHRoaXMgaXNzdWUgaXMgYm90aCByZXBvcnRlZCBmb3IgdGhlIG1hbiANCnBhZ2Vz
IGFuZCBmb3IgaGlzIFRMUEkgYm9vay4gIEJ1dCBhcyB5b3UndmUgZXhwZXJpZW5jZWQsIGhl
J3MgcmVjZW50bHkgYmVlbiB2ZXJ5IA0KYnVzeSBhbmQgbWlnaHQgbm90IHJlc3BvbmQgdG8g
dGhpcyB0aHJlYWQuDQoNCj4gDQo+IE9uIDExLzgvMjIgMTM6MjAsIEFsZWphbmRybyBDb2xv
bWFyIHdyb3RlOg0KPj4gT24gMTEvNi8yMiAxOTo1MywgSi5ILiB2ZCBXYXRlciB3cm90ZToN
Cj4gW3NuaXBdDQo+IA0KPj4+IG1hbiAyIHNlbGVjdMKgIC4uLiBERVNDUklQVElPTiByZWFk
czoNCj4+Pg0KPj4+ICJzZWxlY3QoKSBhbGxvd3MgYSBwcm9ncmFtIHRvIG1vbml0b3IgbXVs
dGlwbGUgZmlsZSBkZXNjcmlwdG9ycywgd2FpdGluZw0KPj4+IMKgIHVudGlsIG9uZSBvciBt
b3JlIG9mIHRoZSBmaWxlIGRlc2NyaXB0b3JzIGJlY29tZSAicmVhZHkiIGZvciBzb21lIGNs
YXNzIG9mDQo+Pj4gwqAgSS9PIG9wZXJhdGlvbiAoZS5nLiwgaW5wdXQgcG9zc2libGUpLiBB
IGZpbGUgZGVzY3JpcHRvciBpcyBjb25zaWRlcmVkDQo+Pj4gwqAgcmVhZHkgaWYgaXQgaXPC
oCBwb3NzaWJsZSB0byBwZXJmb3JtIGEgY29ycmVzcG9uZGluZyBJL08gb3BlcmF0aW9uDQo+
Pj4gwqAgKGUuZy4sIHJlYWQoMiksIG9yIGEgc3VmZmljaWVudGx5IHNtYWxsIHdyaXRlKDIp
KSB3aXRob3V0IGJsb2NraW5nLiINCj4+Pg0KPj4+IEkgc3VnZ2VzdCB0byBhZGQgdGhlIGZv
bGxvd2luZyBsaW5lOg0KPj4+DQo+Pj4gIkhvd2V2ZXIsIG5vdGUgdGhhdCBzZWxlY3QoMikg
d2lsbCBibG9jayBvbiB0aGUgcmVhZCBlbmQgb2YgYSBwaXBlL2ZpZm8sIGlmDQo+Pj4gwqAg
dGhlIHdyaXRlIGVuZCBvZiB0aGUgcGlwZS9maWZvIGhhcyBuZXZlciBiZWVuIG9wZW5lZCBi
ZWZvcmUsIHVubGlrZSByZWFkKDIpDQo+Pj4gwqAgKHJlYWQoMikgd2lsbCBhbHdheXMgcmV0
dXJuIHdpdGggemVybyBpZiB0aGUgd3JpdGUgZW5kIG9mIHRoZSBwaXBlL2ZpZm8gaXMNCj4+
PiDCoCBjbG9zZWQgLSBzZWUgcGlwZSg3KSB3aGVyZSB0aGUgdGV4dCBzdGFydHMgd2l0aCBJ
L08gb24gcGlwZXMgYW5kIGZpZm9zKS4NCj4+DQo+PiBJdCBpcyBpbnRlcmVzdGluZy7CoCBD
b3VsZCB5b3UgcGxlYXNlIHNoYXJlIGEgc21hbGwgZXhhbXBsZSBwcm9ncmFtDQo+PiB0aGF0
IGRlbW9uc3RyYXRlcyB0aGlzIGJlaGF2aW9yP8KgIFRoYXQgd291bGQgY2VydGFpbmx5IGhl
bHAgYSBsb3QNCj4+IHJldmlld2luZyB0aGUgY2hhbmdlLg0KPiANCj4gSGkgQWxleCwNCj4g
DQo+IFllc3RlcmRheSwgSSByZXBsaWVkIHRvIEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFu
cGFnZXNAZ21haWwuY29tPjsgSSBhbHNvIHNlbnQNCj4geW91IGEgY29weSBvZiB0aGUgbWVz
c2FnZSBJIHNlbnQgdG8gTS5LLiBvbiAyOXRoIG9mIFNlcHRlbWJlciAoY2xhcmlmaWNhdGlv
bikuDQoNClllYWgsIEkgc2VlLiAgRm9yIG5vdyBib3RoIG15IGFkZHJlc3NlcyBhcnJpdmUg
dG8gdGhlIHNhbWUgbWFpbGJveCwgc28gbm8gDQpwcm9ibGVtIHRoZXJlLiAgVGhhbmtzLg0K
DQpUaGUgbWFpbGluZyBsaXN0IGlzIG1vcmUgaW1wb3J0YW50LCB0aG91Z2guDQoNCg0KPiAN
Cj4gVGhpcyB0aW1lIEkgd2lsbCBhdHRhY2ggMiBmaWxlcyAoaS5lLiBzZXJ2ZXIuYyBhbmQg
Y2xpZW50LmMpLCB0aGUgc21hbGwgZXhhbXBsZQ0KPiBwcm9ncmFtIHRoYXQgeW91IGFza2Vk
IGZvciAodXNpbmcgYWx4QGtlcm5lbC5vcmcgYXMgYWRkcmVzcykuDQoNClRoYW5rcyENCg0K
QlRXLCBJIGp1c3QgZm91bmQgYSBidWcgaW4gdGhlIGNsaWVudC5jIHByb2dyYW06DQoNCiAg
ICAgd3JpdGUoZmQsICYiV2hhdCBobyEiLCA5KTsNCg0KVGhhdCAmIGlzIHdyb25nLiAgVGhl
IGFkZHJlc3Mgb2YgdGhlIGFycmF5IHNob3VsZCBub3QgYmUgcGFzc2VkIHRvIHdyaXRlKDIp
LCBidXQgDQpyYXRoZXIgdGhlIGFkZHJlc3MgdG8gdGhlIGZpcnN0IGVsZW1lbnQgaW4gdGhl
IGFycmF5LiAgVGhpcyBpcyBhIG1pbGQgYnVnIHRoYXQgDQp3aWxsIG5vcm1hbGx5IG5vdCBk
byBhbnkgaGFybSwgYnV0IGNhbiBiZSBkYW5nZXJvdXMgc3RpbGwsIGlmIHlvdXIgY29tcGls
ZXIgaXMgDQpvcHRpbWl6aW5nIGhlYXZpbHkuDQoNCkknbGwgdGFrZSBzb21lIHRpbWUgdG8g
aW52ZXN0aWdhdGUgdGhlIGV4YW1wbGUgcHJvZ3JhbXMsIHNpbmNlIHRoZXNlIGRheXMgSSAN
CmRvbid0IGhhdmUgbXVjaCB0aW1lIGZvciB0aGF0OyBzb3JyeS4gIEZlZWwgZnJlZSB0byBw
aW5nIG1lIGluIGEgd2VlayBvciB0d28gaWYgDQpJIGRpZG4ndCByZXNwb25kLg0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KPiANCj4gUmVnYXJkcywNCj4gSGVucmkNCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------bBjqA46aPdrPqTn6kItEZpo0--

--------------dSeU07mHwTccIDBbHkWbyxey
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrtfkACgkQnowa+77/
2zIx+RAAjJuzT9rKG2h/o0Xp4Z2fJpXLDThrw+1ge3t6+8pHeAJmLXY/vKzrF4Df
TgMhtOfnNN9fwsI/Zju4+pPyvzcLl89Zoe/42FVqyLy0dNUIme4VFvxWx6zt4N66
0PVeb8FOjq/ATT+6iciRnI3oxSvMYQH1FZnM7WfIXHyBdZMTmhCCQd+u+Uou3uD7
elIeicOnZUSzy0FABiTuVHPKdgVqohQgCRDGz92C3tOtApG4MRE90K8jJWVBoI1G
9RfOff69S8WvTJt4iXG6ozhB+6SUmB6insombJj0RIGRnu4QJEw03xGd8FLzvVWj
o+JOpqY7TPWk0XO29ABFegHSX4KK43dtbfvdyK1So5Dzg/7II6LCavmHqz9utG+W
/bzBppXpTsMRKIrlIfvM56MMJ0PTLfQK1z5luJVjdk9FceKRfgV8ae+UHMfHBonq
GcVvSYr82xCydj9fLXSAIhqCwNcjdmzNngr9BQ7URD0gzQdhkNfi8k9aCTKlc9a6
ACRX+Bmuc9OKmFXc++5XbZBgx741+c7FsosJU8v3RFFynyKygx4OsDhker2xGtO5
qBwctRuHyR3Kp3XZW+I0k9vCr9JnoIB5bbskwaTwvbmByipU9VKttbIvG9ocQP2g
uFTsoevWUp4saMSanmlWOoS4mBirL0FFOcMNvpimHyF0BlZjK3o=
=lr0y
-----END PGP SIGNATURE-----

--------------dSeU07mHwTccIDBbHkWbyxey--
