Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 889DA53E873
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 19:08:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239377AbiFFOJW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 10:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238043AbiFFOJU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 10:09:20 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6511EC56
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 07:09:18 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id d14so11029241wra.10
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 07:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=d6kB3yak6JpRbPlu1xw8VEVs+w5VZlZc+Eq+r10txCc=;
        b=RSx0LO6yYF93n6xjv+sWhTt0GMrE569GWqtNcYR9T36oHjn4GgHduFKjUhMLdYRbuT
         KYyrjYielLQxoYW5fPzsVGXsQSrUmt1Sw+Fb+mbBMILhW+sgcljTSteD5PORFLkmqtFL
         fwZ/afukJZEavxrSBXiSVYfRX1A56wM/r7/3dBDvSVIkF/fE789dXhWMI4+8fn0bbTul
         SvOeNCZehCFEPt7ak7YU5zkG9if5H1AEE9cJVSKms6Eq9YcKNXyOvCUxddfnheGmKfpz
         6F++vRWYfgyOqzeLFe/RiVl4jzcc77UgaGDd/pMr2UpuI33mcb4o3bQq1eOcnF8ifIX3
         RDBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=d6kB3yak6JpRbPlu1xw8VEVs+w5VZlZc+Eq+r10txCc=;
        b=fpGYLQF7WZfHgWwVGHtV6zR7UWAv4QDmrEOlaLunBUQLu3xZHSjLX1IBDtjvFKW5TM
         YiGzx+YdVC/Ip9WrS9By+jy3F3knkPb5uCYuaruyyU2fpUw+wFueVfPhhs7AEfgpCy2v
         NDSnGIkJquiaGLpI7VeUhFZv78Ovt3M03stO2vC6hIyUbaRiNKGUM6RwyvYHZ4C7i/OP
         c7wwvbx0i3vkmFPKOwUnTyfxhB5TKiEKNjFuH0aHCUHLwBIfQxePui+zdLeG5vUJ1kkr
         9nq/BuhstPVIzwxWHQhAyvNhiVQVQVnmstpyqyAlEpZjtm4+++0AQJtUv2lQqwLS2HHN
         eypQ==
X-Gm-Message-State: AOAM53208tK64HGT7QqTSlXA/NY/In+WbgVJEJVK+POm4uLCVsSwKQhL
        ehRuUu2krhXk3QdSDuZVQ5fcXPGWsY8=
X-Google-Smtp-Source: ABdhPJxEQ/8o2YH2QP0J8JSvCN/C3xX2PNb6kp+lNzio/l7HUMzYJhK8qpxQulIr6m2+ARnvQfuSQg==
X-Received: by 2002:a5d:4532:0:b0:210:2c52:bac2 with SMTP id j18-20020a5d4532000000b002102c52bac2mr20962156wra.711.1654524556907;
        Mon, 06 Jun 2022 07:09:16 -0700 (PDT)
Received: from [192.168.42.187] ([37.29.202.199])
        by smtp.gmail.com with ESMTPSA id f5-20020a5d5685000000b0020fc3e24041sm15242445wrv.106.2022.06.06.07.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 07:09:16 -0700 (PDT)
Message-ID: <303d6c6a-1902-de0e-0a96-508b2a41ab79@gmail.com>
Date:   Mon, 6 Jun 2022 16:11:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2] poll.2: Set fd to its bitwise complement to ignore
Content-Language: en-US
To:     David Ward <david.ward@gatech.edu>
Cc:     Michael Welsh Duggan <mwd@cert.org>,
        Nadav Har'El <nyh@math.technion.ac.il>,
        linux-man@vger.kernel.org
References: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
 <20220606033139.3826032-1-david.ward@gatech.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220606033139.3826032-1-david.ward@gatech.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K5a6tLYRLqW9CDsOLGQr2Jpj"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------K5a6tLYRLqW9CDsOLGQr2Jpj
Content-Type: multipart/mixed; boundary="------------9xp6CMxouyppttXxqaoLkDiS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Ward <david.ward@gatech.edu>
Cc: Michael Welsh Duggan <mwd@cert.org>,
 Nadav Har'El <nyh@math.technion.ac.il>, linux-man@vger.kernel.org
Message-ID: <303d6c6a-1902-de0e-0a96-508b2a41ab79@gmail.com>
Subject: Re: [PATCH v2] poll.2: Set fd to its bitwise complement to ignore
References: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
 <20220606033139.3826032-1-david.ward@gatech.edu>
In-Reply-To: <20220606033139.3826032-1-david.ward@gatech.edu>

--------------9xp6CMxouyppttXxqaoLkDiS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNCk9uIDYvNi8yMiAwNTozMSwgRGF2aWQgV2FyZCB3cm90ZToNCj4gQSB2
YWxpZCBmaWxlIGRlc2NyaXB0b3Igd2lsbCBiZSBub24tbmVnYXRpdmUsIGkuZS4sIDAgPD0g
ZmQgPD0gSU5UX01BWC4NCj4gV2hlbiBhbGwgb2YgdGhlIGJpdHMgb2YgYSB2YWxpZCBmaWxl
IGRlc2NyaXB0b3IgYXJlIGZsaXBwZWQsIHRoZSByZXN1bHQNCj4gaXMgYSBuZWdhdGl2ZSB2
YWx1ZTogfjAgPSAtMSwgfjEgPSAtMiwgLi4uLCB+SU5UX01BWCA9IElOVF9NSU4uIElmIGFs
bA0KPiBvZiB0aGVzZSBiaXRzIGFyZSBmbGlwcGVkIGFnYWluLCB0aGVuIHRoZSBmaWxlIGRl
c2NyaXB0b3IgaXMgcmVjb3ZlcmVkLg0KPiANCj4gTmVnYXRpbmcgdGhlIGZpbGUgZGVzY3Jp
cHRvciBkb2VzIG5vdCBxdWl0ZSBhY2hpZXZlIHRoaXMsIGJlY2F1c2UgdGhlcmUNCj4gd2ls
bCBiZSBubyBjaGFuZ2UgZm9yIGZkIDAuIChMaWtld2lzZSwgbmVnYXRpbmcgSU5UX01JTiB3
b3VsZCBub3QgY2F1c2UNCj4gYW55IGNoYW5nZSBpbiB2YWx1ZSwgYnV0IGl0IGlzIG5ldmVy
IGEgdmFsaWQgZmlsZSBkZXNjcmlwdG9yLikNCj4gDQo+IExpbms6IGh0dHBzOi8vYnVnemls
bGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9Nzk0MTENCj4gU2lnbmVkLW9mZi1ieTog
RGF2aWQgV2FyZCA8ZGF2aWQud2FyZEBnYXRlY2guZWR1Pg0KDQpOb3cgaXQgbWFrZXMgYSBs
b3Qgb2Ygc2Vuc2UgOikNClBhdGNoIGFwcGxpZWQuDQoNCkNoZWVycywNCg0KQWxleA0KDQoN
Cj4gLS0tDQo+ICAgbWFuMi9wb2xsLjIgfCA1ICsrLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9t
YW4yL3BvbGwuMiBiL21hbjIvcG9sbC4yDQo+IGluZGV4IDIwNTQ2OGYzZS4uY2Q2NWJjNmU4
IDEwMDY0NA0KPiAtLS0gYS9tYW4yL3BvbGwuMg0KPiArKysgYi9tYW4yL3BvbGwuMg0KPiBA
QCAtODMsMTAgKzgzLDkgQEAgZmllbGQgcmV0dXJucyB6ZXJvLg0KPiAgIChUaGlzIHByb3Zp
ZGVzIGFuIGVhc3kgd2F5IG9mIGlnbm9yaW5nIGENCj4gICBmaWxlIGRlc2NyaXB0b3IgZm9y
IGEgc2luZ2xlDQo+ICAgLkJSIHBvbGwgKCkNCj4gLWNhbGw6IHNpbXBseSBuZWdhdGUgdGhl
DQo+ICtjYWxsOiBzaW1wbHkgc2V0IHRoZQ0KPiAgIC5JIGZkDQo+IC1maWVsZC4NCj4gLU5v
dGUsIGhvd2V2ZXIsIHRoYXQgdGhpcyB0ZWNobmlxdWUgY2FuJ3QgYmUgdXNlZCB0byBpZ25v
cmUgZmlsZSBkZXNjcmlwdG9yIDAuKQ0KPiArZmllbGQgdG8gaXRzIGJpdHdpc2UgY29tcGxl
bWVudC4pDQo+ICAgLlBQDQo+ICAgVGhlIGZpZWxkDQo+ICAgLkkgZXZlbnRzDQoNCg0KLS0g
DQpBbGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBhZ2VzIGNvbWFpbnRhaW5lcjsgaHR0
cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvDQpodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLw0K

--------------9xp6CMxouyppttXxqaoLkDiS--

--------------K5a6tLYRLqW9CDsOLGQr2Jpj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKeCywACgkQnowa+77/
2zKchA//fcVDb2vUVNtGebWy7YBlvoVy+5nlL7Vnl6SQws4bMehLNZlqVHqMeqTa
oZBPICF6DMC2s/Zyw2BE7dEdvhsbh9ph3pCb8Vhi7/Rn9//0RjntGtvWDKvHRQJh
IPkSr4aPzpd5hCPjeA8q42BV/RP9pWeuum+WLR8Wkq5Mh4BWfuVGB2mmXJASm73Y
/wLn6RhCKjtY9fqnsVVCJudcddc1H+NPbnwMLpfk7dpHG0q6YTyQE9Auu74NJEuy
j2rUBhZCNtB5afUB9dqtcrpyjL70aDW+cJRwPOdHxHof5t761J9YL5au+EwfUnou
c8JtCzdP/sX6XuOhSlFC4w506UoYaoEfDk6MPuA2XCGUNzUHHBsBOSmVndB4CfFv
1Zk1tXbBqzVOyJgET0+ICmmSdJjJO+bAa1Iy7IjoHBP7wHJUd7/dbqP2BDtyInwH
VdeWqDtqp1ZknkQkLoEZs5C1WEVUPm+dg+bI3nf2Jl5m+9locQARRlYDb5MPfqbw
yvFYc2wxFqqnQuevt/OXfBeISVhG7ouS8LWUNSEe2RD+OWbYZLwjBnuZmWTrweOr
tUcPUye2X8ynJnG/3ps3Po3iZek9fns3Orha60xG26ThvVn+gP5S7jjNmMU+38lK
2jROsNvYr5/Edm3DyJ2yU1pu2ETc3IiSLGUGDh2qEv+Zj9R4dVE=
=wcUX
-----END PGP SIGNATURE-----

--------------K5a6tLYRLqW9CDsOLGQr2Jpj--
