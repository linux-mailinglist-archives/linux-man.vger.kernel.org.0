Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 442BA5816CF
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 17:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232396AbiGZPy4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 11:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230291AbiGZPyz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 11:54:55 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B675C2CDC2
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 08:54:54 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-f2a4c51c45so19098345fac.9
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 08:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=03nA0Vd3oV1AGMHlBrp/41FE/vu0bDjMXheYKsxEpuY=;
        b=lRpp3xil8RmJlSpV01bWXZcHfIfLt8KGASMkG+xXwZjHxeEODhJfg5oRWGuD9unDM/
         lAyuhwWVfv3l/9C1CLIDRW3OjCZrKGO4A63qxn/03cL14PaRRbad8bh26yrt3H9ifq3t
         cPXJzWYZoRrnkw+YP5fjOf/YE82vL/IdKAN1WbLuJqotdCv0SKhNHLN6AmmIlOB1VEAJ
         x46LDtTgGGAq0b9MnmMctzRwVkDaKlQnikHEcwkzwYnMYjIP7MDVC3eorIUbHYWNyFZF
         jy+GmO0ebWBPLZ/KBqN+qfu62fUN+/+I9rx+o3RbDIGcW1qveFf8Mr/qdwgpOgATRln9
         QbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=03nA0Vd3oV1AGMHlBrp/41FE/vu0bDjMXheYKsxEpuY=;
        b=xeOxJCBLcrSrRInZD7eLlhm6chVw56qEtRRhzMmlkXRn2FKYCmKkwoQcR/12Phdabd
         AJI24e9xrXdRAr1yUfjCbNBELScNg2n3dTk54/H+YhkhlJ2gb9OCTqsguLptlsGKf2IW
         fLq5ARwqICoU9F4Ug0fSBa+0z9CD3DKerqWCfh0pEm+9wLqlbAwgZOOzawMzMkUi8H8R
         nGSWB2EH6GSlvyxlcYgg+fYEEb+nDkB02eDd3DmB0JlD+OpNHOudKZYO5iz0UUbt79+5
         STrng5Gl0p6nGI6Q1/dWPukbsCqoCiMF1Nfbcd9LxoLJNGwIc0yb7mykUOwk7GjUbL9z
         8/Aw==
X-Gm-Message-State: AJIora/vDoHde0FnhQoFMDwohExpPpbsaSPJD1gymbuj/eYHeuK1vVHg
        f1ABDeVbnaAdgoP02fRO2wjiZgnXtGJpvg==
X-Google-Smtp-Source: AGRyM1swG00TYiJkvuT6dAeevjw+xKr5jHqiGaEUEV/n7Qpyd68JjXM47FkKkdB/kQYC8N19akM9jA==
X-Received: by 2002:a05:6870:5b8b:b0:10d:88ef:b5be with SMTP id em11-20020a0568705b8b00b0010d88efb5bemr15357081oab.105.1658850894044;
        Tue, 26 Jul 2022 08:54:54 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f189-20020aca38c6000000b0033a45705cb2sm6224468oia.8.2022.07.26.08.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 08:54:52 -0700 (PDT)
Date:   Tue, 26 Jul 2022 10:54:51 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH v4] NULL.3const: Add documentation for NULL
Message-ID: <20220726155451.fhsp4dmesqyb76gf@illithid>
References: <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220726124800.108850-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qifejghen3tzxdfe"
Content-Disposition: inline
In-Reply-To: <20220726124800.108850-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qifejghen3tzxdfe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

I'm a bit late to the review party.

At 2022-07-26T14:48:01+0200, Alejandro Colomar wrote:
> diff --git a/man3const/NULL.3const b/man3const/NULL.3const
> new file mode 100644
> index 000000000..28a6f67aa
> --- /dev/null
> +++ b/man3const/NULL.3const
> @@ -0,0 +1,76 @@
> +.\" Copyright (c) 2022 by Alejandro Colomar <colomar.6.4.3@gmail.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.\"
> +.TH NULL 3const 2022-07-22 Linux "Linux Programmer's Manual"
> +.SH NAME
> +NULL \- null pointer constant
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <stddef.h>
> +.PP
> +.B "#define NULL  ((void *) 0)"
> +.fi
> +.SH DESCRIPTION
> +.B NULL
> +represents a null pointer constant,
> +that is, a pointer that does not point to anything.
> +.SH CONFORMING TO
> +C99 and later;
> +POSIX.1-2001 and later.
[...relocated material for a topic shift...]
> +.SH CAVEATS
> +It is undefined behavior to dereference a null pointer,
> +and that usually causes a segmentation fault in practice.
> +.PP
> +It is also undefined behavior to perform pointer arithmetics on it.

s/artithmetics/arithmetic/

This word is always singular in English.

> +When it is necessary to set a pointer variable to a null pointer,
> +it is not enough to use
> +.BR memset (3)
> +to zero the pointer
> +(this is usually done when zeroing a struct that contains pointers),
> +since ISO C and POSIX don't guarantee that a bit pattern of all 0s
> +would represent a null pointer.

Tighten: s/would represent/represents/

> +Instead, pointer variables need to be explicitly set to a null pointer
> +when they need to hold a null pointer.

This feels nearly circular to me.  I suggest

s/explicitly set to a null pointer/assigned the null pointer constant/

That's all I have review-wise.

> +.SH NOTES
> +The following headers also provide
> +.BR NULL :
> +.IR <locale.h> ,
> +.IR <stdio.h> ,
> +.IR <stdlib.h> ,
> +.IR <string.h> ,
> +.IR <time.h> ,
> +.IR <unistd.h> ,
> +and
> +.IR <wchar.h> .

Not exactly on topic (sorry), but apropos of our concurrent discussion
on man pages for constants with external linkage and data types, the
foregoing is an excellent counterexample of what I contend is good
practice: document them in the man page for the header file.

It is only the standard C library that avails itself of such a rampant
multiplicity of definition sites for constants.  This is of course
because of the synergy of 2 factors: (1) the library header design is
modular, and yet (2) the null pointer is ubiquitous and supports
applications in many application areas.

To me, this supports rather than undermines my argument for header file
man page contents, because as we can see here, what we've diagnosed is
really a missed opportunity to define the null pointer constant _at the
language level_ instead of relegating it to an optional feature of the
standard library which you nevertheless will have a hard time doing
without.  C programmers can code freestanding applications without
resource to the standard C library.  What are these freestanding
applications, invariably?  Operating system kernels, or machine-mode
code doing the work of an OS alongside its (presumably embedded,
microcontroller-like) function.  Are _those_ going to have a use for a
null pointer constant?  What do you think?  ;-)

POSIX supplements to the standard C library, and other libraries for C,
will not typically have this difficulty, and will have one definition
site only for their constants with external linkage.

Regards,
Branden

--qifejghen3tzxdfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLgDkIACgkQ0Z6cfXEm
bc4G6w//Rlh6r7U6XUit/+6GRHA8KA5KU17CJwRVWUiyWYlDCubUzGKt/O4Cm7WH
5Fel5vTHTCpaDgr1xHzgQog3JhmXDfHgwgU6kSrK8a0B+5ftkQNf72Ddq/A09tRV
6VEg9XKprvg1jSsDlDS13dTww6NVPjze55Sx4+JwnoIgIyUak/WLWnj2IivKeGps
fSRoYJu1W7kgSDRWsJ9adX6fDSB4IUZYb6mN91lRAzt5+TfbadqNVzhL+hEpNeZ4
UgrovxmeB1RUfGKLAlK7t+OWNfPS6kHYJIy3C2YKSeObWPPXC61hHGuK0/NFLTp+
DUpGwrC3d1Yq5sp0kbhTzVk+Q2LJUPlkOStNj5Q4YS79MceYLB+ZmfDOTfEOmQuy
H7I7YW4w6tpps+Dh1vnqtS8fuUZ9kefNlECDWvHAYQnAfpCd48L/lS2B8majshdF
V02biNO/Q0o0n/PSz8ypqYMk6cMLYN52hIzANx7RhzTJwH6F5YiOMn8scmOYYmnW
xkB/MP8NZmDg+mYJoPV1bWuvI5YBbxwAk5AHatq3q9yj+qJWDPRtpw48yUSQshc0
TThgpq9ewupTB50OnlNgoFO4rG3ID6RIF/2YCuiWq6ZLYnMyzquYsgocRhGNbCxK
8+a+3DqPwPlrBDD1d0rZ0mhasL7GCHQx4f/078GrBxs9GjkWgGA=
=Tyte
-----END PGP SIGNATURE-----

--qifejghen3tzxdfe--
