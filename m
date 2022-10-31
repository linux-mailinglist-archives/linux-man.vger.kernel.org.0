Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C917D613EE5
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 21:21:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiJaUVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 16:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229841AbiJaUVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 16:21:20 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5301181D
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:21:18 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z14so17517917wrn.7
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhAmQjcSOBHQyqXrrcd+Xr2t+wG8E2yvjhdu6EhXDQ4=;
        b=giB2jgGFG9HWDKB1j/Z8aue0O9qUvFPtZsT0R8w0B7v9LNgX1C276THv6ARprlpR/O
         ntkKQQb6UdcGL6nuzDdpsBjvgq1ff0y9rsVwGttw97l+TGDFYPbVYcWg9n2Lsfm325R3
         W2/2Ve388OobytICdGFpaAPRbua1JzPEVaTeGlz+HCfOUrTCs6DJeueqQHpCCr26A3K+
         5ww0zPaN/OfBsHDyG4jzyJFItVskY2FqK8na6SLIwwHIato4TLZWyQ6AknldO39nxYdT
         OT4tOBmiN40WoRowJpmeOiPUECNaJaDwq9OzSIdUYYRsMsa9Ho4RnNuGUTC9tfT32LBg
         MeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yhAmQjcSOBHQyqXrrcd+Xr2t+wG8E2yvjhdu6EhXDQ4=;
        b=5mjMooAFRtMvHvV46o0j4eSz39LyzIRPQCSCZOL0lc2gD9pjMuomijlzyRVDMCt0Zi
         39nafE0uPTlkJlhRypZr1IYAJVEUjfprbfj3WmzaEFcnc2tDvi0I/X1OsY1NohvO2UUb
         U1pm63MHM1t46JlylOEv93gZp8qhg2rIikEJx1d2ktO/O27/1jRNY4SXp+V04Jzn9NES
         89T1Uk/U2GIPXuihNNJFnQemBNsvwa3awSYzUbjT9xmJorf2ZchY8FJVsAfr9pi0WxDk
         Qrf/Ae3Xh/P5idgdjvh4D8j+iIRLbxv2O3LgKwdRyaplXXTS22gLGztGTTd2IWhHJuyN
         OWfw==
X-Gm-Message-State: ACrzQf1dA8+57wbADLtLvO+bPL069DpjvQlRp3Ar4fNbz2zzNDfF4PcA
        TDnfKr1SI7JLB+e7xZ9E4E4=
X-Google-Smtp-Source: AMsMyM4eH+6sULzXmcATjntsDHTn2aj+vEFrcnirrQzcxQcJ/gmwGAWnNypZsVqnvjs48ZGz+PEPDg==
X-Received: by 2002:a05:6000:4086:b0:236:b659:471d with SMTP id da6-20020a056000408600b00236b659471dmr7898393wrb.563.1667247677528;
        Mon, 31 Oct 2022 13:21:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m5-20020a05600c4f4500b003c83465ccbfsm5997412wmq.35.2022.10.31.13.21.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 13:21:17 -0700 (PDT)
Message-ID: <090c2221-63b3-6f1f-d0dd-334b3e64abd8@gmail.com>
Date:   Mon, 31 Oct 2022 21:21:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
Content-Language: en-US
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-3-zokeefe@google.com>
 <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
 <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0YJGsZ7F19GKLxFxzAxC0VMn"
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
--------------0YJGsZ7F19GKLxFxzAxC0VMn
Content-Type: multipart/mixed; boundary="------------nE6fP0C8FbIjEzlxef84rn8a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <090c2221-63b3-6f1f-d0dd-334b3e64abd8@gmail.com>
Subject: Re: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-3-zokeefe@google.com>
 <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
 <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>
In-Reply-To: <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>

--------------nE6fP0C8FbIjEzlxef84rn8a
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMzEvMjIgMTc6MzMsIFphY2ggTydLZWVmZSB3cm90ZToNCj4+
IFBhdGNoIGFwcGxpZWQuDQo+IA0KPiBUaGFuayB5b3UhDQo+IA0KPiBCZXN0LA0KPiBaYWNo
DQo+IA0KPj4gVGhhbmtzLA0KPj4NCj4+IEFsZXgNCj4+DQoNCkkganVzdCBjYXVnaHQgYSBz
bWFsbCBmb3JtYXR0aW5nIGlzc3VlIGJ5IHJ1bm5pbmcgc29tZSBsaW50ZXJzIHRocm91Z2gg
dGhhdCBmaWxlOg0KDQokIG1ha2UgLWlqIGxpbnQgPi9kZXYvbnVsbCAyPiYxDQokIHRvdWNo
IG1hbjIvbWFkdmlzZS4yDQokIG1ha2UgLWsgbGludC1tYW4NCkxJTlQgKGdyb2ZmKQl0bXAv
bGludC9tYW4yL21hZHZpc2UuMi5saW50LW1hbi5ncm9mZi50b3VjaA0KYW4udG1hYzptYW4y
L21hZHZpc2UuMjo3OTU6IHN0eWxlOiAuSVIgZXhwZWN0cyBhdCBsZWFzdCAyIGFyZ3VtZW50
cywgZ290IDENCmZvdW5kIHN0eWxlIHByb2JsZW1zOyBhYm9ydGluZw0KbWFrZTogKioqIFts
aWIvbGludC1tYW4ubWs6Nzc6IHRtcC9saW50L21hbjIvbWFkdmlzZS4yLmxpbnQtbWFuLmdy
b2ZmLnRvdWNoXSBFcnJvciAxDQpMSU5UIChtYW5kb2MpCXRtcC9saW50L21hbjIvbWFkdmlz
ZS4yLmxpbnQtbWFuLm1hbmRvYy50b3VjaA0KbWFuZG9jOiBtYW4yL21hZHZpc2UuMjoxNTo1
OiBTVFlMRTogbG93ZXIgY2FzZSBjaGFyYWN0ZXIgaW4gZG9jdW1lbnQgdGl0bGU6IFRIIA0K
bWFkdmlzZQ0KbWFuZG9jOiBtYW4yL21hZHZpc2UuMjoxNToxNTogV0FSTklORzogY2Fubm90
IHBhcnNlIGRhdGUsIHVzaW5nIGl0IHZlcmJhdGltOiBUSCANCihkYXRlKQ0KbWFrZTogKioq
IFtsaWIvbGludC1tYW4ubWs6ODc6IHRtcC9saW50L21hbjIvbWFkdmlzZS4yLmxpbnQtbWFu
Lm1hbmRvYy50b3VjaF0gDQpFcnJvciAyDQptYWtlOiBUYXJnZXQgJ2xpbnQtbWFuJyBub3Qg
cmVtYWRlIGJlY2F1c2Ugb2YgZXJyb3JzLg0KDQoNClRoZSBpc3N1ZXMgcmVwb3J0ZWQgYnkg
bWFuZG9jKDEpIGFyZSBleHBlY3RlZDsgYnV0IHRoZSBpc3N1ZSByZXBvcnRlZCBieSANCmdy
b2ZmKDEpIGlzIGxlZ2l0LiAgVGhlIG9mZmVuZGluZyBsaW5lIGlzOg0KDQokIHNlZCAtbiA3
OTVwIG1hbjIvbWFkdmlzZS4yDQouSVIgbWFkdmlzZSgwLFwgMCxcIGFkdmljZSkNCg0KU2lu
Y2UgYWxsIG9mIHRoZSBsaW5lIGlzIGZvcm1hdHRlZCBpbiBpdGFsaWNzIChubyByb21hbiBw
YXJ0KSwgaXQgc2hvdWxkIGJlIC5JIA0KYW5kIG5vdCAuSVIuDQpBZnRlciBmaXhpbmcgdGhh
dCBsaW5lLCB0aGUgbGludGVyIG5vdyBzYXlzOg0KDQokIG1ha2UgbGludC1tYW4gLWsNCkxJ
TlQgKGdyb2ZmKQl0bXAvbGludC9tYW4yL21hZHZpc2UuMi5saW50LW1hbi5ncm9mZi50b3Vj
aA0KTElOVCAobWFuZG9jKQl0bXAvbGludC9tYW4yL21hZHZpc2UuMi5saW50LW1hbi5tYW5k
b2MudG91Y2gNCm1hbmRvYzogbWFuMi9tYWR2aXNlLjI6MTU6NTogU1RZTEU6IGxvd2VyIGNh
c2UgY2hhcmFjdGVyIGluIGRvY3VtZW50IHRpdGxlOiBUSCANCm1hZHZpc2UNCm1hbmRvYzog
bWFuMi9tYWR2aXNlLjI6MTU6MTU6IFdBUk5JTkc6IGNhbm5vdCBwYXJzZSBkYXRlLCB1c2lu
ZyBpdCB2ZXJiYXRpbTogVEggDQooZGF0ZSkNCm1ha2U6ICoqKiBbbGliL2xpbnQtbWFuLm1r
Ojg3OiB0bXAvbGludC9tYW4yL21hZHZpc2UuMi5saW50LW1hbi5tYW5kb2MudG91Y2hdIA0K
RXJyb3IgMg0KbWFrZTogVGFyZ2V0ICdsaW50LW1hbicgbm90IHJlbWFkZSBiZWNhdXNlIG9m
IGVycm9ycy4NCg0KDQpJZ25vcmluZyB0aGUgc3B1cmlvdXMgbWFuZG9jKDEpIHdhcm5pbmdz
LCBpdCdzIGFsbCBnb29kLg0KDQpEb2N1bWVudGF0aW9uIGFib3V0IGhvdyB0byB1c2UgdGhp
cyBmZWF0dXJlIGlzIGhlcmUgKHdyaXR0ZW4gdG9kYXksIHNvIG5vIHdheSANCnlvdSBjb3Vs
ZCBoYXZlIHJ1biBpdDsgSSBzaG91bGQgaGF2ZSwgdGhvdWdoIDpEKToNCjxodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC90cmVl
L0NPTlRSSUJVVElORyNuMTMzPg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPj4+IC0tLQ0KPj4+
ICAgIG1hbjIvbWFkdmlzZS4yIHwgNSArKysrKw0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9tYW4yL21hZHZpc2UuMiBi
L21hbjIvbWFkdmlzZS4yDQo+Pj4gaW5kZXggNjRmNzg4YWNlLi5kZjM0MTNjYzggMTAwNjQ0
DQo+Pj4gLS0tIGEvbWFuMi9tYWR2aXNlLjINCj4+PiArKysgYi9tYW4yL21hZHZpc2UuMg0K
Pj4+IEBAIC03OTAsNiArNzkwLDExIEBAIHRoYXQgYXJlIG5vdCBtYXBwZWQsIHRoZSBMaW51
eCB2ZXJzaW9uIG9mDQo+Pj4gICAgaWdub3JlcyB0aGVtIGFuZCBhcHBsaWVzIHRoZSBjYWxs
IHRvIHRoZSByZXN0IChidXQgcmV0dXJucw0KPj4+ICAgIC5CIEVOT01FTQ0KPj4+ICAgIGZy
b20gdGhlIHN5c3RlbSBjYWxsLCBhcyBpdCBzaG91bGQpLg0KPj4+ICsuUFANCj4+PiArLklS
IG1hZHZpc2UoMCxcIDAsXCBhZHZpY2UpDQo+Pj4gK3dpbGwgcmV0dXJuIHplcm8gaWZmDQo+
Pj4gKy5JIGFkdmljZQ0KPj4+ICtpcyBzdXBwb3J0ZWQgYnkgdGhlIGtlcm5lbCBhbmQgY2Fu
IGJlIHJlbGllZCBvbiB0byBwcm9iZSBmb3Igc3VwcG9ydC4NCj4+PiAgICAuXCIgLlNIIEhJ
U1RPUlkNCj4+PiAgICAuXCIgVGhlDQo+Pj4gICAgLlwiIC5CUiBtYWR2aXNlICgpDQo+Pg0K
Pj4gLS0NCj4+IDxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------nE6fP0C8FbIjEzlxef84rn8a--

--------------0YJGsZ7F19GKLxFxzAxC0VMn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNgLjsACgkQnowa+77/
2zKfSg/9FCyf+k58oUcXFYHrCGFmHQZj3B21I0n7Lnse+cKWtEuQa0WR4kNdrceF
yMTypbk95pTGkqtpgtJfqNWxa9b+bv+yD+M1YRDMSxcPmriltkyBgs+IUEJwHZ/K
IJOGq7I9/XMPaQasXs4OCftjCbw2tSTNVsJvrrgs1YZfybDgO+O8EpaK1FBkoh7u
CmjyGmVUieUFBVZkN2yJZOZ5OA8uAaa0O4VhNuys3t1yYN8XN42chTIkLALVvFSp
IBkuYoLh0QbKxmob9MaA5CUoCRaBeyzIpCFEcGNZaBcrNs4jEB4QISEgG8nA73MT
nD3ghInPf8qcD+QISFi6b704MihYGHxhLaJWwcyxQWt1k6DSeUtJ91OM2ez3AyM1
RdTA1Vl26ViCrg1SvhTiQW3yIiwMJ+P6sNsbJwYGzIRUgMZktZgfYMhbibCt8Ts8
4nch4WiudSLljRBhLK5aCNKf+vvZJSkr3VTLmkb3mUcrkSM3UNo/0HGq9/ae0Qhw
I40NCyWnyNLclAyni64jYSVWHpJGaVfU2rsqF72nwBaz6GPXx6oCgq+4kDIcntVF
yM/N+saRLQX2wzDpj/ws2Ay8o95UHwFya2CnBrmWlIu4yiej81Xsr6AWWOZah2e3
3k1EsDGjLQ86MfyfogAlF3She8F8or2ZQR5pgp36t8BJW4VxMRY=
=eyr5
-----END PGP SIGNATURE-----

--------------0YJGsZ7F19GKLxFxzAxC0VMn--
