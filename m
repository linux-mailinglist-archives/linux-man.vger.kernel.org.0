Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 761A465F7A2
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:35:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230111AbjAEXfm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:35:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230051AbjAEXfj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:35:39 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28A06951C
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:35:38 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id az7so13228963wrb.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYCIiRVNmxycsTCbVMuhOSl5nrv9qdKqraRhSpFSLqI=;
        b=c+9UPsjDGsIymvctSi8+iFTSvFWS2laPl14zxcmzx/G8TY6DTenX0RnzkchSqhCh0E
         iY77n70sicSL/BvcGvYvHCuovMGtAUTq1n5a89dbdK9UzgvBXHRzx1g/qbX3sewsZRA8
         XPFxgJ//MumcNLYgZUIMobohO4dolFHPdBqUrObhQThCbEHzU/grMvt8aDq54EntS0xm
         mYxhFUzkKKdDp28kK7FuR7qCZ4qeeyvnYeFVncpBawBZ/KrOxMJsy5bvAd6VS0mZPXs1
         CPPGkl2QUc5YlunHjGx8hU0VGlsHAlwoYG7zE30tfTWTKPG7PPZ9CvcdiD+QCdF8hjxn
         xLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iYCIiRVNmxycsTCbVMuhOSl5nrv9qdKqraRhSpFSLqI=;
        b=RGy5AmK/5/txwp9JyT4k5QAws3O3Q+4xjRBWqHoefcPpTB+UqZaHlSp5Al7mu0Yw+m
         6dp+CUkqhE3qEhXxQqcAu0nKhykSjzSG/asgEtdhJNhjf8Sum5THSa7LSt4FWBY1QFIt
         +qb80eezKH1Otlvl8nferz2CuPKNvfUDVXBqUcRZfPhrjRiW9WQ3cG9h1ni4Vnp6R6ra
         34PheUIZgghQCtaZqqdKXm07ZReWwem6d+zemGuItOECDosBn/MtMCEDkCw35yzAHQC3
         42s2ZHFZCKRWAszdSx9k3+8CMy39jhtLZUlmMvyb/62NLAPebAJ2AEWBCJcxfE40JDjH
         ADBQ==
X-Gm-Message-State: AFqh2kqvSGvUskSTCWDZmDt7q/gkpIDU6xTpJ0lYC5JxSrUjMnrDGm+C
        nJaG6C79Pwxtp8TnbzAL5Kqs02VjAW0=
X-Google-Smtp-Source: AMrXdXvBPnMQ0uVC6FwZKUUc4RH4DXkmXPbh/Gl41mAjZT4qQY5r4s2yeB8cu6y5KiIw8bLcw5wbUA==
X-Received: by 2002:adf:e307:0:b0:2b6:8a41:a949 with SMTP id b7-20020adfe307000000b002b68a41a949mr1880794wrj.46.1672961737375;
        Thu, 05 Jan 2023 15:35:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b2-20020adff242000000b0023662245d3csm38256450wrp.95.2023.01.05.15.35.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:35:36 -0800 (PST)
Message-ID: <ab37b21b-2b2b-f1ab-db22-f55a9c070454@gmail.com>
Date:   Fri, 6 Jan 2023 00:35:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 02/13] ldconfig.8: Sort options in synopsis
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225216.qzeafypbxyo4r5sj@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225216.qzeafypbxyo4r5sj@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mCAYmCDW47n14EMs0UF7kH84"
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
--------------mCAYmCDW47n14EMs0UF7kH84
Content-Type: multipart/mixed; boundary="------------Jdq4QNJgsn0rkKut32xcQWZs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <ab37b21b-2b2b-f1ab-db22-f55a9c070454@gmail.com>
Subject: Re: [PATCH v3 02/13] ldconfig.8: Sort options in synopsis
References: <20230105225216.qzeafypbxyo4r5sj@illithid>
In-Reply-To: <20230105225216.qzeafypbxyo4r5sj@illithid>

--------------Jdq4QNJgsn0rkKut32xcQWZs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNS8yMyAyMzo1MiwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gU29y
dCBvcHRpb25zIGluIEVuZ2xpc2ggbGV4aWNvZ3JhcGhpYyBvcmRlciAoYUFiQmNDLi4uKS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEcuIEJyYW5kZW4gUm9iaW5zb24gPGcuYnJhbmRlbi5y
b2JpbnNvbkBnbWFpbC5jb20+DQoNClBhdGNoIGFwcGxpZWQuICBUaGFua3MhDQoNCkFsZXgN
Cg0KPiAtLS0NCj4gICBtYW44L2xkY29uZmlnLjggfCAyICstDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuOC9sZGNvbmZpZy44IGIvbWFuOC9sZGNvbmZpZy44DQo+IGluZGV4IDBhNDY5NWUwOS4u
Y2VlMGM3NTgzIDEwMDY0NA0KPiAtLS0gYS9tYW44L2xkY29uZmlnLjgNCj4gKysrIGIvbWFu
OC9sZGNvbmZpZy44DQo+IEBAIC0xMCw3ICsxMCw3IEBADQo+ICAgbGRjb25maWcgXC0gY29u
ZmlndXJlIGR5bmFtaWMgbGlua2VyIHJ1bi10aW1lIGJpbmRpbmdzDQo+ICAgLlNIIFNZTk9Q
U0lTDQo+ICAgLlBEIDANCj4gLS5CUiAvc2Jpbi9sZGNvbmZpZyAiIFsiIFwtbk52WFYgIl0g
WyIgXC1mICIgXGZJY29uZlxmUF0gWyIgXC1DICIgXGZJY2FjaGVcZlBdIFsiIFwtciAiIFxm
SXJvb3RcZlBdIg0KPiArLkJSIC9zYmluL2xkY29uZmlnICIgWyIgXC1uTnZWWCAiXSBbIiBc
LUMgIiBcZkljYWNoZVxmUF0gWyIgXC1mICIgXGZJY29uZlxmUF0gWyIgXC1yICIgXGZJcm9v
dFxmUF0iDQo+ICAgLklSIGRpcmVjdG9yeSAuLi4NCj4gICAuUFANCj4gICAuQiAvc2Jpbi9s
ZGNvbmZpZw0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------Jdq4QNJgsn0rkKut32xcQWZs--

--------------mCAYmCDW47n14EMs0UF7kH84
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3XscACgkQnowa+77/
2zI7JhAAj01V7foAfrhoUVxYGHdqQ7WlRpMTTU5oMHtKq8Ozeb4j3t0CQA39rBbn
bUzBwsDg8tH+081QYjZL7n1kmLehzD/P/E+320hQOS25NLASaXA026/eton/PUTR
lL2KYnPBiZcsgXzkvBWsXmVcT8oRaU7ikCikOut1H+Pc/0HbHXeKRMHc3VcSTL/B
iaR9iH5zHlf+/TTMHfUOi0I1YL3iOufz6gfk1CFXPgOnT2q1KTMaIoF/9WRXMVk2
AnBrvkLiZ4Ovi/a7Gm2f6f/5Uqta93gL2cYUjjv4WYBZdFcVWP9VzrjUmOSdw46R
6FHxbGthbsQhoM7WzrnUn4HmhDJGw7exvC8nAPSuSsLjFHvFM4G/9tt4Ah6eWi0H
0xY5nvJ3ScFctusiwz73efCCTiULmQpINDR8RfrtPTRW43LGCbvKYkD4d56WOPiv
J3nJUPRLd0nmqCcBViB004lRuJvcLlu/Ve+JhtDgRaHNCsTbizFxNW6FJkwBK9sI
VOfbZWwH85Onbda4+FcF66eEna1xntSuyT+km2GOAWKM/I6R++P2e1qmoBs5FNhO
ML3NIPMiMHouqiekKFyMhANHnxqmtXuH6IlWJnfpWpiylP5C4EECbJOWycwQhuij
+4eYy/34FoZRWrMTjRHbXS6WjCTwWxr5l0M8ewDceUyrV0hTYs8=
=LcMD
-----END PGP SIGNATURE-----

--------------mCAYmCDW47n14EMs0UF7kH84--
