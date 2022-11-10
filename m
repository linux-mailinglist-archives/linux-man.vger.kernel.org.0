Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 111F7624414
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 15:17:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbiKJOQx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 09:16:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231381AbiKJOQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 09:16:29 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABCFADFF2
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 06:16:22 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id w14so2437832wru.8
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 06:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+MVumTgSapmaHX9a5zEjEJmoW3JwtY7IqNWHPb1ghqM=;
        b=QRvjJiNpxSq3qqFx5eX6lCDy4ve6JumW6vxyrZk2ehAN7UE4kTy6y+tIZE6LV4RVYg
         q0NuiozP+Ca9mCZxkpZ04RAwA6WgZa9Xt4TWwwU+wnu4rhCrj8f4po5dBrYl41pmfAPO
         zldjkBepjzd5oXkd0Zw7ka3CjmEXaMf4AqrFeTzJHxjp5rlYQOTcbsMHb/nKsPDX0doe
         CP8lpPQL4R0201C1wrjBjwec7dnTSoProJllzejZZilJpHpEdquM9f+7dcYET1ZqP0DT
         UtQUBWuMjvOgIUHwVAoqmE0kwOp4w/pb3vWnUluDAP0s+GAifnx2S+Qx7sjijnZDKv/6
         yOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+MVumTgSapmaHX9a5zEjEJmoW3JwtY7IqNWHPb1ghqM=;
        b=suEpC5LUFDUwJSLt+ElF47bmhDnV4Jgk0Kh9Uiurv7eRlCePdS1oNUGsXSjpcRdV/G
         8gtgH8A3BbC1FZS9AWi+hysq0FGiuiZo+PJzLiZ30rs3K2NbQSNeNpzl0t8edKPT6eIu
         RwXxSLAVx83z/0DKqTaJ30+/Qy6zzdEiuJrZfII3zSL4kgqrgoendD8fT3h1QHEGfxGS
         ApJ1sV817pvaYMACjQZabMJd9J3e4Me268HCD4GlfsutOzrUYeQ+dRvS2W/zMg0XfQM2
         XJS0zyhS/pdUhZBKB4syY8PktXQvIPWexd0aa6lmHw/L61bX9DxTpj3HQGRHUIeQ6Yig
         JHBQ==
X-Gm-Message-State: ACrzQf3VAMPap3EeDK3Cl6aY+ef4f21RCL5QbrIrBBSQ6qsHgc+dLG99
        SD1gkH7N1bYQwNlgTaQBur+sgJ0l2B4=
X-Google-Smtp-Source: AMsMyM7gJC97GsZChTPgejfvQWB0ejXubuE8ui9RF/EbNk2YY3jnOzzW65tEY6LlOKVnPLJDbljbgg==
X-Received: by 2002:adf:e985:0:b0:236:6a53:3a16 with SMTP id h5-20020adfe985000000b002366a533a16mr40034294wrm.501.1668089781010;
        Thu, 10 Nov 2022 06:16:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k7-20020a05600c1c8700b003c6b7f5567csm8497400wms.0.2022.11.10.06.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 06:16:19 -0800 (PST)
Message-ID: <88213dd2-419b-e4d2-56a5-1282992055f5@gmail.com>
Date:   Thu, 10 Nov 2022 15:16:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
To:     Andrew Clayton <andrew@digital-domain.net>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <20221110125811.4d786437@kappa.digital-domain.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221110125811.4d786437@kappa.digital-domain.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rSe6fSoeoAgR0xyhItv8PiqH"
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
--------------rSe6fSoeoAgR0xyhItv8PiqH
Content-Type: multipart/mixed; boundary="------------B1CjM1rKrvJnhfh44Du0mdww";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrew Clayton <andrew@digital-domain.net>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <88213dd2-419b-e4d2-56a5-1282992055f5@gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <20221110125811.4d786437@kappa.digital-domain.net>
In-Reply-To: <20221110125811.4d786437@kappa.digital-domain.net>

--------------B1CjM1rKrvJnhfh44Du0mdww
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmV3IQ0KDQpPbiAxMS8xMC8yMiAxMzo1OCwgQW5kcmV3IENsYXl0b24gd3JvdGU6
DQo+IE9uIFRodSwgMTAgTm92IDIwMjIgMTI6MzY6NDcgKzAxMDANCj4gQWxlamFuZHJvIENv
bG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4+IEFsdGhvdWdo
IGZvciB0aGUgcGFnZSBpdHNlbGYgSSB3b3VsZG4ndCBhZGQgdGhlIGRhdGVzLCBJIHRoaW5r
IGl0J3MgdXNlZnVsIHRvDQo+PiBpbmNsdWRlIHRoZSB5ZWFycyBvZiB0aG9zZSByZWxlYXNl
cyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKHdoZW4ga25vd24pLg0KPj4NCj4+IG11c2wgMC45
LjcgaXMgZnJvbSAyMDEyLg0KPj4gRnJlZUJTRCA2IGlzIGZyb20gMjAwNS4NCj4+IE9wZW5C
U0QgNS40IGlzIGZyb20gMjAxMy4NCj4+DQo+PiBQbGVhc2UgaW5jbHVkZSB0aGF0LCBpZiB5
b3UgZG9uJ3QgbWluZC4NCj4gDQo+IFdpbGwgZG8uDQo+IA0KPiBbLi4uXQ0KPiANCj4+IEZv
ciB0aGUgY29tbWl0IG1lc3NhZ2UsIGl0J3MgaW50ZXJlc3RpbmcgdG8gbm90ZSBtYWNPUyBh
bmQgQmlvbmljLCBmb3INCj4+IHNwZWxlb2xvZ3kgcHVycG9zZXMuICBIb3dldmVyLCBJJ20g
b3Bwb3NlZCB0byBhZGRpbmcgdGhlbSB0byB0aGUgcGFnZSBpdHNlbGYNCj4+IGJlY2F1c2Ug
b2YgdGhlIGZvbGxvd2luZzoNCj4+DQo+PiAtICBtYWNPUyBpcyBub3QgZnJlZSBzb2Z0d2Fy
ZS4gIEkgcmVmdXNlIHRvIHJlZmVyZW5jZSBub25mcmVlIHNvZnR3YXJlIG9uIHRoaXMNCj4+
IHByb2plY3QuDQo+IA0KPiBJbiB0aGF0IGNhc2UgeW91IG1pZ2h0IHdhbnQgdG8gcmVtb3Zl
IHJlZmVyZW5jZXMgdG8gdGhlIGZvbGxvd2luZyAoYXMNCj4gaXQgbG9va2VkIE9LIHRvIHJl
ZmVyZW5jZSBwcm9wcmlldGFyeSBVTklYKQ0KDQpUaGVyZSdzIG5vIHJ1bGUuICBJdCBjYW4g
YmUgT0s7IGxldCBtZSBleHBsYWluIGEgbGl0dGxlIGJpdCwgYXQgbGVhc3QgbXkgDQpvcGlu
aW9uLCB3aGljaCBJIGRpZG4ndCBjb25zdWx0IHRvIHByZXZpb3VzIG1haW50YWluZXJzLCBi
dXQgc2VlbXMgdG8gYmUgDQpzb21ld2hhdCBhbGlnbmVkLg0KDQpJZiBzb21lb25lIHJlYWRp
bmcgdGhlIGxpc3QgaGFzIGEgZGlmZmVyZW50IG9waW5pb24sIHBsZWFzZSBtYW5pZmVzdCB5
b3Vyc2VsdmVzLiANCiAgSWYgeW91IGRvLCBhbHNvIGZlZWwgZnJlZSB0byBkbyBzby4gIEkn
bSBub3Qgc3Ryb25nbHkgY29udmluY2VkIG9mIGl0OyBpdCdzIA0KanVzdCB0aGUgZ3VpZGVs
aW5lIEkgZm9sbG93Lg0KDQo+IA0KPiBTdW5PUywgU29sYXJpcywgSXJpeCwgQUlYLCBERy9V
WCwgSFAtVVgsIE9TRi8xLCBEaWdpdGFsIFVOSVgsIFRydTY0LA0KPiBTQ08gKGRlZmluaXRl
bHkgU0NPISksIGFuZCBNYWNPUyBYIChhbmQgcHJvYmFibHkgb3RoZXJzIEkgbWlzc2VkKS4N
Cj4gDQo+IFBlcnNvbmFsbHkgSSB3b3VsZG4ndCwgdGhleSdyZSBhIHBhcnQgb2YgTGludXgn
cyBoaXN0b3J5Li4uIGFuZCB0aGVzZQ0KPiBkYXlzIGxhcmdlbHkgaW50ZXJlc3RpbmcgZm9y
IGhpc3RvcmljYWwgcHVycG9zZXMuDQoNClNvLCB5ZXMsIHNvbWUgZGVjYWRlcyBhZ28sIExp
bnV4IGFuZCBvdGhlciBGT1NTIE9TZXMgd2VyZW4ndCBhcyB3aWRlc3ByZWFkIGFzIA0KdGhl
eSBhcmUgbm93LCBhbmQgaXQgd2FzIHF1aXRlIHVzZWZ1bCB0byBrbm93IHdoYXQgU29sYXJp
cyBhbmQgb3RoZXIgVU5JWGVzIGRpZC4gDQogIEFsc28sIHNvbWUgZnJlZSBPU2VzIGRlc2Nl
bmQgb3IgdG9vayBmZWF0dXJlcyBmcm9tIHNvbWUgb2YgdGhvc2UgcHJvcHJpZXRhcnkgT1Nl
cy4NCg0KSG93ZXZlciwgdG9kYXkgaXQncyBwb3NzaWJsZSB0byBpZ25vcmUgdGhhdCB0aG9z
ZSBleGlzdCwgZm9yIG1vc3QgcHVycG9zZXMuDQoNClNvLCBhcyBhIHJvdWdoIGd1aWRlbGlu
ZSwgSSB3b3VsZG4ndCBkb2N1bWVudCBtYWNPUyBwcm92aWRpbmcgYSBmdW5jdGlvbiANCmF2
YWlsYWJsZSBpbiBhbGwgbWFpbiBmcmVlIE9TZXMsIGJ1dCBJIHdvdWxkIGRvY3VtZW50IHNv
bWV0aGluZyBsaWtlIHRoZSBuYXN0eSANCnRoaW5nIHRoZXkgZGlkIHdpdGggcGl2b3Rfcm9v
dCgyKVsxXSwgd2hpY2ggY2FuIGh1cnQgdXMgZnJlZSB3b3JsZCBwcm9ncmFtbWVycy4NCg0K
Q3VycmVudCBwcmFjdGljZSB3aXRoIHJlZmVyZW5jZXMgdG8gbWFjT1Mgc2VlbXMgdG8gYmUg
Y29uc2lzdGVudCB3aXRoIHRoYXQ6DQoNCiQgZ3JlcCAtcm5pIG1hY29zDQptYW4zL3Rlcm1p
b3MuMzoxMTY2OkZyZWVCU0QgYW5kIE5ldEJTRCBhbmQgSFAtVVggYW5kIE1hY09TIGlnbm9y
ZSB0aGUgdmFsdWUgb2YNCm1hbjMvZm9wZW4uMzo4NDp0aGUgYmVnaW5uaW5nIG9mIHRoZSBm
aWxlLCBidXQgZm9yIEFuZHJvaWQvQlNEL01hY09TLCB0aGUNCm1hbjMvcmVtcXVvLjM6NjM6
LlwiIE1hY09TIDEwOiByZXR1cm4gNyBiaXRzDQptYW4zL3B0aHJlYWRfYXR0cl9zZXRzdGFj
a3NpemUuMzo1NTouXCIgZS5nLiwgTWFjT1MNCkNoYW5nZXMub2xkOjE2MDMxOiAgICAgICAg
ICAgIE9uIE1hY09TIFggYXQgbGVhc3QsIHB0aHJlYWRfYXR0cl9zZXRzdGFja3NpemUoMykg
DQpjYW4gZmFpbA0KQ2hhbmdlcy5vbGQ6NDkzMzg6ICAgICAgICAgICAgTWFjT1MgaGFzIHRo
ZSBhbWJpZ3VvdXMgIlRoZSBzdHJlYW0gaXMgcG9zaXRpb25lZCANCmF0IHRoZSBlbmQgb2YN
CiQNCg0KVGhvc2UgZmV3IGNhc2VzIHJlZmVyIHRvIGluY29tcGF0aWJpbGl0aWVzIGluIG1h
Y09TIHRoYXQgbWlnaHQgYnJlYWsgb3RoZXJ3aXNlIA0KZmluZSBwcm9ncmFtcy4NCg0KQW5k
IGFzIHlvdSBzYWlkLCBJJ20gbm90IHJlbW92aW5nIGFueSBleGlzdGluZyByZWZlcmVuY2Vz
LCBmb3IgaGlzdG9yaWNhbCBwdXJwb3Nlcy4NCg0KDQpbMV06IDxodHRwczovL2dpdGh1Yi5j
b20vbmdpbngvdW5pdC9pc3N1ZXMvNzM3Pg0KDQoNCj4gDQo+IENoZWVycywNCj4gQW5kcmV3
DQoNCkNoZWVycywNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------B1CjM1rKrvJnhfh44Du0mdww--

--------------rSe6fSoeoAgR0xyhItv8PiqH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtB6sACgkQnowa+77/
2zJ1EBAAnRaRayrl7YWWiDVQbxLPimrb2LB1xGJCsfMwKTKkoytAudN3lbDR/Pw9
Ald0ZpZECF/vXLX0sHfijIjuBbJZew20IlDp0eym/Gjq7X/JP6xFs2/vbLeKT+Qv
hhRq2CoHEinXNd1GROJ2k2/wNYdNSbKiG/WLoITO6dgWYlyB0x3BoYGvea3MMCkR
WuNbVDdQEkyzt/eh1d42ElnrjQib4gmcJYmLl2CTWo5IC7StfgG4Dytzv2BIrOUy
oTeJQ0t5Nnb8KJHl2c7JgZtbn94I2x6InkYMDy9bGisvflDw8pUpj8uaOJRav5aC
iC8RpBL0s+JMfGIvaBqk9Zj6VmnQrszrFdQKk7DOBDRKwfexKVvu4GsJ+xB+BUP8
R24Uq3P15tZRY9PwMwOTTi4Py8tl7qhk329xr8YwRuakt7wQdX6JzsLCTe/5lgHi
4uE25q4bAiRuxTAC1MJBh6ytTuEuRp0jqDOIK4og6vfU38dL5p+F/p/hQbG98SGR
3hjeInZbGZJssEsLGU6nbE4w4z6stAo/HT1BIJDeZ99/nDN9OpI/xEEWUWLgBi5L
pYBbaXKee+ypLQO6j/VTiwsipTMNucicVQSiTj35vzmU7GPQomAOMk1cK6D8xWVS
SYO3K/oxX/SyBpQasIEc9itQ97MR1ZnJP1s/JFqoh76SFF6ad48=
=Emfq
-----END PGP SIGNATURE-----

--------------rSe6fSoeoAgR0xyhItv8PiqH--
