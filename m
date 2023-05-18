Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73FB7707C5E
	for <lists+linux-man@lfdr.de>; Thu, 18 May 2023 10:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjERIyC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 04:54:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbjERIyB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 04:54:01 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6025F1994
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 01:53:58 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-30949241c65so367334f8f.1
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 01:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684400037; x=1686992037;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ro9ZQP+ijd60wjPiDo5k767NSVtaXGnDK7Hx1Y86H3A=;
        b=noqI2t2hdtbUw6y4Xrtcolf6o1YDXL8ejhTYNi4+vV4HzkcGED2b3hS3FUa6YMrPrE
         zppPryq1mInZcfYnSghHq0CoHD2TJrR9dpYXlJrzSgQ+dH8dBRWYQ4jvEHDB/qdW+WBz
         uUhDiKJMC+5axWBnhTRjzjwzB9NxaYKSB/JOkE7Q0fLjz6LYMCYvtJvzCg+RYh4amEsh
         2EMHHO+LckYknVDRVfQRzaG4jfE9AdBf3f6Byq/DREh5c4PzlahXsIOUawt4sDRdExoM
         UA7O0nFDhOeKT8ieTG9vVqZyX0TvS0iexwrTX2zy+gYeOg3RZn5ivNltIgNkMxwzIYDr
         JbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684400037; x=1686992037;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ro9ZQP+ijd60wjPiDo5k767NSVtaXGnDK7Hx1Y86H3A=;
        b=EqoUM3CyEurCyFdFglsmaoc9Galc1p9AID9kyBiEns0U2Dg/wu+QiA28TO4FcjjTKx
         Y3JVUv6fZnfLMlZ9uD+rmqflhbITMLk7iGpp88tweYXGzVU51eJ4UwIMU/KNUwf7dqZf
         grdJivkoPFkg70djHRpantFk5Ko3RwWNNtDUe3PiKo+CBx0ZteUFmCE381BdqG7bvDrh
         YtlHX9yXZhG7+OLfWW1fZQB+63QTncwNU5b4LQKcK5fIjVuYdYFJqc5E9fnpWoeemXWi
         7d/uipFdtmPfGVHPdgCuwnMtX5Uprj7ezwN/CZCza6IVjL7GY6S8vNrbDoC4AW5I1OAF
         y26Q==
X-Gm-Message-State: AC+VfDzGFlq6Tcs/uKyvuD5dJerDi20chL5E5iKyq1B9rouYWon1mRdm
        0Sb2oiyjGei5vV0IVQoDdhdQrddzW8I=
X-Google-Smtp-Source: ACHHUZ4rA8VLlh1i7XiAUVLysqEm6WtisgjWN56w099Ebqp1j6BVWyFX/pC1WMhcONPSnF0TtAvjcw==
X-Received: by 2002:a5d:63c2:0:b0:306:2d81:341d with SMTP id c2-20020a5d63c2000000b003062d81341dmr907615wrw.24.1684400036677;
        Thu, 18 May 2023 01:53:56 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.166.66])
        by smtp.gmail.com with ESMTPSA id 8-20020a05600c230800b003f423a04016sm4667555wmo.18.2023.05.18.01.53.55
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 01:53:56 -0700 (PDT)
Message-ID: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
Date:   Thu, 18 May 2023 10:53:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     lnx-man <linux-man@vger.kernel.org>
From:   Alex Colomar <alx.manpages@gmail.com>
Subject: Doubts about mmap(2)
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EeCYY0XmANdxnHwWWK08PLdh"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EeCYY0XmANdxnHwWWK08PLdh
Content-Type: multipart/mixed; boundary="------------PpUI03Vn1pw3T0Yq2zUTCocV";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: lnx-man <linux-man@vger.kernel.org>
Message-ID: <d67a30a2-0f67-8ff0-e2da-6f8d8704dc7b@gmail.com>
Subject: Doubts about mmap(2)

--------------PpUI03Vn1pw3T0Yq2zUTCocV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCkkgYmVsaWV2ZSBtbWFwKDIpIGlzIGNvbmZ1c2luZyAoc2VlIHRoZSBlbWJvbGRl
bmVkIHBhcnRzKToNCg0KREVTQ1JJUFRJT04NCiAgICAgICAgbW1hcCgpICBjcmVhdGVzICBh
ICBuZXcgbWFwcGluZyBpbiB0aGUgdmlydHVhbCBhZGRyZXNzIHNwYWNlIG9mDQogICAgICAg
IHRoZSBjYWxsaW5nIHByb2Nlc3MuICAqKlRoZSBzdGFydGluZyBhZGRyZXNzIGZvciB0aGUg
bmV3ICBtYXBwaW5nDQogICAgICAgIGlzIHNwZWNpZmllZCBpbiBhZGRyLioqICBUaGUgbGVu
Z3RoIGFyZ3VtZW50IHNwZWNpZmllcyB0aGUgbGVuZ3RoDQogICAgICAgIG9mIHRoZSBtYXBw
aW5nICh3aGljaCBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAwKS4NCg0KICAgICAgICBJZiBhZGRy
IGlzIE5VTEwsIHRoZW4gdGhlIGtlcm5lbCBjaG9vc2VzIHRoZSAocGFnZeKAkGFsaWduZWQp
IGFk4oCQDQogICAgICAgIGRyZXNzIGF0IHdoaWNoIHRvIGNyZWF0ZSB0aGUgbWFwcGluZzsg
dGhpcyBpcyB0aGUgbW9zdCBwb3J0YWJsZQ0KICAgICAgICBtZXRob2QgIG9mICBjcmVhdGlu
ZyAgYSBuZXcgbWFwcGluZy4gICoqSWYgYWRkciBpcyBub3QgTlVMTCwgdGhlbg0KICAgICAg
ICB0aGUga2VybmVsIHRha2VzIGl0IGFzIGEgaGludCBhYm91dCB3aGVyZSB0byBwbGFjZSB0
aGUgbWFwcGluZzsNCiAgICAgICAgb24gTGludXgsIHRoZSBrZXJuZWwgd2lsbCBwaWNrIGEg
bmVhcmJ5IHBhZ2UgYm91bmRhcnkqKiAoYnV0ICBhbOKAkA0KICAgICAgICB3YXlzICAgIGFi
b3ZlICAgIG9yICAgZXF1YWwgICB0byAgIHRoZSAgIHZhbHVlICAgc3BlY2lmaWVkICAgYnkN
CiAgICAgICAgL3Byb2Mvc3lzL3ZtL21tYXBfbWluX2FkZHIpIGFuZCBhdHRlbXB0IHRvIGNy
ZWF0ZSAgdGhlICBtYXBwaW5nDQogICAgICAgIHRoZXJlLiAgIElmICBhbm90aGVyICBtYXBw
aW5nICBhbHJlYWR5IGV4aXN0cyB0aGVyZSwgdGhlIGtlcm5lbA0KICAgICAgICBwaWNrcyBh
IG5ldyBhZGRyZXNzIHRoYXQgbWF5IG9yIG1heSBub3QgIGRlcGVuZCAgb24gIHRoZSAgaGlu
dC4NCiAgICAgICAgVGhlIGFkZHJlc3Mgb2YgdGhlIG5ldyBtYXBwaW5nIGlzIHJldHVybmVk
IGFzIHRoZSByZXN1bHQgb2YgdGhlDQogICAgICAgIGNhbGwuDQoNCg0KVGhlIGZpcnN0IGVt
Ym9sZGVuZWQgc2VudGVuY2UgY29udHJhZGljdHMgdGhlIHNlY29uZC4gIEl0J3Mgbm90IHRo
ZQ0Kc3RhcnRpbmcgYWRkcmVzcywgYnV0IGp1c3QgYSBoaW50IHRvIGZpbmQgYSBuZWFyYnkg
KD49KSBzdGFydGluZw0KYWRkcmVzcy4gIEhvdyBhYm91dCBzYXlpbmcgdGhpcz86DQoNCiAg
ICAgQSBoaW50IGZvciB0aGUgc3RhcnRpbmcgYWRkcmVzcyBmb3IgdGhlIG5ldyBtYXBwaW5n
IGlzIHNwZWNpZmllZCBpbg0KICAgICBhZGRyLg0KDQpDaGVlcnMsDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmlu
dDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0K

--------------PpUI03Vn1pw3T0Yq2zUTCocV--

--------------EeCYY0XmANdxnHwWWK08PLdh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRl55sACgkQnowa+77/
2zJ79BAAgNCz/CqdQOVyP0Rc7hNz2baEKhGVhenqzSP120NZS5beYHdEemtxUv+o
5srfU5kyaR+elt27SgaP0piMpusndf5mghShwhtifI9hamn1e96+0kyxPiYfuLja
y/rsLTWqFBEAmtULR96GMTKcwa55aG80lLWf9DetSMIuQgbZoyZqx34g7WCN7lQv
WM/plRvFQ2KnHRPIah6xtm4BBB4vujuY1ngtVWsUf2NKKxDAV+IDD/fzp0FMOZEz
2e7TIujGv8IbxErSQe/vVZBzzNOYIeYHYHhD3bFtvdBr9h+b6ajssdF/cEwEDYKO
RYj79+n8EDXpTegXL65d9Pk7zYRSqtphoOmrLGq/O+kK8NrlZEktY++l7Rfu96Ci
4All0QEYZ62aWdAjUIVjhgH15BX7oAa909XMXZZ0yfEr8pHeil0wnD07SU1orF3p
gli3WImi+DNFIQv4wn86SYJK/vljBfV/cj6mC40g2S/AgKDCdXA828Y+5OQc3As5
5iCIhiBk5VF2y3azp4328dqwxtZbVG4B4suXb4oh+8QbfyqW428dwSVqxweTkKFj
Fh4d+/dyE/F6x64K1+yqKXRYqEsskx9gNGwfCo+KF+hzhO0krK25WMINkNgPqyiG
oWpN5ebGInWRsy/aogpumaJZntObzIOT3Q42YiyrkfHIRZNm8t4=
=lUBp
-----END PGP SIGNATURE-----

--------------EeCYY0XmANdxnHwWWK08PLdh--
