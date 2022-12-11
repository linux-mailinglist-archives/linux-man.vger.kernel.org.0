Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7019B64954C
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:27:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230248AbiLKR1P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:27:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230097AbiLKR1L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:27:11 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A31BD62DB
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:26:59 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h10so9782905wrx.3
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7Mdzo/393UX/ccrw8oHVwnITwIT0MzWSJfhr1k8EiI=;
        b=AxDMxCytZ8jiYHMu40D0Obdy4FPmNXEtKYuKTRjuSzNdzaFk/G0tiQ5xHrmkZuDxB4
         z0TBy+FSg5hk0M6boeUQXCiPrAOgd9e30jSAt9Gm50m1ssDYQG95dfX74ZhXBoPFACCz
         TIdmzoI31BgI9Dz0rMvFFGWQJmx2MWhuw0UfYAWDfc1MAGLHoLow8UESaECgyr6RiNyD
         jCBlh1DmFqQsXWubhFel5A3IYYsJZc5XLuHgXYFeFZH4oSqMmVlehnO4KY6B7XNmRvGe
         AgBYx3yPv4sxMSFtcbnW0rn+QBhkq70kinsuBXep0WIevt6pA+vwn8h/lasvCUUK4ULg
         zB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T7Mdzo/393UX/ccrw8oHVwnITwIT0MzWSJfhr1k8EiI=;
        b=iNbQE/5Zr5hk/mI1YC8h7h9INFZEBDgG93uZHG19udR5Nny3l8GJzhV2+W6ElKvEiK
         ZL9dMFfreMndCb3/8LCdM5UHJwm/9N0w65hLTqp+xQVhL7ySFVvqRvH8ctOhCXsmvhWn
         1ze8FEpVdBdpIrJ7i3SNnMni52SzOR8h5hxkMpf0PyVD5raJ4TCm9DRn9p2WwTKKDD2R
         YWP9H9hgATST7bYW55hBeUQN/TF2b6BegnOBu8kszk6gImvzjUMjsC2uCFmyMGcCDJ6K
         R2X4Aaca18xOZCHhrMtzzdQ2LNHw5/zbT8oE3O+y5/SgiyHdtDkz8qhoYvx447sEtsCo
         skDQ==
X-Gm-Message-State: ANoB5pnI4Lbjlfw9H7A5ZOH/R9CVXDXYr4KPG1D2HPVpPTDeYAHjgHyc
        mNZ4qRUrqv7DtO3fu+I2nmISMebp6gI=
X-Google-Smtp-Source: AA0mqf6x7jygbMljU0cVZ6+5ArcIGZ9RIjUO9fxManQUscswWFIXBKZcXITqurULTtxrkuiJQt8SjQ==
X-Received: by 2002:a5d:5051:0:b0:242:1526:2a44 with SMTP id h17-20020a5d5051000000b0024215262a44mr8841518wrt.67.1670779618225;
        Sun, 11 Dec 2022 09:26:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m5-20020adffe45000000b002302dc43d77sm6608207wrs.115.2022.12.11.09.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 09:26:57 -0800 (PST)
Message-ID: <58a436dc-7259-8cf2-f07c-bb79a6ee7321@gmail.com>
Date:   Sun, 11 Dec 2022 18:26:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: =?UTF-8?Q?Re=3a_Reply=ef=bc=9a_Report_man-pages-6=2e01_bug?=
Content-Language: en-US
To:     1092615079 <1092615079@qq.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>
 <f7dc0e92-6775-1e1e-c43f-3b6d0a5fd8f6@gmail.com>
 <tencent_F782FBCDADC9E5CD7ED5DBC738CD4223DC06@qq.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <tencent_F782FBCDADC9E5CD7ED5DBC738CD4223DC06@qq.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------di8ZVHhVhf68Vhn3ebIWjZ0U"
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
--------------di8ZVHhVhf68Vhn3ebIWjZ0U
Content-Type: multipart/mixed; boundary="------------V01npuZm0LEmLe8WPab5LJEn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: 1092615079 <1092615079@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <58a436dc-7259-8cf2-f07c-bb79a6ee7321@gmail.com>
Subject: =?UTF-8?Q?Re=3a_Reply=ef=bc=9a_Report_man-pages-6=2e01_bug?=
References: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>
 <f7dc0e92-6775-1e1e-c43f-3b6d0a5fd8f6@gmail.com>
 <tencent_F782FBCDADC9E5CD7ED5DBC738CD4223DC06@qq.com>
In-Reply-To: <tencent_F782FBCDADC9E5CD7ED5DBC738CD4223DC06@qq.com>

--------------V01npuZm0LEmLe8WPab5LJEn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDExLzMvMjIgMTk6MzMsIDEwOTI2MTUwNzkgd3JvdGU6DQo+IERlYXIgRGV2
bG9wZXIsDQo+ICDCoCBUaGFua3MgZm9yIHlvdXIgcmVwbHksIGFuZCBpIGFtIHZlcnkgc29y
cnkgYmVjYXVzZcKgIGkgYW0gbm90IGdvb2QgYXQgbWFraW5nIA0KPiBwYXRjaCwgc28gaSB0
cnkgdG8gc2hvdyB0aGUgcG9pbnQgZm9yIHlvdS4NCj4gIMKgIFRoZSBwYXJ0IG9mIGNvZGUg
d2hpY2ggaSB0aGluayBtYXkgYmUgaW5jb3JyZWN0IGluIEVYQU1QTEUgaXMgbGlrZSBmb2xs
b3c6DQo+IC0tYmVnaW4tLQ0KPiANCj4gIMKgIMKgIMKgIHN0cnVjdCBzaG1idWbCoCAqc2ht
cDsNCj4gIMKgIMKgIMKgKnNobXAgPSBtbWFwKE5VTEwsIHNpemVvZigqc2htcCksIFBST1Rf
UkVBRCB8IFBST1RfV1JJVEUsIE1BUF9TSEFSRUQsIGZkLCAwKTsNCj4gDQo+IC0tZW5kLS0N
Cj4gDQo+ICDCoCDCoCDCoCBJIHRoaW5rIHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIHBvaW50
ZXIgdmFyaWFibGUgPHNobXA+IGlzIGRpcmVjdGx5IHVzZWQgDQo+IHRvIGFjY2VzcyBtZW1v
cnkgd2l0aG91dCBpbml0LCBhbmQgaSB0aGluayB0aGUgb3JpZ2luYWwgaW50ZW50aW9uIG9m
IHRoZSBjb2RlIGlzIA0KPiBsaWtlIHRoaXM6DQo+IA0KPiAtLWJlZ2luLS0NCj4gDQo+ICDC
oCDCoCDCoCBzdHJ1Y3Qgc2htYnVmwqAgKnNobXA7DQo+ICDCoCDCoCDCoHNobXAgPSBtbWFw
KE5VTEwsIHNpemVvZigqc2htcCksIFBST1RfUkVBRCB8IFBST1RfV1JJVEUswqBNQVBfU0hB
UkVELCBmZCwgMCk7DQo+IA0KPiAtLWVuZC0tDQo+ICDCoCDCoCDCoEkgdGhpbmsgc2htcCBt
YXliZSBqdXN0IGJlIHVzZWQgdG8gZ2V0IHRoZcKgIHJldHVybiB2YWx1ZSBvZiBtbWFwKCk7
DQo+ICDCoCDCoCBQUzogVGhlIHBhZ2UgZmlsZSBpcyBzaG1fb3Blbi4zIGFuZCBob3BlIHRo
aXMgY2FuIGRvIHNvbWV0aGluZyB1c2VmdWwgZm9yIHlvdS4NCj4gDQo+ICDCoCDCoFRoYW5r
cyBmb3IgeW91csKgY29udHJpYnV0aW9uIGFnYWluIQ0KDQpUaGFuayB5b3UgZm9yIHRoZSBy
ZXBvcnQgYW5kIHRoZSBleHBsYW5hdGlvbi4gIEkgZml4ZWQgdGhlIGJ1Zy4gIEl0IHNlZW1z
IGl0IHdhcyANCnByb2JhYmx5IGEgdHlwby4NCg0KPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC8+DQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+IA0KPiANCj4gLS0tLS0tLS0tLS0tLS0tLS0twqDljp/lp4vpgq7k
u7bCoC0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAq5Y+R5Lu25Lq6OiogIkFsZWphbmRybyBDb2xv
bWFyIiA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT47DQo+ICrlj5HpgIHml7bpl7Q6KsKgMjAy
MuW5tDEx5pyIM+aXpSjmmJ/mnJ/lm5spIOaZmuS4ijExOjEzDQo+ICrmlLbku7bkuro6KsKg
IiAiPDEwOTI2MTUwNzlAcXEuY29tPjsNCj4gKuaKhOmAgToqwqAibGludXgtbWFuIjxsaW51
eC1tYW5Admdlci5rZXJuZWwub3JnPjsNCj4gKuS4u+mimDoqwqBSZTogUmVwb3J0IG1hbi1w
YWdlcy02LjAxIGJ1Zw0KPiANCj4gSGVsbG8sDQo+IA0KPiBPbiAxMS8zLzIyIDA5OjAxLCAx
MDkyNjE1MDc5IHdyb3RlOg0KPiAgPiBEZWFyIERldmxvcGVyLA0KPiAgPsKgIMKgIEluIHRo
ZSBFWEFNUExFUyBvZiBzaG1fb3BlbiBpbiBtYW4tcGFnZXMtNi4wMSBzZWN0aW9uIDMswqAg
aSB0aGluayB0aGXCoHVzYWdlDQo+ICA+IG9mIHZhcmlhYmxlIHNobXAgaW4gdGhlwqBjb2Rl
IG9mIHBzaG1fdWNhc2VfYm91bmNlLmMgbWF5YmUgaGFzIGEgY2xlcmljYWwgZXJyb3INCj4g
ID4gd2l0aCBhIHJlZHVuZGFudCBhY3Rpb27CoCBhYm91dMKgYWRkcmVzcyBhY2Nlc3Npbmcg
LCBwbGVhc2Ugc2VlOg0KPiANCj4gSSBkb24ndCBoYXZlIG11Y2ggZXhwZXJpZW5jZSB1c2lu
ZyBtbWFwKDIpLsKgIENvdWxkIHlvdSBwbGVhc2UgZGV0YWlsIHdoeSB5b3UNCj4gdGhpbmsg
dGhpcyBpcyBpbmNvcnJlY3QsIGFuZCBob3BlZnVsbHkgcHJvcG9zZSBhIHBhdGNoPw0KPiAN
Cj4gWW91IG1heSB3YW50IHRvIHJlYWQgdGhpcyBmb3IgcHJlcGFyaW5nIGEgcGF0Y2g6DQo+
IDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBh
Z2VzLmdpdC90cmVlL0NPTlRSSUJVVElORz4NCj4gDQo+IFRoYW5rcywNCj4gQWxleA0KPiAN
Cj4gID4NCj4gID4gLyogcHNobV91Y2FzZV9ib3VuY2UuYw0KPiAgPg0KPiAgPsKgIMKgIMKg
TGljZW5zZWQgdW5kZXIgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdjIgb3IgbGF0ZXIu
DQo+ICA+ICovDQo+ICA+ICNpbmNsdWRlIDxjdHlwZS5oPg0KPiAgPg0KPiAgPiAjaW5jbHVk
ZSAicHNobV91Y2FzZS5oIg0KPiAgPg0KPiAgPiBpbnQNCj4gID4gbWFpbihpbnQgYXJnYywg
Y2hhciAqYXJndltdKQ0KPiAgPiB7DQo+ICA+wqAgwqAgwqAgaW50wqAgwqAgwqAgwqAgwqAg
wqAgZmQ7DQo+ICA+wqAgwqAgwqAgY2hhcsKgIMKgIMKgIMKgIMKgIMKgKnNobXBhdGg7DQo+
ICA+IHN0cnVjdCBzaG1idWbCoCAqc2htcDsNCj4gID4NCj4gID7CoCDCoCDCoCBpZiAoYXJn
YyAhPSAyKSB7DQo+ICA+wqAgwqAgwqAgwqAgwqAgZnByaW50ZihzdGRlcnIsICJVc2FnZTog
JXMgL3NobVwtcGF0aFxlbiIsIGFyZ3ZbMF0pOw0KPiAgPsKgIMKgIMKgIMKgIMKgIGV4aXQo
RVhJVF9GQUlMVVJFKTsNCj4gID7CoCDCoCDCoCB9DQo+ICA+DQo+ICA+wqAgwqAgwqAgc2ht
cGF0aCA9IGFyZ3ZbMV07DQo+ICA+DQo+ICA+wqAgwqAgwqAgLyogQ3JlYXRlIHNoYXJlZCBt
ZW1vcnkgb2JqZWN0IGFuZCBzZXQgaXRzIHNpemUgdG8gdGhlIHNpemUNCj4gID7CoCDCoCDC
oCDCoCDCoG9mIG91ciBzdHJ1Y3R1cmUuICovDQo+ICA+DQo+ICA+wqAgwqAgwqAgZmQgPSBz
aG1fb3BlbihzaG1wYXRoLCBPX0NSRUFUIHwgT19FWENMIHwgT19SRFdSLCAwNjAwKTsNCj4g
ID7CoCDCoCDCoCBpZiAoZmQgPT0gXC0xKQ0KPiAgPsKgIMKgIMKgIMKgIMKgIGVyckV4aXQo
InNobV9vcGVuIik7DQo+ICA+DQo+ICA+wqAgwqAgwqAgaWYgKGZ0cnVuY2F0ZShmZCwgc2l6
ZW9mKHN0cnVjdCBzaG1idWYpKSA9PSBcLTEpDQo+ICA+wqAgwqAgwqAgwqAgwqAgZXJyRXhp
dCgiZnRydW5jYXRlIik7DQo+ICA+DQo+ICA+wqAgwqAgwqAgLyogTWFwIHRoZSBvYmplY3Qg
aW50byB0aGUgY2FsbGVyXChhcXMgYWRkcmVzcyBzcGFjZS4gKi8NCj4gID4NCj4gID4gKnNo
bXAgPSBtbWFwKE5VTEwsIHNpemVvZigqc2htcCksIFBST1RfUkVBRCB8IFBST1RfV1JJVEUs
DQo+ICA+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBNQVBfU0hBUkVELCBmZCwgMCk7
DQo+ICA+wqAgwqAgwqAgaWYgKHNobXAgPT0gTUFQX0ZBSUxFRCkNCj4gID7CoCDCoCDCoCDC
oCDCoCBlcnJFeGl0KCJtbWFwIik7DQo+ICA+DQo+ICA+DQo+ICA+wqAgwqAgwqAgdGhhbmtz
IGZvciB5b3VywqBjb250cmlidXRpb24gYWdhaW4uDQo+IA0KPiAtLSANCj4gPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------V01npuZm0LEmLe8WPab5LJEn--

--------------di8ZVHhVhf68Vhn3ebIWjZ0U
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWEtkACgkQnowa+77/
2zIWbw//USp5xEj6kOsqoXYBXsbKJkyocAsBvIXnUQ3HMaq4cvEMqqCp6VvDgadr
96ZACy0/wQDP5as4jhBDEsdN5Bh6SA2Ejk8sff/ezLfV635LCG18FBaI29koPW9D
b2jnNaiZCdjImJ78C8wpLka13kw5TUY6hrYXeN/oStSmh0/72ZN+nFTZtf8f6AvK
qPxa7da8queedtJiAA+z0s7YqXPwatKtjUIe+m2xDk/sCXZS72ohR/19a8+Jk58y
OrMJtpz2806SjEVIZxynDxrDGQuy3QGV5mIHuOujxvtLiqCms5c3Pl2D4RVwFNpn
OieB+3tKcW6t/eKHnAZrZnrOQUOM+uaoW/TGEsQLNj1NOZGEi4GtQ75FpPYF9CDy
YsMEhfLt7a9fGC4332ZG+xJXlliPgQXNJ5bGK7cLzFA+d/oZ3Y4EOXTxL87BnCYg
GupLHPZKMWvBbLQVImSUvvGRTC3JOrPRD50OS5XKTLBox9/rN+urlNxLOCc8yNhX
Zz3WLOFbYJPOzVaXTyQ7w2kxtnE8Yf1DdT3/aBuZQlpYUUVLNM16CljJ3s0hhczy
tYSiGfYgBtxP0pYT18YZRd6bv2hejOSts6kRltohyHG4Kc2nVflSY5fco4paHeeU
+9r4Z21f9HwNXbVhooNR8h6g13k9LoGEpBpawUVDTjPBc1ANzb0=
=sBeY
-----END PGP SIGNATURE-----

--------------di8ZVHhVhf68Vhn3ebIWjZ0U--
