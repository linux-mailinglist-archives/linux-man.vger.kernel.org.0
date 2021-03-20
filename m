Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7051A342F31
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 20:15:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbhCTTOn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 15:14:43 -0400
Received: from albireo.enyo.de ([37.24.231.21]:46156 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229787AbhCTTOh (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 20 Mar 2021 15:14:37 -0400
X-Greylist: delayed 343 seconds by postgrey-1.27 at vger.kernel.org; Sat, 20 Mar 2021 15:14:36 EDT
Received: from [172.17.203.2] (port=60371 helo=deneb.enyo.de)
        by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1lNgxt-0007Ac-UV; Sat, 20 Mar 2021 19:08:49 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1lNgxt-0002wm-OG; Sat, 20 Mar 2021 20:08:49 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mark Kettenis <kettenis@openbsd.org>
Subject: Re: [PATCH v2] errno.3: ENODATA is an XSI STREAMS extension
References: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
        <20210320114203.2329-1-alx.manpages@gmail.com>
Date:   Sat, 20 Mar 2021 20:08:49 +0100
In-Reply-To: <20210320114203.2329-1-alx.manpages@gmail.com> (Alejandro
        Colomar's message of "Sat, 20 Mar 2021 12:42:04 +0100")
Message-ID: <8735wp1w3i.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> Reported-by: Mark Kettenis <kettenis@openbsd.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/errno.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/man3/errno.3 b/man3/errno.3
> index fe9b7f715..48e3e63f3 100644
> --- a/man3/errno.3
> +++ b/man3/errno.3
> @@ -403,7 +403,8 @@ No buffer space available (POSIX.1 (XSI STREAMS option)).
>  .\" ENOCSI is defined but appears to be unused.
>  .TP
>  .B ENODATA
> -No message is available on the STREAM head read queue (POSIX.1-2001).
> +No message is available on the STREAM head read queue
> +(POSIX.1-2001 (XSI STREAMS option)).
>  .TP
>  .B ENODEV
>  No such device (POSIX.1-2001).

Would it make sense to mention that this error code is reused for
extended attributes?
