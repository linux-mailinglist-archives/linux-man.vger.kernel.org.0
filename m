Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC4D974BE4A
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 17:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbjGHPms (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 11:42:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGHPmr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 11:42:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE8CA125
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 08:42:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6BF6560D41
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 15:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44008C433C8;
        Sat,  8 Jul 2023 15:42:44 +0000 (UTC)
Message-ID: <6810ca78-b89c-aace-6bcf-254bf6672308@gmail.com>
Date:   Sat, 8 Jul 2023 17:42:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Issue in man page boot.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
 <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
 <20230617111129.GA15264@Debian-50-lenny-64-minimal>
 <ZI9jbkdX1cEWEhYd@dj3ntoo>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZI9jbkdX1cEWEhYd@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------k0QiW5FV92LW1htr05z3VCrI"
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------k0QiW5FV92LW1htr05z3VCrI
Content-Type: multipart/mixed; boundary="------------hZ60efsclzbaiJHnM6dJydEb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <6810ca78-b89c-aace-6bcf-254bf6672308@gmail.com>
Subject: Re: Issue in man page boot.7
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
 <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
 <20230617111129.GA15264@Debian-50-lenny-64-minimal>
 <ZI9jbkdX1cEWEhYd@dj3ntoo>
In-Reply-To: <ZI9jbkdX1cEWEhYd@dj3ntoo>

--------------hZ60efsclzbaiJHnM6dJydEb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xOC8yMyAyMjowNSwgT3NrYXJpIFBpcmhvbmVuIHdyb3RlOg0KPiBPbiBTYXQsIEp1
biAxNywgMjAyMyBhdCAxMzoxMToyOSArMDIwMCwgSGVsZ2UgS3JldXR6bWFubiB3cm90ZToN
Cj4+IEhlbGxvIEFsZWphbmRybywNCj4+IE9uIFN1biwgTWFyIDEyLCAyMDIzIGF0IDEyOjMx
OjM3QU0gKzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4+IE9uIDMvMTEvMjMg
MTg6MTMsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+Pj4+IFdpdGhvdXQgZnVydGhlciBh
ZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+Pg0KPj4+PiBJc3N1ZTogICAgVGhp
cyBpcyB0cnVlIG9ubHkgb24geDg2IGFuZCBMaWxvIGlzIHByb2JhYmx5IG5vdCBtdWNoIHVz
ZWQgYW55bW9yZTsgYWxzbyBzeXN0ZW1kIGhhcyBpdHMgb3duICg/KSBib290bG9hZGVyDQo+
Pg0KPj4gTGlsbyBoYXMganVzdCBiZWVuIHJlbW92ZWQgZnJvbSBEZWJpYW4sIHNvIHRvIG15
IGtub3dsZWRnZSBvbmx5IE1hZ2VpYQ0KPj4gc2hpcHMgaXQuDQo+Pg0KPiANCj4gRldJVywg
R2VudG9vIHN0aWxsIGhhcyBMSUxPIGluIHRoZSByZXBvcy4gVGhpcyBkb2Vzbid0IGNoYW5n
ZSB0aGUgZmFjdA0KPiB0aGF0IGl0IHByb2JhYmx5IGRvZXMgbm90IHNlZSBtdWNoIHVzZSBh
bnltb3JlLiBEZWZpbml0ZWx5IG5vdCBlbm91Z2ggdG8NCj4gd2FycmFudCBiZWluZyBtZW50
aW9uZWQgYXMgImlzIG9mdGVuIi4gTWF5YmUgYSBoaXN0b3JpY2FsIG5vdGUsIGlmDQo+IGFu
eXRoaW5nLg0KPiANCj4gLSBPc2thcmkNCkhpIQ0KDQpUaGFua3MgZm9yIHRoYXQuICBJJ3Zl
IGZpeGVkIGl0IHdpdGggdGhpcyBwYXRjaC4NCg0KQ2hlZXJzLA0KQWxleA0KDQotLS0NCiBG
cm9tIGQ1ZTRlMjVlNWMxYTI1MWRkNTAzZjExYzUxNmJmM2QwODFlZWYwODAgTW9uIFNlcCAx
NyAwMDowMDowMCAyMDAxDQpGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5v
cmc+DQpEYXRlOiBTYXQsIDggSnVsIDIwMjMgMTc6MzQ6MzAgKzAyMDANClN1YmplY3Q6IFtQ
QVRDSF0gYm9vdC43OiBMSUxPIGlzIG5vdCBvZnRlbiB1c2VkIGFueW1vcmUNCg0KT24gNi8x
OC8yMyAyMjowNSwgT3NrYXJpIFBpcmhvbmVuIHdyb3RlOg0KID4gT24gU2F0LCBKdW4gMTcs
IDIwMjMgYXQgMTM6MTE6MjkgKzAyMDAsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQogPj4g
SGVsbG8gQWxlamFuZHJvLA0KID4+IE9uIFN1biwgTWFyIDEyLCAyMDIzIGF0IDEyOjMxOjM3
QU0gKzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KID4+PiBPbiAzLzExLzIzIDE4
OjEzLCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KID4+Pj4gV2l0aG91dCBmdXJ0aGVyIGFk
bywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQogPj4+Pg0KID4+Pj4gSXNzdWU6ICAgIFRo
aXMgaXMgdHJ1ZSBvbmx5IG9uIHg4NiBhbmQgTGlsbyBpcyBwcm9iYWJseSBub3QgbXVjaA0K
ID4+Pj4gICAgICAgICAgIHVzZWQgYW55bW9yZTsgYWxzbyBzeXN0ZW1kIGhhcyBpdHMgb3du
ICg/KSBib290bG9hZGVyDQogPj4NCiA+PiBMaWxvIGhhcyBqdXN0IGJlZW4gcmVtb3ZlZCBm
cm9tIERlYmlhbiwgc28gdG8gbXkga25vd2xlZGdlIG9ubHkNCiA+PiBNYWdlaWEgc2hpcHMg
aXQuDQogPj4NCiA+DQogPiBGV0lXLCBHZW50b28gc3RpbGwgaGFzIExJTE8gaW4gdGhlIHJl
cG9zLiAgVGhpcyBkb2Vzbid0IGNoYW5nZSB0aGUNCiA+IGZhY3QgdGhhdCBpdCBwcm9iYWJs
eSBkb2VzIG5vdCBzZWUgbXVjaCB1c2UgYW55bW9yZS4gIERlZmluaXRlbHkgbm90DQogPiBl
bm91Z2ggdG8gd2FycmFudCBiZWluZyBtZW50aW9uZWQgYXMgImlzIG9mdGVuIi4gIE1heWJl
IGEgaGlzdG9yaWNhbA0KID4gbm90ZSwgaWYgYW55dGhpbmcuDQoNClJlcG9ydGVkLWJ5OiBI
ZWxnZSBLcmV1dHptYW5uIDxkZWJpYW5AaGVsZ2VmamVsbC5kZT4NClJlcG9ydGVkLWJ5OiBP
c2thcmkgUGlyaG9uZW4gPHh4YzNuY29yZWR4eEBnbWFpbC5jb20+DQpDYzogTWFyaW8gQmxh
ZXR0ZXJtYW5uIDxtYXJpby5ibGFldHRlcm1hbm5AZ21haWwuY29tPg0KU2lnbmVkLW9mZi1i
eTogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KLS0tDQogIG1hbjcvYm9v
dC43IHwgOCArKysrLS0tLQ0KICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvbWFuNy9ib290LjcgYi9tYW43L2Jvb3Qu
Nw0KaW5kZXggZGFiNGExYWFjLi5iNTdmNWExYmIgMTAwNjQ0DQotLS0gYS9tYW43L2Jvb3Qu
Nw0KKysrIGIvbWFuNy9ib290LjcNCkBAIC04MiwxMCArODIsMTAgQEAgYSBwcmltYXJ5IE9T
IGxvYWRlciBhbmQgYSBzZWNvbmRhcnkgT1MgbG9hZGVyOyB0aGlzIA0Kc2Vjb25kYXJ5DQog
IE9TIGxvYWRlciBtYXkgYmUgbG9jYXRlZCB3aXRoaW4gYSBsYXJnZXIgcG9ydGlvbiBvZiBw
ZXJzaXN0ZW50DQogIHN0b3JhZ2UsIHN1Y2ggYXMgYSBkaXNrIHBhcnRpdGlvbi4NCiAgLlBQ
DQotSW4gTGludXgsIHRoZSBPUyBsb2FkZXIgaXMgb2Z0ZW4gZWl0aGVyDQotLkJSIGxpbG8g
KDgpDQotb3INCi0uQlIgZ3J1YiAoOCkuDQorSW4gTGludXgsIHRoZSBPUyBsb2FkZXIgaXMg
b2Z0ZW4NCisuQlIgZ3J1YiAoOCkNCisoYW4gYWx0ZXJuYXRpdmUgaXMNCisuQlIgbGlsbyAo
OCkpLg0KICAuU1MgS2VybmVsDQogIFdoZW4gdGhlIGtlcm5lbCBpcyBsb2FkZWQsIGl0IGlu
aXRpYWxpemVzIHZhcmlvdXMgY29tcG9uZW50cyBvZg0KICB0aGUgY29tcHV0ZXIgYW5kIG9w
ZXJhdGluZyBzeXN0ZW07IGVhY2ggcG9ydGlvbiBvZiBzb2Z0d2FyZQ0KLS0gDQoyLjQwLjEN
Cg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkg
ZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUN
Cg0K

--------------hZ60efsclzbaiJHnM6dJydEb--

--------------k0QiW5FV92LW1htr05z3VCrI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpg/EACgkQnowa+77/
2zJRqg/+PXn3n7YQQd3k9AMQQr6tvMOxEDd6pGQfIcvVSpN+79TUmBfJ1RUhIMyp
uwE8OGKEIpbqkGzQ2O3aiHZL90Rqk1KEy8UXpe8D9By1ub1nUOawzvCzK6NszQ+G
hNSC8vxex11VPLJo3n/BVDG9RMzkLlRpidx/ilVA1nfpxwKuSGRvfLBUcXsmA7RN
pjKV0qsN4aTGSXD31oOudER6prLtE/Klyx8/YMYilK+n76uX5CziH7hm5AcLSFKN
QlyoJUHsD2QtrFWy3bxW/m7kJLVn8UJEI9xPin29J3pwWQcqucJBD3IAYx8iTvQe
qYXWPxiY96C+6XTWPuiaRWXE82+IrUu4IBRkOiaFO8T89t601LnADZr+mvVDUOiw
O69rJQSsGXzAhv1/1YgVM8RGYplBX/NvkmdnvuNwMI+Xlmrt0PaX8qXiCYLs0LUA
49dHglQKPREfi9XNB5s6aO2hktCK/RgzHf1rppkk8oZ+PLHv2m3E2AkvtUGIC+O1
/sy7jU7ME2SHOmvhetG8YoJl/ZwiK9tuXWlLt31WGraKwJa7ZbxOUZMd7csYHS54
/IkGxPr9KyS/agfj3hCu594c82jqllyv5npIGQBJYfAxKSRNm7zZWavvkyyA5+OW
hVLfw1jLQzf1E3GOuuo1V4HcCdAAOncrNDl4wggXkmV2oSz4kYk=
=tAs7
-----END PGP SIGNATURE-----

--------------k0QiW5FV92LW1htr05z3VCrI--
