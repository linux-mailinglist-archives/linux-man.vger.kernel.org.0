Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE1A57A986
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 23:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240604AbiGSVzh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 17:55:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231312AbiGSVzf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 17:55:35 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA7FA43316
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 14:55:33 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id n12so10702516wrc.8
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 14:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=zLd10hKYG+0UTsx8z86qoJDgsf8J5lvgj/nyNGmcwxY=;
        b=YmLgP+JVmCTvsklevktF712a9V9ZTPiX0i6bk5qiHMZV7Gry4aLHXDXp909yXaF0QH
         d6xOBT7Yf4Tzofjsv5bMpHB3lJD1DnR27TrRlGJ669xCIVgMSsu+YDFUx6ItbCbq8Pfa
         oCv0tdkgRVLYzZ2ymF5WRMWJqrBEGdNP4lg4iqmOF/clA6tfOuHzBh7s+pZzr26957kM
         +ru9dFjL4+pXpG5FQX186HeufK6fyCQLdE6uHqtbBvmEKM3rBDkdMg1TccG314q8clGo
         fndVluMVYi0JlN/FfYFMbkwjWxz06Sfkb0ylJi+sp5wAD6QdlRpl+ZfWTHqKIBlYqHyv
         oSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=zLd10hKYG+0UTsx8z86qoJDgsf8J5lvgj/nyNGmcwxY=;
        b=sRnSTypjBIb248cKxYwIn3Ar4QRs3XIhyClZD1iJc9iUZEziRn85Vjb02RoGYe5ej/
         aVGpN1LIuGQNOh0o9RDSak2XarY+he1xJiZoOKY3i8CwwkqkPiR5PmkvRnaIURC/U6OD
         12nc5IDpVCbwCqstN5seAsMEp1yFW5bYc/+EzVt61894byO67zJ2bih9VCsDAfHr/cK9
         2o48yiujIFOcCJQqGOOBOfEz4OGCyJgu6vtkM62vTwJNN2Ic5VrzGlHe0hKU9zQNXQwo
         8KVQvOil4SO3ZdEFXhsLldDccgEA79sf4mLaD3x8tFridmr/FbBJtAIz0kSrRhmM/giI
         DgJA==
X-Gm-Message-State: AJIora+SL47Np3/0SL+YBtenGmeD9jj8CrAiD8jTq4F7hCaCYXu82Bzb
        iaot/FmXnkNk1rBomT1zbHLshejGvZ0=
X-Google-Smtp-Source: AGRyM1vTlF+tsoGjQKTwovI1s0xUm/8Mwe2i03XNWBJId4XICbzgE08q8tbzflkcGydaPwAD94gbYA==
X-Received: by 2002:a05:6000:1046:b0:21d:6c52:b648 with SMTP id c6-20020a056000104600b0021d6c52b648mr28634643wrx.131.1658267732338;
        Tue, 19 Jul 2022 14:55:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bo28-20020a056000069c00b0021dd3e2fb60sm13656208wrb.0.2022.07.19.14.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 14:55:31 -0700 (PDT)
Message-ID: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
Date:   Tue, 19 Jul 2022 23:55:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iIb0EHXwod1eaDL52MqC8zq3"
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
--------------iIb0EHXwod1eaDL52MqC8zq3
Content-Type: multipart/mixed; boundary="------------0w30AhodxAzZJ7doBCMSDZ5a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <fb0a4055-9739-349c-0a20-ccf4ba8eb93d@gmail.com>
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
 <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>

--------------0w30AhodxAzZJ7doBCMSDZ5a
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvMTkvMjIgMjM6MjcsINC90LDQsSB3cm90ZToNCj4gT24gVHVlLCBKdWwg
MTksIDIwMjIgYXQgMTA6NTA6MDZQTSArMDIwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+PiBBbHNvLCBwbGVhc2UgYWRkIHRoZSBsaW5rIHBhZ2UgbmFtZSB0byB0aGUgbGlzdCBv
ZiBhZmZlY3RlZWQgcGFnZXM6DQo+PiBzdHJmdGltZS4zLCBzdHJmdGltZV9sLjM6IC4uLg0K
PiANCj4gRml4ZWQuDQo+IA0KPj4gUHJlZmVyIC5QUA0KPj4NCj4+IFdlIGF2b2lkIHJhdyBy
b2ZmIHJlcXVlc3RzIGluIG1hbig3KSBwYWdlcyBhcyBtdWNoIGFzIHBvc3NpYmxlLg0KPj4g
SSdkIHRlbGwgeW91IGhvdyB0byBnZXQgdGhlIHNhbWUgYmVoYXZpb3Igd2l0aCByYXJlIG1h
big3KSBtYWNyb3MsIGJ1dCBJDQo+PiBkb24ndCB0aGluayB3ZSBuZWVkIHRvIGNvbXBsaWNh
dGUgaXQsIHdoZW4gLlBQIGlzIGFsc28gbmljZSBoZXJlLg0KPj4gQnV0IGp1c3QgZm9yIHlv
dSB0byBrbm93LCB0aGVyZSdzIC5QRCAwIGluIG1hbig3KS4NCj4gDQo+IEkgZ3JlcHBlZCBm
b3IgLmJyIHNwZWNpZmljYWxseSBhbmQgc2F3IGl0J3MgdXNlZCBzbyBJIHVzZWQgaXQuDQo+
IFJlcGxhY2VkIHdpdGggLlBEIDAsIC5QUCwgLlBEIHRvIHRoZSBzYW1lIGVmZmVjdC4NCg0K
WWVhaCwgbXRrIHdhc24ndCB2ZXJ5IGhhcHB5IHdpdGggbWUgZml4aW5nIGV4aXN0aW5nIHBh
Z2VzLCB1bmRlciB0aGUgDQpmZWFyIG9mIGNodXJuLiAgSSdtIG1vcmUgY29uY2VybmVkIHdp
dGggdGhlIG1haW50YWluYWJpbGl0eSBpc3N1ZXMgb2YgDQpoYXZpbmcgZXhpc3RpbmcgdW5k
ZXNpcmFibGUgY29kZSAoZXZlbiBpZiBpdCBKdXN0IFdvcmtzIGZvciBub3cgYW5kIA0KaXNu
J3QgcmVhbGx5IGJyb2tlbiksIHNpbmNlIGl0IGxlYWRzIHRvIGNvbnRyaWJ1dG9ycyBsaWtl
IHlvdSB0byB0aGluayANCnRoYXQgd2UgYWN0dWFsbHkgdXNlIGl0LCBhbmQgdGhlbiB3ZSAo
ST8pIGtlZXAgcmVjZWl2aW5nIHBhdGNoZXMgd2l0aCANCnVuZGVzaXJhYmxlIGNvZGU7IHRo
ZW4gSSBuZWVkIHRvIGhhdmUgZGlzY3Vzc2lvbnMgZXhwbGFpbmluZyB0aGF0IHdlIA0KaGF2
ZSBvbGQgY29kZSB0aGF0IHVzZXMgaXQsIGJ1dCBJJ2QgcHJlZmVyIHRvIGF2b2lkIGl0IGlu
IG5ldyBjb2RlLCBldGMuDQoNClNvIHllcywgd2UgaGF2ZSBvbGQgY29kZSB0aGF0IGF0IHNv
bWUgcG9pbnQgSSdkIGxpa2UgdG8gZml4LCBhbmQgSSB3aWxsLCANCmJ1dCB0aGVyZSdzIHRv
byBtdWNoIG9mIGl0LiA6KQ0KDQo+IA0KPiBTZWUgdXBkYXRlZCBzY2lzc29yLXBhdGNoIGJl
bG93Og0KPiAtLSA+OCAtLQ0KPiBEYXRlOiBUdWUsIDE5IEp1bCAyMDIyIDIwOjQ2OjQ5ICsw
MjAwDQo+IFN1YmplY3Q6IFtQQVRDSCB2Ml0gc3RyZnRpbWUuMywgc3RyZnRpbWVfbC4zOiBt
ZW50aW9uIHN0cmZ0aW1lX2woKSB3aXRoIC5zbw0KPiAgIGxpbmsNCg0KT2theSwgc28geW91
IHdhbnQgdG8ga2VlcCAibWVudGlvbiIuICBJIHdpbGwga2VlcCBpdCA7KQ0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2Eg
PG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCj4gLS0tDQo+ICAgbWFuMy9z
dHJmdGltZS4zICAgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgIG1h
bjMvc3RyZnRpbWVfbC4zIHwgIDEgKw0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zL3N0
cmZ0aW1lX2wuMw0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvc3RyZnRpbWUuMyBiL21hbjMv
c3RyZnRpbWUuMw0KPiBpbmRleCBkYzk4YTUxMjIuLmE5M2MwZjRjMiAxMDA2NDQNCj4gLS0t
IGEvbWFuMy9zdHJmdGltZS4zDQo+ICsrKyBiL21hbjMvc3RyZnRpbWUuMw0KPiBAQCAtMjcs
NiArMjcsMTEgQEAgU3RhbmRhcmQgQyBsaWJyYXJ5DQo+ICAgLkJJICJzaXplX3Qgc3RyZnRp
bWUoY2hhciAqcmVzdHJpY3QgIiBzICIsIHNpemVfdCAiIG1heCAsDQo+ICAgLkJJICIgICAg
ICAgICAgICAgICAgY29uc3QgY2hhciAqcmVzdHJpY3QgIiBmb3JtYXQgLA0KPiAgIC5CSSAi
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCB0bSAqcmVzdHJpY3QgIiB0bSApOw0KPiAr
LlBQDQo+ICsuQkkgInNpemVfdCBzdHJmdGltZV9sKGNoYXIgKnJlc3RyaWN0ICIgcyAiLCBz
aXplX3QgIiBtYXggLA0KPiArLkJJICIgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpy
ZXN0cmljdCAiIGZvcm1hdCAsDQo+ICsuQkkgIiAgICAgICAgICAgICAgICAgIGNvbnN0IHN0
cnVjdCB0bSAqcmVzdHJpY3QgIiB0bSAsDQo+ICsuQkkgIiAgICAgICAgICAgICAgICAgIGxv
Y2FsZV90ICIgbG9jYWxlICk7DQo+ICAgLmZpDQo+ICAgLlNIIERFU0NSSVBUSU9ODQo+ICAg
VGhlDQo+IEBAIC00NzEsNiArNDc2LDIwIEBAIGFzIGFuIGFyZ3VtZW50IHRvIGENCj4gICBP
bmUgZXhhbXBsZSBvZiBzdWNoIGFsdGVybmF0aXZlIGZvcm1zIGlzIHRoZSBKYXBhbmVzZSBl
cmEgY2FsZW5kYXIgc2NoZW1lIGluIHRoZQ0KPiAgIC5CIGphX0pQDQo+ICAgZ2xpYmMgbG9j
YWxlLg0KPiArLlBQDQo+ICsuXCIgUE9TSVguMS0yMDA4IFRDMjoNCj4gKy5cIiAgIFtDWF0g
VGhlIHN0cmZ0aW1lX2woKSBmdW5jdGlvbiBzaGFsbCBiZSBlcXVpdmFsZW50IHRvIHRoZSBz
dHJmdGltZSgpIGZ1bmN0aW9uLCBleGNlcHQgdGhhdCB0aGUgbG9jYWxlIGRhdGEgdXNlZCBp
cyBmcm9tIHRoZSBsb2NhbGUgcmVwcmVzZW50ZWQgYnkgbG9jYWxlLg0KPiArLlwiICAgW0NY
XSBUaGUgYmVoYXZpb3IgaXMgdW5kZWZpbmVkIGlmIHRoZSBsb2NhbGUgYXJndW1lbnQgdG8g
c3RyZnRpbWVfbCgpIGlzIHRoZSBzcGVjaWFsIGxvY2FsZSBvYmplY3QgTENfR0xPQkFMX0xP
Q0FMRSBvciBpcyBub3QgYSB2YWxpZCBsb2NhbGUgb2JqZWN0IGhhbmRsZS4NCj4gKy5CUiBz
dHJmdGltZV9sICgpDQo+ICtpcyBlcXVpdmFsZW50IHRvDQo+ICsuQlIgc3RyZnRpbWUgKCks
DQo+ICtleGNlcHQgaXQgdXNlcyB0aGUgc3BlY2lmaWVkDQo+ICsuSSBsb2NhbGUNCj4gK2lu
c3RlYWQgb2YgdGhlIGN1cnJlbnQgbG9jYWxlLg0KPiArVGhlIGJlaGF2aW91ciBpcyB1bmRl
ZmluZWQgaWYNCj4gKy5JIGxvY2FsZQ0KPiAraXMgaW52YWxpZCBvcg0KPiArLkJSIExDX0dM
T0JBTF9MT0NBTEUgLg0KPiAgIC5TSCBSRVRVUk4gVkFMVUUNCj4gICBQcm92aWRlZCB0aGF0
IHRoZSByZXN1bHQgc3RyaW5nLA0KPiAgIGluY2x1ZGluZyB0aGUgdGVybWluYXRpbmcgbnVs
bCBieXRlLCBkb2VzIG5vdCBleGNlZWQNCj4gQEAgLTUxNiwxNCArNTM1LDIyIEBAIGxieCBs
YiBsYg0KPiAgIGwgbCBsLg0KPiAgIEludGVyZmFjZQlBdHRyaWJ1dGUJVmFsdWUNCj4gICBU
ew0KPiAtLkJSIHN0cmZ0aW1lICgpDQo+ICsuQlIgc3RyZnRpbWUgKCksDQo+ICsuQlIgc3Ry
ZnRpbWVfbCAoKQ0KPiAgIFR9CVRocmVhZCBzYWZldHkJTVQtU2FmZSBlbnYgbG9jYWxlDQo+
ICAgLlRFDQo+ICAgLmh5DQo+ICAgLmFkDQo+ICAgLnNwIDENCj4gICAuU0ggQ09ORk9STUlO
RyBUTw0KPiArLkJSIHN0cmZ0aW1lICgpOg0KPiAgIFNWcjQsIEM4OSwgQzk5Lg0KPiArLlBE
IDANCj4gKy5QUA0KPiArLlBEDQo+ICsuQlIgc3RyZnRpbWVfbCAoKToNCj4gK1BPU0lYLjEt
MjAwOC4NCj4gKy5QUA0KPiAgIC5cIiBGSVhNRSBzdHJmdGltZSgpIGlzIGluIFBPU0lYLjEt
MjAwMSBhbmQgUE9TSVguMS0yMDA4LCBidXQgdGhlIGRldGFpbHMNCj4gICAuXCIgaW4gdGhl
IHN0YW5kYXJkcyBjaGFuZ2VkIGFjcm9zcyB2ZXJzaW9ucy4gSW52ZXN0aWdhdGUgYW5kDQo+
ICAgLlwiIHdyaXRlIHVwLg0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9zdHJmdGltZV9sLjMgYi9t
YW4zL3N0cmZ0aW1lX2wuMw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAw
MDAwMDAuLjAyZTc5N2EyMw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL21hbjMvc3RyZnRp
bWVfbC4zDQo+IEBAIC0wLDAgKzEgQEANCj4gKy5zbyBtYW4zL3N0cmZ0aW1lLjMNCg0KLS0g
DQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------0w30AhodxAzZJ7doBCMSDZ5a--

--------------iIb0EHXwod1eaDL52MqC8zq3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXKEsACgkQnowa+77/
2zI12w//R54835VIPPSv/LY+Lcet3WQL+YxmLh6KxvJmQwwVZAgDCR+CdUnnnpUF
4yZf9Y5CGHEByAKPFHokDsfBff8mHHaEnq0EccJBbDEuWeiKE7/knNpfvwUfYgCH
x793eEFAIx6LrplzTBzlN+bBZfCTXeLvCFnnVwhVTDnQyPHu427vUZM24F+XblJ3
q6zflVaBA4vLcyltDde+O/bIOD/Mwk0JLiIFqlEs+saQaoUQDgI7oManuIsmpNnz
Oz22FUEs3NcBDfbMf1C+hhPOVcQ7VzUa+TuPlffAgrc6tXd//9af0crsNEgqYPSv
fGJSPW2RjeNT7Oqshva2+5z5MuPtFJCnZBI7/6kqfnAW0hPDGbYoAY8h/6UDZqL7
d4WJCJYKjca/plxw6U3xGXl+OP1pjEL/VU3XuV6xHd3EIoPnQiUJzUMvkZMznsKR
UC+gE9mqegPWg5R7KnAWL4jAG+w7KJWzX+Jp3D0mA3/3V4qRPvdM/ZeWhjvovcJ3
hTizB4O3z0hWOdVPYpgsku+Q1VFgOYAPjRIxkkL9SHmfw0fqzHW36yCO8toaSp7C
HWAWELXLF4kwWcDukeRsQiJ2bYgx8WGPsp1Je7yF4ldOLAwopJIgV+CldBMDoGj2
dKQYxAgMuHqVzv6jEKAu5k/pWD7qtsKLK/nGPSS2CukD3RfO4kE=
=7X6T
-----END PGP SIGNATURE-----

--------------iIb0EHXwod1eaDL52MqC8zq3--
