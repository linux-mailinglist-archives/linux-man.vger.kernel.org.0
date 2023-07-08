Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B28A374BE7B
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbjGHQox (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQow (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:44:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73AC2E44
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:44:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0960460B7A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B0AC433C8;
        Sat,  8 Jul 2023 16:44:46 +0000 (UTC)
Message-ID: <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
Date:   Sat, 8 Jul 2023 18:44:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     linux-man@vger.kernel.org, Martin Schulze <joey@infodrom.org>
Cc:     Andi Kleen <ak@linux.intel.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZmV5lUppn2GgDJ033afhztek"
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
--------------ZmV5lUppn2GgDJ033afhztek
Content-Type: multipart/mixed; boundary="------------Vzc5y0NMHlvYhE7AesI0k9r0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Martin Schulze <joey@infodrom.org>
Cc: Andi Kleen <ak@linux.intel.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Matthew Wilcox <willy@infradead.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Message-ID: <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
In-Reply-To: <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>

--------------Vzc5y0NMHlvYhE7AesI0k9r0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W0FkZCBNYXJ0aW4gU2NodWx6ZSwgYXMgaGUgaG9sZHMgY29weXJpZ2h0IG9mIGRpcl9jb2xv
cnMuNS5dDQoNCk9uIDYvMjkvMjMgMTk6MDEsIEJyaWFuIEluZ2xpcyB3cm90ZToNCj4gT24g
MjAyMy0wNi0yOSAxMDowMSwgTGFtZXRlciwgQ2hyaXN0b3BoZXIgd3JvdGU6DQo+PiBPbiBU
aHUsIDI5IEp1biAyMDIzLCBMdWthcyBKYXZvcnNreSB3cm90ZToNCj4+PiDCoMKgwqDCoMKg
ID4+IFZFUkJBVElNX1RXT19QQVJBDQo+Pj4gwqDCoMKgwqDCoCA+PsKgIMKgIMKgIFRoaXMg
bGljZW5zZSB3YXMgZmlyc3QgdXNlZCBpbiB0aGUgTGludXggbWFuLXBhZ2VzIGluIA0KPj4+
IHZlcnNpb24NCj4+PiDCoMKgwqDCoMKgID4+wqAgwqAgwqAgMy4wNyAoeWVhciAyMDA4KSBp
biBhIHNpbmdsZSBwYWdlOg0KPj4+IMKgwqDCoMKgwqAgPj4NCj4+PiDCoMKgwqDCoMKgID4+
wqAgwqAgwqAgwqAgwqAgwqAgwqAgbW92ZV9wYWdlcy4yDQo+Pj4gwqDCoMKgwqDCoCA+PsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIEFkZGVkIGJ5IE1pY2hhZWwgS2Vycmlz
ayANCj4+PiA8bXRrLm1hbnBhZ2VzQGdtYWlsLmNvbT4sDQo+Pj4gwqDCoMKgwqDCoCA+PsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJ1dCBDb3B5cmlnaHQgKEMpIDIwMDYg
U2lsaWNvbiANCj4+PiBHcmFwaGljcywgSW5jLg0KPj4+IMKgwqDCoMKgwqAgPj7CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBD
aHJpc3RvcGggTGFtZXRlcg0KPj4+IMKgwqDCoMKgwqAgPj4NCj4+PiDCoMKgwqDCoMKgID4+
wqAgwqAgwqAgSXQgd2FzIGxhdGVyIHJldXNlZCBpbiBhbm90aGVyIHBhZ2U6DQo+PiBUaGUg
bWFucGFnZSB3YXMgd3JpdHRlbiBieSBtZSBhbmQgbGF0ZXIgZWRpdGVkIGJ5IE1pY2hhZWwg
YXMgZmFyIGFzIEkgDQo+PiByZW1lbWJlci4NCj4+PiDCoMKgwqDCoMKgID4+DQo+Pj4gwqDC
oMKgwqDCoCA+PsKgIMKgIMKgIMKgIMKgIMKgIMKgIG1pZ3JhdGVfcGFnZXMuMg0KPj4+IMKg
wqDCoMKgwqAgPj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBDb3B5cmlnaHQg
MjAwOSBJbnRlbCBDb3Jwb3JhdGlvbg0KPj4+IMKgwqDCoMKgwqAgPj4gLlwiwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgQXV0aG9yOiBBbmRpIEtsZWVuDQo+Pj4gwqDCoMKgwqDCoCA+PiAu
XCIgQmFzZWQgb24gdGhlIG1vdmVfcGFnZXMgbWFucGFnZSB3aGljaCB3YXMNCj4+PiDCoMKg
wqDCoMKgID4+IC5cIiBUaGlzIG1hbnBhZ2UgaXMgQ29weXJpZ2h0IChDKSAyMDA2IFNpbGlj
b24gR3JhcGhpY3MsIEluYy4NCj4+PiDCoMKgwqDCoMKgID4+IC5cIsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgQ2hyaXN0b3BoIExhbWV0ZXINCj4+
PiDCoMKgwqDCoMKgID4+DQo+Pj4gwqDCoMKgwqDCoCA+PsKgIMKgIMKgIFRoaXMgbGljZW5z
ZSBpcyB0aGUgb25lIGNvbnNpZGVyZWQgbm9uLWZyZWUgYnkgRmVkb3JhLCANCj4+PiBhbmQg
d2hpY2gNCj4+PiDCoMKgwqDCoMKgID4+wqAgwqAgwqAgd2UgbmVlZCB0byBkcm9wLsKgIEx1
Y2tpbHkgaXQncyBvbmx5IHR3byBwYWdlcywgc28gdGhleSANCj4+PiBjb3VsZCBiZQ0KPj4+
IMKgwqDCoMKgwqAgPj7CoCDCoCDCoCByZWFzb25hYmx5IHJld3JpdHRlbiBpbiBhIHdvcnN0
IGNhc2UuDQo+PiBUaGUgbGljZW5zaW5nIHdhcyBHUEwgYW5kIG5vdCBhIHByb3ByaWV0YXJ5
IG9uZS4NCj4+PiDCoMKgwqDCoMKgIFNvLCBnaXZlbiB0aGlzLCBpZiB5b3UgZ2l2ZSBjb25z
ZW50IHRvIGNoYW5nZSB5b3VyIHBhZ2VzIHRvIHVzZQ0KPj4+IMKgwqDCoMKgwqAgTGludXgt
bWFuLXBhZ2VzLWNvcHlsZWZ0LCBJJ2xsIGRvIHNvIHByb3ZpZGVkIGZvciB0aGUgcGFnZXMg
DQo+Pj4gdGhhdCBhcmUNCj4+PiDCoMKgwqDCoMKgIGNvbXBsZXRlbHkgeW91cnMsIGFuZCB3
aWxsIGtlZXAgaW4gbWluZCB0aGF0IHdoZW4gb3RoZXJzIGFncmVlLCANCj4+PiBJJ2xsIGFs
c28NCj4+PiDCoMKgwqDCoMKgIGNoYW5nZSB0aGUgcGFnZXMgdGhhdCBhcmUgc2hhcmVkLg0K
Pj4gSSBoYXZlIG5vIG9iamVjdGlvbnMuDQo+IA0KPiBVcGRhdGluZyB0aGVzZSBsaWNlbmNl
cyBhcmUgcmVhbGx5IG5pY2UgdG8gaGF2ZXMgZm9yIHRoaXMgcHJvamVjdC4NCj4gDQo+IEp1
c3QgdG8gYmUgY2xlYXIsIHRoZSBGU0YgYW5kIEZlZG9yYSBpc3N1ZSBpcyBvbmx5IHdpdGgg
KmRpcl9jb2xvcnMqKDUpIA0KPiBsaWNlbnNlZCB1bmRlciAqTERQdjEqIHdoaWNoIGNvbnRh
aW5zIHRoZSBjb250ZW50aW91cyBjbGF1c2U6DQo+IA0KPiAgwqDCoMKgwqAiYykgWW91IG11
c3Qgbm90IGFkZCBub3RlcyB0byB0aGUgRG9jdW1lbnQgaW1wbHlpbmcgdGhhdCB0aGUgcmVh
ZGVyIA0KPiBoYWQgYmV0dGVyIHJlYWQgc29tZXRoaW5nIHByb2R1Y2VkIHVzaW5nIFRleGlu
Zm8uIg0KPiANCj4gIMKgwqDCoMKgaHR0cHM6Ly9naXRsYWIuY29tL2ZlZG9yYS9sZWdhbC9m
ZWRvcmEtbGljZW5zZS1kYXRhLy0vaXNzdWVzLzIxMQ0KPiANCj4gIMKgwqDCoMKgaHR0cHM6
Ly9naXRodWIuY29tL3NwZHgvbGljZW5zZS1saXN0LVhNTC9pc3N1ZXMvMTk1Nw0KPiANCj4g
d2hpY2ggcmVzdHJpY3RzIG1vZGlmaWNhdGlvbiwgZXNwZWNpYWxseSBieSBHTlUgb3Igb3Ro
ZXIgcHJvamVjdHMgd2hpY2ggDQo+IG1heSB3aXNoIHRvIG9mZmVyIGFuZCBwcm9tb3RlIGFs
dGVybmF0aXZlIGRvYyBmb3JtYXRzIG9yIGludGVyZmFjZXMuDQo+IA0KPiBMRFB2MiByZXF1
aXJlcyBub3RpZnlpbmcgdGhlIGF1dGhvciBvZiBtb2RpZmljYXRpb25zIGJ5IGVtYWlsIGlm
IA0KPiBwcm92aWRlZCwgYW5kIHN1Z2dlc3RlZCBhdXRob3JzIGNvdWxkIGFkZCBhIGdlbmVy
aWMgY2xhdXNlIGMpIA0KPiBwcm9oaWJpdGluZyBtb2RpZmljYXRpb25zIHdpdGhvdXQgYXV0
aG9yIGNvbnNlbnQuDQo+IA0KPiBUTERQIGlzIG5vdyBieSBkZWZhdWx0IHVuZGVyIEdGREx2
MS4yKy4NCj4gDQo+IEFub3RoZXIgcHJvYmxlbWF0aWMgbGljZW5jZSBpcyAqSlNPTiosIHdo
aWNoIGNvbnRhaW5zIHRoZSBjbGF1c2U6DQo+IA0KPiAgwqDCoMKgwqAiVGhlIFNvZnR3YXJl
IHNoYWxsIGJlIHVzZWQgZm9yIEdvb2QsIG5vdCBFdmlsLiINCj4gDQo+IHJlc3RyaWN0aW5n
IHVzZSB3aXRoIG5vbi1zcGVjaWZpYyBzdWJqZWN0aXZlIHRlcm1zLCB1bmxpa2Ugc2ltaWxh
ciANCj4gbGljZW5jZXMgd2l0aCBzcGVjaWZpYyBvYmplY3RpdmUgcmVzdHJpY3Rpb25zLCBs
aWtlIG5vdCBiZWluZyB1c2VkIGZvciANCj4gYW55dGhpbmcgcmVsYXRlZCB0byBhbmltYWwg
dGVzdGluZyBvciBudWNsZWFyIHdlYXBvbnMuDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0Uz
MTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------Vzc5y0NMHlvYhE7AesI0k9r0--

--------------ZmV5lUppn2GgDJ033afhztek
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpknsACgkQnowa+77/
2zKMxA//ZpBdAwg7PWUn4qW08I2X2YVdgdseK7on2hW0I0Inti885ZwR660fUhX+
/uuOhfr8lbw7P+mQvMi1i9Rs5LDUy+/mTDm0NvOS/j3GOgc+MLld5EoAw/5cTNtB
RiaubREMO0oZ5P9t1zd8AJz95WJXW0Q5abKgyfI0d1zE8k29HFLYwJdL9fX5MtFs
nA/bpYXbOiu4WX4qPZ2JH99GThD5frLmuYfxWRJQsHCQcWhBdbXikzPhQSrOhmam
h9PIv8v7sl+7YWcc3dZyCK8dvBip95NXpDqk/P+TpHhOK4eQwM+tZiMbTBn9X8oX
SFznmSCpljWcYzhgJaesTJEDj7RHMMyXI0bmUQ1Oo08MYmRr+4f8C+FlF6KBozlf
P4W8crmTmdsOJxdzbUzYtp0SoolILYwBf5YHn03ZAHbkKK8REN3gn36NxUGuTSpc
BFY+Ui578GsQGaRkAfcvTWy1obEEHK3+cBnts0B2aQms3RIA8HvfdLHsIwMZnb27
CPEcJP6lwV3uPyk7uKWLPrRc+IiCWyvPyEO6qcmIXGteH7TRv6oNViaVRQ/aQGMf
qMQLKV6C/Fude/W8a4kWp8tILc1j1mCWVnF39AO47ndR1CgirhaFgQx8MvaDoR4e
zbMgAFE9Cq88SpCc+WcV55NV6qtJ18/gP7w9q1Lxo8fcOOHyPDI=
=rbtC
-----END PGP SIGNATURE-----

--------------ZmV5lUppn2GgDJ033afhztek--
