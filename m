Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC6F2B2180
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 15:59:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388357AbfIMN7Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 09:59:24 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:45876 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388191AbfIMN7Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 09:59:24 -0400
Received: by mail-wr1-f66.google.com with SMTP id l16so32112040wrv.12
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 06:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DcF8bq+QtoZIj7P3/oFncaOmxEDjB0p9OD+5XMxy9Q4=;
        b=VaQF60O2u8YVPuNK8Qo8VOGXQXIBvXOXq7KnLQfznkWMZEf+i4v/oApHNAOx4c2W5+
         Qkbk+GPNRivS0IKR8F9/BrxaFm8TVywJTDE3CrPYD4gw0E5+g9ugEKpDQp/3agKjTp4J
         O9Fe+qllEcYcldOO2rWXmXzoAgpjKi9Is07J8dtLpMtFO1b96sTCxjNbazYAb+2G1rr1
         CPEMKgWKTOsUr8lvTyX2pPbyO2FaIOmqSZ6goCCXCNmY7RhFy94iOb+DEvjTbRBfktlq
         nI+3YSh+wqIjJZQ76O+JHhH+Vjhj4q5LK2r8Hatx8kG6OXIUUsZKy+lWzM3/HsoN31sG
         16bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DcF8bq+QtoZIj7P3/oFncaOmxEDjB0p9OD+5XMxy9Q4=;
        b=n9NmGOA5btrNcdMsg6liOFVlXJP4fx5yEJIaP+SNBqqf83+XTzXQuE7GGDUPXbVgZK
         w8gZHvQtShO6xy93Wh9hXqAdUL7iIdfk+CIL4Wy6NKWSc/n3oyxlCJY7WxtIY5FFLdIU
         k1p3Snfv2kh4lJ1DDK4d4aqPG4RlF0wr6ucfOAz9mw92uJeFl3q27Op17lelY57bCFK7
         YGTUfWqsE4jiHjqDbku7hir77JAcDnK44ZGGNzEV4qFF30ntmCPTvpft++XXBu+RjSjD
         ZhjqghaISqlM1I2m5D1sW5fNPCu4gBbt19zHGgmc+xuhCkgs4gDKvgFFzaz0bqiMbpEl
         YGlg==
X-Gm-Message-State: APjAAAXeF6IcTzLypC3leCE8k8RoiKs7H6f3mP8p5Nmr18EXYGX7cpSo
        +W2k/y5z7B7+ASFwGg/8s5U1mtwO
X-Google-Smtp-Source: APXvYqxeZ5QExtN9vhFXVgllCklzdGFLwppdsPRjT3McRnErCfPvpOH0g+z0Ho9k/FBZIOhj4TON/Q==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr7796235wrm.112.1568383161370;
        Fri, 13 Sep 2019 06:59:21 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id t13sm51657908wra.70.2019.09.13.06.59.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 06:59:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Add some tips for how to contribute
To:     Paul Wise <pabs3@bonedaddy.net>
References: <20190807015026.26519-1-pabs3@bonedaddy.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <024e7740-9f1f-af1c-fe7e-41e92af91da4@gmail.com>
Date:   Fri, 13 Sep 2019 15:59:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807015026.26519-1-pabs3@bonedaddy.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Paul,


On 8/7/19 3:50 AM, Paul Wise wrote:
> Written-by: Michael Kerrisk <mtk.manpages@gmail.com>
> ---
>  CONTRIBUTING | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>  create mode 100644 CONTRIBUTING
> 
> diff --git a/CONTRIBUTING b/CONTRIBUTING
> new file mode 100644
> index 000000000..db947b5af
> --- /dev/null
> +++ b/CONTRIBUTING
> @@ -0,0 +1,16 @@
> +Commit style:
> +
> +When referring to Linux kernel versions, please add a
> +comment before it that shows the kernel commit hash.
> +
> +Use .PP rather than blank lines as paragraph separators.
> +
> +Starting new sentences on new source lines makes future patches against
> +the source easier to grok. This is known as semantic newlines:
> +
> +https://rhodesmill.org/brandon/2012/one-sentence-per-line/
> +
> +Sending patches:
> +
> +To: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
> +CC: linux-man@vger.kernel.org

Pretty much all of the above is covered either on the
project website, or in man-pages(7). (I just added a note
to man-pages(7) about avoiding blank lines as separators, 
and further enhanced the discussion of semantic newlines.)

But of course, your meta-point is: let's make things more
visible. I instead added a CONTRIBUTING file as below.

Thanks for the idea!

Cheers,

Michael

diff --git a/CONTRIBUTING b/CONTRIBUTING
new file mode 100644
index 000000000..383bae5b3
--- /dev/null
+++ b/CONTRIBUTING
@@ -0,0 +1,13 @@
+For general information about how to contribute, see:
+https://www.kernel.org/doc/man-pages/contributing.html
+
+For information on how to send patches, see:
+https://www.kernel.org/doc/man-pages/patches.html
+
+For a description of the preferred layout of manual pages,
+as well as some style guide notes, see:
+
+    $ man 7 man-pages
+
+For information about reporting bugs, see:
+https://www.kernel.org/doc/man-pages/reporting_bugs.html


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
