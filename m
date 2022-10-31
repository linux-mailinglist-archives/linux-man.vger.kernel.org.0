Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBA8613EF1
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 21:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiJaUYm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 16:24:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiJaUYl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 16:24:41 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7680012AD6
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:24:40 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l32so7782370wms.2
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pj4AnkiHgVQz7SPjt5YOESk/9+I7kMURb24JqWTC8Jo=;
        b=mUXL10qBfYurQd3QOkXRWYJnNKTtH0O+h0amoCK8gtcsBE3W77l2WYkJ8ipm0e8LFr
         3dlGC1ynThHZTtVtsdvL621QjGRrwssighhzYiKYwrOLWQemlAAVxd/VFpGuGGAnoxe4
         jbSdXvLhWq78TcD4/CfX2k7wzmNT09nCpZRX83oYVY4oCuDWKuudFhFNBLs4f0LZUBd1
         JbN0A5xosr74N8SzYyu+N2KMuKYGBYS3yKddltc24pEIpV2/JjHvwe10z0iEmPGlBd2z
         V4PXJUJ40SLSgbFXz+iL/7Q/ke/BauaD1tvAKt0LKjweuT7D27NFX05MDs91fObW0Ijb
         IhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pj4AnkiHgVQz7SPjt5YOESk/9+I7kMURb24JqWTC8Jo=;
        b=mmRdAgWhzaNnGxIpnUTLhm72Qb+0Q7thFdIs0MlBJREuAKbJFJaY98fpTg+ZBhcUg3
         IKU1MWsFygn1EOZpFNn0WnJLhfAYSs1a5XjVcKh5V36o26cb54WPQnZ8QyS3X3dw/lFl
         ZhYObYrzqu7qbJXFKMTt+ugg/nDHG8NdxeA0Qys/CiM/akXRpQ8Ffxm8wwMHxWyqFQJo
         +/30+AYLCWHQRi2WO3uFN8O8yPmCo7ozCvJy2UVD4UEriAA4mBIl8LWdG5YmEqL3PUx3
         iml73RES5vK0l4GhZYg62NHXwozilbK6Cgwp6Qko4n+r3wawx2e3XuKbhAMzdkusntvi
         aVwA==
X-Gm-Message-State: ACrzQf1BEgwj0i3+79pZXZvdedvQ23ZmlsGf0hRYlmgA8I4OuQyshN8/
        Lt8OxYYHdseDNG3duUfMRni45fR7AK4=
X-Google-Smtp-Source: AMsMyM6GTgglLmv5OM6dS5agIBL2mrMZ3K6ajhquSJ+hSOY8QIqLpEN0N1iCpYRFG8W1O7VNJEEEvw==
X-Received: by 2002:a05:600c:4f93:b0:3cc:9bc5:c454 with SMTP id n19-20020a05600c4f9300b003cc9bc5c454mr9494606wmq.84.1667247878941;
        Mon, 31 Oct 2022 13:24:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k25-20020a7bc419000000b003cf4eac8e80sm8772673wmi.23.2022.10.31.13.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 13:24:38 -0700 (PDT)
Message-ID: <07d9c046-0284-2e1d-9948-3530a5356938@gmail.com>
Date:   Mon, 31 Oct 2022 21:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
Content-Language: en-US
To:     Suren Baghdasaryan <surenb@google.com>,
        Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-4-zokeefe@google.com>
 <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
 <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uYkawYQuwiA7FLO3yaUVDsEH"
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
--------------uYkawYQuwiA7FLO3yaUVDsEH
Content-Type: multipart/mixed; boundary="------------mjP8ubz9vvPIX3iKK1Ne27ck";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Suren Baghdasaryan <surenb@google.com>, Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <07d9c046-0284-2e1d-9948-3530a5356938@gmail.com>
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-4-zokeefe@google.com>
 <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
 <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>
In-Reply-To: <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>

--------------mjP8ubz9vvPIX3iKK1Ne27ck
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3VyZW4sIFphY2gsDQoNCk9uIDEwLzMxLzIyIDIwOjEzLCBTdXJlbiBCYWdoZGFzYXJ5
YW4gd3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBPbiBTdW4sIE9jdCAzMCwgMjAyMiBhdCA0
OjUwIEFNIEFsZWphbmRybyBDb2xvbWFyDQo+IDxhbHgubWFucGFnZXNAZ21haWwuY29tPiB3
cm90ZToNCj4+DQo+PiBIaSBTdXJlbiwNCj4+DQo+PiBPbiAxMC8yMi8yMiAwMDozMiwgWmFj
aCBPS2VlZmUgd3JvdGU6DQo+Pj4gRnJvbTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2ds
ZS5jb20+DQo+Pj4NCj4+PiBUaGUgaW5pdGlhbCBjb21taXQgb2YgcHJvY2Vzc19tYWR2aXNl
KDIpIHRvIExpbnV4LCBjb21taXQgZWNiOGFjOGIxZjE0DQo+Pj4gKCJtbS9tYWR2aXNlOiBp
bnRyb2R1Y2UgcHJvY2Vzc19tYWR2aXNlKCkgc3lzY2FsbDogYW4gZXh0ZXJuYWwgbWVtb3J5
DQo+Pj4gaGludGluZyBBUEkiKSwgcmVsaWVkIG9uIFBUUkFDRV9NT0RFX0FUVEFDSF9GU0NS
RURTIChzZWUgcHRyYWNlKDIpKSwNCj4+PiBidXQgd2FzIGFtZW5kZWQgYnkgY29tbWl0IDk2
Y2ZlMmMwZmQyMyAoIm1tL21hZHZpc2U6IHJlcGxhY2UgcHRyYWNlDQo+Pj4gYXR0YWNoIHJl
cXVpcmVtZW50IGZvciBwcm9jZXNzX21hZHZpc2UiKSB3aGljaCByZXBsYWNlZCB0aGlzIHdp
dGggYQ0KPj4+IGNvbWJpbmF0aW9uIG9mIFBUUkFDRV9NT0RFX1JFQUQgYW5kIENBUF9TWVNf
TklDRSAoUFRSQUNFX01PREVfUkVBRCB0bw0KPj4+IHByZXZlbnQgbGVha2luZyBBU0xSIG1l
dGFkYXRhIGFuZCBDQVBfU1lTX05JQ0UgZm9yIGluZmx1ZW5jaW5nIHByb2Nlc3MNCj4+PiBw
ZXJmb3JtYW5jZSkuDQo+Pj4NCj4+PiBUaGUgaW5pdGlhbCBjb21taXQgb2YgcHJvY2Vzc19t
YWR2aXNlKDIpIHRvIG1hbi1wYWdlcyBwcm9qZWN0LCBtYWRlDQo+Pj4gYWZ0ZXIgdGhlIHNl
Y29uZCBwYXRjaCwgaW5jbHVkZWQgdHdvIGVycm9yczoNCj4+Pg0KPj4+IDEpIENBUF9TWVNf
QURNSU4gaW5zdGVhZCBvZiBDQVBfU1lTX05JQ0UNCj4+PiAyKSBQVFJBQ0VfTU9ERV9SRUFE
X1JFQUxDUkVEUyBpbnN0ZWFkIG9mIFBUUkFDRV9NT0RFX1JFQURfRlNDUkVEUw0KPj4+DQo+
Pj4gQ29ycmVjdCB0aGlzIGluIHRoZSBtYW4tcGFnZSBmb3IgcHJvY2Vzc19tYWR2aXNlKDIp
Lg0KPj4+DQo+Pj4gRml4ZXM6IGExNDRmNDU4YiAoInByb2Nlc3NfbWFkdmlzZS4yOiBEb2N1
bWVudCBwcm9jZXNzX21hZHZpc2UoMikiKQ0KPj4+IENjOiBTdXJlbiBCYWdoZGFzYXJ5YW4g
PHN1cmVuYkBnb29nbGUuY29tPg0KPj4+IENjOiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPg0KPj4+IFNpZ25lZC1vZmYtYnk6IFphY2ggTydLZWVmZSA8em9rZWVmZUBnb29n
bGUuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5i
QGdvb2dsZS5jb20+DQoNClRoYW5rcyEgIFBhdGNoIGFwcGxpZWQuDQoNCj4gDQo+Pg0KPj4g
WW91IGFkZGVkIHlvdXIgUmV2aWV3ZWQtYnkgdGFnIHRvIHYyIG9mIHRoaXMgcGF0Y2guICBJ
IGd1ZXNzIHlvdSdkIGxpa2UgdG8gcHV0DQo+PiBpdCBpbiB0aGlzIG9uZSB0b28sIGJ1dCBz
aW5jZSBpdCBjaGFuZ2VkIHNsaWdodGx5LCBJJ2QgbGlrZSB5b3UgdG8gY29uZmlybS4NCj4g
DQo+IFRoYW5rcyBmb3IgdGhlIHJlbWluZGVyIQ0KDQo6KQ0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiBTdXJlbi4NCj4gDQo+Pg0KPj4gVGhhbmtzLA0KPj4NCj4+IEFsZXgNCj4+DQo+Pj4g
LS0tDQo+Pj4gICAgbWFuMi9wcm9jZXNzX21hZHZpc2UuMiB8IDIxICsrKysrKysrKysrKysr
KysrLS0tLQ0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL21hbjIvcHJvY2Vzc19tYWR2aXNl
LjIgYi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+Pj4gaW5kZXggNjIwODIwNmU0Li40NGQz
Yjk0ZTggMTAwNjQ0DQo+Pj4gLS0tIGEvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPj4+ICsr
KyBiL21hbjIvcHJvY2Vzc19tYWR2aXNlLjINCj4+PiBAQCAtMTA1LDE2ICsxMDUsMjAgQEAg
cmVtb3RlIHByb2Nlc3MuDQo+Pj4gICAgTm8gZnVydGhlciBlbGVtZW50cyB3aWxsIGJlIHBy
b2Nlc3NlZCBiZXlvbmQgdGhhdCBwb2ludC4NCj4+PiAgICAoU2VlIHRoZSBkaXNjdXNzaW9u
IHJlZ2FyZGluZyBwYXJ0aWFsIGFkdmljZSBpbiBSRVRVUk4gVkFMVUUuKQ0KPj4+ICAgIC5Q
UA0KPj4+IC1QZXJtaXNzaW9uIHRvIGFwcGx5IGFkdmljZSB0byBhbm90aGVyIHByb2Nlc3Mg
aXMgZ292ZXJuZWQgYnkgYQ0KPj4+ICsuXCIgY29tbWl0IDk2Y2ZlMmMwZmQyM2VhN2MyMzY4
ZDE0Zjc2OWQyODdlN2FlMTA4MmUNCj4+PiArU3RhcnRpbmcgaW4gTGludXggNS4xMiwNCj4+
PiArcGVybWlzc2lvbiB0byBhcHBseSBhZHZpY2UgdG8gYW5vdGhlciBwcm9jZXNzIGlzIGdv
dmVybmVkIGJ5DQo+Pj4gICAgcHRyYWNlIGFjY2VzcyBtb2RlDQo+Pj4gLS5CIFBUUkFDRV9N
T0RFX1JFQURfUkVBTENSRURTDQo+Pj4gKy5CIFBUUkFDRV9NT0RFX1JFQURfRlNDUkVEUw0K
Pj4+ICAgIGNoZWNrIChzZWUNCj4+PiAgICAuQlIgcHRyYWNlICgyKSk7DQo+Pj4gICAgaW4g
YWRkaXRpb24sDQo+Pj4gICAgYmVjYXVzZSBvZiB0aGUgcGVyZm9ybWFuY2UgaW1wbGljYXRp
b25zIG9mIGFwcGx5aW5nIHRoZSBhZHZpY2UsDQo+Pj4gICAgdGhlIGNhbGxlciBtdXN0IGhh
dmUgdGhlDQo+Pj4gLS5CIENBUF9TWVNfQURNSU4NCj4+PiAtY2FwYWJpbGl0eS4NCj4+PiAr
LkIgQ0FQX1NZU19OSUNFDQo+Pj4gK2NhcGFiaWxpdHkNCj4+PiArKHNlZQ0KPj4+ICsuQlIg
Y2FwYWJpbGl0aWVzICg3KSkuDQo+Pj4gICAgLlNIIFJFVFVSTiBWQUxVRQ0KPj4+ICAgIE9u
IHN1Y2Nlc3MsDQo+Pj4gICAgLkJSIHByb2Nlc3NfbWFkdmlzZSAoKQ0KPj4+IEBAIC0xODAs
NiArMTg0LDE1IEBAIGNvbmZpZ3VyYXRpb24gb3B0aW9uLg0KPj4+ICAgIFRoZQ0KPj4+ICAg
IC5CUiBwcm9jZXNzX21hZHZpc2UgKCkNCj4+PiAgICBzeXN0ZW0gY2FsbCBpcyBMaW51eC1z
cGVjaWZpYy4NCj4+PiArLlNIIE5PVEVTDQo+Pj4gK1doZW4gdGhpcyBzeXN0ZW0gY2FsbCBm
aXJzdCBhcHBlYXJlZCBpbiBMaW51eCA1LjEwLA0KPj4+ICtwZXJtaXNzaW9uIHRvIGFwcGx5
IGFkdmljZSB0byBhbm90aGVyIHByb2Nlc3Mgd2FzIGVudGlyZWx5IGdvdmVybmVkIGJ5DQo+
Pj4gK3B0cmFjZSBhY2Nlc3MgbW9kZQ0KPj4+ICsuQiBQVFJBQ0VfTU9ERV9BVFRBQ0hfRlND
UkVEUw0KPj4+ICtjaGVjayAoc2VlDQo+Pj4gKy5CUiBwdHJhY2UgKDIpKS4NCj4+PiArVGhp
cyByZXF1aXJlbWVudCB3YXMgcmVsYXhlZCBpbiBMaW51eCA1LjEyIHNvIHRoYXQgdGhlIGNh
bGxlciBkaWRuJ3QgcmVxdWlyZQ0KPj4+ICtmdWxsIGNvbnRyb2wgb3ZlciB0aGUgdGFyZ2V0
IHByb2Nlc3MuDQo+Pj4gICAgLlNIIFNFRSBBTFNPDQo+Pj4gICAgLkJSIG1hZHZpc2UgKDIp
LA0KPj4+ICAgIC5CUiBwaWRmZF9vcGVuICgyKSwNCj4+DQo+PiAtLQ0KPj4gPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------mjP8ubz9vvPIX3iKK1Ne27ck--

--------------uYkawYQuwiA7FLO3yaUVDsEH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNgLwQACgkQnowa+77/
2zJoyQ//egegy7Drj3jBELvj8G2QzodT5uS63XIkIKkKQop7JGscFgcq/sn3f0Sq
KESYowantUPHy0p+yya5lLi2FgjrFHu9uSM5iPGN7Jax/65fZp7wiGdZLbPlHymS
Fr/fLMBTmwY06kwngy7/PujY8viTm5BC1Xhs51JOQ0TMixmYDZIHSR8OlTsnzUba
v++6Lw3NkBNe6+XKpNkhL8lDjGUQLFajo+Vk07mzHflf2pa5+OCMe7TLVzMUc0gP
o3b+hw/qtR8RrXWPwPU7NoZQI8LxwIL3PxdAHQ8z/GIdD3YiHIdUT8XV01a+jEAl
scqq3oLNu4eWkMbKxrYIxuwKA++RVMxQCMNFRSJeADJjnnePV83l4SUXNLsqF/aL
P3v4Z9xAjXqjZXEpbneJsNN84OgC2wf/Uon1+rHZdO+8wqhLu61J4MV85/oNIsxR
CjV12bNGv9tMyyIwxGSpgEbg+59Dl6bPK/L/F6LNtw6lC2GLO7ebpeVsIZp5M75n
hGAVXqlJV+lSEvH/sNMg1A9NzEYuQhBKQaEl2zesMrK6SHTHW9pcMeLwFUGRsyzW
DWniQnFQLeshLS0QJSgR7Rp9r5APDdZjmVyX7LGph/S1/OXECWKUgRQhTK4u7fVz
4zVVMTKP73QeduSf9Dbj3fPrQh/pvgF7hG4wEePO/jvLiqf5ltA=
=rXOg
-----END PGP SIGNATURE-----

--------------uYkawYQuwiA7FLO3yaUVDsEH--
