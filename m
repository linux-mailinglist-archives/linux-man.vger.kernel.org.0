Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 998A64D8582
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 13:56:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237777AbiCNM50 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 08:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237740AbiCNM5Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 08:57:25 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD7811A16
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:56:16 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i8so23820597wrr.8
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=EfwwOT/a08GLrxQh/W5aHd7zoCRVM5IRIc7VTX1VdOQ=;
        b=UX/NdDJOd9Nq/y4nLDbzlsF6qarTOdbx4zUlatnQKN0YOIfQieE66+Z2yEdeANgMGu
         /GnSZQKgvnvL3JGdLPTmS05vwqk4gdlDSYDEMMGxYqYKjTlp4qiqjeqPZtdQX0HLTOtJ
         KTD8IKJF6Hd4gsksbIcEhe3YT+QQg95Zi1lbrRz++IopfhFh6VrbKhNyaPxTpEy0egem
         JJ2X0PbKwlYqB8MMkUxbljP6ZEA51nVX0fX9AmLWxDnECivXCyBsf+UsyE0umiPwl1n1
         5YtTimdlcyG+GutNambXw/6lQ1snTTx8yA0SnnjgySP44ej7BanktqVuSbATT5ltoWve
         Rtrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EfwwOT/a08GLrxQh/W5aHd7zoCRVM5IRIc7VTX1VdOQ=;
        b=rzxkI/QGoPhgn0OLeNIyfXRAWQTZ4fCgNrEompPUV+O1BWotL6HKAjRpvYISp8EcrM
         37LVrYaJzAyEfP+NGj/2nwp9OFj6GIVVj+kc0Wc8PFNryza3YSvhFx0a6q1KOm6a/fcX
         tLuZK3QuRy/VZkd3JjY02RBiqf6I3FNn9J/Z9Q1iFfNFdEpg+RSy5uUipXgAVNTbc5J2
         SvbRTxT1vjaPoAkXt5FFbHz8ZPtqnMiNW2bDbKXGP+hyCwi0n/pcEg7EKSAGu162gmyS
         CNJ3KPrb6/9i/e8Kp3UPVAn35vaLNCbZYBIyr9biAAVq9yaEz3Cbb8s2MBa7K/HR7Bry
         I2fQ==
X-Gm-Message-State: AOAM533h/k3cfWSBe6KPRin3xTOg4/dxKXVSRX6QkiAkhbx1+mtfc+WY
        P/RuHkDzVIAACQuhq8SCLDI=
X-Google-Smtp-Source: ABdhPJzkL519O0bBGxOY6XYCN8Mrr1D+xJWsTzMgmyovMBofcDx+pZkpERzoURsif715PeDVyE+hcw==
X-Received: by 2002:adf:f691:0:b0:1f0:5e18:1bab with SMTP id v17-20020adff691000000b001f05e181babmr16296579wrp.215.1647262574623;
        Mon, 14 Mar 2022 05:56:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i11-20020a05600c354b00b00389f440512esm9154339wmq.32.2022.03.14.05.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 05:56:13 -0700 (PDT)
Message-ID: <0626b436-bb01-5072-fc9f-aa699ccd5c6f@gmail.com>
Date:   Mon, 14 Mar 2022 13:56:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [patch] fcntl.2: Add ESRCH to list of ERRORS
Content-Language: en-US
To:     Paul Bergmann <paul.bergmann@fau.de>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jeff Layton <jlayton@redhat.com>
References: <60607b92-f100-d114-4a42-565e20f29c58@fau.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <60607b92-f100-d114-4a42-565e20f29c58@fau.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 3/10/22 17:28, Paul Bergmann wrote:
> Hello everyone,
> 
> when setting the notified PID for async operations using F_SETOWN
> (F_SETOWN_EX respectively), the operation may fail if no process with

I think s/may/will/ w

> the specified PID is alive and visible to the caller. In this case, the
> errno is set to ESRCH. This was introduced in the kernel by
> f73127356f344483c82632accda2e72b7e0e5f25.
> 
> Here is an example program showing this behavior
> 
> setown_nonexisting.c:
> 
> #include <fcntl.h>
> #include <stdio.h>
> #include <stdlib.h>
> static void die(const char *msg)
> {
>     perror(msg);
>     exit(EXIT_FAILURE);
> }

Just in case you didn't know, there's err(3) in <err.h> which is very
close to this :)

> 
> int main(void)
> {
>     int fd = open("/dev/null", O_RDONLY | O_ASYNC);
>     if (fd < 0) {
>         die("open");>     }
>     /* Assuming there is no process with PID 999999 */
>     if (fcntl(fd, F_SETOWN, 999999) < 0) {
>         die("fcntl");
>     }
>     return EXIT_SUCCESS;
> }
> 
> $ cc ./setown_nonexisting.c
> $ ./a.out
> fcntl: No such process
> 
> I hope my patch is according to the standards.

Please add patches inline if you can (or both inline and attached if
inline is likely to fail), but inline is easier to quote and reply.

> 
> Best regards
> Paul Bergmann

Please sign the patch with "Signed-off-by: ..."
<https://www.kernel.org/doc/man-pages/patches.html>

> ---
>  man2/fcntl.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man2/fcntl.2 b/man2/fcntl.2
> index 7b5604e3a..18651321f 100644
> --- a/man2/fcntl.2
> +++ b/man2/fcntl.2
> @@ -1827,6 +1827,18 @@ but
>  was not open for writing
>  or the current set of seals on the file already includes
>  .BR F_SEAL_SEAL .
> +.TP
> +.B ESRCH
> +.I cmd
> +was
> +.BR F_SETOWN
> +(
> +.BR F_SETOWN_EX
> +) and
> +.I arg
> +(
> +.I arg->pid
> +) does not refer to a visible process.


The parentheses are slightly incorrect.
You could check the rendered page.
The patch should be written as


+.TP
+.B ESRCH
+.I cmd
+was
+.B F_SETOWN
+.RB ( F_SETOWN_EX )
+and
+.I arg
+.RI ( arg->pid )
+does not refer to a visible process.

Check groff_man(7) and/or man(7).

I think I'd also add "or" inside the parentheses to make it a bit more
readable:

+.TP
+.B ESRCH
+.I cmd
+was
+.B F_SETOWN
+(or
+.BR F_SETOWN_EX )
+and
+.I arg
+(or
+.IR arg->pid )
+does not refer to a visible process.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
