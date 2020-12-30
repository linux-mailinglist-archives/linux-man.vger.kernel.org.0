Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D221E2E7CFA
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:35:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726390AbgL3WfZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:35:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726388AbgL3WfZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:35:25 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EDDDC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:34:45 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id x13so16694543oto.8
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=5M5m+2aeEzaQCV44QD2+1gnIqtYT1etJXk8vRnDdgq8=;
        b=sJht2/QSXYRe6Jx2HJXinwq71XTmy3yDkiVd+BoMiTdjIGzzQb7e5r1WRVe9Qo6X5x
         oxhi91zbWnNZ8SAs6brvYQHNZRIVbtUQq7GtZzID7+gWcx7WI69QixzdmwjPKwifT1xT
         AOlASZF1N1TMP87wyHPKsSghK+BHtkZ1y0hlfGkVi+02k1QiVZ+RF3VZIJjMRS3sxL2H
         fMJEiWZaqfV5A5jZOcaVd93HM/OYh4IY/PuE/ccu0Zjf4oaZ2Qbkifcqwsv6HbkluFaZ
         SO9ZVChieB5HVC8F/Gle/XpBdrHfz1yUAFZUrTynMGL9Q5eO9cBO1ZRB5ATdqz2TUpjM
         JLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=5M5m+2aeEzaQCV44QD2+1gnIqtYT1etJXk8vRnDdgq8=;
        b=nrHGNNQNd2QQ84DK+ZFNho1Hnr4B3BbpZs26gQA1zzt5wBw0pM35feiMzuLRzas67H
         c6GiImHmZHYJwkv42YN0uc1zs/4dee9eg7A28RGNM5GdKxY2LYw23EPXhnVT+bXApryZ
         rZ7/r0EkDvA43jYy35wz+6SUAbITUbbME9P6OT22xaBWPvsmoyDvrcNyV8k7KVT2Bf9x
         aiQww9coHIZAHmvvQOKYmU9/PE1HdUyswZQTGi31/h2xuG7ql677J1n/b+uMhjbgXORS
         ICtERTgIds03R6IuEg0qvboKG/w2Tf/UdlxJ/laYeOhPN1/dcPmCavuX6/tWCDtdgQYa
         50kQ==
X-Gm-Message-State: AOAM53330F/KePLUfF6fAnvPXqkz8eWbgy8sYRuGvaMJrtcwtNROXo4r
        qqqGYNu1oDsQzWsL2x0SUfiqdiEUpDF+w4lmiv4=
X-Google-Smtp-Source: ABdhPJyS5PCXu8rWukFndvwxJBpnjnn0KaAjJmJS7iMtERe8JXlOPpeuLg0jEKymrhT9n7tNtShFLvFVjUYawhabvRE=
X-Received: by 2002:a9d:5e0f:: with SMTP id d15mr21770428oti.308.1609367684886;
 Wed, 30 Dec 2020 14:34:44 -0800 (PST)
MIME-Version: 1.0
References: <20201230214147.874671-2-alx.manpages@gmail.com>
In-Reply-To: <20201230214147.874671-2-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 30 Dec 2020 23:34:33 +0100
Message-ID: <CAKgNAkhFQ1R5-z5ERE1kzS=wiALK220UfLYONRh+zp34E0EFwQ@mail.gmail.com>
Subject: Re: [PATCH] Various pages: Consistently use 'unsigned int'
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, 30 Dec 2020 at 22:42, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> $ find man? -type f \
>   |xargs sed -i \
>         -e 's/unsigned \*/unsigned int */g'
>         -e 's/unsigned "/unsigned int "/g';

The patch is fine in my opinion, but the commit message needs work.
Something like:

1. Most pages use 'unsigned int'; make them all do so.
2. Explicit 'unsigned int' is clearer than 'unsigned'.

Thanks,

Michael

>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/getcpu.2     | 4 ++--
>  man2/io_setup.2   | 2 +-
>  man2/mbind.2      | 2 +-
>  man3/cfree.3      | 2 +-
>  man3/des_crypt.3  | 8 ++++----
>  man3/getrpcport.3 | 2 +-
>  man3/random.3     | 4 ++--
>  man3/xdr.3        | 2 +-
>  8 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/man2/getcpu.2 b/man2/getcpu.2
> index fc36b43b5..46e4d53ff 100644
> --- a/man2/getcpu.2
> +++ b/man2/getcpu.2
> @@ -16,8 +16,8 @@ getcpu \- determine CPU and NUMA node on which the calling thread is running
>  .nf
>  .B #include <linux/getcpu.h>
>  .PP
> -.BI "int getcpu(unsigned *" cpu ", unsigned *" node \
> -", struct getcpu_cache *" tcache );
> +.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
> +.BI "           struct getcpu_cache *" tcache );
>  .fi
>  .SH DESCRIPTION
>  The
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index e08d19bb8..bd52a5311 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
> +.BI "long io_setup(unsigned int " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index bf66dfc6c..d98969e7f 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -41,7 +41,7 @@ mbind \- set memory policy for a memory range
>  .PP
>  .BI "long mbind(void *" addr ", unsigned long " len  ", int " mode ,
>  .BI "           const unsigned long *" nodemask  ", unsigned long " maxnode ,
> -.BI "           unsigned " flags );
> +.BI "           unsigned int " flags );
>  .PP
>  Link with \fI\-lnuma\fP.
>  .fi
> diff --git a/man3/cfree.3 b/man3/cfree.3
> index 2a09527a7..74223db71 100644
> --- a/man3/cfree.3
> +++ b/man3/cfree.3
> @@ -36,7 +36,7 @@ cfree \- free allocated memory
>  .BI "void cfree(void *" ptr );
>  .PP
>  /* In SCO OpenServer */
> -.BI "void cfree(char *" ptr ", unsigned " num ", unsigned " size );
> +.BI "void cfree(char *" ptr ", unsigned int " num ", unsigned int " size );
>  .PP
>  /* In Solaris watchmalloc.so.1 */
>  .BI "void cfree(void *" ptr ", size_t " nelem ", size_t " elsize );
> diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
> index 7f34c1585..66fe78337 100644
> --- a/man3/des_crypt.3
> +++ b/man3/des_crypt.3
> @@ -21,11 +21,11 @@ DES encryption
>  .\" .B #include <des_crypt.h>
>  .B #include <rpc/des_crypt.h>
>  .PP
> -.BI "int ecb_crypt(char *" key ", char *" data ", unsigned " datalen ,
> -.BI "              unsigned " mode );
> +.BI "int ecb_crypt(char *" key ", char *" data ", unsigned int " datalen ,
> +.BI "              unsigned int " mode );
>  .PP
> -.BI "int cbc_crypt(char *" key ", char *" data ", unsigned " datalen ,
> -.BI "              unsigned " mode ", char *" ivec );
> +.BI "int cbc_crypt(char *" key ", char *" data ", unsigned int " datalen ,
> +.BI "              unsigned int " mode ", char *" ivec );
>  .PP
>  .BI "void des_setparity(char *" key );
>  .PP
> diff --git a/man3/getrpcport.3 b/man3/getrpcport.3
> index 2eba5d30a..d5753d39b 100644
> --- a/man3/getrpcport.3
> +++ b/man3/getrpcport.3
> @@ -13,7 +13,7 @@ getrpcport \- get RPC port number
>  .B "#include <rpc/rpc.h>"
>  .PP
>  .BI "int getrpcport(const char *" host ", unsigned long " prognum ,
> -.BI "               unsigned long " versnum ", unsigned " proto );
> +.BI "               unsigned long " versnum ", unsigned int " proto );
>  .fi
>  .SH DESCRIPTION
>  .BR getrpcport ()
> diff --git a/man3/random.3 b/man3/random.3
> index 33d15316b..9ea6fce3f 100644
> --- a/man3/random.3
> +++ b/man3/random.3
> @@ -39,9 +39,9 @@ random, srandom, initstate, setstate \- random number generator
>  .PP
>  .B long random(void);
>  .PP
> -.BI "void srandom(unsigned " seed );
> +.BI "void srandom(unsigned int " seed );
>  .PP
> -.BI "char *initstate(unsigned " seed ", char *" state ", size_t " n );
> +.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
>  .PP
>  .BI "char *setstate(char *" state );
>  .fi
> diff --git a/man3/xdr.3 b/man3/xdr.3
> index 713827567..978a50660 100644
> --- a/man3/xdr.3
> +++ b/man3/xdr.3
> @@ -433,7 +433,7 @@ C characters and their external representations.
>  This routine returns one if it succeeds, zero otherwise.
>  .PP
>  .nf
> -.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned *" up );
> +.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned int *" up );
>  .fi
>  .IP
>  A filter primitive that translates between C
> --
> 2.29.2
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
