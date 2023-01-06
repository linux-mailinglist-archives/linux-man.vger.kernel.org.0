Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 674BB65F8B2
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 02:11:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236211AbjAFBLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 20:11:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbjAFBLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 20:11:13 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2717A6F97A
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 17:11:12 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so2599698wmk.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 17:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGsmR99+ohDb1RAJXbF6jm/yDFrESrZ5MCvQsAhyvZ0=;
        b=pH5+kF4GPLQOWihfKMRZ7LYj/N/LlOWT22zrCQ8qJIXbcFvkuzCeYnOj6ROZBBAMBs
         QmKYp5Dr0901BUHOaR0UnpejI/Ixu7zCpogdTa85sLoQb1cVCnVFvo+5Y4iSoA7Psx+R
         qKvJxeFqKYo1h4sA8W5iraH+B5DkpAg4upKtBpgpEmNGCFt4WNps4cFpHi6e/mTeL3z1
         C0hSJKm/mM1zNjE2v1lMZe1mahKlC6rYx39N0bmgr+JmDjLjCzjVe3PzeyPwvpKeLgPJ
         YK+n9IPS/IhwwpyJhZqX+Mhz0lP3S315jGTYnvSLM53Vkbz8h+Qvf8Rw3wosu/irq+2h
         QzhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OGsmR99+ohDb1RAJXbF6jm/yDFrESrZ5MCvQsAhyvZ0=;
        b=iqEmwzcH0v4+kxE/gCx9chMCmsZ/85F90ayf1cKGBHkJxp28j99IAJKWAefdxo9wWV
         soc+4OlceQBcBxJKnCTxZXD4BuBeDp3oF05C5Svmh/TyJQ6Zk895gbu5dn1t5Lrt/VBS
         Q0w6+U8CFW79Kp6LKqbhab06EToBCFh58wXecradQEloL5F1fNMYwlkVIOnhNDo/LxWG
         KMvalzJCbfIYgnufD6xp7Z09H4G8+Hnk6cJ2QnyKykef8WnqKCQrh6Q3aH4lzgChGN9U
         30L3RH1F1VwZpCHkbCFJJAJo7kKwPtrf+rBAZPdgcYhFqefWJnR7PRueSf/Pvl8mW87n
         Cy/Q==
X-Gm-Message-State: AFqh2krpkscODbZ/7/0xBQkOJWX5SkK32nUs71odOF2Vj07+G4VwBkUL
        EU9BI8eZR9W7jk34xMlsHnY=
X-Google-Smtp-Source: AMrXdXt1RlRzIc2Pb2/RM3qizYLzhFt0tkFQDUmsmhXnjq3LxCi9Oik+PogikxlsboS5ui7eK4Vr3Q==
X-Received: by 2002:a05:600c:18a3:b0:3d1:fcac:3c95 with SMTP id x35-20020a05600c18a300b003d1fcac3c95mr38234638wmp.34.1672967470699;
        Thu, 05 Jan 2023 17:11:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n41-20020a05600c502900b003cf6a55d8e8sm4298017wmr.7.2023.01.05.17.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 17:11:10 -0800 (PST)
Message-ID: <22423d49-f821-1e35-6aa6-c3ddf72ee3ec@gmail.com>
Date:   Fri, 6 Jan 2023 02:10:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 03/13] ldconfig.8: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225225.luzsuhpxhjpi5256@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225225.luzsuhpxhjpi5256@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------k8Gmu0hdxUFqLH8S5gyq0xhW"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------k8Gmu0hdxUFqLH8S5gyq0xhW
Content-Type: multipart/mixed; boundary="------------0cGxl3U0NnxO4z5EX7wWSCpw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <22423d49-f821-1e35-6aa6-c3ddf72ee3ec@gmail.com>
Subject: Re: [PATCH v3 03/13] ldconfig.8: ffix
References: <20230105225225.luzsuhpxhjpi5256@illithid>
In-Reply-To: <20230105225225.luzsuhpxhjpi5256@illithid>

--------------0cGxl3U0NnxO4z5EX7wWSCpw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUyLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFNldCBwYWdlIHRvcGljIGluIGxvd2VyY2FzZS4NCj4gKiBSZXdyaXRlIHN5
bm9wc2VzIHRvIHVzZSBncm9mZiBtYW4oNykgYFNZYC9gWVNgIGV4dGVuc2lvbiBtYWNyb3Mu
DQo+ICogUmV3cml0ZSBzeW5vcHNlcyB0byB1c2UgbWFuKDcpIGZvbnQgbWFjcm9zIGluc3Rl
YWQgb2YgKnJvZmYgZm9udA0KPiAgICBzZWxlY3Rpb24gZXNjYXBlIHNlcXVlbmNlcy4NCj4g
KiBJbiBzeW5vcHNlcywgc2V0IGVsbGlwc2VzIGFzIHNlcGFyYXRlICJvcGVyYW5kcyIgdG8g
YmV0dGVyIHN1Z2dlc3QNCj4gICAgYXJndW1lbnQgc2VwYXJhdGlvbiBieSB3aGl0ZSBzcGFj
ZS4NCj4gKiBJbiBzeW5vcHNlcywgcHJldmVudCBicmVha3Mgd2l0aGluIG9wdGlvbiBicmFj
a2V0cy4NCj4gKiBUeXBlc2V0IGVsbGlwc2VzIG1vcmUgYXR0cmFjdGl2ZWx5IG9uIHRyb2Zm
IGRldmljZXMuDQo+ICogUmV3cml0ZSBvcHRpb24gbGlzdCB0byB1c2UgbWFuKDcpIGZvbnQg
bWFjcm9zIGluc3RlYWQgb2YgKnJvZmYgZm9udA0KPiAgICBzZWxlY3Rpb24gZXNjYXBlIHNl
cXVlbmNlcy4NCj4gKiBVc2UgZ3JvZmYgbWFuKDcpIGBUUWAgZXh0ZW5zaW9uIG1hY3JvIHRv
IGluY2x1ZGUgbXVsdGlwbGUgdGFncyBmb3INCj4gICAgb3B0aW9ucyB3aXRoIGxvbmcgc3lu
b255bXMgaW5zdGVhZCBvZiBjb21tYSBub3RhdGlvbi4NCj4gKiBTZXQgbGl0ZXJhbHMgdXNl
ZCBhcyBhcmd1bWVudHMgdG8gYC1jYCBvcHRpb24gaW4gYm9sZCwgbm90IGl0YWxpY3MuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9i
aW5zb25AZ21haWwuY29tPg0KDQpQYXRjaCBhcHBsaWVkLiAgVGhhbnNrIQ0KDQpJJ2xsIHB1
c2ggdG9tb3Jyb3cgcHJvYmFibHksIHdoZW4gSSBkZWNpZGUgYWJvdXQgdGhlIGJ6ZXJvKDMp
IGNoYW5nZSwgd2hpY2ggDQpyaWdodCBub3cgaXMgYmVsb3cgeW91ciBwYXRjaGVzIDopDQoN
CkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjgvbGRjb25maWcuOCB8IDY4ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAx
IGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuOC9sZGNvbmZpZy44IGIvbWFuOC9sZGNvbmZpZy44DQo+IGlu
ZGV4IGNlZTBjNzU4My4uMzQ2MDI3NWFkIDEwMDY0NA0KPiAtLS0gYS9tYW44L2xkY29uZmln
LjgNCj4gKysrIGIvbWFuOC9sZGNvbmZpZy44DQo+IEBAIC01LDIyICs1LDMwIEBADQo+ICAg
LlwiDQo+ICAgLlwiIE1vZGlmaWVkLCA2IE1heSAyMDAyLCBNaWNoYWVsIEtlcnJpc2ssIDxt
dGsubWFucGFnZXNAZ21haWwuY29tPg0KPiAgIC5cIiAgIENoYW5nZSBsaXN0ZWQgb3JkZXIg
b2YgL3Vzci9saWIgYW5kIC9saWINCj4gLS5USCBMRENPTkZJRyA4IChkYXRlKSAiTGludXgg
bWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gKy5USCBsZGNvbmZpZyA4IChkYXRlKSAiTGlu
dXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gICAuU0ggTkFNRQ0KPiAgIGxkY29uZmln
IFwtIGNvbmZpZ3VyZSBkeW5hbWljIGxpbmtlciBydW4tdGltZSBiaW5kaW5ncw0KPiAgIC5T
SCBTWU5PUFNJUw0KPiAtLlBEIDANCj4gLS5CUiAvc2Jpbi9sZGNvbmZpZyAiIFsiIFwtbk52
VlggIl0gWyIgXC1DICIgXGZJY2FjaGVcZlBdIFsiIFwtZiAiIFxmSWNvbmZcZlBdIFsiIFwt
ciAiIFxmSXJvb3RcZlBdIg0KPiAtLklSIGRpcmVjdG9yeSAuLi4NCj4gLS5QUA0KPiAtLkIg
L3NiaW4vbGRjb25maWcNCj4gKy5TWSAvc2Jpbi9sZGNvbmZpZw0KPiArLlwiIFRPRE8/OiAt
YywgLS1mb3JtYXQsIC1pLCAtLWlnbm9yZS1hdXgtY2FjaGUsIC0tcHJpbnQtY2FjaGUsDQo+
ICsuXCIgLS12ZXJib3NlLCAtViwgLS12ZXJzaW9uLCAtPywgLS1oZWxwLCAtLXVzYWdlDQo+
ICsuUkIgWyBcLW5OdlZYIF0NCj4gKy5SQiBbIFwtQ1x+XGMNCj4gKy5JUiBjYWNoZSBdDQo+
ICsuUkIgWyBcLWZcflxjDQo+ICsuSVIgY29uZiBdDQo+ICsuUkIgWyBcLXJcflxjDQo+ICsu
SVIgcm9vdCBdDQo+ICsuSVIgZGlyZWN0b3J5IFx+Llx8Llx8Lg0KPiArLllTDQo+ICsuU1kg
L3NiaW4vbGRjb25maWcNCj4gICAuQiBcLWwNCj4gICAuUkIgWyBcLXYgXQ0KPiAtLklSIGxp
YnJhcnkgLi4uDQo+IC0uUFANCj4gLS5CIC9zYmluL2xkY29uZmlnDQo+ICsuSVIgbGlicmFy
eSBcfi5cfC5cfC4NCj4gKy5ZUw0KPiArLlNZIC9zYmluL2xkY29uZmlnDQo+ICAgLkIgXC1w
DQo+IC0uUEQNCj4gKy5ZUw0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAgIC5CIFwlbGRjb25m
aWcNCj4gICBjcmVhdGVzIHRoZSBuZWNlc3NhcnkgbGlua3MgYW5kIGNhY2hlIHRvIHRoZSBt
b3N0IHJlY2VudCBzaGFyZWQNCj4gQEAgLTExMywzNSArMTIxLDQxIEBAIEZhaWx1cmUgdG8g
Zm9sbG93IHRoaXMgcGF0dGVybiBtYXkgcmVzdWx0IGluIGNvbXBhdGliaWxpdHkgaXNzdWVz
DQo+ICAgYWZ0ZXIgYW4gdXBncmFkZS4NCj4gICAuU0ggT1BUSU9OUw0KPiAgIC5UUA0KPiAt
LkJSIFwtYyAiIFxmSWZtdFxmUCwgIiBcLVwtZm9ybWF0PVxmSWZtdFxmUA0KPiArLkJJIFwt
Y1x+IGZtdA0KPiArLlRRDQo+ICsuQkkgXC1cLWZvcm1hdD0gZm10DQo+ICAgKFNpbmNlIGds
aWJjIDIuMikNCj4gICAuXCIgY29tbWl0IDQ1ZWNhNGQxNDFjMDQ3OTUwZGI0OGM2OWM4OTQx
MTYzZDBhNjFmY2QNCj4gLUNhY2hlIGZvcm1hdCB0byB1c2U6DQo+IC0uSVIgb2xkICwNCj4g
LS5JUiBuZXcgLA0KPiArVXNlIGNhY2hlIGZvcm1hdA0KPiArLklSIGZtdCAsDQo+ICt3aGlj
aCBpcyBvbmUgb2YNCj4gKy5CUiBvbGQgLA0KPiArLkJSIG5ldyAsDQo+ICAgb3INCj4gLS5J
UiBcJWNvbXBhdCAuDQo+ICsuQlIgXCVjb21wYXQgLg0KPiAgIFNpbmNlIGdsaWJjIDIuMzIs
DQo+ICAgdGhlIGRlZmF1bHQgaXMNCj4gLS5JUiBuZXcgLg0KPiArLkJSIG5ldyAuDQo+ICAg
LlwiIGNvbW1pdCBjYWQ2NGY3NzhhY2VkODRlZmRhYTA0YWU2NGY4NzM3Yjg2ZjA2M2FiDQo+
ICAgQmVmb3JlIHRoYXQsDQo+ICAgaXQgd2FzDQo+IC0uSVIgXCVjb21wYXQgLg0KPiArLkJS
IFwlY29tcGF0IC4NCj4gICAuVFANCj4gLS5CSSAiXC1DICIgY2FjaGUNCj4gKy5CSSBcLUNc
fiBjYWNoZQ0KPiAgIFVzZQ0KPiAgIC5JIGNhY2hlDQo+ICAgaW5zdGVhZCBvZg0KPiAgIC5J
UiAvZXRjL2xkLnNvLmNhY2hlIC4NCj4gICAuVFANCj4gLS5CSSAiXC1mICIgY29uZg0KPiAr
LkJJIFwtZlx+IGNvbmYNCj4gICBVc2UNCj4gICAuSSBjb25mDQo+ICAgaW5zdGVhZCBvZg0K
PiAgIC5JUiAvZXRjL2xkLnNvLmNvbmYgLg0KPiAgIC5UUA0KPiAtLkJSIFwtaSAiLCAiIFwt
XC1pZ25vcmVcLWF1eFwtY2FjaGUNCj4gKy5CIFwtaQ0KPiArLlRRDQo+ICsuQiBcLVwtaWdu
b3JlXC1hdXhcLWNhY2hlDQo+ICAgKFNpbmNlIGdsaWJjIDIuNykNCj4gICAuXCIgY29tbWl0
IDI3ZDlmZmRhMTdkZjRkMjM4ODY4N2FmZDEyODk3Nzc0ZmRlMzliY2MNCj4gICBJZ25vcmUg
YXV4aWxpYXJ5IGNhY2hlIGZpbGUuDQo+IEBAIC0xNjcsMjMgKzE4MSwyOSBAQCBVbmxlc3MN
Cj4gICBpcyBhbHNvIHNwZWNpZmllZCwNCj4gICBsaW5rcyBhcmUgc3RpbGwgdXBkYXRlZC4N
Cj4gICAuVFANCj4gLS5CUiBcLXAgIiwgIiBcLVwtcHJpbnRcLWNhY2hlDQo+ICsuQiBcLXAN
Cj4gKy5UUQ0KPiArLkIgXC1cLXByaW50XC1jYWNoZQ0KPiAgIFByaW50IHRoZSBsaXN0cyBv
ZiBkaXJlY3RvcmllcyBhbmQgY2FuZGlkYXRlIGxpYnJhcmllcyBzdG9yZWQgaW4NCj4gICB0
aGUgY3VycmVudCBjYWNoZS4NCj4gICAuVFANCj4gLS5CSSAiXC1yICIgcm9vdA0KPiArLkJJ
IFwtclx+IHJvb3QNCj4gICBDaGFuZ2UgdG8gYW5kIHVzZQ0KPiAgIC5JIHJvb3QNCj4gICBh
cyB0aGUgcm9vdCBkaXJlY3RvcnkuDQo+ICAgLlRQDQo+IC0uQlIgXC12ICIsICIgXC1cLXZl
cmJvc2UNCj4gKy5CIFwtdg0KPiArLlRRDQo+ICsuQiBcLVwtdmVyYm9zZQ0KPiAgIFZlcmJv
c2UgbW9kZS4NCj4gICBQcmludCBjdXJyZW50IHZlcnNpb24gbnVtYmVyLA0KPiAgIHRoZSBu
YW1lIG9mIGVhY2ggZGlyZWN0b3J5IGFzIGl0IGlzIHNjYW5uZWQsDQo+ICAgYW5kIGFueSBs
aW5rcyB0aGF0IGFyZSBjcmVhdGVkLg0KPiAgIE92ZXJyaWRlcyBxdWlldCBtb2RlLg0KPiAg
IC5UUA0KPiAtLkJSIFwtViAiLCAiIFwtXC12ZXJzaW9uDQo+ICsuQiBcLVYNCj4gKy5UUQ0K
PiArLkIgXC1cLXZlcnNpb24NCj4gICBQcmludCBwcm9ncmFtIHZlcnNpb24uDQo+ICAgLlRQ
DQo+ICAgLkIgXC1YDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------0cGxl3U0NnxO4z5EX7wWSCpw--

--------------k8Gmu0hdxUFqLH8S5gyq0xhW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3dREACgkQnowa+77/
2zIXahAAnMEyarKMj0Yv7bfFWLpGv6Iydz2CDB+n9tcPK1nAM2NTT2kIuUQzC4ep
YQzbECoyS6cuy/hBGIc6XYom3dtrgb517dtegEcl6abDcGrcdMStRF84A1vwFJ0g
ht2ZFlM1ihZRO9qyTLpKrhnBhPjEDxVFWTiUr14qyZkj9qAqWGqkHF/mUtslj2PK
0s+Hm4qF7DYED07yoEcVj15Awi0SsyIdTh8y4koH2ibv3JLgQuUMTBVvxx3TA1CB
8pnFSSIAG24UQdLYSlQ2H0VSmjqHaL5u3ibGaZ4/l9DL9kF/1zJ7o7+aGEvD9541
iMJvP4/ZUse6HyoVA1TEwMKsrH3NAH9YNusMGRKbZCOEyp6YkO2oq8qaHbtGt5hZ
W/rgykuOI960+TnWG9McDlRxZupYSogWIb4aBW4TBsg1bids4GEb6A04sgSwHmyy
WPk1k617331VhCj/JAMtDC49grxkLRx8F1SdQ+luymJEzE02JbwyRFjYWjpiVUjV
ZyRZl3KdwA3z+GgoH03qb3FXv0ZFt090zG3jx65YRbpFcLU2keOqHyuaFt6psGWH
QplTT/54DqVdrZjwM6knq8r3gSJiRPGBc5z9ZdtU89fMpSo2vNipHKEsEHz/nY/L
bksIf2nxFELohPchTbSHeEF3+VoGUn/DuvjE+Fas6VWqjDtlyQg=
=1Enp
-----END PGP SIGNATURE-----

--------------k8Gmu0hdxUFqLH8S5gyq0xhW--
