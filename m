Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB5C6F2E19
	for <lists+linux-man@lfdr.de>; Thu,  7 Nov 2019 13:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733122AbfKGMWm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Nov 2019 07:22:42 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36820 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727142AbfKGMWm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Nov 2019 07:22:42 -0500
Received: by mail-wr1-f68.google.com with SMTP id r10so2813095wrx.3
        for <linux-man@vger.kernel.org>; Thu, 07 Nov 2019 04:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RBluzPom9BSw1s2LLKgGZiwXeLG6biqviFHRo9ZMYr0=;
        b=f1xDu9hx4kvBZPMefLEVLbYIxmJ35FcvxWWTAdcGbMH0EZvbdUxpM+UgbEFPnlaO7T
         6YuumoN+hlK+Nr2oB23UflFokfyHTDSOyRBh2aoMtzJ1KuSAOyKBd+zP54N4mr1r3HW2
         1AZN7s87o/zfcy7UCzqLxDDImtwLzD8RALMEp7ixKSyYxmr1Y4QckcbLKZL92b9Aadn4
         ZPjo/Fl7cb5Zh20NCQzaGIdhGShQDgF+3b2KxlkXtOnVwsFpTQ0TjFa6WgL2sRpYktLl
         cpAPz1vZJFrDjTe1CHepvhHLMzhhUvoCA/O/1TF4fgRrVXli6HdBlZjDzPoyPAKMLJM6
         l6GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RBluzPom9BSw1s2LLKgGZiwXeLG6biqviFHRo9ZMYr0=;
        b=qxky8elzxMrHaMUsOVxIOPt2og2BaGZnSsY+zzL5DWimXGm1hsxf5ZuTgreZwCrFQo
         qYnwtQVyUexDUxhgCmLl0yaE4Lu+LISr3K1dVOeePM3WcGLQ4wnKR95f/B0h2r2rpNZq
         kk2ORSnmePz0tsKCoNsFxVKPrc/fmXsg4Z1rFcevZ610zWTVORDtTtsGrl5KVHszM+O7
         ZOGQ4tXs2c5o2v8x7QjGlRJD/EIt5GQ5Dq9SVHciw/2z/xHgnapDYY3rmwcbDZnmFSnR
         Hf8gxr2PQjdj9L57mylEbUHXwJzKTZhL5SFcjvCmml++g70+1lollN8bsBx29Xxm9Grg
         rDYQ==
X-Gm-Message-State: APjAAAVe6TNEATKKuX6g3O2xblj+p5h8+EpNb4TOgHUZ4S+wnK10IJe9
        IaGod+jg5VHZsZMQhPb51xTTLV60
X-Google-Smtp-Source: APXvYqzpOJ26g3+N3ygQn12vuVPNA/v74Cn28TcNugOesyEEWV9+4ccx/0NS56kKcYo/T//6oOYa0w==
X-Received: by 2002:adf:ea52:: with SMTP id j18mr2529200wrn.56.1573129359249;
        Thu, 07 Nov 2019 04:22:39 -0800 (PST)
Received: from ?IPv6:2001:a61:25f7:501:a05a:4985:4904:9989? ([2001:a61:25f7:501:a05a:4985:4904:9989])
        by smtp.gmail.com with ESMTPSA id y8sm1649661wmi.9.2019.11.07.04.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 04:22:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] resolv.conf(5): Attempt clarify domain/search interaction
To:     Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>
References: <874kzfki0t.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <15a06c94-0663-7c2b-eb19-8a7f41cc4f1a@gmail.com>
Date:   Thu, 7 Nov 2019 13:22:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <874kzfki0t.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Florian,

On 11/7/19 1:05 PM, Florian Weimer wrote:
> The domain directive is historic at this point; it should not be used.

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man5/resolv.conf.5 | 41 ++++++++++++++++++++---------------------
>  1 file changed, 20 insertions(+), 21 deletions(-)
> 
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 49a8eed4c..2ffe973a1 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -39,10 +39,9 @@ The configuration file is considered a trusted source of DNS information
>  (e.g., DNSSEC AD-bit information will be returned unmodified from this
>  source).
>  .PP
> -If this file does not exist,
> -only the name server on the local machine will be queried;
> -the domain name is determined from the hostname
> -and the domain search path is constructed from the domain name.
> +If this file does not exist, only the name server on the local machine
> +will be queried, and the search list contains the local domain name
> +determined from the hostname.
>  .PP
>  The different configuration options are:
>  .TP
> @@ -63,20 +62,14 @@ try the next, until out of name servers,
>  then repeat trying all the name servers
>  until a maximum number of retries are made.)
>  .TP
> -\fBdomain\fP Local domain name.
> -Most queries for names within this domain can use short names
> -relative to the local domain.
> -If set to \(aq.\(aq, the root domain is considered.
> -If no \fBdomain\fP entry is present, the domain is determined
> -from the local hostname returned by
> -.BR gethostname (2);
> -the domain part is taken to be everything after the first \(aq.\(aq.
> -Finally, if the hostname does not contain a domain part, the root
> -domain is assumed.
> -.TP
>  \fBsearch\fP Search list for host-name lookup.
> -The search list is normally determined from the local domain name;
> -by default, it contains only the local domain name.
> +By default, the search list contains one entry, the local domain name.
> +It is determined from the local hostname returned by
> +.BR gethostname (2);
> +the local domain name is taken to be everything after the first
> +\(aq.\(aq.  Finally, if the hostname does not contain a \(aq.\(aq, the
> +root domain is assumed as the local domain name.
> +.IP
>  This may be changed by listing the desired domain search path
>  following the \fIsearch\fP keyword with spaces or tabs separating
>  the names.
> @@ -104,11 +97,21 @@ traffic if the servers for the listed domains are not local,
>  and that queries will time out if no server is available
>  for one of the domains.
>  .IP
> +If there are multiple
> +.B search
> +directives, only the search list from the last instance is used.
> +.IP
>  In glibc 2.25 and earlier, the search list is limited to six domains
>  with a total of 256 characters.
>  Since glibc 2.26,
>  .\" glibc commit 3f853f22c87f0b671c0366eb290919719fa56c0e
>  the search list is unlimited.
> +.IP
> +The
> +.B domain
> +directive is an obsolete name for the
> +.B search
> +directive that handles one search list entry only.
>  .TP
>  \fBsortlist\fP
>  This option allows addresses returned by
> @@ -315,10 +318,6 @@ in
>  This option disables automatic reloading of a changed configuration file.
>  .RE
>  .PP
> -The \fIdomain\fP and \fIsearch\fP keywords are mutually exclusive.
> -If more than one instance of these keywords is present,
> -the last instance wins.
> -.PP
>  The \fIsearch\fP keyword of a system's \fIresolv.conf\fP file can be
>  overridden on a per-process basis by setting the environment variable
>  .B LOCALDOMAIN
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
