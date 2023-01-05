Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A70765F7EA
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:53:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235778AbjAEXxQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:53:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235882AbjAEXxP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:53:15 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DACD1B9C2
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:53:14 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id s9so5638120wru.13
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYGr7EY+7kgiAZVHzFVy3iatyCiZPEio3ED63D0dMfQ=;
        b=IDMY2hyimFvh+Ns+MDJE22UT+47UGGqXi+cO2+o8S4pZu0iU0ktBPmX8dl96UqLpkh
         MqxqB2od2ZQIgW1zLA4lu+NQmqBNyAkcdCLu7/bucxYNeVQFDwQulQu51oOxwJ2pFay6
         s32/kStxYt7kqogDuzOcU8+57JfYbnnPrh7njQf9bTm5BtmYWu8Bbczqv232EDKZXu2m
         OwiQJHEsI9jJJGIqS+01AbExAMuxQcN9NOfBA+rilCND87aq561QZYHlfDjd80LeVxa9
         RDqVk7uUACb+/RBMtW+VJOyaANk7BhRitLjZ3CgWttD0t9nH/wYC56v0fAbWnyPlEgZR
         k1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GYGr7EY+7kgiAZVHzFVy3iatyCiZPEio3ED63D0dMfQ=;
        b=bYEBDbstuWfcPkiGungz5VwEdRXVOQjiStQoQIsYGopZLfKUfSNU6UbNK2StxqXgnD
         5PlkM4EHmLUvU9S5f/2tuTekFgfLLYr4eSv0txv1tbK3CrFN8VIqHoGs84ge94dARlVR
         yMpg8L+3YFjoBEnUCx3q02+TLb77JWeCJHzFQiSSV5x3h3D9Y65xhhbp+B0LcbRKsBl9
         O3rSvgvwNpLXmF+C1n1vzcSNAEtKlMCdU2YMcSZIjiHLQM2i+ZzUBeEoAVzVSF0+GzXB
         8SpTgHHhda7EWB0AkTVVM+qjfEiL0KaAGLDbZUKhJnkoRYV6xRsjLbBe6oSwFt/Xv7Vj
         Pk+Q==
X-Gm-Message-State: AFqh2ko+NPMAjKG1L9k6qmpW8+6N67b66uilbANT+4Npr2M/XWJ432BE
        3EZynt7MfwyjlFpGTpWbv00=
X-Google-Smtp-Source: AMrXdXvg+ouVwr7oRwlQUm7+xtJFTvQqaGIu/CM2/WQGoVlZWAXtGZvyTmPPzZjt7vP+il8cgosICQ==
X-Received: by 2002:adf:f54a:0:b0:242:73d5:d8cf with SMTP id j10-20020adff54a000000b0024273d5d8cfmr33071014wrp.32.1672962792713;
        Thu, 05 Jan 2023 15:53:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i18-20020a5d5232000000b0028e55b44a99sm19717767wra.17.2023.01.05.15.53.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:53:12 -0800 (PST)
Message-ID: <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
Date:   Fri, 6 Jan 2023 00:53:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225303.bpo7ot4zcsthw2gv@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gTZNGHGSs0xOJAKFGEVkKXhS"
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
--------------gTZNGHGSs0xOJAKFGEVkKXhS
Content-Type: multipart/mixed; boundary="------------hZ87FOQTQZUdqZ500vErlFMz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
Subject: Re: [PATCH v3 07/13] libc.7: ffix
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
In-Reply-To: <20230105225303.bpo7ot4zcsthw2gv@illithid>

--------------hZ87FOQTQZUdqZ500vErlFMz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUzLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFNldCBwYWdlIHRvcGljIGluIGxvd2VyY2FzZS4NCj4gKiBVc2UgdHlwb2dy
YXBoZXIncyBxdW90YXRpb24gbWFya3MgaW5zdGVhZCBvZiAnIicgZm9yIHF1b3RhdGlvbi4N
Cg0KSXNuJ3QgaXQgZXF1aXZhbGVudCBpbiBydW5uaW5nIHRleHQ/ICAnIicgaXMgc2ltcGxl
ciB0byB0eXBlLg0KDQo+ICogSHlwZXJsaW5rIHRoZSB0ZXh0ICJHTlUgQyBMaWJyYXJ5IiB0
byBpdHMgd2Vic2l0ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEcuIEJyYW5kZW4gUm9iaW5z
b24gPGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQoNCkNoZWVycywNCg0KQWxleA0K
DQo+IC0tLQ0KPiAgIG1hbjcvbGliYy43IHwgMTMgKysrKysrKy0tLS0tLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWFuNy9saWJjLjcgYi9tYW43L2xpYmMuNw0KPiBpbmRleCA1ZGViYTBhOGUu
LjQzZWMwMjY5ZiAxMDA2NDQNCj4gLS0tIGEvbWFuNy9saWJjLjcNCj4gKysrIGIvbWFuNy9s
aWJjLjcNCj4gQEAgLTMsMjEgKzMsMjIgQEANCj4gICAuXCINCj4gICAuXCIgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IExpbnV4LW1hbi1wYWdlcy1jb3B5bGVmdA0KPiAgIC5cIg0KPiAt
LlRIIExJQkMgNyAoZGF0ZSkgIkxpbnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiDQo+ICsu
VEggbGliYyA3IChkYXRlKSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gICAu
U0ggTkFNRQ0KPiAgIGxpYmMgXC0gb3ZlcnZpZXcgb2Ygc3RhbmRhcmQgQyBsaWJyYXJpZXMg
b24gTGludXgNCj4gICAuU0ggREVTQ1JJUFRJT04NCj4gLVRoZSB0ZXJtICJsaWJjIiBpcyBj
b21tb25seSB1c2VkIGFzIGEgc2hvcnRoYW5kIGZvcg0KPiAtdGhlICJzdGFuZGFyZCBDIGxp
YnJhcnkiLA0KPiArVGhlIHRlcm0gXChscWxpYmNcKHJxIGlzIGNvbW1vbmx5IHVzZWQgYXMg
YSBzaG9ydGhhbmQgZm9yDQo+ICt0aGUgXChscXN0YW5kYXJkIEMgbGlicmFyeVwocnENCj4g
ICBhIGxpYnJhcnkgb2Ygc3RhbmRhcmQgZnVuY3Rpb25zIHRoYXQgY2FuIGJlIHVzZWQgYnkg
YWxsIEMgcHJvZ3JhbXMNCj4gICAoYW5kIHNvbWV0aW1lcyBieSBwcm9ncmFtcyBpbiBvdGhl
ciBsYW5ndWFnZXMpLg0KPiAgIEJlY2F1c2Ugb2Ygc29tZSBoaXN0b3J5DQo+ICAgKHNlZSBi
ZWxvdyksDQo+IC11c2Ugb2YgdGhlIHRlcm0gImxpYmMiDQo+ICt1c2Ugb2YgdGhlIHRlcm0g
XChscWxpYmNcKHJxDQo+ICAgdG8gcmVmZXIgdG8gdGhlIHN0YW5kYXJkIEMgbGlicmFyeSBp
cyBzb21ld2hhdCBhbWJpZ3VvdXMgb24gTGludXguDQo+ICAgLlNTIGdsaWJjDQo+IC1CeSBm
YXIgdGhlIG1vc3Qgd2lkZWx5IHVzZWQgQyBsaWJyYXJ5IG9uIExpbnV4IGlzIHRoZSBHTlUg
QyBMaWJyYXJ5DQo+ICtCeSBmYXIgdGhlIG1vc3Qgd2lkZWx5IHVzZWQgQyBsaWJyYXJ5IG9u
IExpbnV4IGlzIHRoZQ0KPiAgIC5VUiBodHRwOi8vd3d3LmdudS5vcmdcOi9zb2Z0d2FyZVw6
L2xpYmMvDQo+ICtHTlUgQyBMaWJyYXJ5DQo+ICAgLlVFICwNCj4gICBvZnRlbiByZWZlcnJl
ZCB0byBhcw0KPiAgIC5JUiBnbGliYyAuDQo+IEBAIC01MCw3ICs1MSw3IEBAIHRoZXJlIHdh
cyBmb3IgYSB3aGlsZQ0KPiAgIGEgZm9yayBvZiBnbGliYyAxLnggY3JlYXRlZCBieSBMaW51
eCBkZXZlbG9wZXJzIHdobyBmZWx0IHRoYXQgZ2xpYmMNCj4gICBkZXZlbG9wbWVudCBhdCB0
aGUgdGltZSB3YXMgbm90IHN1ZmZpY2luZyBmb3IgdGhlIG5lZWRzIG9mIExpbnV4Lg0KPiAg
IE9mdGVuLA0KPiAtdGhpcyBsaWJyYXJ5IHdhcyByZWZlcnJlZCB0byAoYW1iaWd1b3VzbHkp
IGFzIGp1c3QgImxpYmMiLg0KPiArdGhpcyBsaWJyYXJ5IHdhcyByZWZlcnJlZCB0byAoYW1i
aWd1b3VzbHkpIGFzIGp1c3QgXChscWxpYmNcKHJxLg0KPiAgIExpbnV4IGxpYmMgcmVsZWFz
ZWQgbWFqb3IgdmVyc2lvbnMgMiwgMywgNCwgYW5kIDUsDQo+ICAgYXMgd2VsbCBhcyBtYW55
IG1pbm9yIHZlcnNpb25zIG9mIHRob3NlIHJlbGVhc2VzLg0KPiAgIExpbnV4IGxpYmM0IHdh
cyB0aGUgbGFzdCB2ZXJzaW9uIHRvIHVzZSB0aGUgYS5vdXQgYmluYXJ5IGZvcm1hdCwNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------hZ87FOQTQZUdqZ500vErlFMz--

--------------gTZNGHGSs0xOJAKFGEVkKXhS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3YucACgkQnowa+77/
2zIUbBAAqkjgguBPgjliTeBrF/rmsKSDf4Sih/a4yNc8c4FZerJusfbZkIOAj0XE
NHnAq2Jda+Se45zVMxI/FDuVLrm4N2FIXKb+8gXo5M0M+oiRaA2maK2Z3IjZjv2g
YIU4mulEqj1TjFJOjT6fSekIQ2KFsVXVdnUZXRjMUZ4OW3jgd3Hl/qij+RgkVH3r
SVeUludSB6fMZPwK/T9OzBemDxhls7ez3nuMBRJAswIhEb/J7IyjPJUpmWCS/sh/
JzhT1oRhvbBwfH3I05IHvoWKiNvaNq3QJgenCtk552ACfh5TN3VNRxhwQxZzVJ0Z
u/rpE8CWgbw4V3Jhf3KIbnQy3wz918EwiX0ZppNeE59rnoIOpjMkHmQW1KonJPES
PnqveSUiR7BSqKdZlsHXO8xd62/Y+70lE0JpGmLEJ63bW1ocyCfd22go52DL7F0M
cp0BXi4JG1i45ui1UJtoeLlZa97ItN5DicbiOCErt46p/+vWmmXLyRR9DEXIrSWp
a+SwnVNQy+RvJxPyriCmrOdB6F0lwqp0aRv/Pj8j1Yh0GKbvxij1UbmuQcfZGIFL
0JMhTYetEv1YCKbSoot/5ZHCpcbfEkJ1ujK8JO5ps+Y9/mhlm36LcVlWR7K4v5le
yBmodS7FvegLFNZPiSFEmzGQw/+ZKhxxtUhsxR7u08riiyWZa4E=
=I8ux
-----END PGP SIGNATURE-----

--------------gTZNGHGSs0xOJAKFGEVkKXhS--
