Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA5264ED1F
	for <lists+linux-man@lfdr.de>; Fri, 16 Dec 2022 15:47:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbiLPOrU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Dec 2022 09:47:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbiLPOrT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Dec 2022 09:47:19 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FCC35D6AB
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 06:47:17 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m19so2025433wms.5
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 06:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Re9FoO4Z9m5vJuUQtcOAzQpBBqxAeY4JCNTUucox78g=;
        b=ZpFhiUUJZshq1IqpSi1ENhOdo6jzLtAdWcE56yrFGMTRdWJ0o5iU8E7FutYTJH8VYI
         ywt1hQd7tqFkdhumixJNuyIGbwMTlG3x4ZXCA3hjRCUSy0iY96dCfci/4+1tu2XZHLxp
         qKtMBkCB3FS4LWHpPW7dkSWZ01lcy3yCSvSUpj4CcNRnXJT8+lnao56W0Xis8xvzBvrd
         dU5ElT4sX7M3Qwa9TlaZ8TjKQwpBrjTnLUzyZmVwC0x15Vx3q7cTf85sqPvl24umY+KN
         wruANEPhWUxQKOZvGF2aL5z/vxbyZhgo41MUtJE+fwVjGcZCu4ExL1yzMXHOvcKxN2ei
         G2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Re9FoO4Z9m5vJuUQtcOAzQpBBqxAeY4JCNTUucox78g=;
        b=QsIJFECsfOY56CJp4zVQZ11tuKn9UfHXzvYDTADSmMI1zP+00LB5G6fF7mwctc2vld
         HAZJ95Feup8Z92f/yyCyJGxSlGUIVaukUAWCeuqTwH+Yqsewbu//d2cFYQjsnPslkB+Z
         Z8IQWBEU5tESIKjIrmHUFWWJqvzfhXOmzCScpmWIOO5GdhtRWexq6W1yFQdP4PF0iFCv
         Ff+v5bvzjzJ842h6qEb+JCTR4izIO0swDF+Opy5BemeBKu3nNbtpuBrPdRq1H6JpKZdH
         XtOphdU7YuXyJdF8pwsDKFF6vLTBNbebGUwo/iuq4BD8eXQpy8qT5EArZb8mht2dq75C
         WYDg==
X-Gm-Message-State: ANoB5plTf8jCP5+hwiqHIdCpkhwR9JH7SVOOBs6Q4+OB2u62KKLaz4r0
        5x+D9xgqiXOVq+D8QEr0HVKWh4a4H2s=
X-Google-Smtp-Source: AA0mqf50FxZOTAqwpzgrmAjuvuHCUYclcvYgZiNlkFJEgY8B3sUO8epP4CrTApTLxQdfRd9CjZ0N9Q==
X-Received: by 2002:a05:600c:4d22:b0:3d1:cdf7:debf with SMTP id u34-20020a05600c4d2200b003d1cdf7debfmr25310470wmp.26.1671202035847;
        Fri, 16 Dec 2022 06:47:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h15-20020a05600c350f00b003c71358a42dsm14129566wmq.18.2022.12.16.06.47.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 06:47:15 -0800 (PST)
Message-ID: <f3541e56-1c60-6ce7-3ae5-9fece5bd1cc5@gmail.com>
Date:   Fri, 16 Dec 2022 15:47:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 3/5] stpcpy.3, strcpy.3, strcat.3: Document in a single
 page
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-4-alx@kernel.org>
 <8c5dceff-0156-ae5a-1d51-009dfb5eccd3@gmail.com>
In-Reply-To: <8c5dceff-0156-ae5a-1d51-009dfb5eccd3@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KkG8uamFAUsm5pq1VIpwcFyL"
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
--------------KkG8uamFAUsm5pq1VIpwcFyL
Content-Type: multipart/mixed; boundary="------------QzmEawWgcjSaIjfg4NTvD150";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <f3541e56-1c60-6ce7-3ae5-9fece5bd1cc5@gmail.com>
Subject: Re: [PATCH v5 3/5] stpcpy.3, strcpy.3, strcat.3: Document in a single
 page
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-4-alx@kernel.org>
 <8c5dceff-0156-ae5a-1d51-009dfb5eccd3@gmail.com>
In-Reply-To: <8c5dceff-0156-ae5a-1d51-009dfb5eccd3@gmail.com>

--------------QzmEawWgcjSaIjfg4NTvD150
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE2LzIyIDE1OjQ2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkh
DQo+IA0KPiBUaGUgZm9ybWF0dGVkIHZlcnNpb24gb2YgdGhpcyBwYWdlIHdhcyBzZW50IGFj
Y2lkZW50YWxseSBhcyByZXBseSB0byAyLzMuDQoNCkQnb2ghICBJIG1lYW50IDIvNS4NCg0K
PiBTaW5jZSAyLzUgYXJlIG9ubHkgbGluayBwYWdlcywgdGhlcmUncyBubyBmb3JtYXR0ZWQg
cGFnZSBmb3IgdGhlbS4NCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------QzmEawWgcjSaIjfg4NTvD150--

--------------KkG8uamFAUsm5pq1VIpwcFyL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOchPIACgkQnowa+77/
2zLfOg/8DkG3Ch6Uja6IhsKBAv+f05eYMV/ptlf3CdkxEAEP+DOA8T1dhLzSOGJs
5iQjdrOpAfmchdS4t9pucC6YBD/nlgSawLEzM8vWtowUxj4zH59qVW7YfLUilC7p
3NXiqxZWRrencIWeDd5Ruzqp3s6G7YQ+H3YislzpjIFCOblzJqV4eZo5NzAKE0Xk
xW0TXxpmtmlG+iopAQWF01AK/JLZpWLaVWsorQL0iI5a4LlgZJv5CKbeC7xBL2vl
g/3v9FJ9GDqCPGXJKFe47i8M1dLM7nUrVjHZCGuhPchdvrKUUfTZ4I2UvUDdRkdV
QrCfhyEzLcK3Fzgi54/51DnI6yX8Rl8Vr+DLjGOCUDQIu1DfVPjTwtrLjR77CSe1
bQkixSuMppKIg1RCPWh4hGdj1UhHNNAQR7RZz1l4rZ9NZmuGyo4sd6Q+Vlw0jb6z
Q4Rg/Z/ex3s3K0WMaw5idK9PkdHT+SMPmFn3y5ATvQC+f++L1451e/TFz0ZRpHNF
qciH5QzlcWMwriniHB/BgleAZquzfbHpZvpIxQLwzo0vYU0xQUipvt45y19pL2Vr
avYEzj11wLl0VQmsxfR88+5QIseCetqgUG00brSj6geVHfpdUjuo8JNegwcatJIB
1znAbPQrZeWIop6rzfx9wXHUtRBdLt8vSDg31oWL1CiqVCqLo5A=
=N0J9
-----END PGP SIGNATURE-----

--------------KkG8uamFAUsm5pq1VIpwcFyL--
