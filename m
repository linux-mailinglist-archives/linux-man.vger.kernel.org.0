Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15975435CD
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 17:00:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242217AbiFHPAm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 11:00:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244201AbiFHO7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 10:59:21 -0400
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276853E3E95
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 07:55:31 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id q15so20666132wrc.11
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 07:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7b77RB5p9VODmNgSKLypgI/Y/+Qm4WvZC9CEZmjKpHI=;
        b=EdxNxBqo2+4bK1wiHBWklflwdWrBdRztDhKpoM2CZirUll2ebp+5WFO1TXzKh+4rZY
         dZlpxgFAmu8wi8F/SkyLGoUEqqni8HyqhUJ9mGOi3qx607Fway9FJtdWDn6W1nQR3i/t
         ygmPlTawlw6dCMRKFHmzqlS7q620sE6lCdvaE42ULFZGDBiT860gxqPgOVEE4YJpiqn0
         CsFDazAFnnhqHKWTi6T1BFEpcl/S3/Fuf/MPSZk1INCbiyQmPVoSIhhOuzoYWR7IhHlD
         X9SKxm7qoRkGHh5t4WG8T6sw9TTpE1+3Ma5yPIvifgRR588HPR8C/Rmj9SowhZXXOTVk
         2LSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7b77RB5p9VODmNgSKLypgI/Y/+Qm4WvZC9CEZmjKpHI=;
        b=IBhwFYd9yzkiMqRpj12UFVjbrzsChGAIeupRftvlrkPZBt3KtI7wUKe/FoA1HtW+aU
         S/eteJoTBh/IUg4mcJV7KC1KwGx6wINEQ0CnOyGZmtf9vnAA3HmvvG7ig7pk38tRKZfi
         V+QfCNVbp6+uu6yp69nSbXsP8NZLfIEGBdS9feAQ8FtA2rfdWV4DbxyUZmbGspN0GASY
         CZYH3DR6/fcwqr4alAhXprlUYjmmiZzNf/xr05gc0MiJq8Bpj5fYp7NhjGjsLfVyRWdk
         VdIcgh4uSKehGS5y5J1X50VSOqhUrYRXfc7fjIHeurVGc0f9aItcx6BqwiACREsnFKo9
         p8bQ==
X-Gm-Message-State: AOAM532+fLDnwGN24wT6XOCnOjljM0yC9mYCHjTvCO5mTTQ1C/tlZzJw
        GoYd72DD1LGIYWFQkNVHbJo=
X-Google-Smtp-Source: ABdhPJwJpjz1JwLZwkxfWLFZExMvud1NG06B6TOJGIqlXIi4DjDXDcca+qiuIc0oqGaJcGP+ufwhSg==
X-Received: by 2002:adf:eacb:0:b0:217:dd5:445f with SMTP id o11-20020adfeacb000000b002170dd5445fmr20781498wrn.359.1654699989558;
        Wed, 08 Jun 2022 07:53:09 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id a7-20020a7bc1c7000000b0039c5497deccsm9237134wmj.1.2022.06.08.07.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 07:53:08 -0700 (PDT)
Message-ID: <d3320423-4318-713c-663c-92946249bc41@gmail.com>
Date:   Wed, 8 Jun 2022 16:55:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2] pipe.2: Add mention of O_NOTIFICATION_PIPE flag
Content-Language: en-US
To:     chrubis@suse.cz, linux-man@vger.kernel.org
Cc:     David Howells <dhowells@redhat.com>
References: <20220608124645.12622-1-chrubis@suse.cz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220608124645.12622-1-chrubis@suse.cz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XXdO0jYEayq6srZOFRBwciSz"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XXdO0jYEayq6srZOFRBwciSz
Content-Type: multipart/mixed; boundary="------------b0AcYd2Ls6yxi74ovAgFAoQQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: chrubis@suse.cz, linux-man@vger.kernel.org
Cc: David Howells <dhowells@redhat.com>
Message-ID: <d3320423-4318-713c-663c-92946249bc41@gmail.com>
Subject: Re: [PATCH v2] pipe.2: Add mention of O_NOTIFICATION_PIPE flag
References: <20220608124645.12622-1-chrubis@suse.cz>
In-Reply-To: <20220608124645.12622-1-chrubis@suse.cz>

--------------b0AcYd2Ls6yxi74ovAgFAoQQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ3lyaWwsDQoNCk9uIDYvOC8yMiAxNDo0NiwgY2hydWJpc0BzdXNlLmN6IHdyb3RlOg0K
PiBGcm9tOiBDeXJpbCBIcnViaXMgPGNocnViaXNAc3VzZS5jej4NCj4gDQo+IFRoaXMgYWRk
cyB2ZXJ5IGJhc2ljIGluZm9ybWF0aW9uIGFib3V0IHRoZSBub3RpZmljYXRpb24gcGlwZSB0
aGF0IGhhdmUNCj4gYmVlbiBhZGRlZCBpbnRvIExpbnV4IDUuOC4NCj4gDQo+IFRoZXJlIGlz
IHNvbWUgZGVzY3JpcHRpb24gYWJvdXQgdGhlIGludGVyZmFjZSBhdDoNCj4gDQo+IGh0dHBz
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2NvcmUtYXBpL3dhdGNoX3F1ZXVl
Lmh0bWwNCj4gDQo+IChJIHRoaW5rIHRoYXQgdGhlcmUgaXMgYXQgbGVhc3Qgb24gYnVnIGlu
IHRoYXQgcGFnZSwgc2luY2UgdGhlDQo+IG5vdGlmaWNhdGlvbiBwaXBlIGhhcyB0byBiZSBv
cGVuZWQgd2l0aCBPX05PVElGSUNBVElPTl9QSVBFIHdoaWNoIGlzDQo+IGRlZmluZWQgdG8g
T19FWENMIG5vdCBPX1RNUEZJTEUpDQo+IA0KPiBUaGUgRU5PUEtHIGVycm9yIHNob3VsZCBi
ZSBjbGVhciBmcm9tIHRoaXMgaGVhZGVyIChzZWUNCj4gd2F0Y2hfcXVldWVfaW5pdCgpIGF0
IHRoZSBlbmQpOg0KPiANCj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvNWJmYzc1ZDkyZWZkNDk0ZGIzN2Y1YzRjMTczZDM2MzlkNDc3Mjk2Ni9pbmNsdWRlL2xp
bnV4L3dhdGNoX3F1ZXVlLmgNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEN5cmlsIEhydWJpcyA8
Y2hydWJpc0BzdXNlLmN6Pg0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaC4gIEFwcGxpZWQuDQoN
CkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjIvcGlwZS4yIHwgMTggKysrKysr
KysrKysrKysrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9tYW4yL3BpcGUuMiBiL21hbjIvcGlwZS4yDQo+IGluZGV4IDQx
YTQ4MmYzNy4uYmQwMWI4ZGEwIDEwMDY0NA0KPiAtLS0gYS9tYW4yL3BpcGUuMg0KPiArKysg
Yi9tYW4yL3BpcGUuMg0KPiBAQCAtMTQ5LDYgKzE0OSwxNSBAQCByZWZlcnJlZCB0byBieSB0
aGUgbmV3IGZpbGUgZGVzY3JpcHRvcnMuDQo+ICAgVXNpbmcgdGhpcyBmbGFnIHNhdmVzIGV4
dHJhIGNhbGxzIHRvDQo+ICAgLkJSIGZjbnRsICgyKQ0KPiAgIHRvIGFjaGlldmUgdGhlIHNh
bWUgcmVzdWx0Lg0KPiArLlRQDQo+ICsuQiBPX05PVElGSUNBVElPTl9QSVBFDQo+ICtTaW5j
ZSBMaW51eCA1LjgsDQo+ICsuXCIgY29tbWl0IGM3M2JlNjFjZWRlNTg4MmY5NjA1YTg1MjQx
NGRiNTU5YzBlYmVkZmQNCj4gK2dlbmVyYWwgbm90aWZpY2F0aW9uIG1lY2hhbmlzbSBpcyBi
dWlsdCBvbiB0aGUgdG9wIG9mIHRoZSBwaXBlIHdoZXJlIGtlcm5lbA0KPiArc3BsaWNlcyBu
b3RpZmljYXRpb24gbWVzc2FnZXMgaW50byBwaXBlcyBvcGVuZWQgYnkgdXNlciBzcGFjZS4N
Cj4gK1RoZSBvd25lciBvZiB0aGUgcGlwZSBoYXMgdG8gdGVsbCB0aGUga2VybmVsIHdoaWNo
IHNvdXJjZXMgb2YgZXZlbnRzIHRvIHdhdGNoDQo+ICthbmQgZmlsdGVycyBjYW4gYWxzbyBi
ZSBhcHBsaWVkIHRvIHNlbGVjdCB3aGljaCBzdWJldmVudHMgc2hvdWxkIGJlIHBsYWNlZCBp
bnRvDQo+ICt0aGUgcGlwZS4NCj4gICAuU0ggUkVUVVJOIFZBTFVFDQo+ICAgT24gc3VjY2Vz
cywgemVybyBpcyByZXR1cm5lZC4NCj4gICBPbiBlcnJvciwgXC0xIGlzIHJldHVybmVkLA0K
PiBAQCAtMTkxLDYgKzIwMCwxNSBAQCBUaGUgc3lzdGVtLXdpZGUgbGltaXQgb24gdGhlIHRv
dGFsIG51bWJlciBvZiBvcGVuIGZpbGVzIGhhcyBiZWVuIHJlYWNoZWQuDQo+ICAgVGhlIHVz
ZXIgaGFyZCBsaW1pdCBvbiBtZW1vcnkgdGhhdCBjYW4gYmUgYWxsb2NhdGVkIGZvciBwaXBl
cw0KPiAgIGhhcyBiZWVuIHJlYWNoZWQgYW5kIHRoZSBjYWxsZXIgaXMgbm90IHByaXZpbGVn
ZWQ7IHNlZQ0KPiAgIC5CUiBwaXBlICg3KS4NCj4gKy5UUA0KPiArLkIgRU5PUEtHDQo+ICsu
UkIgKCBwaXBlMiAoKSkNCj4gKy5CIE9fTk9USUZJQ0FUSU9OX1BJUEUNCj4gK3dhcyBwYXNz
ZWQgaW4NCj4gKy5JIGZsYWdzDQo+ICthbmQgc3VwcG9ydCBmb3Igbm90aWZpY2F0aW9ucw0K
PiArLlJCICggQ09ORklHX1dBVENIX1FVRVVFICkNCj4gK2lzIG5vdCBjb21waWxlZCBpbnRv
IHRoZSBrZXJuZWwuDQo+ICAgLlNIIFZFUlNJT05TDQo+ICAgLkJSIHBpcGUyICgpDQo+ICAg
d2FzIGFkZGVkIHRvIExpbnV4IGluIHZlcnNpb24gMi42LjI3Ow0KDQoNCi0tIA0KQWxlamFu
ZHJvIENvbG9tYXINCkxpbnV4IG1hbi1wYWdlcyBjb21haW50YWluZXI7IGh0dHA6Ly93d3cu
a2VybmVsLm9yZy9kb2MvbWFuLXBhZ2VzLw0KaHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8NCg==

--------------b0AcYd2Ls6yxi74ovAgFAoQQ--

--------------XXdO0jYEayq6srZOFRBwciSz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKguHwACgkQnowa+77/
2zJLvxAAoFD41HXtwgRHSbpFQpfYB7fRjVmSjawN7ZijY23MU5d0fJhf0xeQKCkB
R+0sD0ZvlkvRWkv28yZBrmExKhNM08I/+GMSHhdpRX0PvQqnBG3HPo4xkJYgdz5g
QfzAS/fS/v3ADqbJ1ErHiPM8zrrvIPEje8FA0iRfucCVEtYuPN3In+YVHMkbkxR/
tL3mnE+HmFjzA4qgwFCjUcYZav6YJMAAuwS2J5O0J+yRJ62kI33bhmIK/u6WtW+T
nR5/mpcGjfGcTrZHZ9EGF/i5eejq3z5FUqjkrPc1ZDZlwse0mgLzTzBWPmReWnG7
C1HNUj4M0d08PAd1AvKkt6koFyl04IFXQsKhZLURNtx1XsXaEFuftmSsz8gNaX17
AtwIUMMeZMLCK31gEB4gPR4eC5IhhJobFMVAOWh9fokiFOVlvDP5Zn3vDii62u8B
CEGeZoBqvCtEG6t6wutLbgV7CURiybsi5nGU/kaKlBqEsSbOF6gcqYIXCVJ+jKu/
MdZLmg7t7JjTygj5rCmd++tHR9NdLwDIvE8OoX70+/SLS6kEzODibzrT8gFPdNpo
nReAYudkzzmN5EvNhZoCb7L/7mpht2hh3bzbv+o43+KB6m7CWSRT3OtUWjQIt5qE
G8O2KwFvH+GCSUE1+YoakIfCr9ZnS9N24md+zAdim+UsK9UUycU=
=wDmd
-----END PGP SIGNATURE-----

--------------XXdO0jYEayq6srZOFRBwciSz--
