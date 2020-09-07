Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C11CE25F45B
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 09:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726821AbgIGHyc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 03:54:32 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:42613 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726419AbgIGHyb (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 7 Sep 2020 03:54:31 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 2CA9220596;
        Mon,  7 Sep 2020 09:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1599465269;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=P/YGS9xhhpuTq4a0JABBWcdgXs1c32XtjbtMUwlcP6U=;
        b=klkFyxu+fm76wxNo016MRk5noBxQrpSoU4b7ztLo7PRRI8OJ9mMnSo52v55LY73c/7c4JP
        L7v+P3r8OyM/cryX/QOVugN50p/XHNFKO/i7xZ0jXvTcezDrEot90BIzuyXai+QouNipYE
        taod7GyZh0iLQBPSEfpXWpLSqgqFzN84obmrzV2/0kaGLgZ8REQQDFChE5gR2sKzy1s+if
        g0vtMPOA3msl/LzL20lqX0+fYcPe4+QppPNDwdGNdZor9SoWYUwGHbyW3QW2dDy3FSZ8KV
        x4taVa4u7NtkPL7/dlljRdbxtEKSmdGTqu+/XNOVyI5atQMHkXDw8gcTixceiw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Mon, 7 Sep 2020
 09:54:28 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Mon, 7 Sep 2020 09:54:28 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded
 casts
Thread-Topic: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded
 casts
Thread-Index: AQHWg59XEevPrCOAkke9WUD6b6rYHqlaUL6AgAJ9bvU=
Date:   Mon, 7 Sep 2020 07:54:28 +0000
Message-ID: <16456ba5979244e0981c3764fd564c49@bfs.de>
References: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
 <20200905161050.711839-1-colomar.6.4.3@gmail.com>,<c27b577c-b8b6-4267-78f4-eba030a8ea48@gmail.com>
In-Reply-To: <c27b577c-b8b6-4267-78f4-eba030a8ea48@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.129.18.210]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25650.005
x-tm-as-result: No-10--9.727400-5.000000
x-tmase-matchedrid: q51PvYY4nNTRubRCcrbc5pzEHTUOuMX33dCmvEa6IiHgYNP0+4v1no4m
        akWSIXbD/Wk0p6g0kZIZkOuFEoLztHr3YPuyCqcH4t2mucDkRBECn5QffvZFlWOMyb1Ixq8Vdkk
        6onL8WMzQftcvF9LRG0La6Wfm4nJp/Cg9J3OaIb9+J3gtIe0gAzFcf92WG8u/5NZMkA6RI/DFpY
        Y/Yh3ladpqDQBlV+5irMZTfWObzrYDI91I0N0Y7y9cBNSlgvYqukqRCdoXqVokt9BigJAcVt2T8
        69EU2W81VkuYdrbp0cHdptXFFME78r9HDn98b6Sl2fRVpVyo6R9LQinZ4QefNQdB5NUNSsiV2g5
        +g4QNgKNo+PRbWqfRLI7zVffJqTzBviwU0sFgBzawxgQUUyoNSXo/FZRMLgZ9/GaEPXvV6zXVg6
        W7tv2qn7cGd19dSFd
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--9.727400-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25650.005
x-tm-snts-smtp: 3AF0EF6247199F743AF8F8107EB9D213FE8BDD8CB5FCC4783BF0CF41CD4FEC5D2000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.00
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [0.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         BAYES_SPAM(0.00)[24.05%];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.937];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,
i am sorry to interrupt here but ...
IMHO the void *val is here for a reason, because it means
"this can be anything" the reason why int ** works here is
that the example uses int. You make the example to specific
in this case. may be the example from bsearch is better here.



________________________________________

Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Michael Kerrisk (man-pages) [mtk.manpages@gmail.com]
Gesendet: Samstag, 5. September 2020 21:42
An: Alejandro Colomar
Cc: mtk.manpages@gmail.com; linux-man@vger.kernel.org
Betreff: Re: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded =
casts

Hello Alex,

On 9/5/20 6:10 PM, Alejandro Colomar wrote:
> The type of `val` is `int **`, and it will work with tsearch()
> anyway because of implicit cast from `void *`, so declaring it as an
> `int **` simplifies the code.

Thanks, patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/tsearch.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 2e8403130..7b82d9bd3 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -323,7 +323,7 @@ action(const void *nodep, VISIT which, int depth)
>  int
>  main(void)
>  {
> -    void *val;
> +    int **val;
>
>      srand(time(NULL));
>      for (int i =3D 0; i < 12; i++) {
> @@ -332,7 +332,7 @@ main(void)
>          val =3D tsearch((void *) ptr, &root, compare);
>          if (val =3D=3D NULL)
>              exit(EXIT_FAILURE);
> -        else if ((*(int **) val) !=3D ptr)
> +        else if (*val !=3D ptr)
>              free(ptr);
>      }
>      twalk(root, action);
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
