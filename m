Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 596FA62310A
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 18:06:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbiKIRGS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 12:06:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbiKIRGS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 12:06:18 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0179F25
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 09:06:16 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id g12so26685713wrs.10
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 09:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tzWxAj3BE1u6nzVX87o6l1KTlQk9tNS87AyAg0tCmKU=;
        b=F4nhNb69AaWnaqFzO/1KIq46Y6yqcnb4v41+HaTv0lzNEQQXH3BmrdM4/8dz6xaiH8
         yJpn6dR5kN3IFVhaOK6b/A3nx/ytGgFpzALF7XWtCVajk1j68hnCOuN4ko+w2/ZteicT
         svgYAeFlDkApqzQb3iEPc51Rwtpeq5Ihzl9tSNdFF7akqMqRd0mWv6/XkRIgIdiiTtXb
         rTyQ5HdtM4UXoFs5+JBOmgjnsm4ZSSplDoBhHalzgSlbC8GlCMXtxQ4D8KlOsngVh8j4
         /jdv3QnoMf/kRv5JbM1p55sYGwajODv7IyszsFCgFM4DbPYYnEZ+lLacwGDOTeoA9cBg
         q+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tzWxAj3BE1u6nzVX87o6l1KTlQk9tNS87AyAg0tCmKU=;
        b=vPDLYCgwgRDO3eF3skloq6Y7H4+exOr4mYMMlKetD5ApGmLz/P8Zj0WMXqIyeGpNmp
         V/UweMd+wU5+496nDm9tKe35dBdbWsghdWBcfZAGS8TpsS8PR5te+puNSgTr61Fp8UQ9
         rUCZ6cosfyvU8PJoxheiJNfHlQ3xvuzjX4oIZ60mTHDoDqu+UrV7eXOVG/Bdg6tkgTH2
         4dYzptg8uqH8vZG9dw6qyqn5za8oBZLmltd8mLiAe8EIcnCH9otu467hdVuUYyiIxGME
         L4HFDNjJGiFCO6GRXJsW53ojzPtYXLp+vFH2h3j5G8l4F7AuRJuMs1IiPaTyDPwWWQ89
         kotw==
X-Gm-Message-State: ACrzQf3/Jn6tPCvDGCjtz7SivcBKHADV5QoiXtxQgHdnzF8e5uxN9ZY8
        Dg9eT5yn/Ph9/B7+vH8+Ivs=
X-Google-Smtp-Source: AMsMyM57hotZ0zi+/CC4Yn1e5+hiu7neb07sJFA/rPGSyHkEpm8Ikv5uLtDHyLYU8UhaY/ggl+qAww==
X-Received: by 2002:a5d:50ca:0:b0:236:776c:3075 with SMTP id f10-20020a5d50ca000000b00236776c3075mr39740935wrt.656.1668013575099;
        Wed, 09 Nov 2022 09:06:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r8-20020a05600c35c800b003cf7928e731sm2470355wmq.9.2022.11.09.09.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 09:06:14 -0800 (PST)
Message-ID: <b59a551f-2ad4-b18b-a3e0-0296d81a03f2@gmail.com>
Date:   Wed, 9 Nov 2022 18:06:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20221109151812.58365-1-alx@kernel.org> <Y2vOC3VJWAg3K141@vapier>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y2vOC3VJWAg3K141@vapier>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------agsWn4mmUQHPuSDlDq48LA02"
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
--------------agsWn4mmUQHPuSDlDq48LA02
Content-Type: multipart/mixed; boundary="------------cRrs1qpLEm2stmEYOlpEnxJP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
 Alejandro Colomar <alx@kernel.org>, Mike Frysinger <vapier@chromium.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <b59a551f-2ad4-b18b-a3e0-0296d81a03f2@gmail.com>
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t'
 comment for tbl(1)
References: <20221109151812.58365-1-alx@kernel.org> <Y2vOC3VJWAg3K141@vapier>
In-Reply-To: <Y2vOC3VJWAg3K141@vapier>

--------------cRrs1qpLEm2stmEYOlpEnxJP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSENCg0KT24gMTEvOS8yMiAxNjo1OCwgTWlrZSBGcnlzaW5nZXIgd3JvdGU6DQo+
IE9uIDA5IE5vdiAyMDIyIDE2OjE4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IC0t
LSBhL2xpYi9saW50LW1hbi5taw0KPj4gKysrIGIvbGliL2xpbnQtbWFuLm1rDQo+IA0KPiBp
IGd1ZXNzIG5vdCBhIG5ldyBpc3N1ZSwgYnV0IGl0IGZlZWxzIGxpa2Ugd3JpdGluZyBsaW50
IGxvZ2ljIGluIE1ha2VmaWxlcw0KPiBpcyBub3QgdGhlIGJlc3QgdXNlIG9mIHRpbWUuICB0
aGlzIGxvZ2ljIGlzIHJlYWxseSBoYWlyeS4NCg0KSG1tLCB3ZWxsLCB0aGUgbGluZSBpcyBu
b3Qgc28gY2xlYXIuICBCdXQgSSdkIHNheSB0aGlzIGlzIHRoZSBzZWNvbmQgY2FzZSB3aGVy
ZSANCkkgYWRkIGxpbnQgbG9naWMgaGFyZGNvZGVkIGluIHRoZSBtYWtlZmlsZS4gIFRoZSBm
aXJzdCBjYXNlIHdhcyBmb3IgY2hlY2tpbmcgDQp0aGF0IHJlbmRlcmVkIG91dHB1dCBmaXRz
IGluIGEgdGVybWluYWwgKDgwIGNvbCk6DQoNCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC90cmVlL2xpYi9saW50LW1hbi5t
ayNuODI+DQoNCkFsbCBvdGhlciBsaW50cyBhcmUganVzdCBydW5uaW5nIHRoZSBsaW50ZXIs
IHdoaWNoIGluIHNvbWUgY2FzZXMgaXMganVzdCBhIA0Kc2luZ2xlIGNvbW1hbmQsIGFuZCBp
biBvdGhlcnMgaXMgYSBwaXBlbGluZS4NCg0KQnV0IHRoaXMgb25lIGlzIHRoZSBtb3N0IGNs
ZWFyIGV4YW1wbGUgb2YgbGludCBsb2dpYyBpbiB0aGUgTWFrZWZpbGVzLCB5ZXMuDQoNCg0K
T3B0aW9uIEIgd291bGQgYmUgdG8gd3JpdGUgdGhvc2UgMyBjb25kaXRpb25hbHMgaW4gYSBz
Y3JpcHQgdW5kZXIgPC4vc2NyaXB0cy8+LCANCmFuZCBjYWxsIGl0IGZyb20gdGhlIE1ha2Vm
aWxlLiAgU2luY2UgSSBkb24ndCBleHBlY3QgdGhpcyAoaGFyZGNvZGluZyBsaW50IGxvZ2lj
IA0KaW4gdGhlIE1ha2VmaWxlKSB0byBoYXBwZW4gdmVyeSBvZnRlbiwgSSdtIG5vdCB0ZW1w
dGVkIGVub3VnaCB0byBkbyB0aGF0LiAgRm9yIA0Kbm93LCBhIGZldyBsaW5lcyBvZiBlbWJl
ZGRlZCBjb2RlIHNlZW0gcmVhc29uYWJsZSB0byBtZS4NCg0KQnV0IHBsZWFzZSBmZWVsIGZy
ZWUgdG8gcHJvcG9zZSBhIGRpZmZlcmVudCBhcHByb2FjaC4NCg0KPiANCj4+ICskKF9MSU5U
X21hbl90YmwpOiAkKF9MSU5URElSKS8lLmxpbnQtbWFuLnRibC50b3VjaDogJChNQU5ESVIp
LyUgfCAkJChARCkvLg0KPj4gKwkkKGluZm8gTElOVCAodGJsKQkkQCkNCj4+ICsJaWYgJChH
UkVQKSAnXlwuVFMkJCcgPCQ8ID4vZGV2L251bGwgJiYgISAkKEhFQUQpIC1uMSA8JDwgfCAk
KEdSRVApICdcXCIgdCQkJyA+L2Rldi9udWxsOyB0aGVuIFwNCj4gDQo+IFBPU0lYIGdyZXAg
aGFzIGEgLXEgb3B0aW9uIHNvIHlvdSBkb24ndCBoYXZlIHRvIHJlZGlyZWN0IHRvIC9kZXYv
bnVsbC4NCj4gCWlmICQoR1JFUCkgLXEgJ15cLlRTJCQnIDwkPCAmJiAuLi4NCg0KSG1tLCBJ
J20gdXN1YWxseSBub3QgYSBmYW4gb2YgaXQgKEkgd2FzIGluIHRoZSBwYXN0LCBidXQgSSd2
ZSBsZWFybnQgdG8gcHJlZmVyIA0KcGlwZXMgYW5kIHJlZGlyZWN0cykuICBCdXQgaW4gdGhp
cyBjYXNlIGl0IGhlbHBzIGtlZXAgdGhlIGxpbmVzIHNob3J0ZXIsIHNvIHllcywgDQpJIGxp
a2UgaXQgZm9yIHRoaXMgY29kZS4NCg0KPiANCj4gYWxzbywgaXMgdGhlcmUgYSByZWFzb24g
eW91J3JlIHVzaW5nIGEgcmVkaXJlY3QgaW5zdGVhZCBvZiBqdXN0IHBhc3NpbmcgdGhlDQo+
IGZpbGUgdG8gZ3JlcCA/ICB0aGUgcmVkaXJlY3Qgd29ya3MsIGJ1dCBpdCBzZWVtcyB0byBj
b250cmlidXRlIHRvIGdlbmVyYWwNCj4gInRoaXMgY29kZSBpcyBoYXJkIGZvciBodW1hbnMg
dG8gcmVhZCIuICBpIGRvbid0IHRoaW5rIHlvdSByZWFsbHkgbmVlZCB0bw0KPiBiZSBjb25j
ZXJuZWQgd2l0aCBmaWxlcyBzdGFydGluZyB3aXRoIGRhc2hlcyAuLi4NCj4gCWlmICQoR1JF
UCkgLXEgJ15cLlRTJCQnICQ8ICYmIC4uLg0KPiANCj4gb3IgbW9yZSBjb21wbGV0ZWx5Og0K
PiAJaWYgJChHUkVQKSAtcSAnXlwuVFMkJCcgJDwgJiYgISAkKEhFQUQpIC1uMSAkPCB8ICQo
R1JFUCkgLXEgJ1xcIiB0JCQnOyB0aGVuDQoNCkkgaGF2ZSBncm93biBhIHRlbmRlbmN5IHRv
IHVzZSBwaXBlcyBhbmQgcmVkaXJlY3Rpb24gaW5zdGVhZCBvZiBmaWxlbmFtZXMgYW5kIA0K
b3B0aW9ucy4gIEVzcGVjaWFsbHkgd2hlbiB3cml0aW5nIG15IG93biBmaWx0ZXJzLg0KDQpX
aGVuIEkgd3JpdGUgbG9uZyBzY3JpcHRzIHdoZXJlIGVhY2ggY29tbWFuZCBnb2VzIG9uIGEg
bGluZSBvZiBpdHMgb3duLCBJIHByZWZlciANCnRoYXQgdmVyeSBtdWNoLiAgSXQgaGVscHMg
cmVhZGFiaWxpdHkgSU1PLiAgQXMgYW4gZXhhbXBsZSwgPC4vc2NyaXB0cy9iYXNoX2FsaWFz
ZXM+Lg0KDQpIb3dldmVyLCBmb3IgJ2lmJ3MsIGl0J3MgbXVjaCBtb3JlIGNsZWFyIHdoZW4g
dGhlIGNvbmRpdGlvbiBpcyBhIG9uZS1saW5lciwgYW5kIA0KdGhhdCBjaGFuZ2VzIHNvbWUg
dGhpbmdzLiAgSGF2aW5nIHRoZSBsaW5lIHVuZGVyIDgwIGNvbCBoZWxwcyBpbiByZWFkYWJp
bGl0eSBhIA0KbG90IG1vcmUgdGhhbiByZWRpcmVjdGlvbnMuICBBbmQgaGF2aW5nIGZld2Vy
IHNwZWNpYWwgY2hhcmFjdGVycyBhbHNvIGhlbHBzIA0KcGFyc2UgdGhlIGNvbXBsZXggbGlu
ZS4gIFNvLCB5ZXMsIEkgYWdyZWUgdGhhdCBpbiB0aGlzIGNhc2UgaXQncyBiZXR0ZXIgdG8g
bWFrZSANCml0IHNob3J0ZXIgYXMgeW91IHByb3Bvc2UuICBJJ2xsIHNlbmQgYW4gdXBkYXRl
ZCB2MiBzb29uLg0KDQo+IA0KPj4gKwlmaTsNCj4gDQo+IGRvbid0IG5lZWQgdGhpcyB0cmFp
bGluZyBzZW1pLWNvbG9uDQoNCkluIGJhc2ggc2NyaXB0cywgSSB0ZW5kIHRvIGFsd2F5cyB3
cml0ZSBzZW1pY29sb25zLiAgSSBsaWtlIHRoZWlyIHByZWNpc2VuZXNzLiANCkluIE1ha2Vm
aWxlcywgaG93ZXZlciwgSSBsZWFybnQgcmVjZW50bHkgdGhhdCBHTlUgbWFrZSBtYWtlcyBh
IGRpZmZlcmVuY2Ugd2hlbiANCnlvdSB1c2UgdGhlbTogaXQgY2FuJ3Qgb3B0aW1pemUgY2Vy
dGFpbiB0aGluZ3MuICBTbyBpdCdzIGFjdHVhbGx5IGJldHRlciB0byANCnJlbW92ZSB0aGVt
Lg0KDQpJIGp1c3QgcHV0IHRoZW0gb3V0IG9mIGluZXJ0aWEgZnJvbSB0aGUgcmVzdCBvZiB0
aGUgZW1iZWRkZWQgc2NyaXB0LCBhbmQgYWdyZWUgDQp0aGF0IGl0J3MgYmV0dGVyIHdpdGhv
dXQgdGhlbS4NCg0KPiAtbWlrZQ0KDQpUaGFua3MhDQoNCkNoZWVycywNCg0KQWxleA0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------cRrs1qpLEm2stmEYOlpEnxJP--

--------------agsWn4mmUQHPuSDlDq48LA02
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNr3fgACgkQnowa+77/
2zLBUQ//SBSHrh7I6LecyYxXApASjfSxVxlVmDE8ChYhIkFTRN8dOBiYQ/Lc6LqM
Xc6vsI1eLzShvhHGsmpCqKBSmccIuDbVbjoAHBytqwGeldZNN67hNLHGkN3ceHqh
o8jzRkeW+lGvDzmW4KQdgWIqHP4DX1D1W4EiKIedgTbtppuvZbzOgS6pVfAgClms
SKGnAm7tRV4dIjvxT5bEeYrsDoA6OpIOU7JD3Pp+63H76KnYo//BXkmg4DS9QoMa
jaS+0aecfXEBpClUmPA4xqfF2Wg7eVMxeTsZX95C2qV5t0KPJewAP83Qkw840t+t
Ksv9gc709p4bTFadfR4k5EijTh1tL6P+/Vc60my3V35kYXDTE0AiKwUeUZ8raN6S
gPzrwGdOuqiMVME/gVZKS/cUjzGhXJBdXRgtLOdWf3mHqEOSy26CFxGXombjK/bO
VgBblm9s2Xbd/Dvt+jIqegbFH6euYTvPT97qCnhUdr9Rvluxeangi8rHgLpVDl5Q
gI5zBvjQP4eYldPd1uygFEnoXdckDUu9AjKGgHAOH1Xo0Fe4/oekNgWKhBpAxMO0
d5ahPQk8hJTp5VjpQn55wUzermYwMQ893kiRHV/mK2zu9Um3wogc73vR7CVmpooL
dwex0GejAh2jtixcMEjvlTyHYOqE1nLiBauOMf7Gs2o3SPpWGGk=
=YepO
-----END PGP SIGNATURE-----

--------------agsWn4mmUQHPuSDlDq48LA02--
