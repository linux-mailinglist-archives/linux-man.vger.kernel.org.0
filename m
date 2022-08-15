Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35F03595207
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:29:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231320AbiHPF3O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:29:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbiHPF24 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:28:56 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6671910D1
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 15:02:00 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id m17-20020a7bce11000000b003a5bedec07bso6642737wmc.0
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 15:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=Apdr2pNDgm7N1RPceA/9MaTZwug3dGkcp32qHiAkBNY=;
        b=Cnbm12w9iVc163mqCooBoiYQ8uyecUKoCybJX+RiDeMCBq1k9MFznhE3f8GOdjuIgk
         P/dLGXorGcq/Ec0DE5drkMllZRPMaXITIUDbrOtMyREv2/Fm+vdIeoLibHLZARXdA0ty
         2dPp9kZ1uFV6Wx1vl47rRbG6UO3ue44TAKgTFq+ziohZjDpOAWjYccG9vmfe+zGtB+bk
         1v8DnfhjtTEM7CIT2I8MubnEkGlKUhPQ/vLyq24CXi+JM4l6MOiyufHvptt8L//AaWp/
         K7EGNEqAb95D8IxGccT6f3n21r/VvrX3S/btNnY2DKkpI6iG9Lt2xe1sVM6csrYTWSw9
         tWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=Apdr2pNDgm7N1RPceA/9MaTZwug3dGkcp32qHiAkBNY=;
        b=4pxQok7/QXUNHMNUeyUJp4fxh5ZJ7R8W2qoglf3KMDGwdndXXP+gfm7o6CQbsJKnOq
         2jzR8FHxRkaKksU82pOZehm4mIpu9GJMZmOQc8T27JPDurwURm9R7zHdv6Bi6ME0Vi7x
         YIYEoB2vjAh6dgCbocK8TneYPD6wKr6174bQ9648EwbM2xkjeGf9KcvJXO/J1u6x+98r
         +HyVo4CAPi9EGGNtTJtqPzruwHTma6CG7lL6Oyq7r6Z7KoNITGI3xNTrqDTfq0imTnbY
         NYYi/VIbTqwj3QkxAvHRFqEHLsSr2/B1JFkiYDOUXiwa2HkPHmk42LF1GUQPZi5fxh+8
         xINg==
X-Gm-Message-State: ACgBeo02E9bwsE5di3d3hvD/N+O9nSRx62RtIIz2T2oksbb+aReL7F2Y
        8BTL3yoV94XRDUatAMmau6Yo24LtUTM=
X-Google-Smtp-Source: AA6agR5LiJyyyANUD4J9wRECu7tX+C7JMWEoBN6Wjv40jHDB7vXKK5yfE6nFDXBlPxwTM+gU9U452g==
X-Received: by 2002:a05:600c:1c28:b0:3a5:3e18:3e with SMTP id j40-20020a05600c1c2800b003a53e18003emr17018123wms.203.1660600908315;
        Mon, 15 Aug 2022 15:01:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id cl5-20020a5d5f05000000b00224f7c1328dsm6728100wrb.67.2022.08.15.15.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 15:01:47 -0700 (PDT)
Message-ID: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
Date:   Tue, 16 Aug 2022 00:01:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: TAB character in groff output
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YvT3TxPFGThtbNYW@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YQhPIoKvUpZ0pMk9tB7me1wl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YQhPIoKvUpZ0pMk9tB7me1wl
Content-Type: multipart/mixed; boundary="------------R9ErJZWYWIBJGITLxuzLVTVF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, groff@gnu.org,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
Subject: Re: TAB character in groff output
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
In-Reply-To: <YvT3TxPFGThtbNYW@asta-kit.de>

--------------R9ErJZWYWIBJGITLxuzLVTVF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDgvMTEvMjIgMTQ6MzQsIEluZ28gU2Nod2FyemUgd3JvdGU6DQo+IEhpIEFsZWph
bmRybywNCj4gDQo+IHNvcnJ5IGZvciBnZXR0aW5nIGRpc3RyYWN0ZWQgYW5kIHJldHVybmlu
ZyBsYXRlIHRvIHRoZSBwYXJ0eS4NCj4gDQo+IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlIG9u
IFR1ZSwgQXVnIDAyLCAyMDIyIGF0IDA1OjE0OjQ3UE0gKzAyMDA6DQo+IA0KPiBbLi4uXQ0K
Pj4gJCBtYWtlIGxpbnQtbWFuLW1hbmRvYw0KPj4gTElOVCAobWFuZG9jKQl0bXAvbGludC9t
YW43L3NwdWZzLjcubGludC1tYW4ubWFuZG9jLnRvdWNoDQo+PiBtYW5kb2M6IG1hbjcvc3B1
ZnMuNzo3NDg6NzogV0FSTklORzogdGFiIGluIGZpbGxlZCB0ZXh0DQo+IA0KPiBNeSBnZW5l
cmFsIHJlY29tbWVuZGF0aW9uIGZvciB0aGlzIHdhcm5pbmcgaXM6DQo+IA0KPiAgICogSWYg
dGhlIHRhYiBpcyB1c2VkIGZvciBhIGdvb2QgcmVhc29uIChmb3IgZXhhbXBsZSwgaWYgaXQg
aXMNCj4gICAgIGluIGEgbXVsdGktbGluZSBjb2RlIHNhbXBsZSB0aGF0IGJlY29tZXMgbW9y
ZSByZWFkYWJsZSB3aXRoDQo+ICAgICBnb29kIGluZGVudGF0aW9uKSwgd3JhcCB0aGUgd2hv
bGUgY29kZSBzYW1wbGUgaW4gbm8tYnJlYWsNCj4gICAgIG1vZGUuICBJbiBtZG9jKDcpLCB0
aGF0IHVzdWFsbHkgbWVhbnMgLkJkIC11bmZpbGxlZCAoaWYNCj4gICAgIHRoZSBzYW1wbGUg
dXNlcyBtYXJrdXApIG9yIC5CZCAtbGl0ZXJhbCAob3RoZXJ3aXNlKS4NCj4gICAgIEluIG1h
big3KSwgLkVYIChtb3JlIHNlbWFudGljKSBvciAubmYgKG1vcmUgcG9ydGFibGUpDQo+ICAg
ICBjYW4gYmUgdXNlZC4NCj4gDQo+ICAgKiBJZiB0aGUgdGFiIGlzIG5vdCB1c2VkIGZvciBh
IGdvb2QgcmVhc29uLCBqdXN0IGdldCByaWQgb2YgdGhlIHRhYi4NCj4gICAgIFF1aXRlIG9m
dGVuLCB0aGF0IGNhbiBiZSBhY2hpZXZlZCBpbiBhIHZlcnkgc2ltcGxlIHdheS4NCj4gDQo+
IEluIHRoaXMgY2FzZSwgaXQgaXMgYmxhdGFudGx5IG9idmlvdXMgdGhlcmUgaXMgYWJzb2x1
dGVseSBubyByZWFzb24NCj4gd2hhdHNvZXZlciBmb3IgdXNpbmcgYSB0YWIuDQo+IA0KPiBB
cmd1YWJseSwgdGhlIHdob2xlIGV4YW1wbGUgc2hvdWxkIGJlIGRlbGV0ZWQgYmVjYXVzZSBp
dCBzaG93cw0KPiBub3RoaW5nIHRoYXQgaXMgY29tcGxpY2F0ZWQgZW5vdWdoIHRvIHJlcXVp
cmUgYW4gZXhhbXBsZS4NCj4gQWxsIHBhcnRzIG9mIHRoZSBsaW5lIGFyZSBjb21wbGV0ZWx5
IHRyaXZpYWwuDQoNCkknbGwga2VlcCBpdCBmb3Igbm93LiAgV2hhdCBpcyB0cml2aWFsIHRv
IHNvbWUgbWlnaHQgbm90IGJlIHNvIHRvIG90aGVycy4NCg0KPiANCj4gQmVsb3cgIk1vdW50
IG9wdGlvbnMiLCBhIHNlbnRlbmNlIGlzIG1pc3NpbmcgdGhhdCBpbiBmc3RhYig1KSwgdGhl
DQo+IGZzX3NwZWMgZmllbGQgbmVlZHMgdG8gYmUgc2V0IHRvICJub25lIiBhbmQgdGhlIGZz
X3Zmc3R5cGUgZmllbGQgdG8NCj4gInNwdWZzIiAtIG1vc3QgdXNlcnMgd291bGQgcHJvYmFi
bHkgZXhwZWN0IGJvdGggYW55d2F5LCBidXQgYmVpbmcNCj4gZXhwbGljaXQgaXMgYmV0dGVy
LiAgSSBkb24ndCB0aGluayB0aGUgZnNfZnJlcSBhbmQgZnNfcGFzc25vIG5lZWQgdG8NCj4g
YmUgbWVudGlvbmVkLCBpdCBpcyBjbGVhciB3aXRob3V0IHNheWluZyBzbyB0aGF0IG9ubHkg
MCBtYWtlcyBzZW5zZQ0KPiBmb3IgIm5vbmUiIGZpbGVzeXN0ZW1zLg0KDQpXb3VsZCB5b3Ug
bWluZCBzZW5kaW5nIGEgcGF0Y2g/ICBUaGlzIHBhZ2UgaXMgbm90IHNvbWV0aGluZyBJJ20g
dmVyeSANCmZhbWlsaWFyIHdpdGguDQoNCj4gDQo+IFJlbWVtYmVyLCBpdCBpcyB2ZXJ5IGJh
ZCBzdHlsZSB0byBwcm92aWRlIEVYQU1QTEVTICppbnN0ZWFkKiBvZg0KPiBkb2N1bWVudGF0
aW9uIGJlY2F1c2UgdGhhdCBsZWF2ZXMgdGhlIHVzZXIgd29uZGVyaW5nIHdoaWNoIHBhcnRz
IG9mDQo+IHRoZSBleGFtcGxlIGFyZSBjcnVjaWFsIGFuZCB3aGljaCBhcmJpdHJhcnkgKGUu
Zy4sIHRoZSAvc3B1IHBhdGgpLA0KPiBhbmQgd2h5IHRoZSBleGFtcGxlIHdhcyB3cml0dGVu
IGFzIGl0IHdhcy4NCg0KQWdyZWUuDQoNCj4gDQo+PiBJbiB0aGUgZm9sbG93aW5nIGNvZGU6
DQo+Pg0KPj4gJCBzZWQgLW4gNzQ1LDc0OXAgPG1hbjcvc3B1ZnMuNw0KPj4gLlNIIEVYQU1Q
TEVTDQo+PiAuVFANCj4+IC5JUiAvZXRjL2ZzdGFiICIgIGVudHJ5Ig0KPiANCj4gVGhhdCdz
IHRlcnJpYmxlIHN0eWxlLCB0b28uICBNYW51YWwgcGFnZXMgc2hvdWxkIHVzZSBjb21wbGV0
ZSBzZW50ZW5jZXMNCj4gYW5kIGNvcnJlY3QgRW5nbGlzaCBwdW5jdHVhdGlvbiwgZm9yIHJl
YXNvbnMgb2YgYm90aCBjbGFyaXR5IGFuZCBzdHlsZSwNCj4gZm9yIGV4YW1wbGU6DQo+IA0K
PiAuU0ggRVhBTVBMRVMNCj4gVG8gYXV0b21hdGljYWxseQ0KPiAuTVIgbW91bnQgOA0KPiB0
aGUgU1BVIGZpbGVzeXN0ZW0gd2hlbiBib290aW5nLCBhdCB0aGUgbG9jYXRpb24NCj4gLkkg
L3NwdQ0KPiBjaG9zZW4gYnkgdGhlIHVzZXIsIHB1dCB0aGlzIGxpbmUgaW50byB0aGUNCj4g
Lk1SIGZzdGFiIDUNCj4gY29uZmlndXJhdGlvbiBmaWxlOg0KPiAuRVgNCj4gbm9uZSAvc3B1
IHNwdWZzIGdpZD1zcHUgMCAwDQo+IC5FRQ0KPiANCj4gSnVzdCB1c2luZyBzaW5nbGUgc3Bh
Y2VzIGlzIHBlcmZlY3RseSBmaW5lOiBLSVNTLg0KDQpJIGxpa2UgaXQuICBJIGFwcGxpZWQg
YSBwYXRjaCB3aXRoIGV4YWN0bHkgdGhhdCAoYnV0IC5NUiAtPiAuQlI7IEknbGwgDQpzdGls
bCB3YWl0IGEgZmV3IHllYXJzIGJlZm9yZSB1c2luZyB0aGF0KS4gIEJUVywgQnJhbmRlbiwg
ZGlkIHlvdSBub3RpY2U/IDpQDQoNCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
ZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPTkyNDllMGYwZTljYWY5
ZGE2OTZlMWEzODMwZDJhMTA0YWJjODA1OTE+DQoNCkluZ28sIGlzIG1hbmRvYygxKSBwbGFu
bmluZyB0byBzdXBwb3J0IC5NUj8NCg0KPiANCj4+IEkgdGhpbmsgSSdsbCBmaXggaXQgd2l0
aCB0YmwoMSkuDQo+IA0KPiBUaGF0J3MgYSB2ZXJ5IGJhZCBpZGVhOiANCg0KWy4uLl0NCg0K
LS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------R9ErJZWYWIBJGITLxuzLVTVF--

--------------YQhPIoKvUpZ0pMk9tB7me1wl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6wkQACgkQnowa+77/
2zJpLg/8CqaSPZcdrbrpa6XSnWoWnU/1H9y9bi8QEn50ykd29WXt6QTC9zZ52wKx
wX+w6AnHIIIhVxzkobbe+bd1XbCks7yrnniS05Tn6dX+BBHoLM5FbdycWB2yUlCY
yBoY2CpO1gWM3okFF605WFxt3i4PRGuZoKtLd1o53V1F+JKNxdR5IjnMIfw8Dc4R
VGNXT6BCSX50YQGcq88Uk+Yx80wnsO84jgogNjuHf1eh5d5b3DdQMVjYYclplkrV
iEDkd5X8xcQLLNchGpK6uX2+6EpnbMAfDBOQap3GY8q25kf63xhyVYsMT/nom5Pb
ukFNV1xG4QV6+KTos7O8smTEBVEfaVXtvV05qvoh8PlMKlt0DqKcGl0CpY7rDlOR
BEpBvhKGx7ksrBtpw9Z1HmKhoSFr1Wwo6nhtLSefAEnr+a2/fDkeyf8Q6+v+SmPM
DhhVFBpYulhojP/s5L/BFPtdzVDHoqNOB+JZBk67FmOH4eD0S9/ozWA6BXhg6+cv
z79BJhv6ksJVSRys+oIcVLAD2Azq3b91N/8fqD+0qJeMxH1gZpWCMRa8M3yAUkfc
c7Zuu/DtXxZh3yCl3PPgWqgm84hksNxDcLTcARJVGCMITkBtBCBJxQACKRDqli/y
JZfRZY+jlCnl9Lp7a7e2+BeIlZkRVysvBqxYyFdaBfXz5N9nTSs=
=FRxw
-----END PGP SIGNATURE-----

--------------YQhPIoKvUpZ0pMk9tB7me1wl--
