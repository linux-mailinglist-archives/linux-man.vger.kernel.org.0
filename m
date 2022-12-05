Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E7B0643698
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 22:12:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbiLEVMc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 16:12:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232054AbiLEVM2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 16:12:28 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC0B827DEB
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 13:12:26 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id ay40so3061802wmb.2
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 13:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zx8tUwiEzWsDMcVBQHj5rdnAh2WvKrpWUQ4Kw7CvPA=;
        b=d5KU94rwS6d0B36QaQ8u/maBVP89G7LszC/0DRDyw8QBZN1/vstKbK2BZ4SVjeHzLG
         ciKGZBhpVNXWSYFK2NXsWVrGIz+0FHBXFILXKkEyBwl6uJllmiHWU129mxyis8V8ZX8v
         MlHHBrDpUD22b/UMsi1qU24/jwWBGfF7i7wQ8Yg6V13fH0ri6gUeNfnHHDOAz8VFX4UP
         4sIdd73Tz07Fld2JsDzi6zzJtzqxC9BAMQZ14sePOPT7FyUfXvK0FxxywPf/lYHqTfTo
         Ubt90HD4mllzo8q6NxQNHTLm/kgNAWZf27svVYK0OK3WIa02u9mIZ3J4MMqOPvw0Szsy
         9uKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8zx8tUwiEzWsDMcVBQHj5rdnAh2WvKrpWUQ4Kw7CvPA=;
        b=42lBCsW09Bss6l+WC0pfqwS4Xh/EzIqeWGteXbcQnWVqJu5nuSiV6p0xXPrTMIH+Kk
         zHgGynZBFJnyOXG2HgfPIHi1sOEkH9rV+dbdRf9SwIqJBVPNul8WwB/6emRCohWKIAUy
         mpqXW0y3K0MsLoIYJzBQOVOezTei2ebUbw2tm8NDMWH45JNj71Bc59g+UCYj9xG54R1U
         eD9a2VuxHcxFSHK5mlXSBCcj/k1d5+YXND3e5aMdVsK6LpN/CY31KP9su+Sllx3oowgo
         5LTJO92eLfb/PU43cLACkhlqGnR4gKH7d2ThB//FfM7K8NKSuAFOtkrLa+a2+IQecY58
         I7cg==
X-Gm-Message-State: ANoB5pmBpz/caG/yrq74xDLxADZc1VKdM2ZbVpmyqPJkIzAJpf8ihnIQ
        LOZ8/Fe1aseRICmKEzDD555KOHLy4qo=
X-Google-Smtp-Source: AA0mqf4yvFQ3zoPzKsXerx5e+jS4ur2LWupTHwv5meb7Ee/g18YSkWglBTsrQrrEqrD05bsafa3uYQ==
X-Received: by 2002:a05:600c:3acd:b0:3cf:550e:d7a2 with SMTP id d13-20020a05600c3acd00b003cf550ed7a2mr3603021wms.97.1670274745356;
        Mon, 05 Dec 2022 13:12:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o22-20020a05600c2e1600b003d1e051f671sm2600015wmf.9.2022.12.05.13.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:12:24 -0800 (PST)
Message-ID: <f46d06f7-d80a-7f97-d487-2c9879c43c03@gmail.com>
Date:   Mon, 5 Dec 2022 22:12:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
 <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
 <20221205185421.GA8102@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205185421.GA8102@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9quny0iyapsy0ZyCK3LigdwN"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9quny0iyapsy0ZyCK3LigdwN
Content-Type: multipart/mixed; boundary="------------DAl2fUaWXh4ngB7VGf7LZw07";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: Jakub Wilk <jwilk@jwilk.net>,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <f46d06f7-d80a-7f97-d487-2c9879c43c03@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
 <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
 <20221205185421.GA8102@Debian-50-lenny-64-minimal>
In-Reply-To: <20221205185421.GA8102@Debian-50-lenny-64-minimal>

--------------DAl2fUaWXh4ngB7VGf7LZw07
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzUvMjIgMTk6NTQsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gTW9uLCBEZWMgMDUsIDIwMjIgYXQgMDI6MTg6
MTlQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi81LzIyIDEz
OjM4LCBKYWt1YiBXaWxrIHdyb3RlOg0KPj4+ICogQWxlamFuZHJvIENvbG9tYXIgPGFseC5t
YW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTEyLTA0IDE1OjA2Og0KPj4+Pj4+PiBJc3N1ZTrC
oMKgwqAgbW91bnQgcG9pbnQgSTxCPiDihpIgbW91bnQgSTxCPg0KPj4+Pj4+Pg0KPj4+Pj4+
PiAiSGVyZSwgSTxCPiBpcyB0aGUgZGVzdGluYXRpb24gbW91bnQsIGFuZCBJPGI+IGlzIGEg
c3ViZGlyZWN0b3J5IHBhdGggdW5kZXIiDQo+Pj4+Pj4+ICJ0aGUgbW91bnQgcG9pbnQgSTxC
Pi7CoCBUaGUgcHJvcGFnYXRpb24gdHlwZSBvZiB0aGUgcmVzdWx0aW5nIG1vdW50LCBJPEIv
Yj4sIg0KPj4+Pj4+PiAiZm9sbG93cyB0aGUgc2FtZSBydWxlcyBhcyBmb3IgYSBiaW5kIG1v
dW50LCB3aGVyZSB0aGUgcHJvcGFnYXRpb24gdHlwZSBvZiINCj4+Pj4+Pj4gInRoZSBzb3Vy
Y2UgbW91bnQgaXMgY29uc2lkZXJlZCBhbHdheXMgdG8gYmUgcHJpdmF0ZS4iDQo+Pj4+Pj4N
Cj4+Pj4+PiBJJ20gbm90IHN1cmUgYWJvdXQgdGhpcyBvbmUuwqAgSWYgd2UgY2hhbmdlIHRo
YXQgd29yZGluZywgSSdkDQo+Pj4+Pj4gbGlrZSB0byBtYWtlIHN1cmUgd2UgZG9uJ3QgbG9z
ZSBhbnkgZGV0YWlscyBpbiB0aGUNCj4+Pj4+PiBpbmZvcm1hdGlvbi7CoCBQbGVhc2UgQ0Mg
YW55IHJlbGF0ZWQga2VybmVsIGRldmVsb3BlcnMsIGFuZA0KPj4+Pj4+IHN1Z2dlc3QgdGhl
bSByZXZpZXcgdGhlIGRvY3VtZW50YXRpb24gZm9yIG1vcmUgY29uc2lzdGVudA0KPj4+Pj4+
IGxhbmd1YWdlLg0KPj4+Pj4NCj4+Pj4+IFVudGlsIHJlY2VudGx5LCB0aGVyZSB3YXMgIm1v
dW50IHBvaW50IiB1c2VkIGFsbCBvdmVyIHRoaXMgbWFuDQo+Pj4+PiBwYWdlcy4gVGhpcyB3
YXMgY2hhbmdlZCB0byAibW91bnQiIGluIG9uZSBvZiB0aGUgcHJldmlvdXMNCj4+Pj4+IHJl
bGVhc2Ugb2YgbWFuIHBhZ2VzLg0KPj4+Pg0KPj4+PiBJIGRpZG4ndCBrbm93IHRoYXQ7IHBs
ZWFzZSBwb2ludCB0byB0aGUgY29tbWl0IHRoYXQgZGlkIHRoYXQuDQo+Pj4NCj4+PiBQcm9i
YWJseSB0aGlzIG9uZToNCj4+Pg0KPj4+ICAgwqAgY29tbWl0IDhjOWE4Mjc0Mjk3NmRjOTg1
NzgzMzhlZjg4Njc3NmYwNmMwYWIzZjINCj4+PiAgIMKgIEF1dGhvcjogTWljaGFlbCBLZXJy
aXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPg0KPj4+ICAgwqAgRGF0ZTrCoMKgIDIwMjEt
MDgtMTggMDE6MzQ6NTQgKzAyMDANCj4+PiAgIMKgwqDCoMKgwqAgbW91bnRfbmFtZXNwYWNl
cy43OiBUZXJtaW5vbG9neSBjbGVhbi11cDogIm1vdW50IHBvaW50IiA9PT4gIm1vdW50Ig0K
Pj4+ICAgwqDCoMKgwqDCoCBNYW55IHRpbWVzLCB0aGlzIHBhZ2UgdXNlIHRoZSB0ZXJtaW5v
bG9neSAibW91bnQgcG9pbnQiLCB3aGVyZQ0KPj4+ICAgwqDCoMKgwqDCoCAibW91bnQiIHdv
dWxkIGJlIGJldHRlci4gQSAibW91bnQgcG9pbnQiIGlzIHRoZSBsb2NhdGlvbiBhdCB3aGlj
aA0KPj4+ICAgwqDCoMKgwqDCoCBhIG1vdW50IGlzIGF0dGFjaGVkLiBBICJtb3VudCIgaXMg
YW4gYXNzb2NpYXRpb24gYmV0d2VlbiBhDQo+Pj4gICDCoMKgwqDCoMKgIGZpbGVzeXN0ZW0g
YW5kIGEgbW91bnQgcG9pbnQuDQo+Pj4gICDCoMKgwqDCoMKgIFNpZ25lZC1vZmYtYnk6IE1p
Y2hhZWwgS2VycmlzayA8bXRrLm1hbnBhZ2VzQGdtYWlsLmNvbT4NCj4+Pg0KPj4+IEJvdGgg
dGVybXMgYXJlIHZhbGlkLCBidXQgdGhleSBoYXZlIGRpZmZlcmVudCBtZWFuaW5ncy4NCj4+
Pg0KPj4+IChObyBpZGVhIHdoaWNoIG9uZSBpcyBhcHByb3ByaWF0ZSBpbiB0aGUgcGFyYWdy
YXBoIGluIHF1ZXN0aW9uLikNCj4+DQo+Pg0KPj4gVGhhbmtzISAgSSBhbHNvIGRvbid0IGtu
b3csIHNvIEknbGwgbGVhdmUgdGhpcyBhcyBpcyBmb3Igbm93Lg0KPiANCj4gU28geW91IHdh
bnQgbWUgdG8gcmVtaW5kIHlvdSBsYXRlciBvbiB0aGlzIG9yIHNob3VsZCBJIHN3aXRjaCBp
dCB0bw0KPiBXT05URklYPw0KDQpZb3UgY2FuIHB1dCBXT05URklYIG9uIHRoaXMgb25lLg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAgICAgICAgICAg
SGVsZ2UNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------DAl2fUaWXh4ngB7VGf7LZw07--

--------------9quny0iyapsy0ZyCK3LigdwN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOOXrcACgkQnowa+77/
2zJZdA//bbYv6UYWObr+momupNPv8DoaoDWcCB0Ei2WZUlDDWtCWRbnel7Oslx13
Rj4DcoZqCqqyvxMk9JprDD/+arhJbcFVj3SE8MGTUbe0Xs0zH/NlGmHjtb7uHSk9
wuQrGnpI7pN51Vva3pznisPg3XfwzkGyU+lxfnFO7N5QdUeOr0usyiNlM0K2+kKu
ucRIRJzPokTt/VDuhL2U6nlraGLTlQxJLSQMdfTv0Hx19QaZ47I+W+c7rMIty0x4
YljTZL5VI6Yx42+n6y0riLhmjgNHFkrz6abLpWcjkFSxCmaMgypgjPn1N4BLQ6ZY
8xxbfWXkmbBh8rsfPSyffNJ1/2MREEC6dbdPTMGp45z949rQ2KYJPjm2nnJwVUqd
yQXmw2jg4X/Q9fv+0tozIq9EiT+rgcjCNBXOiQrWNtQzg4u+wp7EFGpBqbsZnGiF
L5Y9Sp64YjTLXoIfIRMqBghMfz0dyHQbN1pA5t7T8V6Sr+rEZswUjr2tkYfTxLtx
Y9bVOSRakSTDeZgo6qhuvOfLwlQwlkBE9E6Ydc6OV2PZup0pJfl6n0P2UpJpd8Oz
FZ4gVyNSu8VeVpj5l0odAz0vTJXER1VKoxLH1AoklgOXfsnb1h+ot1opXnR7PdCb
GNLwY6hJlOCgjUgAP3Cbpr+XtYkDEoQxEiRUEnBjhd1vTmwjZ2Y=
=iWot
-----END PGP SIGNATURE-----

--------------9quny0iyapsy0ZyCK3LigdwN--
