Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7425641CD5
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbiLDMNK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:13:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiLDMNJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:13:09 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A385FF2
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:13:08 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id u12so13770254wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zYyLWYhSLMlMUTcmZxvUyKUwzdY553nUcLznnRUw7g=;
        b=FEYxLzkiZSj9Kq27NEvcqo8oM52ZozRntZ/FnHY90CWcPDiyYtmNfZ2N8vlXPToNWp
         ghhVx/pwey+8B/yB+jOPx8rVLBGxCAphbLByGv4z6XoE5vPIC/Zk9oQYxgcvZgTmA4vy
         KjB2afm6X0fG25qgHMeLSbQVWOM2j0SOUzZ1Xxf1qv9qzlZs2UwU/x7izjzcQQbBfCL1
         3QJzmz3mbmZ4/RJJE+Se5KwYyKwZVs8d/d63LmPMOnrJYQg25Rp3KXPtLstjZ5pW6X9O
         UURVDRVWs0trfV+Pdt19kMXdIPGrix7wjyBeMV73sxj8fvKz+wuIEgu+rv19lzAbOOGf
         XuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4zYyLWYhSLMlMUTcmZxvUyKUwzdY553nUcLznnRUw7g=;
        b=KpWGffaa4WEhIXZPxMJZgMKX1dFLrStBuW1+ZG/vmqtj62ZBlo07ciNamkoSnOL4wF
         TbXkBQRSbDpTeBZmIcsFBjn58AN2w57x1uVuTkl/0K3ICCRub5Icd2UwgIKsj8u0y6DC
         TgQhpDzH9YIUJgXgI0zbSLlGfwIx66s2vXO1xgjZWsH2uPmRAzvsJ/C3uso+qoATQriK
         OLkzFrEl/zuEvY9/r631nB3LkM1OskAtQf4tc3XEAd1itG0AyhesWBjquBIpKGZpq+QO
         148c0NDLmAC5wZ+xDu2w5iif5KjLzwjgJ9dZsddszMMP3o0KXnzci5IKJZITsU7C7W+E
         XKwQ==
X-Gm-Message-State: ANoB5plEa38PuWNyB2JtKh4IhFn4RXK3LjJek+P3XYaARx+ZMnwKgluE
        wIIb5+jEyiBEtlmR+a6RtuDcxTM6+G8=
X-Google-Smtp-Source: AA0mqf4v9wBVypVYegFvALcrsIz4fum7cQWSUQnKlNTtERrd9nDO5H1cpSftzTZh6iWO1WBAdjrT3w==
X-Received: by 2002:a05:6000:239:b0:242:423c:4ce9 with SMTP id l25-20020a056000023900b00242423c4ce9mr6999506wrz.399.1670155986825;
        Sun, 04 Dec 2022 04:13:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q13-20020a05600c46cd00b003c6f1732f65sm19737874wmo.38.2022.12.04.04.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:13:06 -0800 (PST)
Message-ID: <df0d7373-9a7e-0969-6423-3c601e5159f4@gmail.com>
Date:   Sun, 4 Dec 2022 13:13:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090710.GA324@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nOn76xP3x0OO65FkALJtpMIY"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nOn76xP3x0OO65FkALJtpMIY
Content-Type: multipart/mixed; boundary="------------mpSoPNncA8fx9k1GPYQGioez";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <df0d7373-9a7e-0969-6423-3c601e5159f4@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090710.GA324@Debian-50-lenny-64-minimal>

--------------mpSoPNncA8fx9k1GPYQGioez
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIG1vdW50IG9yIHVubW91bnQg4oaSIG1vdW50IG9yIHVtb3VudA0KPiANCj4gIlRoaXMg
bW91bnQgc2hhcmVzIGV2ZW50cyB3aXRoIG1lbWJlcnMgb2YgYSBwZWVyIGdyb3VwLiAgTW91
bnQgYW5kIHVubW91bnQiDQo+ICJldmVudHMgaW1tZWRpYXRlbHkgdW5kZXIgdGhpcyBtb3Vu
dCB3aWxsIHByb3BhZ2F0ZSB0byB0aGUgb3RoZXIgbW91bnRzIHRoYXQiDQo+ICJhcmUgbWVt
YmVycyBvZiB0aGUgcGVlciBncm91cC4gIEk8UHJvcGFnYXRpb24+IGhlcmUgbWVhbnMgdGhh
dCB0aGUgc2FtZSINCj4gIm1vdW50IG9yIHVubW91bnQgd2lsbCBhdXRvbWF0aWNhbGx5IG9j
Y3VyIHVuZGVyIGFsbCBvZiB0aGUgb3RoZXIgbW91bnRzIGluIg0KPiAidGhlIHBlZXIgZ3Jv
dXAuICBDb252ZXJzZWx5LCBtb3VudCBhbmQgdW5tb3VudCBldmVudHMgdGhhdCB0YWtlIHBs
YWNlIHVuZGVyIg0KPiAicGVlciBtb3VudHMgd2lsbCBwcm9wYWdhdGUgdG8gdGhpcyBtb3Vu
dC4iDQoNCkZpeGVkIChhbmQgYWxzbyBzZXZlcmFsIG90aGVyIGlkZW50aWNhbCBjYXNlcyku
ICBUaGFua3MuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------mpSoPNncA8fx9k1GPYQGioez--

--------------nOn76xP3x0OO65FkALJtpMIY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMjtEACgkQnowa+77/
2zLTjg//Rvuclnr8BuWjTBLSIWENMyMlyL8LWJReZTotMqsFW2Z9hikdcum3YMDu
+DgHZeoiXmiDObJlAD+bjG2Fd+I6S7E81ijqE9IL1CD30wmaf97/jC1ZABpy3oSg
NZyV/lJ4C1Y7oMoXXLgy6Qn8L7RKTD2OjlLg4Wcq6CStdHiict/Mk8IDLC0srbg7
GOmnT5ZXRbJTFBq/AZxb3umWpWk0fCkahjiR1MzzsUc3wO+E7hHQHDOCJ7cct4cv
7IksWaZEuzQrGrxK4cXfuQ24F4/Lv4SWYBFVPGb6qy9dm1meqymI4mqgMuFmioNq
QBDM/Zq2lEUUQvkPWVEfQXW8uiu6aj/V2ScNGj1d26vXhppSYMu0EVoXexvKUSsi
eM+0oZxPFPWlcS8K442HATyk3+78CphlxK/Id9BFY6klVOhtIKJRLhQTP/9lrTH/
JJYlLX2O0rqDrPWF4KJnxTMJZZT0qnut3UvIVobklMsd5oWVEItYK6NZUrdu34/7
87m7p8g7jlTn6NnW7X/UvvonK8fBLsEZMN8dDi1NZz38sWUBnTefFUnBhw7gZ8dz
O2O2sWk1jOhvKd4OuofFGk3sSJ1QUVBZOfbNmbT0xLLPS1SWW8QF38ASMXEezDQM
zg5u+h8f5cVdkH1lNNpujdfFBsIqKzMqZQAwc83dzWxMQUXm458=
=iQo6
-----END PGP SIGNATURE-----

--------------nOn76xP3x0OO65FkALJtpMIY--
