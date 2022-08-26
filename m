Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2945A2F7D
	for <lists+linux-man@lfdr.de>; Fri, 26 Aug 2022 21:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244892AbiHZS7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Aug 2022 14:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345024AbiHZS6t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Aug 2022 14:58:49 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6CBFF5B
        for <linux-man@vger.kernel.org>; Fri, 26 Aug 2022 11:58:46 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e13so1907486wrm.1
        for <linux-man@vger.kernel.org>; Fri, 26 Aug 2022 11:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=XyjdO37OCU/fAagqLVUh0jFepQ7+XQ9IUWRdkQaVMrQ=;
        b=o9xhOnrfWHHtw1EwL9mTUR0t9sjSn+9U2X3bBjLCGZD2/fV1qMTzSCPtE1wwanD4Ma
         5mC7mjnqXhLoJGs+Jd5pQmS1skBfbCJXqjeM2ueb+LYRolQT2rOmDIWdje+RawZDtBgu
         5K28ACRUZhOb1VEJ7YY4Yjbgd9EdfmcIlSIYuXFnFtDcjjuC/gBgyFt/FmChczce1r7T
         S+fNfvNVSQXXVIcKKN8TwHfkqkXF6BYrw8YoTRGCF/KzbNtfSydd/yna6MD/vuBcMCpW
         16mmfBe4Z2yNMJWJk5Uxpa50u22IyTURImYA+JWiQyPrP+E5sKkDWOC5UJI2FdrePd8m
         h60g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=XyjdO37OCU/fAagqLVUh0jFepQ7+XQ9IUWRdkQaVMrQ=;
        b=DP9pRVvifz2PaXm94qQJhVTKeiHt6DpEi1YYku+KZw2Mi7D+0YNVzkEgYo1ER9/ALf
         fyKl48Se8ZKSSDCAHZREjHlsfiu9CUngacThyWbIcfIqH+DodeI/QE/m5hXA83DB9SQg
         ugfeI/8xriR/KbFkvc005AobERZXQ2WbfVN/YeRyx0sZbvERJeNZhro/HRGS9KANS/u/
         3Ko12x0IHeECC4FBrxUyKR4GJjAaLDl2psV2FCcpX/GXzkcMLDqiN2lfwcdFUU223pP7
         39mlcetsdTNRHn8/g1fOuJTwmYIchXtKsOnlpkKMeXmyFPyb/YyqnDir8U8ClxFb+JmO
         7npw==
X-Gm-Message-State: ACgBeo1xvpotTJ8SRHp7qjY9p4X27GEcDa5UbJVVLtZ3CMyG6eKwrDdV
        1Esk2X+qaOCpboBpje2YiE5pVrCnOFI=
X-Google-Smtp-Source: AA6agR4e/+4ycc8T0K3BX6/ucFpyxHP3aJVn55R46pCN7g0hYUza9BICj4X0XCK9FNMz1OtQ7Ke3aA==
X-Received: by 2002:a05:6000:82:b0:225:21ff:a389 with SMTP id m2-20020a056000008200b0022521ffa389mr556345wrx.22.1661540325412;
        Fri, 26 Aug 2022 11:58:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020a05600c155200b003a6632fe925sm516152wmg.13.2022.08.26.11.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 11:58:44 -0700 (PDT)
Message-ID: <36f2eaa2-f486-a4b6-e751-f0643911ec65@gmail.com>
Date:   Fri, 26 Aug 2022 20:58:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: Patch for TCP_USER_TIMEOUT in tcp.7
Content-Language: en-US
To:     Enke Chen <enchen@paloaltonetworks.com>,
        Eric Dumazet <edumazet@google.com>
Cc:     linux-man@vger.kernel.org
References: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NsIB0uPYp5Cfujhrp0tfSBiD"
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
--------------NsIB0uPYp5Cfujhrp0tfSBiD
Content-Type: multipart/mixed; boundary="------------qmOq62Z91h10PqmdhCW6giLP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Enke Chen <enchen@paloaltonetworks.com>,
 Eric Dumazet <edumazet@google.com>
Cc: linux-man@vger.kernel.org
Message-ID: <36f2eaa2-f486-a4b6-e751-f0643911ec65@gmail.com>
Subject: Re: Patch for TCP_USER_TIMEOUT in tcp.7
References: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
In-Reply-To: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>

--------------qmOq62Z91h10PqmdhCW6giLP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gRW5rZSwNCg0KT24gOC8yNS8yMiAyMTowMCwgRW5rZSBDaGVuIHdyb3RlOg0KPiBk
aWZmIC0tZ2l0IGEvbWFuNy90Y3AuNyBiL21hbjcvdGNwLjcNCj4gaW5kZXggODJkZTlhMmM3
Li45NGQyNmMzYmIgMTAwNjQ0DQo+IC0tLSBhL21hbjcvdGNwLjcNCj4gKysrIGIvbWFuNy90
Y3AuNw0KPiBAQCAtMTIwNiw3ICsxMjA2LDcgQEAgY29ycmVzcG9uZGluZyBjb25uZWN0aW9u
IGFuZCByZXR1cm4NCj4gICAuQiBFVElNRURPVVQNCj4gICB0byB0aGUgYXBwbGljYXRpb24u
DQo+ICAgSWYgdGhlIG9wdGlvbiB2YWx1ZSBpcyBzcGVjaWZpZWQgYXMgMCwNCj4gLVRDUCB3
aWxsIHVzZSB0aGUgc3lzdGVtIGRlZmF1bHQuDQo+ICt0aGUgb3B0aW9uIHdpbGwgYmUgZGlz
YWJsZWQuDQo+ICAgLklQDQo+ICAgSW5jcmVhc2luZyB1c2VyIHRpbWVvdXRzIGFsbG93cyBh
IFRDUCBjb25uZWN0aW9uIHRvIHN1cnZpdmUgZXh0ZW5kZWQNCj4gICBwZXJpb2RzIHdpdGhv
dXQgZW5kLXRvLWVuZCBjb25uZWN0aXZpdHkuDQoNCldvdWxkIHlvdSBtaW5kIHNlbmRpbmcg
YSBwYXRjaCB3aXRoIGEgZGVzY3JpcHRpb24sIGFuZCBhIHNpZ25lZC1vZmYtYnkgdGFnPw0K
DQpGb3IgZnVydGhlciBkZXRhaWxzIGFib3V0IHNlbmRpbmcgcGF0Y2hlcywgcGxlYXNlIHNl
ZSANCjxodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvcGF0Y2hlcy5odG1s
Pi4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------qmOq62Z91h10PqmdhCW6giLP--

--------------NsIB0uPYp5Cfujhrp0tfSBiD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMJF+MACgkQnowa+77/
2zKubA//bcGIzdAyx9wPNmFLtggY2Z+oWaOLDSBqVRcVL/NZXBT64i8xN1yBfBEQ
I2mXN7ofHrG9HFAUIF8sLDpGjlmq4AIX9/bXu6TtLUQxJ3HollucU9pk4s9uR1Xv
B1RfAjfOdcAiUL8CNXPmjrrJCO+ZWfNGLj8bVkLaqM85bb0/nvC8SlYjDh5o7a2d
34UHYui62k0vn0KaHdtOx3fFoR3Ch398NJoZy6aIry/zBdlZ3qLDa+ygAvg1kfYM
HVZV1I7UbMeEjZ9P63nu8Y7aftSNohTbqE27Lapu1LnIMvkwVO1GgM6WZXVhSirl
aIxgTySXIWqe0WrYXN3VIKTRX36c0+8SM8qx3FOiSNoWftIRJMtet5aT98foO8p6
kU7OGTXlhEKYCHmzFKM+AIqeeH+1y3HQDeqP3xTbk4AGQXCOjy5+6TEaUxREawRd
5sch+mhH6P64seV1S5ZIyEfC8n0Ex968YpOqMgOzzrzioqJTF20OmcsiXMBrPPyT
HC3v1+saOQaXM4+P3SgtMBqXsTjValMJxIkGlmU/7OcRT2xdyGsoaYhv5fTPEYsM
ABpnC3mE4cNNBbNGNZICmCBEKEeH6epNM5iot+oLYBNnTxTayf4q6jYsq261ShYx
/xK6nSJZABFwMjC68Zk5EEssm7UoP3V7nD5snk+zYu70iaye2a8=
=UJ0w
-----END PGP SIGNATURE-----

--------------NsIB0uPYp5Cfujhrp0tfSBiD--
