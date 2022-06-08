Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B28B5436FD
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 17:16:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244017AbiFHPPV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 11:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244559AbiFHPOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 11:14:41 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6274CE1B
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 08:09:32 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h5so28825105wrb.0
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 08:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=kM6w5B+ye5XtMc6gsQHcRM/cyZKQ3DxN+zOrgqMnQHw=;
        b=PpVPMuaeceOpXJrM7J9Mn+lqoQHDzyi8gYHY6fEdRw9ELz1RwngL2jpklBIxplg2cK
         6nKeLVt0lCwiGJY3fKMjSvEtEPnJMvnprMkADSBnsQEy3IlOFOBFvYC56pBugSyBXoaD
         SGh0abaZpR4fURiqrhizAaLBYgILwdGF4ubYO8s8zOfbC6/XXx9TtjF7srGd+AJCqOex
         3GAgz26n33nj2Fsy5GNfxdxYdpHg9lHRps6T+lMkdxaG+bhY13cWI+tFB1ZF9uSsYz7F
         k7Br74DfXMo9LDGLOdZwacTSQclH7bRKp8q0bCoAoZMmhnfO6dR4mws8Eymt/hl9+egX
         CwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=kM6w5B+ye5XtMc6gsQHcRM/cyZKQ3DxN+zOrgqMnQHw=;
        b=XPfGfK+ODZbuoYYiFq6uif/G4TDWKs0MaCf5vnJ4jkGS1dkB1wRboX3V8xfHM23/A3
         ABOzWgNQJ3LNuOiExdibxmg1sC//bTeVSB4HS+5StgdYMsjKSmvyvwjOT4NlM0pqRj14
         0DPqvMM1g/Bd3FdzWnIXd+aWX9/ybwROud3k+3tjas33jsRn7E0kU/Sz6wNt9NKUO4OF
         RCix8SEkZRTXBvr7GRTg/BjA2Xb4cdi0IZQYkkeP5LtzczbAgLF2KiNAg9WjbP1vmC6F
         MnjsbXHThHLq1auBZaq6O17OVl49yiokeaj7EKpQ7JL1kNWgMzIbYfkDL1M2QUxED9Be
         qRVQ==
X-Gm-Message-State: AOAM53312MfrKI1VGD/PO64al7mgLFQjzippcVfQTt93JlI3POm5A9BY
        FiVW9CUX+V7fnulFR5bsxoc=
X-Google-Smtp-Source: ABdhPJwJdFfV1Ahb4GR83A283SBk95CU6uW3MwbE+93HJIs7neHi5kOgppXL9g2sh5Mi0yIIJqCNeA==
X-Received: by 2002:a05:6000:18a8:b0:212:ae71:a3f6 with SMTP id b8-20020a05600018a800b00212ae71a3f6mr32685473wri.635.1654700971442;
        Wed, 08 Jun 2022 08:09:31 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id y3-20020a7bcd83000000b0039747cf8354sm23550133wmj.39.2022.06.08.08.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 08:09:30 -0700 (PDT)
Message-ID: <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
Date:   Wed, 8 Jun 2022 17:12:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ioctl_pipe.2: Add.
Content-Language: en-US
To:     chrubis@suse.cz, linux-man@vger.kernel.org
Cc:     David Howells <dhowells@redhat.com>
References: <20220608124710.12647-1-chrubis@suse.cz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220608124710.12647-1-chrubis@suse.cz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------b4ebB5nduG4jDytBPVT7OLbt"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------b4ebB5nduG4jDytBPVT7OLbt
Content-Type: multipart/mixed; boundary="------------MXjxoSDvxPuhrJmwm9PvJAem";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: chrubis@suse.cz, linux-man@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Message-ID: <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
Subject: Re: [PATCH] ioctl_pipe.2: Add.
References: <20220608124710.12647-1-chrubis@suse.cz>
In-Reply-To: <20220608124710.12647-1-chrubis@suse.cz>

--------------MXjxoSDvxPuhrJmwm9PvJAem
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ3lyaWwsDQoNCk9uIDYvOC8yMiAxNDo0NywgY2hydWJpc0BzdXNlLmN6IHdyb3RlOg0K
PiBGcm9tOiBDeXJpbCBIcnViaXMgPGNocnViaXNAc3VzZS5jej4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEN5cmlsIEhydWJpcyA8Y2hydWJpc0BzdXNlLmN6Pg0KDQpQbGVhc2UgY2hlY2sg
YSBmZXcgdGhpbmdzIGJlbG93LiAgVGhhbmtzIGZvciB0aGUgcGFnZS4NCg0KQWxzbywgdGhl
IHRpdGxlIGNvdWxkIGJlIGEgbGl0dGxlIGJpdCBjbGVhcmVyOyBtYXliZSAiQWRkIHBhZ2Ui
Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4yL2lvY3RsX3BpcGUuMiB8
IDc1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDc1IGluc2VydGlvbnMoKykNCj4gICBjcmVhdGUgbW9kZSAx
MDA2NDQgbWFuMi9pb2N0bF9waXBlLjINCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2lvY3Rs
X3BpcGUuMiBiL21hbjIvaW9jdGxfcGlwZS4yDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+
IGluZGV4IDAwMDAwMDAwMC4uZTYwYmMyMTM0DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIv
bWFuMi9pb2N0bF9waXBlLjINCj4gQEAgLTAsMCArMSw3NSBAQA0KPiArLlwiIENvcHlyaWdo
dCAoYykgMjAyMiBieSBDeXJpbCBIcnViaXMgPGNocnViaUBzdXNlLmN6Pg0KPiArLlwiDQo+
ICsuXCIgJSUlTElDRU5TRV9TVEFSVChWRVJCQVRJTSkNCj4gKy5cIiBQZXJtaXNzaW9uIGlz
IGdyYW50ZWQgdG8gbWFrZSBhbmQgZGlzdHJpYnV0ZSB2ZXJiYXRpbSBjb3BpZXMgb2YgdGhp
cw0KPiArLlwiIG1hbnVhbCBwcm92aWRlZCB0aGUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhp
cyBwZXJtaXNzaW9uIG5vdGljZSBhcmUNCj4gKy5cIiBwcmVzZXJ2ZWQgb24gYWxsIGNvcGll
cy4NCj4gKy5cIg0KPiArLlwiIFBlcm1pc3Npb24gaXMgZ3JhbnRlZCB0byBjb3B5IGFuZCBk
aXN0cmlidXRlIG1vZGlmaWVkIHZlcnNpb25zIG9mIHRoaXMNCj4gKy5cIiBtYW51YWwgdW5k
ZXIgdGhlIGNvbmRpdGlvbnMgZm9yIHZlcmJhdGltIGNvcHlpbmcsIHByb3ZpZGVkIHRoYXQg
dGhlDQo+ICsuXCIgZW50aXJlIHJlc3VsdGluZyBkZXJpdmVkIHdvcmsgaXMgZGlzdHJpYnV0
ZWQgdW5kZXIgdGhlIHRlcm1zIG9mIGENCj4gKy5cIiBwZXJtaXNzaW9uIG5vdGljZSBpZGVu
dGljYWwgdG8gdGhpcyBvbmUuDQo+ICsuXCINCj4gKy5cIiBTaW5jZSB0aGUgTGludXgga2Vy
bmVsIGFuZCBsaWJyYXJpZXMgYXJlIGNvbnN0YW50bHkgY2hhbmdpbmcsIHRoaXMNCj4gKy5c
IiBtYW51YWwgcGFnZSBtYXkgYmUgaW5jb3JyZWN0IG9yIG91dC1vZi1kYXRlLiAgVGhlIGF1
dGhvcihzKSBhc3N1bWUgbm8NCj4gKy5cIiByZXNwb25zaWJpbGl0eSBmb3IgZXJyb3JzIG9y
IG9taXNzaW9ucywgb3IgZm9yIGRhbWFnZXMgcmVzdWx0aW5nIGZyb20NCj4gKy5cIiB0aGUg
dXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaGVyZWluLiAgVGhlIGF1dGhvcihz
KSBtYXkgbm90DQo+ICsuXCIgaGF2ZSB0YWtlbiB0aGUgc2FtZSBsZXZlbCBvZiBjYXJlIGlu
IHRoZSBwcm9kdWN0aW9uIG9mIHRoaXMgbWFudWFsLA0KPiArLlwiIHdoaWNoIGlzIGxpY2Vu
c2VkIGZyZWUgb2YgY2hhcmdlLCBhcyB0aGV5IG1pZ2h0IHdoZW4gd29ya2luZw0KPiArLlwi
IHByb2Zlc3Npb25hbGx5Lg0KPiArLlwiDQo+ICsuXCIgRm9ybWF0dGVkIG9yIHByb2Nlc3Nl
ZCB2ZXJzaW9ucyBvZiB0aGlzIG1hbnVhbCwgaWYgdW5hY2NvbXBhbmllZCBieQ0KPiArLlwi
IHRoZSBzb3VyY2UsIG11c3QgYWNrbm93bGVkZ2UgdGhlIGNvcHlyaWdodCBhbmQgYXV0aG9y
cyBvZiB0aGlzIHdvcmsuDQo+ICsuXCIgJSUlTElDRU5TRV9FTkQNCg0KQ291bGQgeW91IHBs
ZWFzZSBhZGQganVzdCBhbiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcj8gIEkgcmVtb3ZlZCB0
aGUgDQphY3R1YWwgbGljZW5zZSB0ZXh0cyByZWNlbnRseSB0byBoYXZlIGxlc3Mgb3Zlcmhl
YWQgbGluZXMuDQoNClNlZSANCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9j
cy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvbWFuMi9waXBlLjI/aD1hbHgvbWFp
biZpZD01ZmJkZTk1NmNiNTUwZmZlYWU4M2MzMWU0ZjhjMTE0MjU0NGY0YjRmPg0KDQo+ICsu
XCINCj4gKy5cIg0KPiArLlRIIElPQ1RMX1BJUEUgMiAyMDIyLTA4LTA2ICJMaW51eCIgIkxp
bnV4IFByb2dyYW1tZXIncyBNYW51YWwiDQo+ICsuU0ggTkFNRQ0KPiAraW9jdGxfcGlwZSBc
LSBpb2N0bCgpIG9wZXJhdGlvbnMgZm9yIEdlbmVyYWwgbm90aWZpY2F0aW9uIG1lY2hhbmlz
bQ0KPiArLlNIIFNZTk9QU0lTDQo+ICsubmYNCj4gKy5CICNpbmNsdWRlIDxsaW51eC93YXRj
aF9xdWV1ZS5oPg0KPiArLlBQDQo+ICsuQkkgImludCBpb2N0bChpbnQgIiBwaXBlZmRbMV0g
IiwgSU9DX1dBVENIX1FVRVVFX1NFVF9TSVpFLCBpbnQgIiBzaXplICIpOw0KPiArLlBQDQoN
CllvdSBjYW4gcmVtb3ZlIHRoYXQgLlBQIHRvIGdldCB0aGUgdHdvIHByb3RvdHlwZXMgdG9n
ZXRoZXIuICBJIGxvb2tzIA0KbmljZXIsIElNTy4NCg0KU2VlIG1hbi1wYWdlcyg3KToNCiAg
ICBTWU5PUFNJUw0KICAgICAgICBXcmFwIHRoZSBmdW5jdGlvbiBwcm90b3R5cGUocykgaW4g
YSAubmYvLmZpIHBhaXIgdG8gIHByZS0NCiAgICAgICAgdmVudCBmaWxsaW5nLg0KDQogICAg
ICAgIEluICBnZW5lcmFsLCAgd2hlcmUgIG1vcmUgIHRoYW4gb25lIGZ1bmN0aW9uIHByb3Rv
dHlwZSBpcw0KICAgICAgICBzaG93biBpbiB0aGUgU1lOT1BTSVMsIHRoZSBwcm90b3R5cGVz
IHNob3VsZCBub3QgYmUgc2VwYS0NCiAgICAgICAgcmF0ZWQgYnkgYmxhbmsgbGluZXMuICBI
b3dldmVyLCBibGFuayBsaW5lcyAoYWNoaWV2ZWQgdXMtDQogICAgICAgIGluZyAuUFApIG1h
eSBiZSBhZGRlZCBpbiB0aGUgZm9sbG93aW5nIGNhc2VzOg0KDQogICAgICAgICogIHRvIHNl
cGFyYXRlIGxvbmcgbGlzdHMgb2YgZnVuY3Rpb24gcHJvdG90eXBlcyBpbnRvIHJlLQ0KICAg
ICAgICAgICBsYXRlZCBncm91cHMgKHNlZSBmb3IgZXhhbXBsZSBsaXN0KDMpKTsNCg0KICAg
ICAgICAqICBpbiBvdGhlciBjYXNlcyB0aGF0IG1heSBpbXByb3ZlIHJlYWRhYmlsaXR5Lg0K
DQoNCj4gKy5CSSAiaW50IGlvY3RsKGludCAiIHBpcGVmZFsxXSAiLCBJT0NfV0FUQ0hfUVVF
VUVfU0VUX0ZJTFRFUiwgc3RydWN0IHdhdGNoX25vdGlmaWNhdGlvbl9maWx0ZXIgKiAiIGZp
bHRlciAiKTsNCg0KVGhpcyBnZXRzIHBhc3QgdGhlIDgwLWNvbCBtYXJnaW4uICBDaGVjayBm
b3IgZXhhbXBsZSBvcGVuYXQyKDIpIGZvciBhIA0Kc29sdXRpb24uDQoNCj4gKy5maQ0KPiAr
LlBQDQo+ICsuU0ggREVTQ1JJUFRJT04NCj4gK1RoZSBmb2xsb3dpbmcNCj4gKy5CUiBpb2N0
bCAoMikNCj4gK29wZXJhdGlvbnMgYXJlIHByb3ZpZGVkIHRvIHNldCB1cCBhIGdlbmVyYWwg
bm90aWZpY2F0aW9uIHF1ZXVlIHBhcmFtZXRlcnMuDQoNCnMvYSAvLyAgID8NCg0KPiArVGhl
IG5vdGlmaWNhdGlvbiBxdWV1ZSBpcyBidWlsZCBvbiB0aGUgdG9wIG9mIGENCg0Kcy9idWls
ZC9idWlsdC8NCg0KPiArLkJSIHBpcGUgKDIpDQo+ICtvcGVuZWQgd2l0aA0KDQpzL3dpdGgv
d2l0aCB0aGUvDQoNCj4gKy5CIE9fTk9USUZJQ0FUSU9OX1BJUEUNCj4gK2ZsYWcuDQo+ICsu
VFANCj4gKy5CUiBJT0NfV0FUQ0hfUVVFVUVfU0VUX1NJWkUgIiAoc2luY2UgTGludXggNS44
KSINCj4gKy5cIiBjb21taXQgYzczYmU2MWNlZGU1ODgyZjk2MDVhODUyNDE0ZGI1NTljMGVi
ZWRmZA0KPiArUHJlYWxsb2NhdGVzIHRoZSBwaXBlIGJ1ZmZlciBtZW1vcnkgc28gdGhhdCBp
dCBjYW4gZml0IHNpemUgbm90aWZpY2F0aW9uIG1lc3NhZ2VzLiBDdXJyZW50bHkgdGhlIHNp
emUgbXVzdCBiZSBiZXR3ZWVuIDEgYW5kIDUxMi4NCj4gKy5UUA0KPiArLkJSIElPQ19XQVRD
SF9RVUVVRV9TRVRfRklMVEVSICIgKHNpbmNlIExpbnV4IDUuOCkiDQo+ICsuXCIgY29tbWl0
IGM3M2JlNjFjZWRlNTg4MmY5NjA1YTg1MjQxNGRiNTU5YzBlYmVkZmQNCj4gK1dhdGNoIHF1
ZXVlIGZpbHRlciwgaWYgc2V0LCBjYW4gbGltaXQgZXZlbnRzIHRoYXQgYXJlIHJlY2VpdmVk
Lg0KDQpPZiBjb3Vyc2UgaWYgc2V0LCBpc24ndCBpdD8gIEkgbWVhbiwgaWYgaXQncyBub3Qg
c2V0LCBpdCBjYW4ndCBkbyANCm5vdGhpbmcuICBEbyB3ZSBuZWVkIHRvIHNwZWNpZnkgImlm
IHNldCI/IDopDQoNCj4gK0ZpbHRlcnMgYXJlIHBhc3NlZCBpbiBhIFxmSXN0cnVjdCB3YXRj
aF9ub3RpZmljYXRpb25fZmlsdGVyXGZQDQoNCi5JIHN0cnVjdCB3YXRjaF9ub3RpZmljYXRp
b25fZmlsdGVyDQoNCj4gK2FuZCBlYWNoIGZpbHRlciBpcyBkZXNjcmliZWQgYnkgXGZJc3Ry
dWN0IHdhdGNoX25vdGlmaWNhdGlvbl90eXBlX2ZpbHRlclxmUCBzdHJ1Y3R1cmUuDQoNCi5J
IHN0ciBbLi4uXSBpbHRlcg0KDQo+ICsNCg0KLlBQDQoNClNlZSBtYW4tcGFnZXMoNyk6DQog
ICAgRm9ybWF0dGluZyBjb252ZW50aW9ucyAoZ2VuZXJhbCkNCiAgICAgICAgUGFyYWdyYXBo
cyAgc2hvdWxkIGJlIHNlcGFyYXRlZCBieSBzdWl0YWJsZSBtYXJrZXJzICh1c3UtDQogICAg
ICAgIGFsbHkgZWl0aGVyIC5QUCBvciAuSVApLiAgRG8gbm90IHNlcGFyYXRlIHBhcmFncmFw
aHMgIHVzLQ0KICAgICAgICBpbmcgIGJsYW5rICBsaW5lcywgIGFzICB0aGlzIHJlc3VsdHMg
aW4gcG9vciByZW5kZXJpbmcgaW4NCiAgICAgICAgc29tZSBvdXRwdXQgZm9ybWF0cyAoc3Vj
aCBhcyBQb3N0U2NyaXB0IGFuZCBQREYpLg0KDQo+ICsuRVgNCj4gK3N0cnVjdCB3YXRjaF9u
b3RpZmljYXRpb25fZmlsdGVyIHsNCj4gKyAgICAgICAgX191MzIgICBucl9maWx0ZXJzOw0K
PiArICAgICAgICBfX3UzMiAgIF9fcmVzZXJ2ZWQ7DQo+ICsgICAgICAgIHN0cnVjdCB3YXRj
aF9ub3RpZmljYXRpb25fdHlwZV9maWx0ZXIgZmlsdGVyc1tdOw0KPiArfTsNCj4gKw0KPiAr
c3RydWN0IHdhdGNoX25vdGlmaWNhdGlvbl90eXBlX2ZpbHRlciB7DQo+ICsgICAgICAgIF9f
dTMyICAgdHlwZTsNCj4gKyAgICAgICAgX191MzIgICBpbmZvX2ZpbHRlcjsNCj4gKyAgICAg
ICAgX191MzIgICBpbmZvX21hc2s7DQo+ICsgICAgICAgIF9fdTMyICAgc3VidHlwZV9maWx0
ZXJbOF07DQo+ICt9Ow0KPiArLkVFDQo+ICsNCg0KLlBQDQoNCj4gKy5TSCBTRUUgQUxTTw0K
PiArLkJSIHBpcGUgKDIpLA0KPiArLkJSIGlvY3RsICgyKQ0KDQp8IHNvcnQNCg0KDQotLSAN
CkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFpbmVyOyBodHRw
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvDQo=

--------------MXjxoSDvxPuhrJmwm9PvJAem--

--------------b4ebB5nduG4jDytBPVT7OLbt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKgvFMACgkQnowa+77/
2zJhVxAAoBct+MeiSCTfNszrDbPVvIi5EnACedVkelXOurKD01xgeq3SZKtlPSpv
GhvtLQFFJzS9WClhuwBq4o7nzqLIZC2lDl3msfl/Akt1jyE4jD8jCzol9DteVGIw
0Zed5VKsCaJQ86NaMm/T5NSio4W5abnViWdPLnn51jcDZwMhLeeH0A91roOTLWA7
nT4Uk8oV5ff+dU6k80QOPBP8lyTmSJHiFGVGGCemhTYnn8x82A38vbP9GCOSFjIF
1OcOVvFGMNRoVEgGrfOc5wNtmQZE/ESqQKHPq0pZhlatCtlZnX0nC27Ed3DTVZMo
gackm1C5W4A3uMwVbOYyVtWYrB8pqZ7jrwQ1fzmcsJeROnhe698oBOnIfgjJAvSH
Q3mLIIGkgUa7Ky3sdjaDop6wh1igjpH++EV3nAtQB8SbyGO4B7EQNL7XCO83rPh5
vp3MZldA2B2frprLXmg9Wa8fKQ5s75QhPuvoS+R/epiiF7uWyFah/zL2pfUuqF+l
GlU69U/1fk+5wFsBED1rR2T0rNBrH5sfoxKVJDbNEfNYrbdzp+FHVGZCvgECe5zD
VfRogzeFMIpbmcaE0mjGk8pg/7oTrwF0JmLrRDLWleHuGqfJWc5dtkG0pyq8WQSC
CrlUf9K+lO3KvhFTcoBaXZWVbHSuU6mUEohTMkD8guCpM6a5TGk=
=GmEc
-----END PGP SIGNATURE-----

--------------b4ebB5nduG4jDytBPVT7OLbt--
