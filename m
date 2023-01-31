Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4C0C683AD5
	for <lists+linux-man@lfdr.de>; Wed,  1 Feb 2023 00:59:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230417AbjAaX70 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 18:59:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231364AbjAaX7Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 18:59:25 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4EE58A77
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 15:59:23 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so190759wmq.0
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 15:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBxsUag1aUHvegUo7UqEHK70Wax7GNZuhnsVLQdUS/o=;
        b=b2bacGybaJV/C3yRFoc1r6w/64K2i0Q51CTkkR625yPLkrwZA0sTYAwQFnMxBKDSn5
         cevc6YThgthVzNaDKMGG4oIMTk0nr4PS8WnZEDrrP1IJn19vs2J7VFoO7EY2vXmgGSR+
         GwAfnjmVE5FvEidhirUM5c8SQlUxDOZ0RctFQKiJ9l0gw4vRuzcfK3u6uqVb7kLaWBme
         tF2vsJDiEshxXWeEY26doozSQiI6WHDXy+rAU+3NqrjsFfohC3BP+7CsxGDga9fWkbop
         AWB0F1Qql1Ym92lsboarV2jJFo3Hfx4h9ObOtwV9m+jLEdsdZceiB1Okwuiy8Rs8+Yo5
         7K/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oBxsUag1aUHvegUo7UqEHK70Wax7GNZuhnsVLQdUS/o=;
        b=jmLB5R5cqHaGq+LL51ggLpArav4VMlABJ5xx0EzVCsAw7SS4uK+Z9zSwtrwcC/lNCv
         IwbowwXipGEVG2AaTTrXdMCWXcVZvvYh81ONlTYKPzC8jbR34X+snJk0fyIQYoO/74co
         Z3vZLMTlZ3YJclUEVRIUBzHI1CJ4o/X2RUzT4lep0VyXNPaIkvt1BQzGcpX9x7I2eKJX
         2A4TT+Jq8tbUUQRSoH0DrhSI2A5EnzquXTQRowz7Xmexs7R10DzoTF2ZIhkSvKLaCxht
         5jjPPbU51uJ9NIFOq7GwTZTY527w0kIDnZBdC103gJlknF9RMNktTyjHsCMkCUC5NIW0
         Fyag==
X-Gm-Message-State: AO0yUKWADVnW3W0JcrvtRjq58d2c/igpjTyMRwj1L7J02YOhu0HslpZn
        Ze03+tymCyRdXHnFmar5b8my64OF+aM=
X-Google-Smtp-Source: AK7set/U4MtpYsutedkosvlMzgJxDys12VS9sL885qG2KqaOtNbzt0chzarNteKpHNDL+Gx88Ndhzw==
X-Received: by 2002:a05:600c:500e:b0:3da:f2b:d7a0 with SMTP id n14-20020a05600c500e00b003da0f2bd7a0mr28033wmr.31.1675209562210;
        Tue, 31 Jan 2023 15:59:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t28-20020a05600c329c00b003dc59081603sm4613wmp.48.2023.01.31.15.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 15:59:21 -0800 (PST)
Message-ID: <9b541acf-4522-a74e-d3b7-bcdea6c8aded@gmail.com>
Date:   Wed, 1 Feb 2023 00:59:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] vdso.7: fix risc-v symbol names.
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
 <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
 <CAJgzZooXi8G=Ega2VN26KGBC7pKknRAW6E1tWXYr81_Dx2BZgA@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZooXi8G=Ega2VN26KGBC7pKknRAW6E1tWXYr81_Dx2BZgA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------F1Y0jMwAuqsdwcZlx2M1sTYI"
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
--------------F1Y0jMwAuqsdwcZlx2M1sTYI
Content-Type: multipart/mixed; boundary="------------ST2GN8VBv0siQxFKbcqvRxzu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <9b541acf-4522-a74e-d3b7-bcdea6c8aded@gmail.com>
Subject: Re: [PATCH] vdso.7: fix risc-v symbol names.
References: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
 <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
 <CAJgzZooXi8G=Ega2VN26KGBC7pKknRAW6E1tWXYr81_Dx2BZgA@mail.gmail.com>
In-Reply-To: <CAJgzZooXi8G=Ega2VN26KGBC7pKknRAW6E1tWXYr81_Dx2BZgA@mail.gmail.com>

--------------ST2GN8VBv0siQxFKbcqvRxzu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRWxsaW90dCwNCg0KT24gMS8zMS8yMyAxODozOSwgZW5oIHdyb3RlOg0KPiBPbiBUdWUs
IEphbiAzMSwgMjAyMyBhdCA0OjUyIEFNIEFsZWphbmRybyBDb2xvbWFyDQo+IDxhbHgubWFu
cGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4+DQo+PiBIaSENCj4+DQo+PiBPbiAxLzMxLzIz
IDAwOjAyLCBlbmggd3JvdGU6DQo+Pj4gVGhlIGtlcm5lbCBnaXQgaGlzdG9yeSBzYXlzIHRo
ZSBuYW1lcyBoYXZlIGFsd2F5cyBiZWVuICJfX3Zkc29fIiByYXRoZXINCj4+PiB0aGFuICJf
X2tlcm5lbF8iLCBzbyBJIGFzc3VtZSB0aGlzIHdhcyBhIGNvcHkgJiBwYXN0ZSBtaXN0YWtl
IGZyb20gYQ0KPj4+IGRpZmZlcmVudCBhcmNoaXRlY3R1cmUuDQo+Pj4NCj4+PiBMdWNraWx5
LCB0aGUgcGF0aCB0byB0aGUga2VybmVsIHNvdXJjZSB0aGF0IGxldHMgeW91IGNvbmZpcm0v
ZGVueSB0aGlzDQo+Pj4gX2lzXyBjb3JyZWN0IDotKQ0KPj4NCj4+IENvdWxkIHlvdSBwbGVh
c2Ugc2lnbiB0aGUgcGF0Y2g/DQo+IA0KPiBkb25lLg0KDQpQYXRjaCBhcHBsaWVkLiAgVGhh
bmtzIQ0KDQo+IChpIGRpZCByZWFkIHRoYXQgcGFydCBvZiB0aGUgZG9jcywgYnV0IGFzc3Vt
ZWQgdGhpcyBjb3VudGVkIGFzIGENCj4gInRyaXZpYWwiIHBhdGNoIDotKSApDQoNCjotKQ0K
DQo+IA0KPj4NCj4+IEFsc28sIGl0IHNlZW1zIHNvbWV0aGluZyBpcyBicm9rZW4gaW4gdGhl
IHBhdGNoOyBtYXliZSB0aGUgbWFpbGVyIGJyb2tlIGl0PyAgSQ0KPj4gY2FuJ3Qgc2VlbSB0
byBhcHBseSBpdC4gIFBsZWFzZSBjaGVjay4NCj4gDQo+IHVnaCwgeWVhaCwgZ21haWwgYW5k
IHRhYnMgcmVhbGx5IGRvbid0IGdldCBvbiwgYW5kIHRoaXMgZmlsZSBpcyBmdWxsDQo+IG9m
IHRhYnMuIHRyeWluZyBhZ2FpbiBhcyBhbiBhdHRhY2htZW50Li4uDQoNCkhlaCA6KSAgQW55
IGhvcGVzIHRoYXQgeW91IGNhbiBzdWdnZXN0IGdvb2dsZSBicmluZ3MgYmFjayBmdWxsIHBs
YWluIHRleHQgDQpzdXBwb3J0PyA6UA0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------ST2GN8VBv0siQxFKbcqvRxzu--

--------------F1Y0jMwAuqsdwcZlx2M1sTYI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPZq1EACgkQnowa+77/
2zJCNRAAmkjfgQ7BHWF49KgDZt3eGanNMy3t7wZLNgTpYwvbgN+QnsXN3uBoGHWd
RHWL5ixwRkNfyASf60SBk62pyK79s8yzZI08WD0RjQ1n8CbSLEx6iNXbQQtCX1ob
d8hPk9y7GSjFPg+GzeA8O89+n5xJp+usP2AR8NQ0gdjQn1kMrtEXz0zw12ADf7Qa
AKOax2zgV909B+WltXW4m1kUXljnmV+Vg3sPu1/zAQ5A5t4EZ2svtNX29G7R2ALc
F6+Ni1FpXEuJUJLfPYv38fYqlHBAJ7ZfoNaV15CnNfbId2K5pL2/90QnVEXGES7C
tkThhK4hlvcq2fd6ao5XvXxfNtDbgrpPJPX2+7GQpGWqr2ZLtdzlplXzPuHVyBc7
GRxGhxbhAN0WkLrXvzvw2PyVEFdav1uV0c5LFvucOV5bhiONYNsc4lCg4HWv5Hyy
N8mupAU0b2aKEn6onJA6iAxo7MtlJsz9FsUxTxqk18F9DcplVojUbqcpVnIp39EB
F1yv4MTzSQq1h1R4O2GMjadg3ltjsTPZPq0W+ekXwxsfmkzExmtVfR19YjOs3pnX
huyyLwPeWbobA4WX5U1dYSsHWXZ2I+pmBWHKYa9AhrZ1MV9ML+gpoRmdaRd0k79T
KN0LWMtgtBi2c2q/DRV1kROhKIb7F5zLMSWXYSARx4QezDZ6Kg8=
=lunt
-----END PGP SIGNATURE-----

--------------F1Y0jMwAuqsdwcZlx2M1sTYI--
