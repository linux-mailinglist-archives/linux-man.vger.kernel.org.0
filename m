Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF1E95798B8
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 13:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234171AbiGSLo2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 07:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231232AbiGSLo2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 07:44:28 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B994F41D10
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:44:25 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bu1so21179562wrb.9
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=2gKgtPOSidisVc8tdg5k2Lp7RkqmLi54ck8skQaMYeU=;
        b=I0x6YyrtNRLf6QKp98FFJfQHNhuPGa5dRv+69r5lL218gi7XYruZikyE8sbMGXecd3
         DdhyM5LQO+3Qcvw/pUS8jJAyDOLHzKvU2LG0XjXezANf8gEmXv7ejYIOlqNW6VqEJVvD
         Iu/xANBMsoXkz40cqFc5gVSoMnsbdGEmpD2hq7Nw77/chfoSn9XIsApMDd+FkNYw+S8H
         HKdNlMGEDWRKAngm4crHLtBCACEA5gtY+J6jyYhW1JDLs+KLoo4nIn76rhREai+oQZ5R
         TgdF4k6NAFnzD4bjOl17TtojRvs0eEItsYlvf1qeB9u70VIw5wURvvm7TUaPml33nTM8
         bZ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=2gKgtPOSidisVc8tdg5k2Lp7RkqmLi54ck8skQaMYeU=;
        b=TaSzuU9tuSP8KcMpBEJ/YCTF5pTZG/RpExiLIAZ8gPvlECeQSNJ/ZleFIRxM3piSc2
         zfH0LddlTi9PWtYcp+GSdBnuWSBzHEBsklsc+3uUUTSr01z2nzHBPlIqlvjtEToECtHW
         AWQbOIZwzkGUoPwvki2q9o1f9oRJZ18UMfWFlgNXMOXFG5qcbQAt9svd+fFkMhEugLPY
         7JSvH86vQdY9aIWgkvSyrh5lqILfsVWemmfDJYS+z6FJHIlp66K2IcyxfpLoDZzbcq6V
         HbDoAJuN6/dBIWQnV7IOm88FMd/LZk2vjIE/usxSrWSwhGBrA9VBvrjgpenAmDsQP8me
         5Gqg==
X-Gm-Message-State: AJIora+PpcccE8jh4A+rT2NQp9V9iS/vRGppoT6gVYX9uAVbGkkHR8HT
        qX4zAYqT4owTOxep90NPl2EQTfOWqxc=
X-Google-Smtp-Source: AGRyM1tomXQW4ZI1UBz6yrPgyV+QFIBkLqvKAPc/b//oOeaFnz9HT7aSsD/UfLZWzroSKebUD39TVA==
X-Received: by 2002:adf:e483:0:b0:21d:a52e:261d with SMTP id i3-20020adfe483000000b0021da52e261dmr25423018wrm.228.1658231064154;
        Tue, 19 Jul 2022 04:44:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n6-20020a1c7206000000b003a31f71c5b8sm5409371wmc.27.2022.07.19.04.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:44:23 -0700 (PDT)
Message-ID: <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
Date:   Tue, 19 Jul 2022 13:44:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 2/5] tm.3type: align ranges
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EozO0IIM3XVuzkHWF8mANFQX"
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
--------------EozO0IIM3XVuzkHWF8mANFQX
Content-Type: multipart/mixed; boundary="------------J3fdv5ep7fO8fQMzzZhb44i4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e1f74540-9a40-1e6a-f334-594b42cfe6a5@gmail.com>
Subject: Re: [PATCH 2/5] tm.3type: align ranges
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <7125737470fced1f56ee48912df456c4eb941ff6.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------J3fdv5ep7fO8fQMzzZhb44i4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA3LzE5LzIyIDAzOjU2LCDQvdCw0LEgd3JvdGU6DQo+IFRoaXMs
IHRvIG1lLCBtYWtlcyB0aGVzZSBtdWNoIG1vcmUgcmVhZGFibGUNCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxl
d2VsaS54eXo+DQoNCkkgbGlrZSB0aGUgY29uY2VwdCBvZiB0aGUgY29tbWl0LCBidXQgSSB3
b25kZXIgaWYgd2UgY2FuIGRvIGl0IGluIGEgDQpiZXR0ZXIgd2F5LiAgSSB3YXMgd29uZGVy
aW5nIHNwZWNpZmljYWxseSBhYm91dCBtb3ZpbmcgdGhlIHJhbmdlcyB0byANCmJlZm9yZSB0
aGUgc2hvcnQgZGVzY3JpcHRpb24sIHNvIHRoYXQgdGhleSB3b3VsZCBiZSBhbGlnbmVkIG5h
dHVyYWxseSwgDQp3aXRob3V0IG5lZWRpbmcgc28gbXVjaCB3aGl0ZXNwYWNlLg0KDQpXaGF0
IHdvdWxkIHlvdSBwcmVmZXI/DQoNClJlbmRlcmVkOg0KDQpbDQpTWU5PUFNJUw0KICAgICAg
ICAjaW5jbHVkZSA8dGltZS5oPg0KDQogICAgICAgIHN0cnVjdCB0bSB7DQogICAgICAgICAg
ICBpbnQgIHRtX3NlYzsgICAgLyogWzAsIDYwXSBTZWNvbmRzICovDQogICAgICAgICAgICBp
bnQgIHRtX21pbjsgICAgLyogWzAsIDU5XSBNaW51dGVzICovDQogICAgICAgICAgICBpbnQg
IHRtX2hvdXI7ICAgLyogWzAsIDIzXSBIb3VyICovDQogICAgICAgICAgICBpbnQgIHRtX21k
YXk7ICAgLyogWzEsIDMxXSBEYXkgb2YgdGhlIG1vbnRoICovDQogICAgICAgICAgICBpbnQg
IHRtX21vbjsgICAgLyogWzAsIDExXSBNb250aCAoSmFudWFyeSA9IDApICovDQogICAgICAg
ICAgICBpbnQgIHRtX3llYXI7ICAgLyogWWVhcnMgc2luY2UgMTkwMCAqLw0KICAgICAgICAg
ICAgaW50ICB0bV93ZGF5OyAgIC8qIFswLCA2XSBEYXkgb2YgdGhlIHdlZWsgKFN1bmRheSA9
IDApICovDQogICAgICAgICAgICBpbnQgIHRtX3lkYXk7ICAgLyogWzAsIDM2NV0gRGF5IG9m
IHRoZSB5ZWFyIChKYW4vMDEgPSAwKSAqLw0KICAgICAgICAgICAgaW50ICB0bV9pc2RzdDsg
IC8qIERheWxpZ2h0IHNhdmluZ3MgZmxhZyAqLw0KICAgICAgICB9Ow0KXQ0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zL3RtLjN0eXBlIHwgMTIgKysrKysrLS0tLS0t
DQo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL3RtLjN0eXBlIGIvbWFuMy90bS4zdHlwZQ0KPiBp
bmRleCA4YWUzYTUzMWMuLmRhZjc1ZTJjMSAxMDA2NDQNCj4gLS0tIGEvbWFuMy90bS4zdHlw
ZQ0KPiArKysgYi9tYW4zL3RtLjN0eXBlDQo+IEBAIC0xNCwxNiArMTQsMTYgQEAgU3RhbmRh
cmQgQyBsaWJyYXJ5DQo+ICAgLkIgI2luY2x1ZGUgPHRpbWUuaD4NCj4gICAuUFANCj4gICAu
QiBzdHJ1Y3QgdG0gew0KPiAtLkJSICIgICAgaW50ICB0bV9zZWM7IiAiICAgIC8qIFNlY29u
ZHMgWyIgMCAiLCAiIDYwICJdICovIg0KPiAtLkJSICIgICAgaW50ICB0bV9taW47IiAiICAg
IC8qIE1pbnV0ZXMgWyIgMCAiLCAiIDU5ICJdICovIg0KPiAtLkJSICIgICAgaW50ICB0bV9o
b3VyOyIgIiAgIC8qIEhvdXIgWyIgMCAiLCAiIDIzICJdICovIg0KPiArLkJSICIgICAgaW50
ICB0bV9zZWM7IiAiICAgIC8qIFNlY29uZHMgICAgICAgICAgWyIgMCAiLCAiIDYwICJdICov
Ig0KPiArLkJSICIgICAgaW50ICB0bV9taW47IiAiICAgIC8qIE1pbnV0ZXMgICAgICAgICAg
WyIgMCAiLCAiIDU5ICJdICovIg0KPiArLkJSICIgICAgaW50ICB0bV9ob3VyOyIgIiAgIC8q
IEhvdXIgICAgICAgICAgICAgWyIgMCAiLCAiIDIzICJdICovIg0KPiAgIC5CUiAiICAgIGlu
dCAgdG1fbWRheTsiICIgICAvKiBEYXkgb2YgdGhlIG1vbnRoIFsiIDEgIiwgIiAzMSAiXSAq
LyINCj4gLS5CUiAiICAgIGludCAgdG1fbW9uOyIgIiAgICAvKiBNb250aCBbIiAwICIsICIg
MTEgIl0gKEphbnVhcnkgPSAiIDAgIikgKi8iDQo+ICsuQlIgIiAgICBpbnQgIHRtX21vbjsi
ICIgICAgLyogTW9udGggICAgICAgICAgICBbIiAwICIsICIgMTEgIl0gKEphbnVhcnkgPSAi
IDAgIikgKi8iDQo+ICAgLkJSICIgICAgaW50ICB0bV95ZWFyOyIgIiAgIC8qIFllYXJzIHNp
bmNlIDE5MDAgKi8iDQo+ICAgLkJSICIgICAgaW50ICB0bV93ZGF5OyIgXA0KPiAtIiAgIC8q
IERheSBvZiB0aGUgd2VlayBbIiAwICIsICIgNiAiXSAoU3VuZGF5ID0gIiAwICIpICovIg0K
PiArIiAgIC8qIERheSBvZiB0aGUgd2VlayAgWyIgMCAiLCAiIDYgIl0gICAoU3VuZGF5ID0g
IiAwICIpICovIg0KPiAgIC5CUiAiICAgIGludCAgdG1feWRheTsiIFwNCj4gLSIgICAvKiBE
YXkgb2YgdGhlIHllYXIgWyIgMCAiLCAiIDM2NSAiXSAoSmFuLzAxID0gIiAwICIpICovIg0K
PiArIiAgIC8qIERheSBvZiB0aGUgeWVhciAgWyIgMCAiLCAiIDM2NSAiXSAoSmFuLzAxID0g
IiAwICIpICovIg0KPiAgIC5CUiAiICAgIGludCAgdG1faXNkc3Q7IiAiICAvKiBEYXlsaWdo
dCBzYXZpbmdzIGZsYWcgKi8iDQo+ICAgLkIgfTsNCj4gICAuZmkNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------J3fdv5ep7fO8fQMzzZhb44i4--

--------------EozO0IIM3XVuzkHWF8mANFQX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWmRYACgkQnowa+77/
2zI/nw//YFCFCfqbHRnr/H45jRbg/nbTM/iNt2Dxtd1jFmXoGaC06uQVr7AqzhG9
e99zajcXN/vLXfhN+F56vMJGFYtnPx9bIhxYUQmLafBXiEjh1yHn0TFQL4Dy4F2z
ruG3IOcdYYrUg+Vo602cd17awFPJ8JESyIXgnY7lSBglNWQVXEwiYdYn3UG8kXdc
V2FUtCNJtMbjmu9OtlWwmFEihbVCPXfRdKkymOamAkL5rConoLXe0mcFhJgwidEl
AS9tpdgkWqQskhMgLwHfdrii8/z1oYsCgcZT7jJqndlAp6m8Xic7+Q/97qi5rE0L
g261GjlX1qRKQk9XssCZV8Hrz7SOYb0QZBTQBoUe9EDdILdGv9pbJu9Sg+Va66PD
ZxnRoSnqqSHucMZXivx8TkCQCdIIWuA/mOXsn3kAGiJe/N0d9AgziRXuAWlt35W7
+77DKc8fsnb/f5k2NeLAUoXJQTqQy/nzM5c7Aoo7+7/zJskYAOkzJSntRNy5ehQA
WuGGJ6jucDm2bBkfZDCNfVEAhsrTg9MJ2XBLEXkxKAPW8IyId/+Yu1JdRVRRJ4Zm
IdKsZLTLRt1QdHDYyFBKkkWx26mj080q1eEEE9yyDjqLSbZ3YW2yGMcnQdYpSbRB
XkLfZWZuYtwgdfe3IBCuTyMLT73dsb5UnsLKgjKT7OABiMxlFs4=
=+OHR
-----END PGP SIGNATURE-----

--------------EozO0IIM3XVuzkHWF8mANFQX--
