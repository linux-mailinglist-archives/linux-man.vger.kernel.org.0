Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D981E67550F
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 13:56:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjATM4D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 07:56:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjATM4C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 07:56:02 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC89E5FD4
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 04:56:01 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id h16so4751203wrz.12
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 04:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFLgTRVm6TPYTr9nARM2RPqdcUhPQggnBVnS2Yde3a8=;
        b=jWa3RSAexGJj9C/EtqcUO6c7XqeoAsocDjsoW/XnRT9nz6IsUPzM2EofXE0R9by3YX
         49IvRQgNVsdcq6hvG4xHftNEzJH+JttgU7F/dOXwe+JioFVKuNwc4aR5x9LspJx1mvxy
         2L4jzYsbjFHWqTz4mmvY5lneA+gvL6bGSjCarPdEu39C7I6tmmIJ7IS786Ue7QFGCt0z
         5otWP57t4N+ZFxuOaOfVrZGeUdFEDi4qFkrK1S30mgbr1V6Q9ryHMDOlIV+V/aVt9Dk3
         EqChyYhLpTcfZTWej6+wN3njLpSDc36rPjCPlopzYu2T8WALY2fyDUNNsFqy+Zo/ov0l
         HYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oFLgTRVm6TPYTr9nARM2RPqdcUhPQggnBVnS2Yde3a8=;
        b=bR0Ref/aePNYk1z01iXeeUzYTCi9W9RYTL9O6rr5Pe7gFnPllxNbwA5wOG0to5/PgE
         cG3nDdyl7uPxhTcP0o33wI7F6TXuQiHnaz/jUvsBGVY5PMqQudH1ng2XqchH4KBdfVHQ
         P1MvitfTVDWb7TArqYAOsc94dVMr/y6d02TR1hCT9tbG+mv0EXLvUs0uzKQ6S43ibDUV
         hi8xsDwV4O8FNpVQ7LbDidem8WxL04lr44fn5zdPrUMfrEKLV7D1tMOQP6W9ewwYmuiJ
         V4YF704wf/T+wyVWm9egL3U9cn19qeMXfU/gzBmPTCQPesNRDh47/QWQxO00sDZaFecX
         QHzQ==
X-Gm-Message-State: AFqh2kppRiyXzQYWsgOraU8QO6w9NSvJrjrdAIvcWz2Bk7Zx/KoXfSVK
        n9qbVBpHaxwEZ+MbXs/791U=
X-Google-Smtp-Source: AMrXdXtRqB4eAWvUbNurkGKwaksXHrQYm/+XD4xk4BZjOBdZZlO8ZNqD+6U/TNxaoxjnsVkyqMJ4rw==
X-Received: by 2002:a5d:6149:0:b0:242:10ac:ac42 with SMTP id y9-20020a5d6149000000b0024210acac42mr11080762wrt.55.1674219360228;
        Fri, 20 Jan 2023 04:56:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f6-20020adffcc6000000b002bbdcd15e44sm31844552wrs.37.2023.01.20.04.55.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 04:55:59 -0800 (PST)
Message-ID: <51f4f1f4-b072-af6f-ad18-bdf18aa42406@gmail.com>
Date:   Fri, 20 Jan 2023 13:55:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v6 1/5] string_copy.7: Add page to document all
 string-copying functions
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20221215002648.35111-1-alx@kernel.org>
 <20221219210208.10860-2-alx@kernel.org> <Y8oN1ae9C0UZIaEA@sol.localdomain>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y8oN1ae9C0UZIaEA@sol.localdomain>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sXJK1GPJpTO0054j0L040Dat"
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
--------------sXJK1GPJpTO0054j0L040Dat
Content-Type: multipart/mixed; boundary="------------dm1ryjvpaSChq1IKjGGYNKI9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Biggers <ebiggers@kernel.org>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>,
 Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <51f4f1f4-b072-af6f-ad18-bdf18aa42406@gmail.com>
Subject: Re: [PATCH v6 1/5] string_copy.7: Add page to document all
 string-copying functions
References: <20221215002648.35111-1-alx@kernel.org>
 <20221219210208.10860-2-alx@kernel.org> <Y8oN1ae9C0UZIaEA@sol.localdomain>
In-Reply-To: <Y8oN1ae9C0UZIaEA@sol.localdomain>

--------------dm1ryjvpaSChq1IKjGGYNKI9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRXJpYywNCg0KT24gMS8yMC8yMyAwNDo0MywgRXJpYyBCaWdnZXJzIHdyb3RlOg0KPiBP
biBNb24sIERlYyAxOSwgMjAyMiBhdCAxMDowMjowNVBNICswMTAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4+IGRpZmYgLS1naXQgYS9tYW43L3N0cmluZ19jb3B5LjcgYi9tYW43
L3N0cmluZ19jb3B5LjcNCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+PiBpbmRleCAwMDAw
MDAwMDAuLmEzMmI5M2MwMQ0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvbWFuNy9zdHJp
bmdfY29weS43DQo+PiBAQCAtMCwwICsxLDg1NSBAQA0KPj4gKy5cIiBDb3B5cmlnaHQgMjAy
MiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQo+PiArLlwiDQo+PiArLlwi
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UNCj4+ICsuXCINCj4+ICsu
VEggc3RyaW5nX2NvcHkgNyAoZGF0ZSkgIkxpbnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCki
DQo+PiArLlwiIC0tLS0tIE5BTUUgOjogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0vDQo+PiArLlNIIE5BTUUNCj4+ICtzdHBjcHksDQo+
PiArc3RyY3B5LCBzdHJjYXQsDQo+PiArc3RwZWNweSwgc3RwZWNweXgsDQo+PiArc3RybGNw
eSwgc3RybGNhdCwNCj4+ICtzdHBuY3B5LA0KPj4gK3N0cm5jcHksDQo+PiArenVzdHIydXN0
cCwgenVzdHIyc3RwLA0KPj4gK3N0cm5jYXQsDQo+PiArdXN0cGNweSwgdXN0cjJzdHANCj4g
DQo+IEkgaGFwcGVuZWQgdG8gY29tZSBhY3Jvc3MgdGhpcyBuZXcgbWFuIHBhZ2UsIGFuZCBJ
J20gY29uZnVzZWQgYnkgdGhlIGluY2x1c2lvbg0KPiBvZiBmdW5jdGlvbnMgbGlrZSAidXN0
cGNweSIuICBUaGVzZSBmdW5jdGlvbnMgZG9uJ3Qgc2VlbSB0byBhY3R1YWxseSBleGlzdCwg
c28NCj4gd2h5IGFyZSB0aGV5IGRvY3VtZW50ZWQgaW4gdGhlIG1hbiBwYWdlPw0KDQpUaGF0
IHBhZ2UgaXMgbm90IGRvY3VtZW50aW5nIHRoZSBleGlzdGluZyBsaWJjIGZ1bmN0aW9ucyBm
b3IgY29weWluZyBzdHJpbmdzLCANCmJ1dCByYXRoZXIgdHJ5aW5nIHRvIGV4cGxhaW4gYWxs
IHRoZSBhbHRlcm5hdGl2ZXMsIGluY2x1ZGluZyBvdGhlciBzeXN0ZW1zJyBvbmVzIA0KKHN1
Y2ggYXMgc3RybGNweSgzYnNkKSksIGFuZCBjdXN0b20gb25lcyB0aGF0IGFyZSBub3QgcHJv
dmlkZWQgYnkgYW55IHN5c3RlbSANCih5ZXQpLiAgSXQgdHJpZXMgdG8gZ3VpZGUgYSBwcm9n
cmFtbWVyIHRoYXQga25vd3Mgbm90aGluZyBhYm91dCBzdHJpbmcgY29weWluZyANCnRvIGFs
bG93IGhpbSBwcm9kdWNlIHF1YWxpdHkgY29kZSwgaW5kZXBlbmRlbnRseSBvZiBsaWJjIHN1
cHBvcnQuICBGb3IgDQpkb2N1bWVudGF0aW9uIG9mIHRoZSBsaWJjIGZ1bmN0aW9ucyB3ZSBz
dGlsbCBoYXZlIHRoZSBzZXBhcmF0ZSBwYWdlcyBmb3IgZWFjaCwgDQp3aGljaCBoYXZlIGJl
ZW4gYWxzbyB1cGRhdGVkLg0KDQpUaG9zZSBzcGVjaWZpYyBmdW5jdGlvbnMgYXJlIHNpbWls
YXIgdG8gdGhlIG9sZCBzYXlpbmcgb2YgImp1c3QgdXNlIG1lbWNweSgzKSANCmFuZCBmb3Jn
ZXQgYWJvdXQgc3RyaW5nIGNvcHlpbmcgZnVuY3Rpb25zIiwgd2hpY2ggaXMgbm90IHNvIGJh
ZCBvZiBhbiBhZHZpY2U6IA0KaXQncyB0aGUgZmFzdGVzdDsgaG93ZXZlciwgdGhvc2UgZnVu
Y3Rpb25zIGFyZSBhIGJpdCBzYWZlciB0aGFuIGRpcmVjdGx5IGNhbGxpbmcgDQptZW1jcHko
MykuDQoNCj4gDQo+IC0gRXJpYw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------dm1ryjvpaSChq1IKjGGYNKI9--

--------------sXJK1GPJpTO0054j0L040Dat
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPKj1cACgkQnowa+77/
2zJ/BBAAqTlroi4gh/vg4AlBzfMDZpqtM+ELJvgTHa5/W3VboxNmOKrqHhfAJQ9+
wX3q0EfHqz7yIOnEmXq/iGlrWYhQdRpsvUymM7LQmNEpMLNVd7hCO0/i09tlVYMn
1o9DbJgwhR6Zsii+qGbcryDGxQYtG7rs61OtNr6H4ad8kxxLBbJ5XXhHMXdJhoLa
NcZjK6OQEOokLPNqz9NsI16AFNNKmuY9Fnwm6TL04XFUKGFDp3Gq5gBmlMu1F67L
3K/n8lA89etGC0n+R85uhTZaLBjwYU877in0xDfFj6Isexlh/fvRy31cDsBLzdh4
EFTyMeGC+9D7A60DvrwBKfvxhH0ko1gQAXZFBU3e2y+vKhnPjetDX3Wa5et4UWTP
+GFEtzqlgq5ZxaxVwfNk/gGVxz0XfVdQBui//GG4Nai4QgFxZPIoukUQhQIfCNR7
+5dn6bym6jFxUosrVygXDo3Y92qBSPJGgSqLJsUj2Cz92Rn21motDa2WhH23dNgy
QyFrIYfExSfBMEuhDK5yqE2aLzwlkfyxVaFX7sxxtZriLIlDFbLJJ+Huhjmf68m4
w5ZFpZUBSfAJNutQz/H26uRA5F8BMcT7VtHafzKzrrSLtz3jqSN2BVa93ee7X0je
YwNST6czadZXJZwUXz+rU8HR81S4V8PP2nyZuwny+mRGBMBivYA=
=H3yH
-----END PGP SIGNATURE-----

--------------sXJK1GPJpTO0054j0L040Dat--
