Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D25E62765DD
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 03:30:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725273AbgIXBae (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 21:30:34 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:20412 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726193AbgIXBac (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 21:30:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600911031;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=I96QA6skXAeUoVraJL4FZBGK1rX5FMtM4hBBvWhO+/w=;
        b=WVB6rEdZAizW7VZETz9SijHV0PeSdWyGobv4gLGaVB/0gEyybHMmm7ilQ3tLukjKtcHyyA
        lWBflmtL8SV3ruDjoh+AHRuHAmtsnUOJivVzDaWWJoKczAtaZpM/yIbuIYx8CrMfDruYsA
        bXV4v81nSUek16oaXqTZIWfEi2o06so=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-aBO5ECanOKiQWjObPM359A-1; Wed, 23 Sep 2020 21:30:26 -0400
X-MC-Unique: aBO5ECanOKiQWjObPM359A-1
Received: by mail-qk1-f200.google.com with SMTP id 196so1018702qkn.6
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 18:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=I96QA6skXAeUoVraJL4FZBGK1rX5FMtM4hBBvWhO+/w=;
        b=T70NExNBbaDwPzjPfWS/Hhn+fHsKI2Zv0MfSM9fcTl6ruDwTCpzq6xkkMqNxv0DpKB
         8xeyuAdY5TuK4L74q/I7b62dZqPfvOvmgxl7DAuocpC4ZRSY+j9kTqgvvdeNdo69N2BT
         8APopdZKXswftP5ZRyVhZxadKMPY16vjtJ2ITZLiJuABAFHJ5zSJqrQicP8+sJz1QkVw
         rKfNTli7N6Oix5pda6/XkDjMJgKnqfzn8gUeR6lu2k3plb97l2R+6uvyOOy2gsz1kzaA
         cckPttYPg+VIAb1mUf1jT4yxfwVnihdg6iyfpwTARnbE/dPlwNzXuXFjoqNDQ7hDBNwV
         kPaA==
X-Gm-Message-State: AOAM532MFntSMhxUTcDmSexDCT0T6AX3Q87WD04T5Dxo9XDMLHyjWCYm
        vQbJy2VCJtuxB4STmuxJVHTQKCsou69trOl7wsY9m7hGiq485sepvHPfyVHKOluDZVkGK7gc0Oe
        qP/zFkqrYY9qYLNo6smZY
X-Received: by 2002:a05:620a:7f6:: with SMTP id k22mr2678903qkk.337.1600911025569;
        Wed, 23 Sep 2020 18:30:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2nny+uNhPo3s2QXoUgtNQKqtQqwP4VG7YdDYfzhT0SNth54zazuLd4OAzXszHLEhV3uQo7g==
X-Received: by 2002:a05:620a:7f6:: with SMTP id k22mr2678886qkk.337.1600911025292;
        Wed, 23 Sep 2020 18:30:25 -0700 (PDT)
Received: from [192.168.1.16] (198-84-214-74.cpe.teksavvy.com. [198.84.214.74])
        by smtp.gmail.com with ESMTPSA id e1sm1165894qtb.0.2020.09.23.18.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 18:30:24 -0700 (PDT)
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
To:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        =?UTF-8?Q?Ludovic_Court=c3=a8s?= <ludo@gnu.org>
Cc:     libc-alpha@sourceware.org
References: <874knosoyq.fsf@oldenburg2.str.redhat.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <e95f918c-2004-fc3d-044a-d66023e57cd7@redhat.com>
Date:   Wed, 23 Sep 2020 21:30:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <874knosoyq.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/23/20 7:38 AM, Florian Weimer via Libc-alpha wrote:
> Returning its argument without further checks is almost always
> wrong for la_version.

What you write here is the way I understand the interface to work.

As Andreas noted there is one typo.

I suggest changing the example to match, otherwise people might
keep cribbing that code ;-)
 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> 

I agree that la_version should return LAV_CURRENT, that is the
expected way to implement the function, and returning less than
LAV_CURRENT is required to implement older interfaces and be
more compatible with older releases.

As an example I encouraged Ludovic to solve a Guix path problem
with LD_AUDIT and you can see it here:
https://issues.guix.gnu.org/41189

+unsigned int
+la_version (unsigned int v)
+{
+  if (v != LAV_CURRENT)
+    error (1, 0, "cannot handle interface version %u", v);
+
...
+  return v;
+}

While this is OK, in that if it's not an exact match the audit
module errors out, or if it is a match returns v which is
LAV_CURRENT.

It could have been more relaxed:

if (v < LAV_CURRENT)
  error (...)
...
return LAV_CURRENT;

Your changes here int he man page would have clarified that to
some extent.

> ---
>  man7/rtld-audit.7 | 31 ++++++++++++++++++++++---------
>  1 file changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
> index b1b7dfebc..ca8afa752 100644
> --- a/man7/rtld-audit.7
> +++ b/man7/rtld-audit.7
> @@ -70,17 +70,30 @@ the auditing library.
>  When invoking this function, the dynamic linker passes, in
>  .IR version ,
>  the highest version of the auditing interface that the linker supports.
> -If necessary, the auditing library can check that this version
> -is sufficient for its requirements.
>  .PP
> -As its function result,
> -this function should return the version of the auditing interface
> -that this auditing library expects to use (returning
> +A typical implementation of this function simply returns the constant
> +.BR LAV_CURRENT ,
> +which indicates the version of
> +.I <link.h>
> +that was used to build the audit module.  If the dynamic linker does
> +not support this version of the audit interface, it will refuse to
> +activate this audit module.  If the function returns zero, the dynamic
> +linker also does not activate this audit module.
> +.PP
> +In order to enable backwards compatibility with older dynamic linkers,
> +an audit module can examine the
> +.I version
> +argument and return an earlier version than
> +.BR LAV_CURRENT ,
> +assuming the module can adjust its implement to match the requirements

s/implement/implementation/g (Andreas caught this in his review)

> +of the previous version of the audit interface.  The
> +.B la_version
> +function should not return the value of
>  .I version
> -is acceptable).
> -If the returned value is 0,
> -or a version that is greater than that supported by the dynamic linker,
> -then the audit library is ignored.
> +without further checks because it could correspond to an interface
> +that does not match the
> +.I <link.h>
> +definitions used to build the audit module.
>  .SS la_objsearch()
>  \&
>  .nf
> 

May I additionally suggest something like this to the example?

diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index b1b7dfebc..8a4008b2a 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -510,7 +510,11 @@ la_version(unsigned int version)
 {
     printf("la_version(): %u\en", version);
 
-    return version;
+    if (version > LAV_CURRENT)
+      printf ("la_version(): rtld supports newer interfaces.\n");
+
+    /* Request the version we knew about at compile time.  */
+    return LAV_CURRENT;
 }
 
 char *
---

Post a v2?

-- 
Cheers,
Carlos.

