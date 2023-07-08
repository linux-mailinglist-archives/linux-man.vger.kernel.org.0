Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADFF074BEA4
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:46:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjGHRqN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:46:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGHRqN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:46:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53480E6E
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:46:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CD4CE60E17
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:46:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FAD9C433C8;
        Sat,  8 Jul 2023 17:46:09 +0000 (UTC)
Message-ID: <5e1bb605-e4c4-4789-7ab1-6e0ff470eeba@gmail.com>
Date:   Sat, 8 Jul 2023 19:46:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH RESEND] ip.7: Document IP_LOCAL_PORT_RANGE socket option
Content-Language: en-US
To:     Jakub Sitnicki <jakub@cloudflare.com>
Cc:     linux-man@vger.kernel.org, kernel-team@cloudflare.com,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Simon Horman <simon.horman@corigine.com>
References: <20230707141739.1171440-1-jakub@cloudflare.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230707141739.1171440-1-jakub@cloudflare.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xqu1Iqa1Owyd7I7uiLCFdll3"
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
--------------xqu1Iqa1Owyd7I7uiLCFdll3
Content-Type: multipart/mixed; boundary="------------cFt0M06oSULDwTUBABjpgtG0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: linux-man@vger.kernel.org, kernel-team@cloudflare.com,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Simon Horman <simon.horman@corigine.com>
Message-ID: <5e1bb605-e4c4-4789-7ab1-6e0ff470eeba@gmail.com>
Subject: Re: [PATCH RESEND] ip.7: Document IP_LOCAL_PORT_RANGE socket option
References: <20230707141739.1171440-1-jakub@cloudflare.com>
In-Reply-To: <20230707141739.1171440-1-jakub@cloudflare.com>

--------------cFt0M06oSULDwTUBABjpgtG0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDcvNy8yMyAxNjoxNywgSmFrdWIgU2l0bmlja2kgd3JvdGU6DQo+
IExpbnV4IGNvbW1pdCA5MWQwYjc4YzUxNzcgKCJpbmV0OiBBZGQgSVBfTE9DQUxfUE9SVF9S
QU5HRSBzb2NrZXQgb3B0aW9uIikNCj4gaW50cm9kdWNlZCBhIG5ldyBzb2NrZXQgb3B0aW9u
IGF2YWlsYWJsZSBmb3IgQUZfSU5FVCBhbmQgQUZfSU5FVDYgc29ja2V0cy4NCj4gDQo+IE9w
dGlvbiBpcyBhdmFpbGFibGUgc3RhcnRpbmcgZnJvbSBMaW51eCA2LjMuIERvY3VtZW50IGl0
Lg0KPiANCj4gUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8c2ltb24uaG9ybWFuQGNvcmln
aW5lLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgU2l0bmlja2kgPGpha3ViQGNsb3Vk
ZmxhcmUuY29tPg0KPiAtLS0NCj4gUmVzZW5kaW5nIHRoZSBtYW4gcGFnZSB1cGRhdGUgbm93
IHRoYXQgdGhlIGZlYXR1cmUgaGFzIGJlZW4gcmVsZWFzZWQuDQo+IFByZXZpb3VzIHN1Ym1p
c3Npb24gY2FuIGJlIGZvdW5kIGF0IFsxXS4NCj4gDQo+IEknbSB0aGUgYXV0aG9yIG9mIHRo
ZSBmZWF0dXJlLiBXZSBkaWQgYSB0ZWNobmljYWwgcmV2aWV3IG9mIHRoZSBtYW4gcGFnZSB0
ZXh0DQo+IHRvZ2V0aGVyIHdpdGggdGhlIGNvZGUgWzJdLg0KDQpUaGFua3MhICBQYXRjaCBh
cHBsaWVkLg0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gDQo+IFsxXTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjMwMjAxMTIzNjM0LjI4NDY4OS0xLWpha3ViQGNsb3VkZmxhcmUu
Y29tLw0KPiBbMl06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMTIyMS1zb2Nr
b3B0LXBvcnQtcmFuZ2UtdjYtMC1iZTI1NWNjMGU1MWZAY2xvdWRmbGFyZS5jb20vDQo+IC0t
LQ0KPiAgIG1hbjcvaXAuNyB8IDIxICsrKysrKysrKysrKysrKysrKysrKw0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9p
cC43IGIvbWFuNy9pcC43DQo+IGluZGV4IDkyZWNmNGIzZS4uYzk3YTkxN2ZmIDEwMDY0NA0K
PiAtLS0gYS9tYW43L2lwLjcNCj4gKysrIGIvbWFuNy9pcC43DQo+IEBAIC00OTksNiArNDk5
LDI3IEBAIGFuZA0KPiAgIC5CIElQX1RPUw0KPiAgIGFyZSBpZ25vcmVkLg0KPiAgIC5UUA0K
PiArLkJSIElQX0xPQ0FMX1BPUlRfUkFOR0UgIiAoc2luY2UgTGludXggNi4zKSINCj4gK1Nl
dCBvciBnZXQgdGhlIHBlci1zb2NrZXQgZGVmYXVsdCBsb2NhbCBwb3J0IHJhbmdlLiBUaGlz
IG9wdGlvbiBjYW4gYmUgdXNlZCB0bw0KPiArY2xhbXAgZG93biB0aGUgZ2xvYmFsIGxvY2Fs
IHBvcnQgcmFuZ2UsIGRlZmluZWQgYnkgdGhlDQo+ICsuSSBpcF9sb2NhbF9wb3J0X3Jhbmdl
DQo+ICsuSSAvcHJvYw0KPiAraW50ZXJmYWNlIGRlc2NyaWJlZCBiZWxvdywgZm9yIGEgZ2l2
ZW4gc29ja2V0Lg0KPiArLklQDQo+ICtUaGUgb3B0aW9uIHRha2VzIGFuDQo+ICsuSSB1aW50
MzJfdA0KPiArdmFsdWUgd2l0aCB0aGUgaGlnaCAxNiBiaXRzIHNldCB0byB0aGUgdXBwZXIg
cmFuZ2UgYm91bmQsIGFuZCB0aGUgbG93IDE2IGJpdHMNCj4gK3NldCB0byB0aGUgbG93ZXIg
cmFuZ2UgYm91bmQuIFJhbmdlIGJvdW5kcyBhcmUgaW5jbHVzaXZlLiBUaGUgMTYtYml0IHZh
bHVlcw0KPiArc2hvdWxkIGJlIGluIGhvc3QgYnl0ZSBvcmRlci4NCj4gKy5JUA0KPiArVGhl
IGxvd2VyIGJvdW5kIGhhcyB0byBiZSBsZXNzIHRoYW4gdGhlIHVwcGVyIGJvdW5kIHdoZW4g
Ym90aCBib3VuZHMgYXJlIG5vdA0KPiAremVyby4gT3RoZXJ3aXNlLCBzZXR0aW5nIHRoZSBv
cHRpb24gZmFpbHMgd2l0aCBFSU5WQUwuDQo+ICsuSVANCj4gK0lmIGVpdGhlciBib3VuZCBp
cyBvdXRzaWRlIG9mIHRoZSBnbG9iYWwgbG9jYWwgcG9ydCByYW5nZSwgb3IgaXMgemVybywg
dGhlbiB0aGF0DQo+ICtib3VuZCBoYXMgbm8gZWZmZWN0Lg0KPiArLklQDQo+ICtUbyByZXNl
dCB0aGUgc2V0dGluZywgcGFzcyB6ZXJvIGFzIGJvdGggdGhlIHVwcGVyIGFuZCB0aGUgbG93
ZXIgYm91bmQuDQo+ICsuVFANCj4gICAuQlIgSVBfTVNGSUxURVIgIiAoc2luY2UgTGludXgg
Mi40LjIyIC8gMi41LjY4KSINCj4gICBUaGlzIG9wdGlvbiBwcm92aWRlcyBhY2Nlc3MgdG8g
dGhlIGFkdmFuY2VkIGZ1bGwtc3RhdGUgZmlsdGVyaW5nIEFQSS4NCj4gICBBcmd1bWVudCBp
cyBhbg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBr
ZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVC
QjUNCg0K

--------------cFt0M06oSULDwTUBABjpgtG0--

--------------xqu1Iqa1Owyd7I7uiLCFdll3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpoN4ACgkQnowa+77/
2zK1Wg/9EPtbdPUXvp58lMFTqAekURTUVntS4JWoobVGGzcrBUSs4wwc6rmIaTao
9MSfvfG0kNJ5rd43WSXyIM93U3ncQIAjS7KF02SdhxAilxb0trQAIg420EvMLs9L
FSt/HcKZaprPaj9IGeJmn4R7PiOgI5EFD16bDcvRY5cjYcs+b9QNgXArk0piQcWC
5qBrvnGlZ+jUjS6+UZ9CdlTBhQYSK5BWvx2nAIo6w1IdATlYPidEWpBLG0ykGdrm
4Wub28oDvad995EjqZAdcVd+FKU5DwzqmhEUyfdyTWix6GA5Z4LprofVkPsLJomk
lMquY42kDjCDknWs+uOtyFGfUU4CAl1fHQ+g8NvZ5UOfObRPorQJEelHpSWQ/R9e
pRVmTL/yIfhlLYSo+jFhQuR3AtaKclESNnHaaHI2Vexa/7nZ9RWdrWE/XhOA/Qqc
ASDqWHQt6D2m+onw9DfF1JYJZ7WuCaKxWMyGXT106FoYQIZBhEZvhcp/2imhvDwT
NMviSx81n2FGLrc6pjgf9qJKzKfk0S74WJXXdtBaoHTINgRHUujwlj06hjhl9NGu
ejC+ZvAH2yXPhnUH7NEHvLIiXAprEOrRZq54+tYtZZbo03W8eDhcXXBMpnldiyZv
vNSUc856VtRzXV3GBrlfV2x1uz1YRqEO4YvQFqKRsBIX7fEL5jI=
=7Ss/
-----END PGP SIGNATURE-----

--------------xqu1Iqa1Owyd7I7uiLCFdll3--
