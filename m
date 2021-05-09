Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D698E377955
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:45:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbhEIXqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbhEIXqo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:46:44 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 503B9C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:45:38 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id y32so12006259pga.11
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nMApsl/9YwCwOCyqKbDSfGhXJ4dZTqsA0k0Gj0BlOdY=;
        b=Voc9wS/ZzOX6k8pY6l9jhVGecf8aS6tGs7jXN+ZxKd/nOJunTMEnyZAcPe2bMKxfYy
         uD9CU0LOi2/8uK6nlCFPd6jOebdUUUzZHCiW/COXXOvtk7jwkR6ZmHczSahWuHjF1ulv
         QkvGyUHgpZY58boAdwBzKVRxIcOWYycU3tQ5EAVVW92jGX3a2ra/RDhRSQ4Fdsjh5dl9
         FuJ3xje12JKAPpOb5/hjws88XvGle/C8hjAcexEdfRcwHHtjstTQT8IJjOkEMOpFIM68
         H9h2+/DVbixVhjwQcfYvnihDuxgbnWLqDiT3PFSfhiFW7oUbx9VQq1mfnwrqPJFkEXwr
         T+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nMApsl/9YwCwOCyqKbDSfGhXJ4dZTqsA0k0Gj0BlOdY=;
        b=QTzYnabpuNqAd3Zs/TQj9E79Dybn5TCRfHHBCv6WrsNrxZuHxNBSFVYLGXM8koaRVK
         FqOnOwFU+MNeQD+7SOMj97Hl0gk80RmYQLWz7ZquCALFys+YdhTLll2uQK8stjHphN1D
         2u925ts3mT5+aMlj99t/Y/4TLCQJMlFLtqMKA0ASrXl1cYLYLm8qMTdgIGUCY/ZY8Cko
         PJ6UOb3nCEAdzVT9lEnSzL9KTf0bUYbRLq7FrHdziusa+CWUXD9lEoQBAfPFWgzpP0H1
         /nP2d044tUgju/mSuW5lSzr16t1fXwF1nfbSp2077g28QblPVe92EEDsJ/+Fo5w/0W9k
         qOEg==
X-Gm-Message-State: AOAM530czxHu+dOFp8o05nu1cwLm1aEHjc+WTm5oiyqLvM3P4GP8JA7w
        TQF5SdU5fCfMSIjG6cGGx2CZ8RewHLM=
X-Google-Smtp-Source: ABdhPJxvaJyYfdwdPT7boh9jBxslx4zza4ebXLpDdMpr3yC1ebVH8lipNuHAlS+m9Niz3MSZlWbTnw==
X-Received: by 2002:a62:5209:0:b029:278:648f:99b6 with SMTP id g9-20020a6252090000b0290278648f99b6mr22028407pfb.9.1620603937211;
        Sun, 09 May 2021 16:45:37 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id o12sm9452310pjr.43.2021.05.09.16.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:45:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Makefile: Simplify error handling
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-37-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <daae8bd2-bfd4-548a-7b28-5744676f27e2@gmail.com>
Date:   Mon, 10 May 2021 11:45:33 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-37-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Instead of having to write '|| exit $$?' all the time,
> use the shell's '-Eeuo pipefail' options, which handle
> errors even better.  However, pipefail needs bash,
> so POSIX sh (default) is not valid.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> I'm not sure how much POSIX sh compatibility is needed for the man pages
> Makefile.  There are probably projects out there that don't have bash,
> and still want to use it.  So maybe we should't apply this.  I don't know.
> Up to you.

I think I'll skip this one. I'm not sure if it might cause some
problem for Debian, where the default shall is dash(1), I believe.

Thanks,

Michael

>  Makefile | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index fdfaf9645..4df4f5846 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,4 +1,5 @@
>  #!/usr/bin/make -f
> +SHELL = /bin/bash -Eeuo pipefail
>  
>  # Do not print "Entering directory ..."
>  MAKEFLAGS += --no-print-directory
> @@ -33,15 +34,14 @@ html: | builddirs-html
>  	|while read f; do \
>  		man2html $(HTOPTS) "$$f" \
>  		|sed -e '1,2d' \
> -		>"$(htmlbuilddir)/$${f}$(htmlext)" \
> -			|| exit $$?; \
> +		>"$(htmlbuilddir)/$${f}$(htmlext)"; \
>  	done;
>  
>  .PHONY: builddirs-html
>  builddirs-html:
>  	find man?/ -type d \
>  	|while read d; do \
> -		$(INSTALL_DIR) "$(htmlbuilddir)/$$d" || exit $$?; \
> +		$(INSTALL_DIR) "$(htmlbuilddir)/$$d"; \
>  	done;
>  
>  .PHONY: install-html
> @@ -49,57 +49,57 @@ install-html: | installdirs-html
>  	cd $(htmlbuilddir) && \
>  	find man?/ -type f \
>  	|while read f; do \
> -		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(htmldir_)/$$f" || exit $$?; \
> +		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(htmldir_)/$$f"; \
>  	done;
>  
>  .PHONY: installdirs-html
>  installdirs-html:
>  	find man?/ -type d \
>  	|while read d; do \
> -		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d" || exit $$?; \
> +		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d"; \
>  	done;
>  
>  .PHONY: install
>  install: | installdirs
>  	find man?/ -type f \
>  	|while read f; do \
> -		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
> +		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f"; \
>  	done;
>  
>  .PHONY: installdirs
>  installdirs:
>  	find man?/ -type d \
>  	|while read d; do \
> -		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d" || exit $$?; \
> +		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d"; \
>  	done;
>  
>  .PHONY: uninstall remove
>  uninstall remove:
>  	find man?/ -type f \
>  	|while read f; do \
> -		rm -f "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
> -		rm -f "$(DESTDIR)$(mandir)/$$f".* || exit $$?; \
> +		rm -f "$(DESTDIR)$(mandir)/$$f"; \
> +		rm -f "$(DESTDIR)$(mandir)/$$f".*; \
>  	done;
>  
>  .PHONY: uninstall-html
>  uninstall-html:
>  	find man?/ -type f \
>  	|while read f; do \
> -		rm -f "$(DESTDIR)$(htmldir_)/$$f".* || exit $$?; \
> +		rm -f "$(DESTDIR)$(htmldir_)/$$f".*; \
>  	done;
>  
>  .PHONY: clean
>  clean:
>  	find man?/ -type f \
>  	|while read f; do \
> -		rm -f "$(htmlbuilddir)/$$f".* || exit $$?; \
> +		rm -f "$(htmlbuilddir)/$$f".*; \
>  	done;
>  
>  # Check if groff reports warnings (may be words of sentences not displayed)
>  # from https://lintian.debian.org/tags/groff-message.html
>  .PHONY: check-groff-warnings
>  check-groff-warnings:
> -	GROFF_LOG="$$(mktemp --tmpdir manpages-checksXXXX)" || exit $$?; \
> +	GROFF_LOG="$$(mktemp --tmpdir manpages-checksXXXX)"; \
>  	for i in man?/*.[1-9]; \
>  	do \
>  		if grep -q 'SH.*NAME' "$$i"; then \
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
