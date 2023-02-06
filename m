Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E52B368BAB8
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 11:47:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjBFKr1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 05:47:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjBFKr0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 05:47:26 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F58016300
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 02:47:24 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id y1so9940293wru.2
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 02:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IA7v+3f2mfuyBlKuSdMONvVTmEDf5XvfIkBe/fxF2J8=;
        b=aQZYWyJYetfC327qJm404AcDYLhudxhMhfCo+6eCgKjnBybw30oprVBSc3HVLJd/Jk
         g0yUZTGwnpU2ZmxhFoeywzzlrMP/6m/Ae8qKelXJaPgwu92HzE0E/1Jwf3MeGV27+9LF
         C5yfa/IlU2Hcc8Cqo3twkNazgP5IozRwPy5uxzj6uQRK7JRKfHv5VGMInSjP6AuBLbM1
         5v2XU1vumxVh8oEVmKwoXZNrrTEWmaGXy9Q3WClGQLfZbuCw444rpfhgRAxQyT38Hy/K
         P/xBJBAAdZeEZ4+AkcvJkNP9GVmS8yY/S+b5ef88YPop6/MibvwP8ZVvBelLZzl0O4Vz
         qsDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IA7v+3f2mfuyBlKuSdMONvVTmEDf5XvfIkBe/fxF2J8=;
        b=7ZaF8QH7n4bR3K5uICONBGDKLZBD40KNf9UxPv+PgkoP1DLdIIpL1i3+N4+njCUrnW
         aV/sAbGKbYiyXDulW8gp7dmg7/o6P9w2khDJ4l14ZEBIT0RsNtaLM2VjO+sTAGETGpSe
         Qi5T+7g2Ywm54KkjqkG1EVjKC6fu88nGdk75qeyB4BV+enYoadca5lbkJ4Q79p1wUvD7
         0ZUuTcHLfT5LrKmEIqjIDDMGWLwoN14Nkjcv/z0QNJGRaIv7CkTvK6C/VeAwZjOPUd3G
         U0+R0k/Ny8OtIfV2NSXlrjNnu72/856UoJ6Jw2UpgrWnwsM1SZh3hohXzmvvHr/iYWWn
         Pd5w==
X-Gm-Message-State: AO0yUKWlMgLduIKU2ImtPajSXT4rUF1GRuDjtkDqKSxX4pKMY1rPR+V3
        ZiyOkY+fAS42OyMKkm7p3O78ZQ8D274=
X-Google-Smtp-Source: AK7set+FUqwGuLsIYNMH/yAMWk3ZGaPuoFtzcYPueipqJ451jB6lSIN0zNi7hjwxr9ZEQlpuafAdbg==
X-Received: by 2002:a05:6000:1561:b0:2bf:eb67:4774 with SMTP id 1-20020a056000156100b002bfeb674774mr24472036wrz.11.1675680443339;
        Mon, 06 Feb 2023 02:47:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j5-20020a5d5645000000b002c3efee2f4bsm413984wrw.80.2023.02.06.02.47.22
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 02:47:22 -0800 (PST)
Message-ID: <16bed7ee-0b58-078b-4a25-9ed85748801f@gmail.com>
Date:   Mon, 6 Feb 2023 11:47:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
 <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
 <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
 <85435ead-0573-340f-56a2-4dda1990b20c@Shaw.ca>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <85435ead-0573-340f-56a2-4dda1990b20c@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------t1O08lrTlRkGdyH7LO3eYz0C"
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
--------------t1O08lrTlRkGdyH7LO3eYz0C
Content-Type: multipart/mixed; boundary="------------ClXO00wojo20cey9gGDKiJwp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <16bed7ee-0b58-078b-4a25-9ed85748801f@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
 <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
 <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
 <85435ead-0573-340f-56a2-4dda1990b20c@Shaw.ca>
In-Reply-To: <85435ead-0573-340f-56a2-4dda1990b20c@Shaw.ca>

--------------ClXO00wojo20cey9gGDKiJwp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJpYW4sDQoNCk9uIDIvNi8yMyAwNTo0NiwgQnJpYW4gSW5nbGlzIHdyb3RlOg0KPiBP
biAyMDIzLTAyLTA1IDE3OjAyLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDIv
Ni8yMyAwMDozMSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBDb3VsZCB5b3UgcGxl
YXNlIHNlbmQgdGhlIHBhdGNoZXMgaW5saW5lPw0KPiANCj4+PiBJZiB5b3UgZmVhciB0aGF0
IHlvdXIgbWFpbGVyIG1pZ2h0IGJyZWFrIHRoZW0sIHNlbmQgdGhlbSBfYWxzb18gYXR0YWNo
ZWQsIGJ1dCANCj4+PiBwbGVhc2Ugc2VuZCB0aGVtIGlubGluZSBpbiB0aGUgZW1haWwuDQo+
IA0KPj4gQWxzbywgcGxlYXNlIHNlbmQgZ2l0IHBhdGNoZXMsIHdpdGggYSBjb21taXQgbWVz
c2FnZSwgd2hpY2ggY2FuIGJlIHByb2R1Y2VkIA0KPj4gd2l0aCBnaXQtZm9ybWF0LXBhdGNo
KDEpLg0KPiANCj4gSSBkaWQgbXkgdXN1YWw6DQo+ICQgc2VkIC1pIC1lICcNCj4gcyFeLi4u
JCEuLi4hDQo+ICDCoMKgwqDCoC4uLg0KPiAnDQo+ICQgLi4uDQo+ICQgZ2l0IGNvbW1pdCAt
bSAnbWFuMi8uLi4nIG1hbjIvLi4uDQo+ICMgMTEgY29tbWl0czogOSBpbmRpdmlkdWFsIDgg
ZmlsZXMsIDEgaW50ZXJ2YWwgbm90YXRpb24gNiBmaWxlcywgMSByZXN0IDMzIGZpbGVzDQo+
ICQgZ2l0IGZvcm1hdC1wYXRjaCAuLi4gLTExDQo+ICQgZ2l0IHNlbmQtZW1haWwgLi4uIDAw
Pz8tLi4uDQoNCkhtbSwgSSB0aG91Z2h0IHlvdSBoYWQgc2VudCBpdCB3aXRoIHNvbWV0aGlu
ZyBlbHNlLCBzaW5jZSBJIGhhZCBuZXZlciBzZWVuIA0KZ2l0LWZvcm1hdC1wYXRjaCBjcmVh
dGUgc3VjaCBhbiBlbWFpbCwgYnV0IGluIGZhY3QgaXQgY2FuLiAgSSBndWVzcyB5b3UgdXNl
IA0KLS1hdHRhY2g9Li4uIG9yIGhhdmUgaXQgY29uZmlndXJlZCBpbiB5b3VyIGdpdCBjb25m
aWcuICBDb3VsZCB5b3UgcGxlYXNlIGNyZWF0ZSANCnRoZSBwYXRjaCB3aXRoIGdpdCBmb3Jt
YXQtcGF0Y2ggLS1uby1hdHRhY2ggLi4uID8NCg0KPiANCj4gU2F3IG5vIG5lZWQgZm9yIGxv
bmdlciBtdWx0aS1saW5lIGNvbW1pdCBtZXNzYWdlcyBhcyBlYWNoIHdhcyBwcmV0dHkgc3Bl
Y2lmaWMuDQo+IFBsZWFzZSBzYXkgaWYgeW91IHByZWZlciBhIGRpZmZlcmVudCBwYXRjaCBm
b3JtYXQgb3IgY29udmVudGlvbi4NCj4gDQo+IERvIHlvdSBleHBlY3Qgc29tZSBvdGhlciBl
bWFpbCBjbGllbnQgdGhhbiBnaXQgdG8gYmUgdXNlZCB0byBzZW5kIGVtYWlsLCBvciBkbyAN
Cj4geW91IGp1c3Qgd2FudCBhbGwgdGhlIHBhdGNoIGRpZmZzIGluIGEgc2luZ2xlIGVtYWls
IGJvZHkgb3Igd2hhdD8NCg0KTm8sIGluIGZhY3QgSSBleHBlY3QgZ2l0IHdpdGggZGVmYXVs
dCBzZXR0aW5ncyA6KQ0KDQo+IA0KPiBTb21lIHBhdGNoZXMgbWF5IGJlIGRlbGF5ZWQgb3Ig
ZGlzam9pbnQgYXMgbXkgSVNQIGVtYWlsIGlzIGFnZ3Jlc3NpdmVseSBmaWx0ZXJlZCANCj4g
YnkgYW4gb3V0c291cmNlZCAicHJvdmlkZXIiIHRoYXQgZG9lcyBub3QgbGlrZSBwYXRjaCBz
ZXJpZXMgaW4gb3Igb3V0IGFuZCBmYWlscyANCj4gd2l0aCBubyBzdGF0dXMgY29kZTogIjxm
cm9tLi4uPiBzZXJ2ZXIgdGVtcG9yYXJpbHkgdW5hdmFpbGFibGUuIEFVUCNNWFJUIiENCg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhE
NTc2MzNENDQxRTI1QkI1DQo=

--------------ClXO00wojo20cey9gGDKiJwp--

--------------t1O08lrTlRkGdyH7LO3eYz0C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPg2rkACgkQnowa+77/
2zLNaQ//ee3eUdcJteXIY1ikReoNXpDUHYuDeGm0KXuN+w4P0HkLpKn2TYkQb62c
iXoj8ZWXuzll7o41V+ZKiis8flNgKXLu6lIbVlr27UTEijQBATdMXju4UzBX2r5q
19yAh1JCdvlIgh19h7tg1Ojyv+3kAjXrp4Tmn6I2/piuqB2HOj2uNAM1PhTgYR/1
uIVj3CwvZ5ZbqTwOU7GuqKXe81w9r1IOld2ITxZwJrSWjN/t7HFROg0DPfP2m6eu
KbCewGYp9jsKE4Zs4sl193Y7O1BO6xgjvHOpykuwQF5YLU3QC6UZjg/7g7CtOY8+
dALF01AdEzahkNczj2TmyS3V3ScFm7w3Vlio2qKmacd8czwkAC1ipuHV3U0/Ugxy
j3j3OeYafxert9nN6gHuDQOhuSvZdbyZXNkurvc2w6gwuZ6ed2vCzdf9Y17bpoVO
1o1hgr4ucJOb2iLFP1/e9361B4Ljo0TpWL8IqqFDTpitQ3bb2UuCtxUR/ZQrolNq
om+5p4d9cAq7lD7Ti7JN6cuIB9W/dKVGBjXrSlxZ4edTQ6V673yblGQK9oyzHY4S
HzPZ9jA4ktt99FUqtY+zf3XJv4T0q0akVrki7x56otkNA1EzNdFR+VuQ4FtxeU70
QgZ/T00W/++++1FUg+nIPDfRuoMfT0U9LlfJnxoB8kQ+9H+J7Gc=
=0zK+
-----END PGP SIGNATURE-----

--------------t1O08lrTlRkGdyH7LO3eYz0C--
