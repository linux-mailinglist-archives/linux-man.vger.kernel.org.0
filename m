Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F003A594E88
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 04:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233598AbiHPCPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 22:15:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239834AbiHPCP3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 22:15:29 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C029247438
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 15:24:14 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso8452394wma.2
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 15:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=dL1+pritrp6uA/wns6XZBcnp9x9OzOvraL65ZItztZU=;
        b=jrIAqa+d0cuwuEUkF9D7xHIAQy3UC9GsWnFZjZohusOPIBioqT0CFD6Ddq80a4AarB
         MG2JEXisfe/T5EiaxhQceReDlFDfCfmOyZCxlSiIvBxftxdxzezhbOuC9yYME0Ok/yNX
         ZrYxxfe+7TFUOPZRvOm42GdKn4RPMJ52G+cGgwte1XP7JkhYM3AYRjfxCTYYGETbJ7bb
         X4tNSc0B9xt4ENCrSr5LHka9v8YxMIe8aH6ULBF7hZuXu0gLrntjKK2mt681W5VwEGvf
         rwvGVT1YRDtRJm7Xfb89Y2YthB0/GXeX0wp1ydneo15uTg1XFQoNhHxhcthk4sW25v6o
         Kfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=dL1+pritrp6uA/wns6XZBcnp9x9OzOvraL65ZItztZU=;
        b=G2p+0Yc5dTV2NdsKvtpz4GH8a7kCz4g6wSh4hWXq37zlS45/fPl6Txvyx0676E/7s6
         bLwcflloZWa0eLOGY14wQuj1Q2YnlzgXLFt0BcJub0khgAG8HkJeZoXq4oJVoEOoJj6h
         tL88J2FXYpCHkKIg1ap4QWmBYN+5B5seSO8X6YrtGzAHaznSa3q4ERgWbCNAagimwGU6
         1ZBYQi9He06ODwxK3ebsccUn8bcIQ7+DvwoauESnjsJVU0ijLM+ahruhiwsEV6D4qOuJ
         i0mE6hlmacD6sI0Hi79xnU5UHBgmIG6lhR8WDv3sYK1VeKaM37AWZOI+51JdmZF2Af+1
         Jrog==
X-Gm-Message-State: ACgBeo00F2wyx/6cZNT5Ri3KR4cpxr/3AmVKYKbIJIKH+d/SKM46MU/T
        oJIr2IunPun35T5p/5GA0vU=
X-Google-Smtp-Source: AA6agR4oZ7GXgRMiIjtoE1w9ZfI3/i1oNKazuuOdNKbpMGwdTJ8ZGfXpp1LRNJ+s7/orljt0iV4KxQ==
X-Received: by 2002:a05:600c:34c5:b0:3a5:fd9d:7b2b with SMTP id d5-20020a05600c34c500b003a5fd9d7b2bmr2845298wmq.1.1660602252544;
        Mon, 15 Aug 2022 15:24:12 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f13-20020a05600c154d00b003a52969e89csm11825465wmg.4.2022.08.15.15.24.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 15:24:12 -0700 (PDT)
Message-ID: <12b8a156-0f77-b4f6-8938-0f0118df8e34@gmail.com>
Date:   Tue, 16 Aug 2022 00:24:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: TAB character in groff output
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
 <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
Content-Language: en-US
In-Reply-To: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hT3jbIg2Qz6g9gZ8VNmufuOR"
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
--------------hT3jbIg2Qz6g9gZ8VNmufuOR
Content-Type: multipart/mixed; boundary="------------Mu5YlPocTWXJRwPmakZ6eyf0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: groff@gnu.org, linux-man <linux-man@vger.kernel.org>
Message-ID: <12b8a156-0f77-b4f6-8938-0f0118df8e34@gmail.com>
Subject: Re: TAB character in groff output
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
 <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
In-Reply-To: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>

--------------Mu5YlPocTWXJRwPmakZ6eyf0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gOC8xNi8yMiAwMDowMSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+IEkgbGlrZSBpdC7CoCBJIGFwcGxpZWQgYSBwYXRjaCB3aXRoIGV4YWN0bHkgdGhhdCAo
YnV0IC5NUiAtPiAuQlI7IEknbGwgDQo+IHN0aWxsIHdhaXQgYSBmZXcgeWVhcnMgYmVmb3Jl
IHVzaW5nIHRoYXQpLsKgIEJUVywgQnJhbmRlbiwgZGlkIHlvdSANCj4gbm90aWNlPyA6UA0K
PiANCj4gPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9t
YW4tcGFnZXMuZ2l0L2NvbW1pdC8/aWQ9OTI0OWUwZjBlOWNhZjlkYTY5NmUxYTM4MzBkMmEx
MDRhYmM4MDU5MT4NCg0KTWVoLCBJIGhhZCB0d28gdHlwb3MuICBPbmUgd2FzIG1pc3Npbmcg
cGFyZW50aGVzZXMsIHdoaWNoIEkgZml4ZWQgaW4gYSANCnN1YnNlcXVlbnQgY29tbWl0LiAg
VGhlIG90aGVyIHdhcyB0aGF0IEkgbWlzc3BlbGxlZCB5b3VyIHN1cm5hbWU7IEkgDQpjYW4n
dCBmaXggdGhhdCwgc29ycnkuICBJIHNob3VsZCBwYXN0ZSBpdCBuZXh0IHRpbWUuICBNeSBH
ZXJtYW4gc2VlbXMgdG8gDQpiZSBydXN0eS4gIDovDQoNCkNoZWVycywNCg0KQWxleA0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------Mu5YlPocTWXJRwPmakZ6eyf0--

--------------hT3jbIg2Qz6g9gZ8VNmufuOR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6x4MACgkQnowa+77/
2zImkg/9GKjs5/jA49bkl/c8ios0ZGxxPvI13WIq84XwbFbSvr8tLNyLoAXMiNQl
HBemcTzmPG88mijCPB3vTSg3XLeu4Jrp+1m1E31GVZfAlKg8hupojWutu7plss22
bc9W8G/6BYjXq5SsJNWqfJ5RmTzT9dZy9eIhu/P+UsYFSWZETB1iEqfZSaFOHgNu
kIyBtxAwQ8FI1Q4j5DaMxNx9Waj3fA2UJJKg3kjVeRwFaoz4YRKMfMUl0tihP2mH
jF/ZhCzPbj9AGoU1mf53UD5Y9UyY0gVQ9KS0KrtMSpMcaSxeUEpytSd7/RRKzxw9
MoCS8LRxw8Ej88D+JRkSKW/WiyWuSSNZuavbG8420oHXtAbOmQlHoaXImBsIE4FI
Zhob/dvygRk3MOeVx5BzJnzzfOCwr5n/eNtKnQdCwySOOaTx4uek79bk0LCd4rNA
7ujgByeGM8oQ8esVrOR0ZquysT5nLmaV7YEcMXQtJj5o9E1Th/3Qyl6UORGX2Vq4
M9tYg8XlsbXH3n8UEcAzpvtm7Gjt+fm8x8+NSXKN7ocSvlh7Qyzm0sn5XBinEVZa
wAmLV/6h7HbKcfaYXjvENhawZtQOn73txHtAiW40XG5ecq4UiYnf0t/4oa6ZO7mB
gPGqjppL6rbZKmKpnZ6U6fIMacGMRWHgxAIq+hoREvzEx0MVniw=
=VnM8
-----END PGP SIGNATURE-----

--------------hT3jbIg2Qz6g9gZ8VNmufuOR--
