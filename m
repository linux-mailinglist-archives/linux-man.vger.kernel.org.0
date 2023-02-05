Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CF2E68B2DB
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 00:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjBEXbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 18:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBEXbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 18:31:41 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BDC6199FA
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 15:31:40 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so9636130wmb.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 15:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zaLLL/wjbf2+ZMJStZ7UfvTCizc5oLuz3F/QfrsQrq8=;
        b=EMjmLY+K0doIzISGaEdANvLSnHyUXzi/c85ml2DXd4D65xd8iykvP3JVkQFlQrHgEQ
         kjgaZ5g7X+rVAltijMtU2+shjC+hRtOFD0JYWeDXhg4h/g1lpfYN5Tjn5Y2DqYDkk5fh
         nfzWvn3ZSWP3ftgrgekgCbOQzaxP/QyjpNw/I4sdLaBtOnUvtt0bPHUNZoiDS2wiHIlL
         Q5Xge5Ybk3TLLnsLB1Nkf1tTDd7WER5/NHDbovZLMClDzLY58BofI5HstXdj/B8N5h+U
         sF3m8PG4EvsIw9dpfvP99rYWVvbaRKeNvCnc65n9slLaWfaf1BpTpglN1NBp97xWDB/j
         WHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zaLLL/wjbf2+ZMJStZ7UfvTCizc5oLuz3F/QfrsQrq8=;
        b=dWXAZb+CJ6Qj8Vmt/sUvMso9Ixn4qeY42fq0YvhB1qjz6p/L40wi++UiwpywoGq8Gb
         JdJc2GuftlzurFwVXloS5fJ97c2TMx4SF+/WmJGrbRjDaX9dfXLcYJKy03Nfu20wALU8
         WzCgv+Olrsee6wcfFUsko62400jRUCqdoNbe8JPVkkFIWi4ra2wrRsK1zLjArbq1qts5
         6g9iyMoOvCEqdc+WD6fZppU8zdiy48GZBMjsCoHVy9Gdzim0GLEjDBF4GGOY/W+HoxVV
         h0cWJslX4zKaoNNrNiIctxEiXRvEBgbyVm4hVXe1gp6brVl7pcGfkLuvi9DhDVojAXtb
         wOWA==
X-Gm-Message-State: AO0yUKU1bcf4GdUur4Ov3SLJLt87DAt4MZD2rTlceAx0UDmQW+RTsOfa
        uKHwl+JdBO5O3J302UGxBODSSD/vpwY=
X-Google-Smtp-Source: AK7set+3s6vKM6v61czSVzibq2hOLsfu4SeYYc5K2Yxv8ACPWnu9mrCtC959WfKAimCtTxwMc0nfDQ==
X-Received: by 2002:a05:600c:1c22:b0:3dc:37d0:e9df with SMTP id j34-20020a05600c1c2200b003dc37d0e9dfmr17452383wms.14.1675639898705;
        Sun, 05 Feb 2023 15:31:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c379500b003dc4a47605fsm14099674wmr.8.2023.02.05.15.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 15:31:38 -0800 (PST)
Message-ID: <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
Date:   Mon, 6 Feb 2023 00:31:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fiExbPsgGgXCQNaBcH4Jbd5h"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fiExbPsgGgXCQNaBcH4Jbd5h
Content-Type: multipart/mixed; boundary="------------YlZ00g5FnUXhHSjndXRvOfpN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
In-Reply-To: <20230205225924.63300-2-Brian.Inglis@Shaw.ca>

--------------YlZ00g5FnUXhHSjndXRvOfpN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMi81LzIzIDIzOjU5LCBCcmlhbiBJbmdsaXMgd3JvdGU6DQo+IC0tLQ0KPiAgIG1hbjIv
c2htZ2V0LjIgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pDQoNCkhpIEJyaWFuLA0KDQpDb3VsZCB5b3UgcGxlYXNlIHNlbmQgdGhl
IHBhdGNoZXMgaW5saW5lPw0KSWYgeW91IGZlYXIgdGhhdCB5b3VyIG1haWxlciBtaWdodCBi
cmVhayB0aGVtLCBzZW5kIHRoZW0gX2Fsc29fIGF0dGFjaGVkLCBidXQgDQpwbGVhc2Ugc2Vu
ZCB0aGVtIGlubGluZSBpbiB0aGUgZW1haWwuDQoNCkNoZWVycywNCg0KQWxleA0KPiANCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdl
cnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQo=

--------------YlZ00g5FnUXhHSjndXRvOfpN--

--------------fiExbPsgGgXCQNaBcH4Jbd5h
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPgPFIACgkQnowa+77/
2zIpMBAAlz1+pWNTYIOVoMjZ/wW/yDvPMu4bjtUrjQxgNWmvSZl+J9sCE8y8u8i4
Ya8SjzbQ7gBdxNmTxPLIjdAnMgbY1QuKU++t94DIuk/pF7ZSo/EaL4iE7F2S038H
7liuAa2mnrXWupROjNaKLs7KZlPi8drPjlyh1ADkY6sVuQATXg12KXaxihQ9tgAH
LL56Rpc2Cr7NZMkhz/raY12qqQ2+AzQ+8LUvaBxBwvzxB1xyYU0PGFp7pE/iTF24
69XmhzkpILCp4nbUsP8e3bz+ab20x5mhISgVkmIwKkrkZafJJfwAZrCUDPq2YSIa
X2+EQo2fFh6tneW1BdrpmjUvz0K9PV2sW77A9E9qDicZJBL4ASdOI9CDlC0KgDEM
2jzfRBVFaCNJDMR5Tb3o2wfJlLrF1rrMEyalQOS+WqSbbvATg0jAL1TU5ecslSHu
EJ6TLwV0ZoUL7TJmaLDJ5w5x5GveEcUW2EYGonhobboL2Hl5Kyo73gFdAvqDOXEc
LWNUNcyrWkNLe+sp5/v42DfXct5dXsC4fgdgVWwuOnVxIIB95Xw2x/O6ylqGPPFy
cmzfUQv73wWT+bufmQ9mMCtR99q237g/VaRluCr6VDRwwWM/1w+AX/xcypTgNuif
TZU+QwzghuB8HuIcsoZEKPS+nettLwj1Z2FAxIpV/mabBg/zpIA=
=0GNi
-----END PGP SIGNATURE-----

--------------fiExbPsgGgXCQNaBcH4Jbd5h--
