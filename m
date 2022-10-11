Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA9A15FBC70
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 22:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbiJKUxs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 16:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiJKUxr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 16:53:47 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C7D80E85
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:53:46 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id c3-20020a1c3503000000b003bd21e3dd7aso62719wma.1
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=k6E9I8uELikRigRUaP/NwhYFnAdnXvYuZTcA2jAoTQk=;
        b=CG6SJD9FhBNrUbJJqLm9XmsQL4RFpeckiCZAFu+5DPAzTrvLp976tLnpgeCyk+JUud
         GIS9TNYnLe20a1fjSGVKqpwgds+vph/IEftxzFT9axaAnXmg1x9gcrHFOOfsFYGjrLAC
         LXOfTugxxNL4hAyZV7Dg2wFT4ANwwYn27MqW70wCPpla2SyYdVgfvGwC8cd5MXeWMIbz
         FJUnJ9VUfJVbcHHDykZJqwgzWxfwvpkt24H6GdnmvL1iW1EPXlaT8oysl17sHwtt8Zky
         ljgOtTgf3pe2MlkfwfbvihwKEhwZn0oow1aBj2tQP6EVAQPM+CA0oDPTG/yTdfJr27c+
         Dxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k6E9I8uELikRigRUaP/NwhYFnAdnXvYuZTcA2jAoTQk=;
        b=2098GFWNfk6cJiBMVCR0GisHoY5szWOt9qBAgFgKV+J7CsTiv7fH3dwiYiL/p61FT6
         k3w0gT3d3vw5WawFHjnQ4RWI03haM7cc8+75AXtg08QReHbIv6KZ1if36l7dDVIRhhV+
         P/GVc8izYQPS/a6oPjarsL5GJ3t3NGWR+0kVAToRfGcP+WiuFP2H+coMAT/rK0WAiK+a
         yvCg8U1eoyberNuwGBOH2SdFuEmQenTP2olcLXv/YtRTa96SZiuY0QRF8V3q2TplvhPe
         Op40BFKvVZvaH9TGh/Yab3g43XjplixSQMEstpVvUzVSmQDFwjZfto9N0nHeArumk8n2
         URPA==
X-Gm-Message-State: ACrzQf0DqpaMz1yZqBIQCCmikaFMu8qGAFj+/Q+cSLmXyFjipXVGtING
        A9LiCM67eHxFJA6+o1FXmWg=
X-Google-Smtp-Source: AMsMyM6WU1OjrST80zwPyY+XPF5H1Ak+T8KLuu2SCVQBD8ur9INw4SVL/r5WX4vXm0/wBUfv5yRLAA==
X-Received: by 2002:a7b:cb56:0:b0:3b3:4ad8:9e31 with SMTP id v22-20020a7bcb56000000b003b34ad89e31mr574398wmj.87.1665521624624;
        Tue, 11 Oct 2022 13:53:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g17-20020a05600c001100b003c6bbe910fdsm56749wmc.9.2022.10.11.13.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 13:53:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <b70fa11b-620e-dea4-3b30-068e0e2740cc@kernel.org>
Date:   Tue, 11 Oct 2022 22:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] prctl.2: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20221011062520.4614-1-jwilk@jwilk.net>
In-Reply-To: <20221011062520.4614-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgSmFrdWIsDQoNCk9uIDEwLzExLzIyIDA4OjI1LCBKYWt1YiBXaWxrIHdyb3RlOg0KPiBF
c2NhcGUgaHlwaGVucy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxr
QGp3aWxrLm5ldD4NCg0KUGF0Y2ggYXBwbGllZC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4g
LS0tDQo+ICAgbWFuMi9wcmN0bC4yIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvcHJj
dGwuMiBiL21hbjIvcHJjdGwuMg0KPiBpbmRleCBlYTZiMjMyMjkuLmI5MWQxMmFmOSAxMDA2
NDQNCj4gLS0tIGEvbWFuMi9wcmN0bC4yDQo+ICsrKyBiL21hbjIvcHJjdGwuMg0KPiBAQCAt
MTYxOCw3ICsxNjE4LDcgQEAgb3INCj4gICAuSVANCj4gICBGb3IgbW9yZSBpbmZvcm1hdGlv
biwNCj4gICBzZWUgdGhlIGtlcm5lbCBzb3VyY2UgZmlsZQ0KPiAtLkkgRG9jdW1lbnRhdGlv
bi9hZG1pbi1ndWlkZS9zeXNjYWxsLXVzZXItZGlzcGF0Y2gucnN0DQo+ICsuSSBEb2N1bWVu
dGF0aW9uL2FkbWluLWd1aWRlL3N5c2NhbGxcLXVzZXJcLWRpc3BhdGNoLnJzdA0KPiAgIC5c
IiBwcmN0bCBQUl9TRVRfVEFHR0VEX0FERFJfQ1RSTA0KPiAgIC5cIiBjb21taXQgNjNmMGM2
MDM3OTY1MGQ4MjI1MGYyMmU0Y2Y0MTM3ZWYzZGM0ZjQzZA0KPiAgIC5UUA0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==
