Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85466612A68
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 12:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbiJ3Loq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 07:44:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiJ3Lop (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 07:44:45 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 765F0E1
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:44:44 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k8so12363260wrh.1
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLHXkcMd3H+YscENj0xk9vwR47BDzPGbhJhvq7WFEgA=;
        b=TNAk/i1t1vENrDCco5VEVIMdyno52+XJHnTnFcrkJYjUoOofByu0BVEBHxs12Ovqn+
         OnmgNB7O4YBULAxVmfeCoRtw5+II1yqCSjteuTW8DkBwPLBhHmLyrJlDpL7LOcDv4g0w
         mqawNaR8jePQcFK3tF7EiaftcYcWjSelqWOm0CsD//VuXAF8FwFhpdZotFMQFpKVF4+W
         gLvRpHgymMdZgCbNvyMy6LK6T5vPQ9lebVpHBWys5p2IH/8aSLi97rfNnWaLITavg9Id
         mQ900b4sHRS66CKi/gwD6ilqF6s3LP7PH5mrvjpFpe7QKaSytF+l/XQCdTy43G+jwjSc
         VVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bLHXkcMd3H+YscENj0xk9vwR47BDzPGbhJhvq7WFEgA=;
        b=vEuke++mdfdflwgMnuv2+GEz90YXQajHkr/sQHwZfWs0g0RS2qR+ZZ/2srXjWzGurb
         pHISaDwFoJqMuumI0F6GkurrW0ix9sn6Y3ofbXOTkr5staAX8LVH2Lld0ZEIJ/VniAEI
         Nw9VGJIN+WHA3Rna4mafjlrWAt4mwlVG+ZCmXkn4BJ928VTb0xdTTwyi7rJg0kqFMjul
         9kyDTYKNLApN34cwuzt+QJnT0HYINf1tJgpqrSsKWsleG7XpNv2YszqmZ6kJKZzu6Tqi
         RTVYBAKCpij03+ZqoeQdxjx6uV/xbWx7SvsBUrVRkbcpUf8gi2xYXjDR9cjucnj4D9CT
         qrBQ==
X-Gm-Message-State: ACrzQf0vZa0Ra5ijU4bQy+1AXOFpu9HPQ0tW1wHUOCOT4tUOsl3on/hS
        m4r9CIHxw5t6mThfyIUZ1T8=
X-Google-Smtp-Source: AMsMyM4BP8NDz9BrGOUZ+WJ10t/DEKPkCpaT9pG8FqBNExYK+FoIsKF/zaI7EXtlchvRcSZ+35Y/SQ==
X-Received: by 2002:a5d:694e:0:b0:236:65a0:e7ed with SMTP id r14-20020a5d694e000000b0023665a0e7edmr4733492wrw.233.1667130283025;
        Sun, 30 Oct 2022 04:44:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 123-20020a1c1981000000b003c6c182bef9sm4606167wmz.36.2022.10.30.04.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 04:44:42 -0700 (PDT)
Message-ID: <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
Date:   Sun, 30 Oct 2022 12:44:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-3-zokeefe@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221021223300.3675201-3-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nnAtApAeh0uJb0Q9NxpL75jl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nnAtApAeh0uJb0Q9NxpL75jl
Content-Type: multipart/mixed; boundary="------------0mgFYzSWbLB2mfiXhOfEBM3E";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
Subject: Re: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-3-zokeefe@google.com>
In-Reply-To: <20221021223300.3675201-3-zokeefe@google.com>

--------------0mgFYzSWbLB2mfiXhOfEBM3E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMjIvMjIgMDA6MzIsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IEVJTlZBTCBp
cyBhbiBvdmVybG9hZGVkIGVycm9yIGNvZGUgZm9yIG1hZHZpc2UoMikgYW5kIGl0J3Mgbm90
IGNsZWFyDQo+IHVuZGVyIHdoYXQgY29udGV4dCBpdCBtZWFucyAiYWR2aWNlIGlzIG5vdCB2
YWxpZCIgdnMgYW5vdGhlciBlcnJvci4NCj4gDQo+IEV4cGxpY2l0bHkgZG9jdW1lbnQgdGhh
dCBtYWR2aXNlKDAsIDAsIGFkdmljZSkgY2FuIHJlbGlhYmx5IGJlIHVzZWQgdG8NCj4gcHJv
YmUgZm9yIGtlcm5lbCBzdXBwb3J0IGZvciAiYWR2aWNlIiwgcmV0dXJuaW5nIHplcm8gaWZm
ICJhZHZpY2UiIGlzDQo+IHN1cHBvcnRlZCBieSB0aGUga2VybmVsLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2dsZS5jb20+DQoNClBhdGNoIGFw
cGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjIvbWFkdmlzZS4y
IHwgNSArKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9tYW4yL21hZHZpc2UuMiBiL21hbjIvbWFkdmlzZS4yDQo+IGluZGV4
IDY0Zjc4OGFjZS4uZGYzNDEzY2M4IDEwMDY0NA0KPiAtLS0gYS9tYW4yL21hZHZpc2UuMg0K
PiArKysgYi9tYW4yL21hZHZpc2UuMg0KPiBAQCAtNzkwLDYgKzc5MCwxMSBAQCB0aGF0IGFy
ZSBub3QgbWFwcGVkLCB0aGUgTGludXggdmVyc2lvbiBvZg0KPiAgIGlnbm9yZXMgdGhlbSBh
bmQgYXBwbGllcyB0aGUgY2FsbCB0byB0aGUgcmVzdCAoYnV0IHJldHVybnMNCj4gICAuQiBF
Tk9NRU0NCj4gICBmcm9tIHRoZSBzeXN0ZW0gY2FsbCwgYXMgaXQgc2hvdWxkKS4NCj4gKy5Q
UA0KPiArLklSIG1hZHZpc2UoMCxcIDAsXCBhZHZpY2UpDQo+ICt3aWxsIHJldHVybiB6ZXJv
IGlmZg0KPiArLkkgYWR2aWNlDQo+ICtpcyBzdXBwb3J0ZWQgYnkgdGhlIGtlcm5lbCBhbmQg
Y2FuIGJlIHJlbGllZCBvbiB0byBwcm9iZSBmb3Igc3VwcG9ydC4NCj4gICAuXCIgLlNIIEhJ
U1RPUlkNCj4gICAuXCIgVGhlDQo+ICAgLlwiIC5CUiBtYWR2aXNlICgpDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0mgFYzSWbLB2mfiXhOfEBM3E--

--------------nnAtApAeh0uJb0Q9NxpL75jl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNeY6kACgkQnowa+77/
2zJ99A/9EENjvRtEBu8ul906wpHrCfKaPcxCnqj1Qfl1NyZyjy8OKDcx+qWv1jOT
JeQKHArjWqcXcBHKeIIhXScpZ7t/qDvNF3UlU8DZPDxXCp2t4V56NAd0UaV5brQY
J9ffSBnSOdIhKxCx5W1y1XPSvjTqY81Rs3pMk5Kpz08XclH5yMdrXG1G3M3DydqV
OmTYZQN3+1wQUhrJZIPzdt3/aCeM+dY4H+gxPOhsNqIC+3rw2zIBbZuxshk8Ez1s
Fxn4vmiQ2bcrdQjqVZhIWRQiNm/DEsbiGNRDZKfYcegLrqKbmyHIOH9EB+HWrul9
uxbiptduJjiI8t5J3U4q0+Sh1rWs5vNv80nipSoMMUtPcJp3/NJRhMIq+eQdmeFL
pCdQADEeCkOzlZhMricvUAtKIGdbOniVtSahOIqNBphYRPwpZ5ffawWrFJvbIN65
8u9o+fPYLZOG+lVndLacAGpLT1YNLrwUQupBkmRZByuGZ9sPqbAmlg8hw7oTYF/1
ho0IrI+leI6sZGvHsWFsHoeXBpeNdjcXAkvuJTxDK2WETv9iM76nYzlgMo9b4yNa
R66Ihn6PY5eJ/3+BUcJrxJmkDarK4/h/gx8s2XDra9QknFaaxEKkCvdtEFvvZ63E
WtxFabZTGSRgI3neLio88w+kOIPVJHgrmTZauPnDu9TxQ6MznTY=
=Pert
-----END PGP SIGNATURE-----

--------------nnAtApAeh0uJb0Q9NxpL75jl--
