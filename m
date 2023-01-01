Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DEF665AAB3
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 17:40:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230433AbjAAQk0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 11:40:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbjAAQkZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 11:40:25 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73899FC7
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 08:40:22 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id AC62A240247
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 17:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1672591220; bh=r69ZDVVwwTCA/yECBoBMZLNiuuKF9hnHWocpSoIYfGM=;
        h=Date:Cc:Subject:From:To:From;
        b=jbJjcvoeSg1aP8CH0TjhwhAzSdxnhiQK5YsZTVr4NpM4qkLA1xHTY4Q9h1sf94gmQ
         IM57dASjRCsmT5yMQ+jwlKmqQ2lksPSwxUEOszyQF9soyNhw37y3OQ7/+Wn4V89/Yq
         8Yn3LntdjvxU2Q7XZ6HFPzfcwaU/x7DJADPWQ9cr0JH71WDtiXVcs2hFknDT7+Wpx2
         BTWTTLeh/3RL8sxK3V8++ceC8L6buN3hrGbkJDvxyGXKsaLCrRn61XMtsaeSLDNkK+
         cXv+SW81aErT02xQpjoCiJUNJ45kprf3YiTaap7EdFunw9cc7Ftixa0fnLFfbg4PEw
         vZbsb1SrFdaqw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4NlPql1X8Dz9rxN;
        Sun,  1 Jan 2023 17:40:19 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sun, 01 Jan 2023 16:39:05 +0000
Message-Id: <CPH02SKUI9O7.27QRN0MS8YK88@morphine>
Cc:     "Alejandro Colomar" <alx@kernel.org>, <libc-alpha@sourceware.org>,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
References: <20230101162627.28031-1-alx@kernel.org>
In-Reply-To: <20230101162627.28031-1-alx@kernel.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun Jan 1, 2023 at 5:26 PM CET, Alejandro Colomar wrote:
> arc4random(3)
> arc4random_uniform(3)
> arc4random_buf(3)
>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man3/arc4random.3 | 104 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 man3/arc4random.3
>
> diff --git a/man3/arc4random.3 b/man3/arc4random.3
> new file mode 100644
> index 000000000..5fd292321
> --- /dev/null
> +++ b/man3/arc4random.3
> @@ -0,0 +1,104 @@
> +.\" Copyright (C) 2023 Alejandro Colomar <alx@kernel.org>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH arc4random 3 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +arc4random, arc4random_uniform, arc4random_buf
> +\- cryptographically-secure pseudorandom number generator
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " -lc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <stdlib.h>
> +.PP
> +.B uint32_t arc4random(void);
> +.BI "uint32_t arc4random_uniform(uint32_t " upper_bound );
> +.BI "void arc4random_buf(void " buf [. n "], size_t " n );
> +.fi
> +.SH DESCRIPTION
> +These functions give cryptographically-secure random numbers.
> +.PP
> +.BR arc4random ()
> +returns a uniformly-distributed value.
> +.PP
> +.BR arc4random_uniform ()
> +returns a uniformly-distributed value less than
> +.I upper_bound
> +(see CAVEATS).
> +.PP
> +.BR arc4random_buf ()
> +fills the memory pointed to by
> +.IR buf ,
> +with
> +.I n
> +bytes of random data.
> +.PP
> +The
> +.BR rand (3)
> +and
> +.BR rand48 (3)
> +families of functions should only be used where
> +the quality of the random numbers is not a concern
> +.I and
> +there's a need for repeatability of the results.
> +Unless you meet both of those conditions,
> +use the
> +.BR arc4random ()
> +functions.
> +.SH RETURN VALUE
> +.BR arc4random ()
> +returns a random number.
> +.PP
> +.BR arc4random_uniform ()
> +returns a random number less than
> +.I upper_bound
> +for valid input, or
> +.B 0
> +when
> +.I upper_bound
> +is invalid.
> +.SH ATTRIBUTES
> +For an explanation of the terms used in this section, see
> +.BR attributes (7).
> +.ad l
> +.nh
> +.TS
> +allbox;
> +lbx lb lb
> +l l l.
> +Interface	Attribute	Value
> +T{
> +.BR arc4random (),
> +.BR arc4random_uniform (),
> +.BR arc4random_buf ()
> +T}	Thread safety	MT-Safe
> +.TE
> +.hy
> +.ad
> +.sp 1
> +.SH STANDARDS
> +These nonstandard functions are present in several Unix systems.

I'm not a native speaker, but I think it should be s/in/on/.

--
Best Regards,
Tom Schwindl
