Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8C862CD68
	for <lists+linux-man@lfdr.de>; Wed, 16 Nov 2022 23:11:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231734AbiKPWLQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 17:11:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiKPWLP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 17:11:15 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ABCA6A6B8
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 14:11:14 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l14so32416006wrw.2
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 14:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPCx077NvxWPQoBixGccXYdOgJSv5r+pqRsZiXY+DIw=;
        b=fI+pSSCtx39H+u/HF56U8Gfk+jVtlcS3A6wa8qq991/zJIi8lDrDD8BLsgwBCRvudh
         cqwr1aazVvVM2CS9WDJIwUbopkq/AIXMUhIYcERhso7SO6OO30HVGtESDDu+ZJFt1CmZ
         cLiNZz4pCqEsqtVpTEa6DzCSCtzBtof6oyIZsItv8KyVsK0VxSyodSJ0DvvOPRBp5P9z
         /Boi14TYySDJtkmvQxSnSomAiD1/N7sBHlEF5m3FuRLDf+WZ/aMft+NErCyN9cutINBK
         r5Eho98cUg2GS56FmK+ZfbciLXpo5YsnJNz9o/Cov0JV1kqUqJW25U0vz3m6ZCYO3BYA
         nspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YPCx077NvxWPQoBixGccXYdOgJSv5r+pqRsZiXY+DIw=;
        b=VQb71QaUx2UKf8/bfPUhUzd+9kWit2y0HYhW7Et9HiVQ8/fPjmpByZ9u3GoqzW09gV
         FFCbi5EPYVOYQtGuslYT7/ThIuAQxD+uUaerGoT/F08hxuOiSvejnl6dfMLhPgxxWXf5
         zR/v7wht32aMfGcw09GCkdVUSlUoAJY7tfz527cGWph7v7DpB56d68mqyh9iF6tulf0B
         0GpnBbY7UzA8rIWimQ3CTaWLA3w/7eF1D+z0rjuIAKjFFzSJcB3T9Uuzb8kY9S+SrvsK
         6fnqwceymKvN73gR45je857Z8W/LBhbMSHJzojheDk62owpen3SH/avgZs4u/6geuUKD
         y4HQ==
X-Gm-Message-State: ANoB5pkVyXlPdcKeEaoD3hVtxYaipCtbiNuJSBLlb/VqePjTIgXvGZxV
        2ifUt2oUIVjKCYuktfxdUjU=
X-Google-Smtp-Source: AA0mqf53PopEOq23ZpOKZA5/KUMMNPk2DVgpXgxmGU/8y01BXg8XAV8VmH0GSFG4JHRSPyc7m+8lNw==
X-Received: by 2002:adf:ea4d:0:b0:236:8fa1:47cf with SMTP id j13-20020adfea4d000000b002368fa147cfmr15735610wrn.50.1668636673184;
        Wed, 16 Nov 2022 14:11:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a22-20020a5d4576000000b002365254ea42sm16274107wrc.1.2022.11.16.14.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 14:11:12 -0800 (PST)
Message-ID: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
Date:   Wed, 16 Nov 2022 23:11:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20221116215036.30423-1-mail@thomasvoss.com>
 <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>
In-Reply-To: <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JN2kknzO7RwoACzDtbnGMKfk"
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
--------------JN2kknzO7RwoACzDtbnGMKfk
Content-Type: multipart/mixed; boundary="------------0TrcymiD3ZODXPNf1hOd2IdB";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <20221116215036.30423-1-mail@thomasvoss.com>
 <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>
In-Reply-To: <af30ba85-a9c5-741a-9937-e3b1327fe827@gmail.com>

--------------0TrcymiD3ZODXPNf1hOd2IdB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzE2LzIyIDIzOjA2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
VGhvbWFzLA0KPiANCj4gT24gMTEvMTYvMjIgMjI6NTAsIFRob21hcyBWb3NzIHdyb3RlOg0K
Pj4gSSBzZWUgd2UgaGF2ZSBtYW51YWxzIGZvciBjb25zdGFudHMsIHR5cGVzLCBhbmQgbW9y
ZSBub3chwqAgVGhhdCBzdXJlIGJyaW5ncyBhDQo+PiBzbWlsZSB0byBteSBmYWNlIDopLg0K
PiANCj4gSXQncyBnb29kIHRvIHNlZSB0aGF0IHRoZXJlJ3MgYXVkaWVuY2UgdGhhdCBsaWtl
cyB0aGVzZS7CoCA6KQ0KPiANCj4gDQo+PiDCoEkgZ3Vlc3MgSSBtaWdodCBoZWxwIG91dCBh
IGJpdCB3aWxsIGZpbGxpbmcgb3V0IHNvbWUgb2YNCj4+IHRoZSBtaXNzaW5nIG1hbnVhbHMu
DQo+IA0KPiBTdXJlLg0KPiANCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgVm9zcyA8
bWFpbEB0aG9tYXN2b3NzLmNvbT4NCj4+IC0tLQ0KPj4gwqAgbWFuM2NvbnN0L0VYSVRfRkFJ
TFVSRS4zY29uc3QgfMKgIDEgKw0KPj4gwqAgbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29u
c3QgfCA1OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspDQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2
NDQgbWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QNCj4+IMKgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBtYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdA0KPj4NCj4+IGRpZmYgLS1naXQg
YS9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdCBiL21hbjNjb25zdC9FWElUX0ZBSUxV
UkUuM2NvbnN0DQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMDAw
Li5iYTBkNjJkZjkNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL21hbjNjb25zdC9FWElU
X0ZBSUxVUkUuM2NvbnN0DQo+PiBAQCAtMCwwICsxIEBADQo+PiArLnNvIG1hbjNjb25zdC9F
WElUX1NVQ0NFU1MuM2NvbnN0DQo+PiBkaWZmIC0tZ2l0IGEvbWFuM2NvbnN0L0VYSVRfU1VD
Q0VTUy4zY29uc3QgYi9tYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdA0KPj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMC4uZGQ2ZjkwOGU1DQo+PiAtLS0g
L2Rldi9udWxsDQo+PiArKysgYi9tYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdA0KPj4g
QEAgLTAsMCArMSw1OCBAQA0KPj4gKy5cIiBDb3B5cmlnaHQgKGMpIDIwMjIgYnkgVGhvbWFz
IFZvc3MgPG1haWxAdGhvbWFzdm9zcy5jb20+DQo+PiArLlwiDQo+PiArLlwiIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQNCj4+ICsuXCINCj4+
ICsuXCINCj4+ICsuVEggRVhJVF9TVUNDRVNTIDNjb25zdCAoZGF0ZSkgIkxpbnV4IG1hbi1w
YWdlcyAodW5yZWxlYXNlZCkiDQo+PiArLlNIIE5BTUUNCj4+ICtFWElUX1NVQ0NFU1MsIEVY
SVRfRkFJTFVSRSBcLSB0ZXJtaW5hdGlvbiBzdGF0dXMgY29uc3RhbnRzDQo+PiArLlNIIExJ
QlJBUlkNCj4+ICtTdGFuZGFyZCBDIGxpYnJhcnkNCj4+ICsuUkkgKCBsaWJjICkNCj4+ICsu
U0ggU1lOT1BTSVMNCj4+ICsubmYNCj4+ICsuQiAjaW5jbHVkZSA8c3RkbGliLmg+DQo+PiAr
LlBQDQo+PiArLkIgIiNkZWZpbmUgRVhJVF9TVUNDRVNTwqAgLyogLi4uICovIg0KPiANCj4g
QWx0aG91Z2ggSVNPIEMgbGVhdmVzIHRoZSB2YWx1ZSB1bnNwZWNpZmllZCwgUE9TSVggZ3Vh
cmFudGVlcyBpdCBpcyAwLCBzbyBJJ2QgDQo+IGRvY3VtZW50IGl0IGFzIHN1Y2guDQo+IA0K
PiBUaGUgZXhhY3QgZGVmaW5pdGlvbiBpbiBnbGliYyBpcyAoaW4gbXkgc3lzdGVtKToNCj4g
DQo+ICDCoMKgwqAgJCBncmVwYyBFWElUX1NVQ0NFU1MgL3Vzci9pbmNsdWRlL3N0ZGxpYi5o
DQo+ICDCoMKgwqAgL3Vzci9pbmNsdWRlL3N0ZGxpYi5oOjkzOg0KPiAgwqDCoMKgICNkZWZp
bmXCoMKgwqAgRVhJVF9TVUNDRVNTwqDCoMKgIDDCoMKgwqAgLyogU3VjY2Vzc2Z1bCBleGl0
IHN0YXR1cy7CoCAqLw0KPiANCj4gU28gSSdkIGRvY3VtZW50IGl0IGFzOg0KPiANCj4gLkIg
IiNkZWZpbmUgRVhJVF9TVUNDRVNTwqAgMCINCj4gDQo+PiArLkIgIiNkZWZpbmUgRVhJVF9G
QUlMVVJFwqAgLyogLi4uICovIg0KPiANCj4gVGhlIC8qIC4uLiAqLyBzaG91bGQgbm90IGJl
IGluIGJvbGQgKHdoaWNoIG1ha2VzIG1lIHJlYWxpemUgSSBkaWQgaXQgd3JvbmcgaW4gDQo+
IEVPRi4zY29uc3QsIHNvcnJ5KS7CoCBBbHNvLCBQT1NJWCBzcGVjaWZpZXMgdGhhdCBpdCBz
aG91bGQgYmUgYSBub24temVybyB2YWx1ZSwgDQo+IHNvIEknZCBkb2N1bWVudCBpdCBhczoN
Cj4gDQo+IC5CUiAiI2RlZmluZSBFWElUX0ZBSUxVUkUiICLCoCAvKiBub24temVybyAqLyIN
Cg0KUXVpY2sgc2VsZi1jb3JyZWN0aW9uOg0KDQpJbiBtYW4tcGFnZXMoNyksIG91ciBndWlk
ZSBzdHlsZSBzYXlzIHdlIHNob3VsZCB1c2Ugbm9uemVybyByYXRoZXIgdGhhbiBub24temVy
by4NCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------0TrcymiD3ZODXPNf1hOd2IdB--

--------------JN2kknzO7RwoACzDtbnGMKfk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1X/8ACgkQnowa+77/
2zKD7A/+Oc1SZPX/AAHIcgwjY0O5bRCYmez7/AzyA+x8fDfXeX9Gbuh4LfnzUDw1
Oa+DiOmu8raXwcM5xow6RgwCtUiyWwwQUtzMhTjDw9iiW9gvS/D+akh33ijZeyAz
FtOPfV837zZupb/as/JyOKIpKR/uTo/Lv3Tji9viahPbwptJdnfR2tgHKvR79gLj
XH+000snPcBS2iKWW6N3pdZMO4o/QatCDSSCHvz5E/m91wb7XAogk3FW7/WOa1jn
HL42D7YVr1EvgXkdWjA0QjJ742/8uYGwwNisI+1ObL90VXfjNaOVyX1Fu8sbxWro
LPlvdyOrmXQb4LgYj7YiFU/eXsDElRjnh6G1uQnnddhgDyTs3OVgImt0xuzcIz85
H2eW7mmFqUBpc+/+sR5bYjH74zftjq2v+C/14Ovh1i1lwJVZkjq650rsVA72gNE2
7ZGdPQ2qBBN6n8HSLFFRhb7OU+xNA7n5tRc8vwsZ08nPdNL1GdZhg/lI7Ito8ihv
GdLiwF7DOQJJGe377auZjGSPdht2Un0XOgYzAgOwqHN1PhoHqoXQVGZlJWO+pk3J
8cUdgb8Vp0PQwgEYvs6X6QW3ncCXa2kuD+lwHUWorq3hG/Eui8gQgF6QHK4QOfZD
TzcFuXiL+yxWlzEQUKRh3JRXHKP/W9M2kjmzk2USlkTJC/tCTTQ=
=8xay
-----END PGP SIGNATURE-----

--------------JN2kknzO7RwoACzDtbnGMKfk--
