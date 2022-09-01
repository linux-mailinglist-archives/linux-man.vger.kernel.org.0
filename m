Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1735AA17F
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 23:30:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233353AbiIAVaJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 17:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbiIAVaH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 17:30:07 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F9F92127E
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 14:30:04 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id k9so44744wri.0
        for <linux-man@vger.kernel.org>; Thu, 01 Sep 2022 14:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=Yih/T17faVxzexc02pwAT3Ks7PJdmbrgaLXqHrIWQa4=;
        b=F8YSEOW6txd/uqkjHubW2QKdlauPdnMVPmzEfxO+gqS0nLFIOvAfvzy7wmexVJ9UHM
         s6ECRNERVycZ4Ed0zd/hFB7FkkAfOTPym8ueKPXM11KM6F02R8N/J9CHqun7uSf1Eg3/
         xRfL3DBpQlW7cnpxruYvMwDwnW4S7Vw9ZMHQ4sRnKRj1OO3LtLJewInBFdUqvrFcBfwc
         MngmV+VBVYmLdCmKI69ITHn8t2ccaC1ZhazQ/LKaXyPD+RcLpRi0HCwe/6/FCOWkr7/a
         nm5XKAyTVPNnO3Ae0dIbADWGtJjRnmnDZnBZnTAU2BtMYhSMNrr/M6xHeiZkBgVJxT1C
         BUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=Yih/T17faVxzexc02pwAT3Ks7PJdmbrgaLXqHrIWQa4=;
        b=7fj9O6Jj21drS6uZ5v/k+LhdlKiVAyCSEl37+towMaNAzWYWdICNWmdn9CFTcO6vfw
         nfycIJ/RdlmHHD70jpuQ7vXgi8NCe4N0Hs42DjUqeSNbYy0K1F8aCbpKdyVr+XE+WivM
         6RumBvnrvmPXLs9i+dagBG22Vybx8vNzT0h9kkfN8NiT58P7v89G3n4uWiuDmlcFq0Xn
         9gCJFylRM3yhXS64/jER8xwj4OXW9AdB1JSrPMncr4A3N8XDIcyV1aIu6Ouk6O3kg2sk
         330hB4bfaSsjpOPKIfodeu1DK9BiOKogwpVewE5Z2/vJVsfffz6NipTbWWmEyKrtdKAI
         vvTg==
X-Gm-Message-State: ACgBeo3qvApEdKfkHquZSYzN3tNeE4hxOmsAdY+sgHCB8u9SPxia5rq0
        3WdVKC/riq6OAEj+n3raic8=
X-Google-Smtp-Source: AA6agR61R2RWnMAPCYzeIscUzd2dI/BxT3Grexiu9JfFhpllXQYWeg+gDJEeRC2gNyFGkTMbCu9KzQ==
X-Received: by 2002:a5d:595c:0:b0:225:7264:9e74 with SMTP id e28-20020a5d595c000000b0022572649e74mr16075543wri.670.1662067802512;
        Thu, 01 Sep 2022 14:30:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c7-20020adffb07000000b0021d221daccfsm15404798wrr.78.2022.09.01.14.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 14:30:02 -0700 (PDT)
Message-ID: <7c75d950-a670-48c3-bb63-6437117d2f93@gmail.com>
Date:   Thu, 1 Sep 2022 23:30:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] sysvipc.7: tfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220901130117.369134-1-stepnem@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220901130117.369134-1-stepnem@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1GqP0kQXZizckiLgzEl3O9rr"
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
--------------1GqP0kQXZizckiLgzEl3O9rr
Content-Type: multipart/mixed; boundary="------------02kpnHFG80s5OU6s3PtVsw3s";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7c75d950-a670-48c3-bb63-6437117d2f93@gmail.com>
Subject: Re: [PATCH] sysvipc.7: tfix
References: <20220901130117.369134-1-stepnem@gmail.com>
In-Reply-To: <20220901130117.369134-1-stepnem@gmail.com>

--------------02kpnHFG80s5OU6s3PtVsw3s
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgxaB0xJtww6FuIQ0KDQpPbiA5LzEvMjIgMTU6MDEsIMWgdMSbcMOhbiBOxJttZWMgd3Jv
dGU6DQo+IFNpZ25lZC1vZmYtYnk6IMWgdMSbcMOhbiBOxJttZWMgPHN0ZXBuZW1AZ21haWwu
Y29tPg0KDQpQYXRjaCBhcHBsaWVkLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4g
ICBtYW43L3N5c3ZpcGMuNyB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW43L3N5c3ZpcGMu
NyBiL21hbjcvc3lzdmlwYy43DQo+IGluZGV4IGY5ZjFlMGNmMTBjNy4uZTY0YjhmODMxOTFm
IDEwMDY0NA0KPiAtLS0gYS9tYW43L3N5c3ZpcGMuNw0KPiArKysgYi9tYW43L3N5c3ZpcGMu
Nw0KPiBAQCAtMTIsNyArMTIsNyBAQCBtZXNzYWdlIHF1ZXVlcywgc2VtYXBob3JlLCBhbmQg
c2hhcmVkIG1lbW9yeS4NCj4gICAuXCINCj4gICAuU1MgTWVzc2FnZSBxdWV1ZXMNCj4gICBT
eXN0ZW0gViBtZXNzYWdlIHF1ZXVlcyBhbGxvdyBkYXRhIHRvIGJlIGV4Y2hhbmdlZCBpbiB1
bml0cyBjYWxsZWQgbWVzc2FnZXMuDQo+IC1FYWNoIG1lc3NhZ2VzIGNhbiBoYXZlIGFuIGFz
c29jaWF0ZWQgcHJpb3JpdHksDQo+ICtFYWNoIG1lc3NhZ2UgY2FuIGhhdmUgYW4gYXNzb2Np
YXRlZCBwcmlvcml0eS4NCj4gICBQT1NJWCBtZXNzYWdlIHF1ZXVlcyBwcm92aWRlIGFuIGFs
dGVybmF0aXZlIEFQSSBmb3IgYWNoaWV2aW5nIHRoZSBzYW1lIHJlc3VsdDsNCj4gICBzZWUN
Cj4gICAuQlIgbXFfb3ZlcnZpZXcgKDcpLg0KPiANCj4gYmFzZS1jb21taXQ6IDEyM2RmODRl
YjEyNDFjNWVhMmYwODZjY2ZjOTFlMmExMjRlNDk1YWINCg0KLS0gDQpBbGVqYW5kcm8gQ29s
b21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------02kpnHFG80s5OU6s3PtVsw3s--

--------------1GqP0kQXZizckiLgzEl3O9rr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMRJFgACgkQnowa+77/
2zLB0Q//XKe3xnH5pBBceEdOZ2WQ3MeCSUXUkjF3xZ7v84z7bJ63BM/lyYnb7gQj
YHLnS2qzLrnm0TsT80cF1fJU/mIOdFrNeHiVInGWeJ4pyWNIXMyRz/Qdu4R+DSVM
+O1X0UC4rKqKSolLeQptVbP9B9hbpeF4lcwasl7ThxMAs/rC6WriB1sRlkCm8AwY
YeXDy1XCs8SsVeZNFYQoVsoyRcoxqER5XZlZFn9JpmhqyOZFWcUkdW+jt3e4oT/B
6P8UdsLkTHoCyIjbINpfd9NajYyFtQu7r1nul/VDEE7AMkfGOoPHC3/5oZ+MgVim
y/TMQuwu5O0Xh9bVzYWbraAGde8DzbAkJWiRA8jlzoMzz7a3+zcFPilY1cCHyKLH
dT0SMm5rG4u8gLrNEYR8ehy7e4erVUejgiYgKpVU0EMFR5W+d2BN/6aAGOuGrAyK
Bmt5i842+MFHbfMzMnXIFQDyQRNAAgX8m8JbkHVWEAgT8qxRVexi8d3BdSFwgLTD
6ut4BN2pBnfPGf41QnHHRiuEIiDnyH1TB8fig3k+Fh193Z17cyMU+NTJkGpOBUMH
R+NPGMHqtT27k/UuCCIPNHRTbRi5ydKvAGtRIlh23iOHL+JgY2L8EEC5rQqTjnsG
jq2noH5IrY3CP2kP5zbxeG4/bmfKGstwKNnXbNZJjSjJOFRUbXA=
=xqRx
-----END PGP SIGNATURE-----

--------------1GqP0kQXZizckiLgzEl3O9rr--
