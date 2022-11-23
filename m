Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0442C636978
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239496AbiKWTCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:02:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239587AbiKWTCU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:02:20 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A3E9B38F
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:02:18 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id i12so26972474wrb.0
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+TWz/1bdEyKiKjTpfVkS7cJpcU9HkMccL2t+Gb/bUg=;
        b=Wj4qVbLpWLxfOdxu8nQKPP/RKrKyAu3miig2qyv/8Qi7+zdWPZHXcjBiYhu+Q9vL9P
         aoh5FaJBBrxjkRYcl8vnrdR/YJppVTSxZnaR+YJYC9RPqxT5vO0DKl+bCyYM2zHeXIdM
         eiIZl9VPpeU7NTRNO7SgYtA/KiJce/mpf1EvAlqdlDbatTFymdzuxZ6LF9mXRLixORAP
         CR+IImL0Faiif8NTFzS27fsGhBIRFa7hFJulJtbxr9DYIDjtPibO3ExL7E57FG+vg3Nf
         H2O1LHjKsphNoo1L+b1vdqqaM2wavAOtBuDLk7+KH2kDYkDYI7yT4RunER1eowtd//9G
         tD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1+TWz/1bdEyKiKjTpfVkS7cJpcU9HkMccL2t+Gb/bUg=;
        b=Z8/fpftuYUeROaf/KQhwynAv7L4l0hYworYOUGjVeho5s+SYtNQ7/YLDZVoKUkKjIY
         zStAMKkEwsKVXEsFV9HyxB0Pf/kdiR2pSy+kyOh/LN8vmOE1kZKobqsAiBEk/o8HqhnD
         dnU2xuW/qT/hcDzfgjssbQTqE6Km49QQfb5/pvpOvDuHZwXX5RYIK/r9VRIP9EL6z/8k
         ZrIW9YZHubVxweQwHFg8GonNWLJ5xfY1HWcfuz842N1lP6ujCbsrgfsd1hM63jzinREX
         +6VItYCSzWrH3VJje85m9zVEKAJ+b0+YLFHcs5XYSVTvQZp3ck1eaQEcqpkQ5FUrR2mN
         hcqQ==
X-Gm-Message-State: ANoB5pnTGCYZv/kSvV+X7TRwwMypx5N9QdV1WG+uyfK9JDdhcwuJDTaZ
        OSNT4DbW4yu4epQDwxtquxQ=
X-Google-Smtp-Source: AA0mqf6th2jtk1EYihR4lXSpAszPx148OFxWZ2A6ADSs1CzJU9pFZynOWiIFM2k6RgRE4rzNMRunXw==
X-Received: by 2002:adf:e24d:0:b0:22e:471b:c616 with SMTP id bl13-20020adfe24d000000b0022e471bc616mr18822118wrb.51.1669230137131;
        Wed, 23 Nov 2022 11:02:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id hg25-20020a05600c539900b003cf6c2f9513sm3292558wmb.2.2022.11.23.11.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 11:02:16 -0800 (PST)
Message-ID: <72f5ab02-4756-5c20-5ee8-91f9826d094e@gmail.com>
Date:   Wed, 23 Nov 2022 20:02:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 2/4] zic.8: s/time zone/timezone/ for consistency
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Time zone mailing list <tz@iana.org>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-2-alx@kernel.org>
 <0b1c6659-6a1f-a1aa-daf2-91e86ab17efd@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0b1c6659-6a1f-a1aa-daf2-91e86ab17efd@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l3AIrZ3mPB208L62zXPdXo00"
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
--------------l3AIrZ3mPB208L62zXPdXo00
Content-Type: multipart/mixed; boundary="------------B2VnPHwKRmMbQTzpzbrRYqkl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Time zone mailing list <tz@iana.org>
Message-ID: <72f5ab02-4756-5c20-5ee8-91f9826d094e@gmail.com>
Subject: Re: [PATCH v2 2/4] zic.8: s/time zone/timezone/ for consistency
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-2-alx@kernel.org>
 <0b1c6659-6a1f-a1aa-daf2-91e86ab17efd@cs.ucla.edu>
In-Reply-To: <0b1c6659-6a1f-a1aa-daf2-91e86ab17efd@cs.ucla.edu>

--------------B2VnPHwKRmMbQTzpzbrRYqkl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF1bCwNCg0KT24gMTEvMjMvMjIgMTk6NDIsIFBhdWwgRWdnZXJ0IHdyb3RlOg0KPiBP
biAyMDIyLTExLTIzIDA1OjQ4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IFRoaXMg
YWRkcyBjb25zaXN0ZW5jeSBhY3Jvc3Mgb3RoZXIgbWFudWFsIHBhZ2VzLCBhbmQgd2l0aCBQ
T1NJWC4xLg0KPiANCj4gVGhlIHR6ZGIgcHJvamVjdCBkb2N1bWVudGF0aW9uIHVzZXMgdGhl
IHBocmFzZSAidGltZSB6b25lIiBmb3IgdGhlIG9yZGluYXJ5IA0KPiBFbmdsaXNoIG1lYW5p
bmcgdGhhdCB5b3UnbGwgc2VlIGluIHRpbWUgem9uZSBtYXBzIG9yIGluIHBocmFzZXMgbGlr
ZSAidGltZSB6b25lIA0KPiBhYmJyZXZpYXRpb24iLCB3aGVyZWFzIGl0IHVzZXMgdGhlIHNp
bmdsZSB3b3JkICJ0aW1lem9uZSIgdG8gbWVhbiB0aGUgUE9TSVggaWRlYSANCj4gb2YgYSBz
ZXQgb2YgcnVsZXMgdGhhdCBtYXAgVVRDIHRvIGxvY2FsIHRpbWUuIFNvLCBmb3IgZXhhbXBs
ZSwgdGhpcyBwcm9wb3NlZCANCj4gY2hhbmdlOg0KPiANCj4+IC1BIHRpbWUgem9uZSBhYmJy
ZXZpYXRpb24gdXNlcyBhDQo+PiArQSB0aW1lem9uZSBhYmJyZXZpYXRpb24gdXNlcyBhDQo+
IA0KPiB3b3VsZCBub3QgYmUgcmlnaHQsIGJlY2F1c2UgYW4gdGltZSB6b25lIGFiYnJldmlh
dGlvbiBsaWtlICJQRFQiIGRvZXNuJ3QgZGVub3RlIA0KPiBhIHNldCBvZiBydWxlcyBsaWtl
IGEgVFogc3RyaW5nIHdvdWxkLg0KPiANCj4gSSBzdWdnZXN0IG1vZGlmeWluZyBvdGhlciBM
aW51eCBtYW51YWwgcGFnZXMgdG8gYmUgY29uc2lzdGVudCB3aXRoIHRoaXMgdXNhZ2UsIA0K
PiByYXRoZXIgdGhhbiB0cnlpbmcgdG8gdXNlIHRoZSBzaW5nbGUgd29yZCAidGltZXpvbmUi
IGZvciBib3RoIHVzYWdlcy4gUXVpdGUgDQo+IHBvc3NpYmx5IG1vc3Qgb3RoZXIgTGludXgg
bWFudWFsIHBhZ2VzIHR5cGljYWxseSB1c2UgInRpbWV6b25lIiBiZWNhdXNlIHRoZXkncmUg
DQo+IHR5cGljYWxseSB0YWxraW5nIGFib3V0IHRoZSBQT1NJWCBtZWFuaW5nLCB3aGljaCB3
b3VsZCBtZWFuIHRoZXkncmUgYWxyZWFkeSBPSy4NCg0KSXQgbWFrZXMgc2Vuc2UuICBUaGFu
a3MuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------B2VnPHwKRmMbQTzpzbrRYqkl--

--------------l3AIrZ3mPB208L62zXPdXo00
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+bjcACgkQnowa+77/
2zJ0gQ//UGCAmprVDsG9F/UqVCEyvzP5jlygPVad64yNt4aNUNSR3fMuE8h2fEOq
uW1jY8we/VRAZROa4CABxAmtoV227T5hTbQwpXEsQbNMWQFZ89H1kMSDsm1Ivm0S
ul4Pmcs/0GMb00WUAxt6QCV0Qmqb7og0m9ybo2YWyC+QOIEZbEOpiPKBcxzFlBlx
GLnk/6Hkey1dUH/xWK7TDcgm95g5hBwCEHAeIKxXtvFlctHZofcLZETzBoh9pFGr
A3vcvdipUEwBouGOQ8RfAmHbDzoCtqJ7rlq0bsQPrqjD35G5mZ/SIRPV6UPLRAkA
pxvr5HwUu/7E7xQQrMwBMzxiaNYJv3H9ObYTCMed+2/A8vUGZITrcLxEuK0mHSAA
MErf1m6TMlHVjMXpLX5LdSopdz5S+/wUGrF4lir2G125Bh7Cyw3aJWuP07u0MS3c
6Bi01KtKn1B+Snuwl8e11l8HVg/7QhynNx+7xTBr34NXtw9pZwch9jld5s1dOkq1
aqWoRQGSsVZm3mIz/Qg3d9VHJX7Rm5Xs7xrserBHi/Yc49pheSwyBtQsme2Shr7l
uST3bZq8oHPiofqEw1sitL5qb+yrjttAKj9u94dd8dnc+HP1jVuh766MtLjjaSPT
Yt5asjJhYbI3DaptWh2mhb8bSeUv0oMt6sDPWb/TE/k2OC6Gld4=
=4yFq
-----END PGP SIGNATURE-----

--------------l3AIrZ3mPB208L62zXPdXo00--
