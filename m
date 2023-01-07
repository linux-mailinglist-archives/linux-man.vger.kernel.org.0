Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4D6F66116C
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 20:54:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjAGTyi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 14:54:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjAGTyi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 14:54:38 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8106B45673
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 11:54:36 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so1097242wma.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 11:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1uC/wtxA0ugOpK1JT9XGf/JXl6zjLp0DK3wS4b5fFiY=;
        b=VPIEUUm0YkbGDaaFeTWaC6iMcOQiTELlX51497AMjae12RXAYX2BMFSo147gEPLI17
         FLoSQeIY/CwitgH2H88QmK70VoQsdvOm8MPU7Mh0QCcEWdJ2d3Ma9YReFKxvnO5/a6x5
         4jpRqhA6g+4lPQBQbdJkoZnRwMNvvrbGvNun9v+q6J+KErHeHJW0D/X5V/O3CkRUtJCo
         979s6onlLDo/9YfE0X2a8qX07QHYhdvVHgPH8PcLais6lorPYsneZAUUeM3M34LUmVgC
         qLhb9DcR1dL4diJNa62QWXBLECZApYiyZ8mSBOpdjFRJjmx2cqBlJ0rWlmaFfaH4QUxG
         uZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1uC/wtxA0ugOpK1JT9XGf/JXl6zjLp0DK3wS4b5fFiY=;
        b=Cf6HdTEoEreZ5E1ZYlcMQ6XJ88hOvrKYVblte9YkrGgYA8FlBNknP5/TXCu4egsq5U
         sP570PAeyfncfilzi2dHE8ZWwGO4xXb1DojNM+4Ck/9uhzLhKTKj8vF03J71Ru8yXQd0
         sdnqKyfEhHmk7HPBQocSDjxQPHfHRV3fU/wnyM7sbhmvfF6mHulx1NOpauWkduMbaBiM
         pYQRvYeJssmaBquqIuC8iTjF6zQfl4TcrujrN4EsI6qt1ia4o6ifWHovyeS63lZUlDVJ
         eRAEgE/kkUHQB/e+W/yucbR4uMp2ztj9yOfE7mDFw7HVhVRSGRERmtibb2jJk5/+VGua
         uPog==
X-Gm-Message-State: AFqh2koxgs/b7s/zVc9L6k+Qaqn1UgOSyS2TigSO1QcFy9mKydl9vOXO
        /unsQ1p/gFkHfZeig2up0tkADcHJrjQ=
X-Google-Smtp-Source: AMrXdXt6WT0wWg/Oth7dhcXnOlT4dpYIwLUoXi0f4rIiuKJ80Ybm9S5NvDEqyL+t7oUzDft2VeANpw==
X-Received: by 2002:a05:600c:15c2:b0:3d3:5132:a637 with SMTP id v2-20020a05600c15c200b003d35132a637mr42120970wmf.18.1673121275058;
        Sat, 07 Jan 2023 11:54:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l24-20020a1ced18000000b003d99da8d30asm10445635wmh.46.2023.01.07.11.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 11:54:34 -0800 (PST)
Message-ID: <2d79ee4c-8ebd-b7b9-67f0-4ba730f75233@gmail.com>
Date:   Sat, 7 Jan 2023 20:54:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
 <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
 <20230107164434.e3g4iecrwoxrvpyx@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107164434.e3g4iecrwoxrvpyx@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GMHS48cPVcAekziY5ZW6vp4r"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------GMHS48cPVcAekziY5ZW6vp4r
Content-Type: multipart/mixed; boundary="------------N20HkDX6Ixh7FBa8Hd27tJOm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
Message-ID: <2d79ee4c-8ebd-b7b9-67f0-4ba730f75233@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
 <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
 <20230107164434.e3g4iecrwoxrvpyx@illithid>
In-Reply-To: <20230107164434.e3g4iecrwoxrvpyx@illithid>

--------------N20HkDX6Ixh7FBa8Hd27tJOm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDE3OjQ0LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wN1QxMzoxNDowMSswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4gK2dsaWJjIGFsc28gb2ZmZXJzIGEgbWFu
dWFsIG9mIGl0cyBvd24gaW4gVGV4aW5mbyBmb3JtYXQsDQo+Pg0KPj4gQWxzbywgaXQgbWln
aHQgYmUgYSBnb29kIGlkZWEgdG8gdXNlIHRleGluZm8oNSkgaGVyZS4NCj4gDQo+IEF0IHBy
ZXNlbnQsIHRoYXQncyBhIHN0dWIgcGFnZSB0aGF0IGRvZXNuJ3QgdGVsbCB0aGUgcmVhZGVy
IG11Y2guDQo+IA0KPiBMZWFybmluZyBob3cgdG8gY29tcG9zZSBhIFRleGluZm8gZG9jdW1l
bnQgaXNuJ3QgZ29pbmcgdG8gYmUgb24gdGhlDQo+IGNhc3VhbCByZWFkZXIncyBwYXRoIHRv
IGxlYXJuaW5nIG1vcmUgYWJvdXQgZ2xpYmMuDQoNCkhtbW0sIG9rYXkuDQoNCkNoZWVycywN
Cg0KQWxleA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------N20HkDX6Ixh7FBa8Hd27tJOm--

--------------GMHS48cPVcAekziY5ZW6vp4r
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5zfkACgkQnowa+77/
2zKJTRAAnlb6jmfPGDbK+HNSs4EpJn30LLpxYr3+1Ea8nZJYafqxOfqjkOkVWVi9
fU/Wh+gazlCIxuLSenNTTQ9LU/LKmp2J5ZYeenBFQ/+AnEHIlIOqqkAJJmitfgg4
cGBNF9W+O+KCWhlKJvF7pR6OoiY4kAcNeNgsBSHJYcmHypJPoM862nM65UdW9uNQ
15QdtuyKRB4oHeK/shsu2Ft38kOAwnCS9stGR12PCht7GRnazTDJyUg0bohSQDKz
D5XKD4kR5SxbjM43HtbScvdx6SBT4NQa5ZDC1rm/ogdg4imr6iWHgS17UbtAX4Qu
NEOTvkdbBdjLLgiLTRxA2SQpTAQ8FlBHtfhWbLqckGFEB9Vw+7zj2RBcYJTE+bvw
VqYLVludWs6WcQ8dkbsdJMymPbOlJL4Cvvr7zfdm4HDOaOHWWmQBvb0iFFZXK9zM
d97ZTtM3HNQlM1R774me2CUakjkW0t7ovLUdVRp4LoA79xB1sHyaFRmVE3Ej9abk
/UFLkQ53IX8kAQG9D/JES1LtUJ1O4RfowSFdBUeE+AniRMLW1SiBEI4G6XUbhPiO
ETZm4NrXAOzKamUvTdp7vnOkuyph+PO8fSYx1TwXJkyKspM8jf5FtZpLr9/0lq9z
KAQ9+jmW+/RAkj28PjYvE9KCSfq+FXtSVtxnxMCiyV8V1EORYkg=
=cbo3
-----END PGP SIGNATURE-----

--------------GMHS48cPVcAekziY5ZW6vp4r--
