Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC595688B3B
	for <lists+linux-man@lfdr.de>; Fri,  3 Feb 2023 00:59:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231967AbjBBX7m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Feb 2023 18:59:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbjBBX7l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Feb 2023 18:59:41 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21BAF7FA3A
        for <linux-man@vger.kernel.org>; Thu,  2 Feb 2023 15:59:38 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h12so3221233wrv.10
        for <linux-man@vger.kernel.org>; Thu, 02 Feb 2023 15:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=byGUEj05+64OANlu5sPRQoUQeZNhkAxIykAFOR6v6Ss=;
        b=O07BlAi4aOVG2YaGdIVH7pVypt29uX4FtjmWHhPYvG6GM+2Z7dqEstuqr8VttIIYk3
         J2pspO6ZBsldBveBplSpRcaAwGJiN9rgrVQ7qZnc/kvhUgKSbn+rSgOiPYJgrKxew9ME
         nHSOf0iV2TD4iL91mgtlVu0+j/WY2xwzdj9JoDwT5swV8u2n+Di2t4uPSkBqrjz44vX5
         wDAwQ8hz7Jb9PJ0bEq8ck5+jY72MabXl/GbPSH6Itc5Iz3tLWHhe6Lod7TR3tE2g/jBF
         +7JLZmPWj9ST36pr6g5QUempBEiDb+4rafhb+kjTxgTGZAyiOFV6fx3UJ6SDkeHzgUjL
         kMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=byGUEj05+64OANlu5sPRQoUQeZNhkAxIykAFOR6v6Ss=;
        b=sq5/1eMGGVIlbueHlv+0a2UXOix8uwfUyLg9XLbYTkj6fVuFX4MCBJJHlxJwI8r5JP
         L3utrmStoiZw/tlZLw5NLFisoP8fnAkzJW+TGZiS4Y4GvVxBl3vzKlLvssUynQQSj8Xg
         85bq07RwGB4+p66N5n3rH5VXg4goq16IslFBaKZYD+ARfQWbNAJ3HkBizG61uJ6+PIK8
         Am7DdKWyVasFqn3yfR6XIgYKdQsmIwwabgKeO7SWOKx7FjlVOCKl8kNsBUSOhWS7rUfo
         SOtaTQXqTkr/2j61NRbe5tzynSyrzM/+3RNUgSBQFm6wMC97uQR816w9TqVJAIFKFg7n
         a4yA==
X-Gm-Message-State: AO0yUKUlzUUamTj2W8MdgVeL/ivT+a/ZAfqf6O6bYuWBZ7l46Ndl4YCR
        1RcWn51iRu1vHT2CUmYBPml55BPYN+s=
X-Google-Smtp-Source: AK7set+S7QXUP2AXeTJdgFQJD0uazilPnyvc+zaSPUKZ/aZe9wmTfnhnclQ1CDk/zGgSK54hpnkhhw==
X-Received: by 2002:a5d:6507:0:b0:2bf:dfa2:976f with SMTP id x7-20020a5d6507000000b002bfdfa2976fmr7100005wru.39.1675382376501;
        Thu, 02 Feb 2023 15:59:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bx7-20020a5d5b07000000b002882600e8a0sm637364wrb.12.2023.02.02.15.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 15:59:35 -0800 (PST)
Message-ID: <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
Date:   Fri, 3 Feb 2023 00:59:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Using C23 digit separators not locale digit grouping characters
To:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------59Cfb1IYe0JA8M4YNnMU6Qqi"
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
--------------59Cfb1IYe0JA8M4YNnMU6Qqi
Content-Type: multipart/mixed; boundary="------------noqVAjNL52RtnYROsnJixUvw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
In-Reply-To: <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>

--------------noqVAjNL52RtnYROsnJixUvw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMi8yLzIzIDIzOjI5LCBCcmlhbiBJbmdsaXMgd3JvdGU6PiBIaSBBbGV4LA0KDQpIaSBC
cmlhbiwNCg0KPiANCj4gVG9vayB5b3VyIHZpZXdzIG9uIGJvYXJkIGFuZCBjaGFuZ2VkIG1h
bjIgcGFnZXMuDQo+IEF0dGFjaGVkIHN1bW1hcnkgb25seSBoYXMgZmlsZSBuYW1lcyBhbmQg
Y2hhbmdlZCBsaW5lcy4NCg0KSSBwcmVmZXIgaW5saW5lIGluIHRoZSBlbWFpbCA6KQ0KDQo+
IFdvdWxkIGxpa2UgZmVlZGJhY2sgb24gd2hhdCB0byBjb250aW51ZSBkb2luZyBhbmQgd2hh
dCB0byBmb3JnZXQgZG9pbmcgYmVmb3JlIA0KPiBzdGFydGluZyBtYW4zPw0KDQpTZWUgYmVs
b3cuDQoNCj4gT2Ygbm90ZSBmb3IgcmV2aWV3IGFyZSBvcGVuLjIgb2N0YWwgcGVybXMsDQoN
ClRoZSBvY3RhbHMgcmVhZCBhIGJpdCB3ZWlyZGVyIHRoYW4gdGhlIG90aGVycy4gIFBsZWFz
ZSBrZWVwIHRoZW0gaW4gYSBzZXBhcmF0ZSANCnBhdGNoLCBzbyB3ZSBjYW4gZGVjaWRlIG9u
IGl0IGxhdGVyLiAgQnV0IEkgd291bGRuJ3QgZGlzY2FyZCBpdCBmb3Igbm93Lg0KDQo+IHJl
Ym9vdC4yIExJTlVYX1JFQk9PVF9NQUdJQyogYWRkaW5nIA0KPiBoZXggYmlydGggZGF0ZXMN
Cg0KTEdUTQ0KDQo+IChhcmd1YWJseSBzaG91bGQgcmVtb3ZlIHRoZSBkZWNpbWFscywgb3Ig
YWxsIHZhbHVlcywgYW5kIGNyeXB0aWMgDQo+IGNvbW1lbnQgZnJvbSBkb2M/KSwNCg0KTm90
IHN1cmUgd2hhdCB5b3UgbWVhbi4NCg0KPiBzdGF0c2YuMiBoZXggKl9NQUdJQywNCg0KTEdU
TQ0KDQo+IGNoYW5naW5nIGxhcmdlIGFyYml0cmFyeSB2YWx1ZXMgdG8gDQo+IFNJL0lFQyBz
dWZmaXggZm9ybXMgKGFzIHRoZSBleGFjdCBkZWNpbWFsIHZhbHVlcyBhcmUgbm90IGFzIGlu
Zm9ybWF0aXZlIG9yIA0KPiB1c2VmdWwpLA0KDQpCdXQgSSdkIHVzZSBtdWx0aXBsaWVycyB0
aGF0IHJlc3VsdCBpbiBleGFjdCB2YWx1ZXMuICBTZWUgYmVsb3cuDQoNCj4gYW5kIGZlYXR1
cmUgZG9jcyB1c2luZyB5eXl5XChhcW1tTCAobm8gZXhhbXBsZSAqY29kZSogd2FzIGNoYW5n
ZWQsIA0KPiBhbHRob3VnaCBjb21tZW50cyB3ZXJlKS4NCg0KTEdUTS4NCg0KDQotLS0NCg0K
DQotdGhlIHN1cHBsaWVkIHZhbHVlIGlzIGNsYW1wZWQgdG8gdGhlIHJhbmdlIChcLTMyNzY4
MDAwLCArMzI3NjgwMDApLg0KK3RoZSBzdXBwbGllZCB2YWx1ZSBpcyBjbGFtcGVkIHRvIHRo
ZSByYW5nZSAoXC0zMS4yNU1pLCArMzEuMjVNaSkuDQoNCkknZCBwcmVmZXIgaGVyZSAoXC0z
MjAwMEtpLCArMzIwMDBLaSkuICBEZWNpbWFscyBvbiBtdWx0aXBsaWVycyBpbmR1Y2UgZG91
YnRzIG9uIA0KaG93IG11Y2ggcHJlY2lzaW9uIHlvdSBrZXB0OyByb3VuZCBudW1iZXJzIG1h
a2UgaXQgY2xlYXIuDQoNCg0KLWlzIG91dHNpZGUgdGhlIHJhbmdlIFswLi45OTksOTk5LDk5
OV0uDQoraXMgb3V0c2lkZSB0aGUgcmFuZ2UgWzAuLjk5OVwoYXE5OTlcKGFxOTk5XS4NCg0K
UGxlYXNlIGZpeCBhbHNvIHRoZSBmb3JtYXQgb2YgdGhlIHJhbmdlLCBub3cgdGhhdCB5b3Un
cmUgYXQgaXQgKGluIGEgc2VwYXJhdGUgDQpjb21taXQsIGlmIHlvdSBkb24ndCBtaW5kKS4g
IEkgcHJlZmVyIG1hdGhlbWF0aWNhbCBub3RhdGlvbiwgd2hlcmUgcG9zc2libGU6IFswLCAN
Cjk5OSc5OTknOTk5XS4NCg0KDQotZmllbGQgd2FzIG5vdCBpbiB0aGUgcmFuZ2UgMCB0byA5
OTk5OTk5OTkgb3INCitmaWVsZCB3YXMgbm90IGluIHRoZSByYW5nZSAwIHRvIDk5OVwoYXE5
OTlcKGFxOTk5IG9yDQoNClNhbWUgaGVyZTogWzAsIDk5OSc5OTknOTk5XQ0KDQoNCi1zb3Vy
Y2UsIGEgbWF4aW11bSBvZiAzMzU1NDQzMSBieXRlcyBpcyByZXR1cm5lZCBieSBhIHNpbmds
ZSBjYWxsIHRvDQorc291cmNlLCBhIG1heGltdW0gb2YgMzJNaS0xIGJ5dGVzIGlzIHJldHVy
bmVkIGJ5IGEgc2luZ2xlIGNhbGwgdG8NCg0KV2hlbiB0aGUgdmFsdWUgaXMgbm90IGFuIGV4
YWN0IG9uZSwgYXMgaGVyZSB3aGVyZSBpdCdzIHRoZSBtdWx0aXBsaWVyIG1pbnVzIG9uZSwg
DQpJIHByZWZlciBhIG1vcmUgY29ycmVjdCBtYXRoZW1hdGljYWwgbm90YXRpb246IDJeMjUt
MQ0KDQoNCi0odGhhdCBpcywgMHhmZWUxZGVhZCkgYW5kDQorKHRoYXQgaXMsIDB4ZmVlMVwo
YXFkZWFkKSBhbmQNCi0odGhhdCBpcywgNjcyMjc0NzkzKS4NCisodGhhdCBpcywgNjcyXChh
cTI3NFwoYXE3OTMgMHgyODEyXChhcTE5NjkpLg0KLSh0aGF0IGlzLCA4NTA3MjI3OCkNCiso
dGhhdCBpcywgODVcKGFxMDcyXChhcTI3OCAweDA1MTJcKGFxMTk5NikNCi0odGhhdCBpcywg
MzY5MzY3NDQ4KQ0KKyh0aGF0IGlzLCAzNjlcKGFxMzY3XChhcTQ0OCAweDE2MDRcKGFxMTk5
OCkNCi0odGhhdCBpcywgNTM3OTkzMjE2KQ0KKyh0aGF0IGlzLCA1MzdcKGFxOTkzXChhcTIx
NiAweDIwMTFcKGFxMjAwMCkNCg0KSW4gdGhlc2UgY2FzZXMsIHdoZXJlIHlvdSBhZGRlZCB0
aGUgaGV4IGVxdWl2YWxlbnQsIEkgdGhpbmsgaXQgd291bGQgbmVlZCBhIA0KY29tbWEgYXMg
YSBzZXBhcmF0b3IsIGFuZCBtYXliZSBzb21lIGNvbm5lY3Rvcj8NCg0KDQotdGhpcyBsaW1p
dCB3YXMgMHgyMDAwMDAwICgzMlwgTUIpLg0KK3RoaXMgbGltaXQgd2FzIDB4MjAwXChhcTAw
MDAgKDMyXCBNaUIpLg0KDQpDb3VsZCB5b3UgcGxlYXNlIHNlcGFyYXRlIHRoZSBidWdmaXhl
cyBzdWNoIGFzIHRoaXMgb25lIGluIGEgZGlmZmVyZW50IHBhdGNoLCBpZiANCnlvdSBkb24n
dCBtaW5kPyAgSSBkb24ndCBjYXJlIGFib3V0IHRoZSBvcmRlciBvZiB0aGVtLCB0aG91Z2gu
DQoNCg0KLUFGU19TVVBFUl9NQUdJQyAgICAgICAweDUzNDY0MTRmDQotQU5PTl9JTk9ERV9G
U19NQUdJQyAgIDB4MDkwNDE5MzQgLyogQW5vbnltb3VzIGlub2RlIEZTIChmb3INCitBRlNf
U1VQRVJfTUFHSUMgICAgICAgMHg1MzQ2XChhcTQxNGYNCitBTk9OX0lOT0RFX0ZTX01BR0lD
ICAgMHgwOTA0XChhcTE5MzQgLyogQW5vbnltb3VzIGlub2RlIEZTICgNCg0KSSdtIGdldHRp
bmcgYSBiaXQgY29uZnVzaW5nIHdoaWxlIHJlYWRpbmcgdGhlIGRpZmYuICBUaGUgXChhcSBz
eW50YXggaXMgDQpkZWZpbml0ZWx5IGEgYml0IGNvbmZ1c2luZyB3aGVuIG1peGVkIHdpdGgg
b3RoZXIgcmFuZG9tIGNoYXJhY3RlcnMgdGhhdCB0aGUgDQpicmFpbiBkb2Vzbid0IHJlY29n
bml6ZSBhcyB3b3Jkcy4gIFdlIGNhbiBzb2x2ZSB0aGlzIGJ5IHVzaW5nIFxbYXFdIG5vdGF0
aW9uLCANCndoaWNoIEkgbGlrZSBtb3JlIHBlcnNvbmFsbHkuICBQbGVhc2UgdXNlIHRoaXMg
c3ludGF4LiAgV2UnbGwgYWxzbyBuZWVkIHNvbWUgDQpnbG9iYWwgZml4ZXMgdG8gY2hhbmdl
IHRoZSBub3RhdGlvbiBhbGwgYWNyb3NzIHRoZSBwYWdlcy4gIEknbSBub3QgYXNraW5nIHlv
dSB0byANCmRvIHRoaXMgdGhvdWdoLiAgSXQncyBwcm9iYWJseSBhIGxvdCBvZiB3b3JrLiAg
SSBjYW4gZG8gdGhhdCBhZnRlciB5b3VyIHBhdGNoZXMuDQoNCg0KT3RoZXIgdGhhbiB0aG9z
ZSBtaW5vciBjb21tZW50cywgSSBsaWtlIHRoZSBkaWZmIHZlcnkgbXVjaC4gIFBsZWFzZSBj
b250aW51ZSA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEy
ODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQo=

--------------noqVAjNL52RtnYROsnJixUvw--

--------------59Cfb1IYe0JA8M4YNnMU6Qqi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPcTmYACgkQnowa+77/
2zJtQw//VCUOwATDsV97NBSrNlS9yALX+vAYDE8IABuIAusLgYpwdJcx1ZucW9gk
tjLct4BIaQrZ7NdBV1gHWGYemVcOXJkVQ2om+ZBiMoGhRMF2jb72DO0GMPuqHQsF
KozJznYrIXLwE0w5NSVCCwOVT5DtVmm0JKserL5RTkvfyOQ61tMAQSY0GJRmxZI7
KMz5GE5/QAw+rCV1re8lP6bOqK5Ibh43AgSemXJqRLFdmPi8VLFMWqv99JQoopfj
PUNAbDA9aslXtaiSy8rCz2O47x+wIAVhB3yteiH0z71v95HFxkKrxXTy5jrZp749
WkbFMG5WjipT3oFpJBrUbJMNuyI9iEYVJ2e7V0fW7cZ1LeM4mDY4h4Wujl432qLO
vGF6XVGiz4635uYz3VGJHGfdp1H9umJjlMwEe1klGREdRUYAl4Fpe9JlFQ3XhNNV
ZkqTlxJU0SbxOKirijp6kF5f2m1PjUJUhvYGmATir6Er/RUGebLf4JYATUek72fC
h04h+l8b8OEYwj7jsmBmwCH1D0ArQ6rLsReBlZROnIlJfVig5st9uBZOUYn5BvLo
jn1jqkOXYtjb8KaDOHu0qVhW6R23F+Z73cFqF5J9dKN6+FQX2vEFPgT77YGdS1hD
+oKShYsZ64ozOHFHtduCYNTJ/Vc4kkbM2qdiyLdPoyVXngoeUC0=
=b7s6
-----END PGP SIGNATURE-----

--------------59Cfb1IYe0JA8M4YNnMU6Qqi--
