Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A652F3E39CA
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 11:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbhHHJa0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 05:30:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbhHHJa0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 05:30:26 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8333DC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 02:30:07 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id u5-20020a17090ae005b029017842fe8f82so15748316pjy.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 02:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PU6eb2ir7hIQR9/RY92fuPasKzPyPaxyogOkGHY3Hgs=;
        b=lFGD9oUQuOQsjXtLVU7JtiudYddUorf4YG8VugnMD2DnpaEc4uydpFKebK1yO+NkgT
         QA7MRHWlHhc5LIXDsdgP8C/v91D3SmSLANmwk1Dohr+ogd3c/ODkhAJcPr/4c+BCkEM5
         TDNELQ9QT1BRBTlEN3eqQhQm/DvTRdd5r2bKqqR2jZXIJskGqKbu46vSsQ0rECWbyuRw
         XP1cCSXkbfhiRmix+UplEycCwpwG80762RVXEAdb+ZdbttQatUspmftZfSomdt9G/s/G
         jE+dNV1MXMofIW6TvMvfWlt6CzKENI1K2DGLf0TgIlqmP3P2MIazvWjLNcPcnFCs91LU
         mDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PU6eb2ir7hIQR9/RY92fuPasKzPyPaxyogOkGHY3Hgs=;
        b=Bph03FQaK/DjxgfeduCx0ian21OitgdpKIE5IoVGScYnmn62BTPE4pv5C8TRsOi2ID
         AxuuMtSaPv1TEeZYNWvBO5un3rbWfusw1VCwg57sTpPrvt/O/B57PJjzRFT5BngMySuQ
         7RYT+8netekjgx6R2UPuDb1gnZbhkPoTBKdd6nHhZBWt0Eviy3dcpI5wPPcsR+m45gfF
         nnopO4ZzlUqMPthCYVsmARudqEgHUsPCoQHnDTi2oTPGqZ3f8HHF1l51MULGXfp9bBth
         Fj3QTtCxC6rajpoI+Y7yGWmsrvk+9Z1XxmjIkOhojigK/ShrropL+YykuQCStisMFUFz
         hIFw==
X-Gm-Message-State: AOAM531gI0WkNzwnJjeUZcy5EDVYNAzaWdrRUl8TU9MdgLxjefGM7WeW
        cT5s0qYtA0Kyg9G+PfcKaDfr+nVG90g=
X-Google-Smtp-Source: ABdhPJzBKqEYxIdmjA4+deJSEj/56NLJ00rHGeAeB/Qrfqc7h37scm77cL8bqbU0EZzPnUa54j87aw==
X-Received: by 2002:a17:90a:1a51:: with SMTP id 17mr25108083pjl.59.1628415006589;
        Sun, 08 Aug 2021 02:30:06 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id x16sm4636918pfr.89.2021.08.08.02.30.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 02:30:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 25/32] pipe.7: also mention writev(2) in atomicity sexion
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-26-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <43fd2bda-0e33-ed1c-86e4-af7194e01120@gmail.com>
Date:   Sun, 8 Aug 2021 11:30:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-26-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello наб and Alex,

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> From: наб <nabijaczleweli@nabijaczleweli.xyz>
> 
> writev(2) notes that buffers don't interleave with other process'
> (a reasonable question to ask), but points to pipe(7) for an exception.
> pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
> in order, reasonable search terms: this was confusing at best and
> alarming at worst
> 
> By mentioning writev(2) in the heading, we clearly note that this sort
> of interleaving behaviour matches write(2)'s and isn't a concern
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/pipe.7 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index c3210320c..29f6cf6cb 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -246,6 +246,8 @@ limits; see BUGS.
>  .SS PIPE_BUF
>  POSIX.1 says that
>  .BR write (2)s
> +and
> +.BR writev (2)s
>  of less than
>  .B PIPE_BUF
>  bytes must be atomic: the output data is written to the pipe as a

I think a different fix is required. On reflection, I don't think the
reference to pipe(7) is needed in writev(2) (mea culpa; I added that
text), and I think the text in pipe(7) could be written to be closer
to the POSIX spec, which doesn't talk about "write() calls", but
simply about "writes". See below.

Cheers,

Michael

commit 0602a20452d7abde429bc46215b203160ab70ec0 (HEAD -> master)
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sun Aug 8 11:24:16 2021 +0200

    readv.2, pipe.7: Make text on pipe writes more general to avoid a confusion in writev(2)
    
    After a patch proposal from наб triggered by concerns that, when
    talking about PIPE_BUF, pipe(7) explicitly mentions write(2) but
    not writev(2), I've concluded that the reference in writev(2) to
    pipe(7) is not needed (mea culpa; I added that text), and I think
    the text in pipe(7) could be written to be closer to the POSIX
    spec, which doesn't talk about "write() calls", but simply about
    "writes".
    
    Reported-by: наб <nabijaczleweli@nabijaczleweli.xyz>
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man2/readv.2 b/man2/readv.2
index bd0a6cd2f..c066c73a5 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -141,9 +141,7 @@ are atomic: the data written by
 .\" Regarding atomicity, see https://bugzilla.kernel.org/show_bug.cgi?id=10596
 .BR writev ()
 is written as a single block that is not intermingled with output
-from writes in other processes (but see
-.BR pipe (7)
-for an exception);
+from writes in other processes;
 analogously,
 .BR readv ()
 is guaranteed to read a contiguous block of data from the file,
diff --git a/man7/pipe.7 b/man7/pipe.7
index c3210320c..d79768fb6 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -244,9 +244,7 @@ and
 limits; see BUGS.
 .\"
 .SS PIPE_BUF
-POSIX.1 says that
-.BR write (2)s
-of less than
+POSIX.1 says that writes of less than
 .B PIPE_BUF
 bytes must be atomic: the output data is written to the pipe as a
 contiguous sequence.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
