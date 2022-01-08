Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 784EE48805C
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:15:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiAHBPu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:15:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230015AbiAHBPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:15:50 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05EDFC061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:15:50 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id l12-20020a7bc34c000000b003467c58cbdfso5877814wmj.2
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IfIZl77Bk3sYtvXqlGEh4Tm65dERCau9KoC2pSbNXRA=;
        b=mKk6W7TtL0WkzNvBOnv8NtlFs91YOgNmo8L4XugbI1Wah9Tr4mb8VGwLFhYs53jDqC
         IXBsE8v0MqhVWARrZncdbgWFwDsK/Feqv8FFq1ej+wNZ3RxywN93Q6gp86iAEzg4U/bx
         2r0WBbgMGhGUVqqPsMGhowQcdEfdbFcvMVgB6UeXTyHOMuwQbjMVNKmhTgoDxEfptxoK
         XqCb/jJQ98TDvYB71IgpfDxvvu6YCYiiFVGDpgnJRlixvEaxjkvYdTz0sToR560AhfNi
         5gtL+AXEvljX0fpKfd5hbtDM83aYJqUtmLFxt+7oZb+p3y6W6M0ykg2I/hzGm9PMQ0S7
         EvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IfIZl77Bk3sYtvXqlGEh4Tm65dERCau9KoC2pSbNXRA=;
        b=sfuxjB1ABq7lVGqDET0vbOfXqej7jVkDve2w4X0wzI+VeZPMmJUyLnRK7QighMGsHX
         bu5X3tqiCaXESm+K+vnXstzxTmGuD1f0eRPXbz0/xikcgT5giJEioQEMuTa1+MQTk6n1
         TC6xEO54tVTRMEcf+eXpjT543dNWpx8NyyJtoGHbFHCqg9DdBvTpMCUJpyTwGVL2jii7
         /YF5zJPDkyHFq5Rln0xc0qpn4E2ffbwBagQ472x8+E4JJjjhzuDtHmvd485GZuUg4sA+
         BYvlMHmuGR/OsWj8fAc1koA3Y2n0vrVxR7QfgdypK5lfM2IIm1erqyPs7fxDWHrOJ2L1
         oEww==
X-Gm-Message-State: AOAM533kWCRSjHAPVtrGIEwmT8u0ISyc0StjJABPKl7AXfU93knkFYZj
        9MES+JvDwB5CEwaGF0GdVjk=
X-Google-Smtp-Source: ABdhPJxrGWiLDDfn3lbIVl4Uc10aK3dDEYUT+I5GlI67c95DCuFp9ONF4YpVJ6/hUNu3Ssc6UAI2aw==
X-Received: by 2002:a1c:4c14:: with SMTP id z20mr7701356wmf.127.1641604548645;
        Fri, 07 Jan 2022 17:15:48 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j11sm118058wmq.23.2022.01.07.17.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:15:48 -0800 (PST)
Message-ID: <7edd4ab8-a417-17b4-aadf-4c63293bc210@gmail.com>
Date:   Sat, 8 Jan 2022 02:15:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/9] Add a target to check example programs
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> This is a first step to automating example program checks. It extracts
> source snippets introduced by "Program source", assuming it's C, and
> attempts to compile it.
> 
> For now, only man pages with a single "Program source" entry are
> processed. The compiled code isn't linked to avoid having to handle
> library requirements (e.g. -ldl).
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

I like the concept of this patch.

However, a few things:

- I prefer a script in ./scripts/,
   which can be called from the Makefile.
   I'd like to keep the Makefile simple
   (it's already quite complex to add more stuff to it).

- I'd like to use make(1) properly,
   and only test programs incrementally,
   so if a page has already been tested and it hasn't been modified,
   it should not be retested.
   That part should go in the Makefile, not the test itself.
   For that, I'd chose some arbitrary dirname
   (<./tests/example_programs/> sounds like a good candidate),
   and touch dummy files there when a test is performed:


builddir := $(CURDIR)/build
TESTS_example_programs := $(patsubst 
$(MANDIR)/%,$(builddir)/%.example-programs.touch,$(MANPAGES))

$(TESTS_example_programs): $(builddir)/%.example-programs.touch: \
                                       $(MANDIR)/% \
                                       Makefile \
 
$(CURDIR)/scripts/check_example_programs.sh \
                                       | $$@D)/.
	$(info TEST example programs:	$@)
	$(CURDIR)/scripts/check_example_programs $@
	touch $@


Something like the above would be nice.
That would also remove the call to mktemp(1).

- This expects pages to have 'Program source' just before the source.
   Few pages do have that currently.
   Do you have plans to standardize some convention in the man pages?
   I'd be happy to see that.
   I think a good approach would be to use C comments,
   one line before the code, and one line after the code,
   so that there's no doubts about the limits of the code
   (we should decide the format of the comment).
   The comment should be something not too noisy, but very reliable.

   I think I'd also first restrict to the EXAMPLES sections,
   even before reading that hypothetical comment (or whatever we put),
   to avoid mistakes.

- Logs should go to stdout/stderr,
   as in any other standard Unix command,
   so just let the compiler print wherever it wants to print,
   and let the user redirect them to wherever the user wants to too.

   I know there was the groff-warnings test.  But I don't like it.
   It's there because it predates me,
   and I yet have to understand how and if it works,
   and then I'll rewrite it properly.


Cheers,

Alex

> ---
>   Makefile | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 0da0328d8..3f597d7c3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -266,6 +266,23 @@ check-groff-warnings:
>   	done; \
>   	rm -f "$$GROFF_LOG"
>   
> +# Check that man pages' examples programs (for now, only pages with a
> +# single program) actually compile
> +.PHONY: check-example-programs
> +check-example-programs:
> +	GCC_LOG="$$(mktemp --tmpdir manpages-checksXXXX)" || exit $$?; \
> +	for manpage in $$(grep -rc 'Program source' man?/* | grep ':1$$' | cut -d: -f1); \
> +	do \
> +		(man -Tutf8 $$manpage | \
> +			col -bx | \
> +			sed -n '/Program source/,/^[[:space:]]\{0,3\}[^[:space:]]/p' | \
> +			tail -n+2 | \
> +			head -n-1 | \
> +			gcc -xc -c -o/dev/null -) 2>| "$$GCC_LOG"; \
> +		[ -s "$$GCC_LOG" ] && { echo "$$manpage: "; cat "$$GCC_LOG"; echo; }; \
> +	done; \
> +	rm -f "$$GCC_LOG"
> +
>   # someone might also want to look at /var/catman/cat2 or so ...
>   # a problem is that the location of cat pages varies a lot
>   

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
