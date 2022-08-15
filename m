Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FBA0594E34
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233382AbiHPBt5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 21:49:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233324AbiHPBtR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 21:49:17 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C23C9204E4C
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:43:12 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z16so10446504wrh.12
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=Rmmwn//AaSHDKZmEkrQsr1zgGTAMZ7h6NiIAL769mvM=;
        b=gb7JORHZ6VoPzhWStKsN+1Us88QonWwOguk0OFUsIbsp90IkbWS60otg/TkVEhBVAA
         PuS6NPWwakEHw0a2Wcmt+zq9gZOfMKVWtjtFLkbsWZRjtEnpw/jkA4HIczhSQUk1/Vyl
         OTIN9LmJ0pAcDHVs584Z4lxClbpsGkdnduO/SXrMzHuW50+eGLGm1VYAs+q+qr8BVHtv
         Zt5vSDXnNOQfnhU1h7TbbTgIyYshTsroVUyVKWIm7lqZcf//v/2Ww7zV/YR0DPh1wuJ3
         ETB64LaYRZXe5aKzdIvWuTJi/+FXPu4AzTkZGW0qv2GPGodM0eTcILTnh9zAJKaOy7pZ
         1muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=Rmmwn//AaSHDKZmEkrQsr1zgGTAMZ7h6NiIAL769mvM=;
        b=VKuy3rX3btWnOT6cquVwJQSEkWve0oMU46YWtoSBWsTYZgtnBKYxYd1cPn0wyDsqOX
         +pumrKNS1sc/oVFZZB1Bc22xUtc4YMM1VzU+k473jx6mr0uVW2prVdYldKsbhqYqB3Wj
         +UFVixpTgrpFwBIc6+H+AE4XSF8pTtAOpejQAmeyjO4Yti5m+FdJ3vbjB8JlQWbYeyHR
         whi3GBe7HVJUsKxWAcG7romWTJhwoyUCzmYYnLhmb1uz3d6IE4LDeLXXWJXkPNY1uwch
         fepq9LuEEiHCNQumP9jprg8OWWYC4aHe+6q3OUO5n4E9FZtSt+KKfsOtBKVq1EH6mnRr
         1Ypw==
X-Gm-Message-State: ACgBeo3ICbammcq4HNg3Un+OAmQO2dqoHOpnbzExvqPYsipVOp4rewaI
        zXrOzV+HhSPBLyNw+rHFIAE=
X-Google-Smtp-Source: AA6agR6D/TfMdNOdb6N3aQ5rAf6pj1KPjQvr0/xokxuimK0dpjeH3LyetFZUumIQALMTGqfRIlNmEA==
X-Received: by 2002:adf:f10d:0:b0:220:7e4f:ceb6 with SMTP id r13-20020adff10d000000b002207e4fceb6mr9911867wro.316.1660599790755;
        Mon, 15 Aug 2022 14:43:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c3-20020adffb43000000b00222d512d96asm8408634wrs.75.2022.08.15.14.43.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:43:10 -0700 (PDT)
Message-ID: <00af894a-5786-5f2a-18b3-1b8b090bdc78@gmail.com>
Date:   Mon, 15 Aug 2022 23:43:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] cgroups.7: Document memory_recursiveprot mount option
Content-Language: en-US
To:     Brett Holman <bholman.devel@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, hannes@cmpxchg.org
References: <20220808212250.6cnl3zjabvyyc52r@isa>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220808212250.6cnl3zjabvyyc52r@isa>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CLXS8nEaYOEq0Uq2FFACTtw3"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CLXS8nEaYOEq0Uq2FFACTtw3
Content-Type: multipart/mixed; boundary="------------PM4oMt0ytu2gXoXVasgiMTqK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brett Holman <bholman.devel@gmail.com>, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, hannes@cmpxchg.org
Message-ID: <00af894a-5786-5f2a-18b3-1b8b090bdc78@gmail.com>
Subject: Re: [PATCH] cgroups.7: Document memory_recursiveprot mount option
References: <20220808212250.6cnl3zjabvyyc52r@isa>
In-Reply-To: <20220808212250.6cnl3zjabvyyc52r@isa>

--------------PM4oMt0ytu2gXoXVasgiMTqK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJldHQsDQoNCk9uIDgvOC8yMiAyMzoyMiwgQnJldHQgSG9sbWFuIHdyb3RlOg0KPiBT
aWduZWQtb2ZmLWJ5OiBCcmV0dCBIb2xtYW4gPGJob2xtYW4uZGV2ZWxAZ21haWwuY29tPg0K
PiAtLS0NCg0KUGF0Y2ggYXBwbGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gDQo+IEFk
ZGVkIGluIDhhOTMxZjgwMTM0MGMyYmUxMDUgYnkgSm9oYW5uZXMgV2VpbmVyIGFuZCBkb2N1
bWVudGVkIGluDQo+IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvY2dyb3VwLXYyLnJzdCwg
dGhpcyBtb3VudCBvcHRpb24gaXMNCj4gbWlzc2luZyBmcm9tIHRoZSBtb3VudCBvcHRpb24g
bGlzdCBpbiBjZ3JvdXBzLjcuDQo+IA0KPiAgIG1hbjcvY2dyb3Vwcy43IHwgNiArKysrKysN
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvbWFuNy9jZ3JvdXBzLjcgYi9tYW43L2Nncm91cHMuNw0KPiBpbmRleCAyNDk2YzA2YzEu
LjdiNWE1NDM2MCAxMDA2NDQNCj4gLS0tIGEvbWFuNy9jZ3JvdXBzLjcNCj4gKysrIGIvbWFu
Ny9jZ3JvdXBzLjcNCj4gQEAgLTE4ODgsNiArMTg4OCwxMiBAQCBtb3VudCBvcHRpb24uDQo+
ICAgVGhlIGtlcm5lbCBzdXBwb3J0cyB0aGUNCj4gICAuSSBuc2RlbGVnYXRlDQo+ICAgbW91
bnQgb3B0aW9uLg0KPiArLlRQDQo+ICsuSVIgbWVtb3J5X3JlY3Vyc2l2ZXByb3QgIiAoc2lu
Y2UgTGludXggNS43KSINCj4gKy5cIiBjb21taXQgOGE5MzFmODAxMzQwYzJiZTEwNTUyYzdi
NTYyMmQ1ZjQ4NTJmM2EzNg0KPiArVGhlIGtlcm5lbCBzdXBwb3J0cyB0aGUNCj4gKy5JIG1l
bW9yeV9yZWN1cnNpdmVwcm90DQo+ICttb3VudCBvcHRpb24uDQo+ICAgLlJFDQo+ICAgLlNI
IFNFRSBBTFNPDQo+ICAgLkJSIHBybGltaXQgKDEpLA0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------PM4oMt0ytu2gXoXVasgiMTqK--

--------------CLXS8nEaYOEq0Uq2FFACTtw3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6ve0ACgkQnowa+77/
2zJ2uBAAqWG6Mms47jRAzkMplw1069RXVBTm8DkZkzrOqBN+sY7IqomwkuNYWRbO
Kz5k9lOJbGvZtuHRz9lJsqnZMeVrRyt9Li75KtUy8LYTz6G1T+M1MEmJztXkgqIG
oBcYI3gwPinM4fAdY67QsHg1ATR5N34Ohh4UX6zGQPtKXXvVt8HhVK4b+8sRyaoS
cA3XlV0CWnMQ9MBj2TiE/Crya/RmRv0Z5es4CQWF1z85BphuNzrnqrx4zPrdQLDm
J9LteHG0yq8ixnoVbcA+eLFKnmsw7LNx+aR3AsIYd1+1mXHJFLbli0udEX4JH9EZ
uiMBFKpR7QEIPekdrIE6P6gvwcPoJcviKI+VLZGoWmshwoB9550PaCiz9OrEGSql
P6miwxz0H2S4IfuNMTquGbdpHr7WdnJctB3YEME3bgIvS9n+zPSwxod8lLp7nprq
9LBuRABPdTkfk81Ez4PwnYUm++TrGiFru9biFe87aUZBUPyarYljylOj9e1s9cSP
WLaNS7KSiiFIwbowwG+m7o/2fo6YTWQzaF9WHoiL7/2cq3HhT6yxJkmY+Zikqn6+
fq3w7iS2gUj8Ek3XQaHNbb7mf8mg25tioUizBtJDBowrVANT/alBEJgyQ4S6brG9
GobfaanXqgxQTDFBRJ0c4LztCtKDmD1J856dLmhuQh/if5pX94w=
=fiKa
-----END PGP SIGNATURE-----

--------------CLXS8nEaYOEq0Uq2FFACTtw3--
