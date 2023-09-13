Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 698EE79E7C0
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 14:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240337AbjIMMQY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 08:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240324AbjIMMQY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 08:16:24 -0400
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8153A19AD
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 05:16:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by sonata.ens-lyon.org (Postfix) with ESMTP id 439FA20103;
        Wed, 13 Sep 2023 14:16:10 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
        by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id lfLDPZ5n6SZY; Wed, 13 Sep 2023 14:16:10 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by sonata.ens-lyon.org (Postfix) with ESMTPSA id 13A6520101;
        Wed, 13 Sep 2023 14:16:10 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
        (envelope-from <samuel.thibault@ens-lyon.org>)
        id 1qgOmv-004gtl-1u;
        Wed, 13 Sep 2023 14:16:09 +0200
Date:   Wed, 13 Sep 2023 14:16:09 +0200
From:   Samuel Thibault <samuel.thibault@ens-lyon.org>
To:     =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] ioctl_tty.2: Document CAP_SYS_ADMIN requirement for
 TIOCSTI
Message-ID: <20230913121609.e6b54t7g5kgshaoz@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
        =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>
References: <20230913110631.2680550-2-gnoack@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230913110631.2680550-2-gnoack@google.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Günther Noack, le mer. 13 sept. 2023 13:06:31 +0200, a ecrit:
> Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  man2/ioctl_tty.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 85577f80f..ebad97bcf 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -334,6 +334,15 @@ Argument:
>  .BI "const char\~*" argp
>  .IP
>  Insert the given byte in the input queue.
> +.IP
> +Since Linux 6.2,
> +.\" commit 690c8b804ad2eafbd35da5d3c95ad325ca7d5061
> +.\" commit 83efeeeb3d04b22aaed1df99bc70a48fe9d22c4d
> +this operation may require the
> +.B CAP_SYS_ADMIN
> +capability (if the
> +.I dev.tty.legacy_tiocsti
> +sysctl variable is set to false).
>  .SS Redirecting console output
>  .TP
>  .B TIOCCONS
> -- 
> 2.42.0.283.g2d96d420d3-goog
