Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85B03546869
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 16:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344318AbiFJOfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 10:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349508AbiFJOef (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 10:34:35 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3649113C4FF
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:34:30 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c21so3692833wrb.1
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=1qVmiI/sVOQm5Cblk9a94hc/nd7Dwuw7ti7CY3XfDSA=;
        b=hWytBfiy/mSiWPwmE/2KR1Tda5Wfj3w2C5KUmrJRVz23G+wabwyH0udhEfxZ07vnMu
         /2qUwpN1B+8OkkWleEqxFEc+JqLIgtUyjCt1/50QlZy06MQWXTclFU7SJX0ssIcNhb05
         gejxGBGwMO6NkQ6srA4Gfjr9kr/qg9TiZXxnrJ290yrfH2JBDxAKW0tiDzCFMdp/ulZT
         /9CfVq8SrNsHOqxupLWUc5RF3o68k0TTsOAoCvcQwaiVJsRhBTpdxkYRlm4bXt0MlQK6
         1N+Kl92TpLO+GJTl02nFR1VSl7XgNPDMuIbMux/4fMpP+oLOs1T7I/Ln4clVAgT0KRU5
         TmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=1qVmiI/sVOQm5Cblk9a94hc/nd7Dwuw7ti7CY3XfDSA=;
        b=2LlSb9R+D3+d80S/PuXjUCHN8ahU7mJ3Y84u5pM9kKO7Qg/dG4BCqA/emFvXh6Ez7x
         0wHHvZvW6TH3yKEtUFSrawy+NxHYHGUDZ7bMfUitc75spQk8MIl+cCkW3txlmCoXLGjV
         O3DQiU06F587o/Q9keBOlE1rstbKWHwyNuNvfvZOPye93Dx465bPmneUU6EOXhyuCdGx
         9SVt1gut7yATDbqsAYfmil1dxm99WwF52VqpKByAEi1HDua5Q4PRT0o4fhvEAgIYHzVQ
         OTGXcdOoZ0A3kepzZ4HfhdMJu+BGhiZP5mRKS8NS3BZnDYVe+TEHKpSOL0sDxLIfMrvP
         CAzA==
X-Gm-Message-State: AOAM533GyNWVCvvm7vvF0UI7hHDLQndlp/7g0SZDJdcoCk6TijCjB1lb
        ZpXWgP0viwEjOmK9MBXkKo0=
X-Google-Smtp-Source: ABdhPJywKYtzpjPSIhwBPDHFTjjqnfNrLMtBOyGeax2XT18++NUWD8Iu9zkC6Mk4bd9a0aCEeHzQXQ==
X-Received: by 2002:adf:fe52:0:b0:210:12ab:76e6 with SMTP id m18-20020adffe52000000b0021012ab76e6mr44757286wrs.120.1654871668619;
        Fri, 10 Jun 2022 07:34:28 -0700 (PDT)
Received: from [192.168.42.187] ([77.107.214.69])
        by smtp.gmail.com with ESMTPSA id 24-20020a05600c22d800b003973435c517sm3195979wmg.0.2022.06.10.07.34.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 07:34:27 -0700 (PDT)
Message-ID: <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
Date:   Fri, 10 Jun 2022 16:37:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <20220610122111.2k5jkzgo2k5odpbf@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220610122111.2k5jkzgo2k5odpbf@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0g1MW7uPV7Rgw1QyJE3hF1Zh"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0g1MW7uPV7Rgw1QyJE3hF1Zh
Content-Type: multipart/mixed; boundary="------------FHXNqedYS9WV78bvlaGCdFa9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
Message-ID: <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <20220610122111.2k5jkzgo2k5odpbf@illithid>
In-Reply-To: <20220610122111.2k5jkzgo2k5odpbf@illithid>

--------------FHXNqedYS9WV78bvlaGCdFa9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gNi8xMC8yMiAxNDoyMSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gQXQgMjAyMi0wNi0xMFQxMjo1MTo0MSswMjAwLCBBbGVqYW5kcm8gQ29sb21h
ciB3cm90ZToNCj4+ICthbHNvIGNvbnRhaW5zIGFuIGludGVyZXN0aW5nIHNlY3Rpb24gb24g
IkhpbnRzIGZvciBQcmVwYXJpbmcgRG9jdW1lbnRzIi4NCj4gDQo+IEkgd291bGQgdXNlIHJl
YWwgKHR5cG9ncmFwaGVyJ3MpIHF1b3RhdGlvbiBtYXJrcyB0byBjaXRlIHRoZSBzZWN0aW9u
DQo+IHRpdGxlLCBhbmQgc2luY2UgeW91IGFyZSBkb2luZyBzbywgdGhhdCdzIHdoYXQgdGhl
IHNlY3Rpb24gX2lzXyBldmVuDQo+IG1vcmUgdGhhbiB3aGF0IGl0J3MgX29uXy4NCj4gDQo+
IFRodXMsDQo+IA0KPiBhbHNvIGNvbnRhaW5zIGFuIGludGVyZXN0aW5nIHNlY3Rpb24sDQo+
IFxbbHFdSGludHMgZm9yIFByZXBhcmluZyBEb2N1bWVudHNcW3JxXS4NCj4gDQo+IEkgd291
bGQgYWxzbyBmaW5kIGEgbW9yZSBzcGVjaWZpYyBhZGplY3RpdmUgdGhhbg0KPiAiaW50ZXJl
c3RpbmciLS0iaGVscGZ1bCIsICJub3Rld29ydGh5IiwgImV4ZW1wbGFyeSIgYXJlIGFsbA0K
PiBwb3NzaWJpbGl0aWVzLg0KDQpTdXJlISBUaGFua3MuDQoNCkJUVywgaXMgdGhlIFsybmQg
ZWQuLCBCV0tdIHRoaW5neSBjb3JyZWN0PyAgSSBkaWQgaXQgZnJvbSBtZW1vcnkuDQoNCkNo
ZWVycywNCg0KQWxleA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoNCg0KLS0gDQpB
bGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBhZ2VzIGNvbWFpbnRhaW5lcjsgaHR0cDov
L3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvDQpodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLw0K

--------------FHXNqedYS9WV78bvlaGCdFa9--

--------------0g1MW7uPV7Rgw1QyJE3hF1Zh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKjVx4ACgkQnowa+77/
2zJAdhAAg1cVx6Pu7MnY6vNmSRMg5vkRlFdncXNRW/YPMQRgIMOnY0vDXg06ZgtL
Vv2NIceaVKgKm4/U1/xEDaJY7G2VblIBnUSjOJaMVx99DD1nxrwjmoB44331qRzs
X+DIIHiE/SvrpwXy2UYv5+PWkwUhc7UFSVvl8l46QBYzykhx6ZHXnx0jxbLQRg6x
ipSxhhRCIVlDcIIElowoVW9lnlpJ6CX+E8GsPyfMgG72LMJl9ho6o1tsAMIUOkat
AWZvpfigURhrR+TrUa/dYKr2pwntvJdszHgwVIRHGXNzz41/bWz8SGKtmA3ik2gx
mv7pndZmEs6Fs4lX5+dLMDhcIUgoutx697PzIyNT3pT3xFBjvG42N9m5PMuWmzbD
T2ItKqptn0W/spsM25dr+vgo26q9G3Q6pXNHxmoOAE9LwcExri17/UJ/H/Ew6M4e
9u/1lX03EPkoBinXT6abtzluaK4Jy1HY9C60vaQFOHd8b5TuxvJXZEcnQlIxw0Nv
EQJ0+1vSOXZ4MyxQc5BbXW46fKmRvsa2kY/STgWQwonz8lj7XeZa9VQDcD5tYotC
2Yxfq+LVG8FOQc8xnRaEvIymqWt3eYOBXcRj45i2a9MTELX+qa3kwdpaHaxOvgML
wjW1rT9RJwn1kEAOe1zqRrj9UZhqdzv8NVIB0IEF4Jr5iROgv4E=
=L61D
-----END PGP SIGNATURE-----

--------------0g1MW7uPV7Rgw1QyJE3hF1Zh--
