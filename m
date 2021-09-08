Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA4F8403605
	for <lists+linux-man@lfdr.de>; Wed,  8 Sep 2021 10:23:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348054AbhIHIXV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Sep 2021 04:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347475AbhIHIXU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Sep 2021 04:23:20 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16EE1C061575
        for <linux-man@vger.kernel.org>; Wed,  8 Sep 2021 01:22:13 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id u16so1959879wrn.5
        for <linux-man@vger.kernel.org>; Wed, 08 Sep 2021 01:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zmPNUL35B+GsdNMSoCzcTObuhIg3sy+iVeVQkoExGOI=;
        b=XmzB3S9PHX87+kxXYDp+uMl2jBkYQ0Av7SjE00Qqm4lnllTFBwdT5ZX1YATpJIQ5on
         BMltOVlK2ruWT0cSQquL0N7tJAechYjvCdleNHZSYremjSP528zwsXak02YBZ9A53c7e
         c201M/E/2PVkWLtPb5JaWwLNBeB19M3rH6ZP6gga5PRCzHpTuPay5OIajPeBSDgl7/V6
         ugDuDNPRtdVZgS9xRJ5JTE2Q0+97K2PnQd6AeEAFw6wDt3gwzTFVNQDtnfz8j/6tH+JH
         dg7W04De3VMXybr02h5NDwbJ4zovjI9RX4tlZcAfGj5dWZNmP4z3Aiz8KtCaFhHIfDtn
         PDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zmPNUL35B+GsdNMSoCzcTObuhIg3sy+iVeVQkoExGOI=;
        b=HOAo1jDFmqUyZYX5PQkqGhGrau9dEyx/LNxwBei3LFprOE+cv5CtbiOC5MEZ6Mx7tf
         /NM+5NDCEZh5mzsWdKplDeBztgMkpVrVf/ZXuLmORAMB3R2LzI4UTDZfA7AjTxIkDP7I
         qXQe3e6kde0GvdUm2ocJfzj+HZMGr39B5msxSeDf8+45h7HyCp74uh4uiskezzkABiU9
         6X2SbpSgiNErQtuOvWlVSRYf9k0YMcxTaZrt8UnQWk8ElMYlFjlFyV6qM1au72KXnj5k
         rNj+pQjFvyy2lFrs/Do/zbX/vTGLLccNcYgiP8aeVczQWxllxba7dvJLyrJLKwWnkYkS
         GcpQ==
X-Gm-Message-State: AOAM531O5cxF6kiVhhukI5K1VlI5joj3ol0FEhx8i1I56JpKFbzBGfbn
        mlz+/P21bbXc31jSGDndbwCYBruvIU0=
X-Google-Smtp-Source: ABdhPJyv6i6lbqq70JI6SuWiH+BMaXvpSk+UoglIwcIr8IE+/XFHL+AkLDEQdWx15SiefJ3zBrmgLA==
X-Received: by 2002:adf:c38c:: with SMTP id p12mr2545801wrf.113.1631089331726;
        Wed, 08 Sep 2021 01:22:11 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f25sm1280889wml.38.2021.09.08.01.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 01:22:11 -0700 (PDT)
Subject: Rename VERBATIM license (was: Re: [RFC v3 8/9] Many pages:
 [Verbatim-man-pages] Use SPDX markings)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
 <20210905132542.245236-9-alx.manpages@gmail.com>
 <20210908043502.xcmj6yoxrneokwl5@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8b513d06-3e9e-3d2f-6217-07bf2fa3765c@gmail.com>
Date:   Wed, 8 Sep 2021 10:22:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210908043502.xcmj6yoxrneokwl5@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden, and Michael!

On 9/8/21 6:35 AM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> I'd like to request a different choice of name for the SPDX license tag
> used by the man-pages documents affected by this change.  It's my
> understanding that there is freedom to make such a choice because the
> proposed tag does not yet appear in the SPDX license list[1].
> 
> I have a few reasons: (1) the license tag says "Verbatim" which implies
> to me that permission to modify the document is excluded--but it is not;

Completely agree!

I never understood why it was called Verbatim, and I even thought that 
my understanding of the concept "verbatim" was wrong, because it 
contradicted the license contents.  I had to re-read it (and google 
"verbatim") many times to arrive to the conclusion that the naming and 
the contents simply don't match.

> (2) with the exception of the paragraph about the kernel and system
> libraries being in flux, this license appears identical to what I (and
> some folks in Debian) started terming the "traditional GNU documentation
> license) about 18 years ago when debate over the GNU FDL was raging[2];
> this was in fact the license the GNU project used for most of its
> documentation before it promulgated the FDL.  As far as I know, this
> license text has no earlier provenance; I would appreciate correction on
> this point.  Thirdly, since that time, the GNU project has christened
> the license terms for many of its web pages the "GNU Verbatim Copying
> License"[3].  You can perhaps see how this might generate confusion.
> 
> Because the warranty-disclaiming third paragraph about the Linux kernel
> is unique to the Linux man-pages project and the term "verbatim" implies
> too much restriction in my view, I envision a few alternatives.
> 
> man-pages-doc
> man-pages-document-copyleft
> man-pages-copyleft
> 
> Any of the above could be further prefixed with "Linux-" to reinforce
> the specificity to this project, of course.  If pressed for a
> preference, I reckon I would pick "Linux-man-pages-copyleft".

I like that name.  Less historical, but more precise.  Michael?

Acked-by: Alejandro Colomar <alx.manpages@gmail.com>

I don't know if the Linux man-pages license has made it into other man 
pages, in which case, I would omit the "Linux-" prefix for 
compatibility.  I guess BSD man pages use the BSD license.

The identifier "Verbatim-man-pages" is already in SPDX, but it is yet 
unreleased.  They talked about releasing soon, so could you please jump 
in there and propose that change to SPDX?:
<https://github.com/spdx/license-list-XML/issues/1310#issuecomment-911876593>


BTW, does the "traditional GNU documentation license" have an SPDX 
identifier?

> 
> I feel that the "VERBATIM" string is similarly misleading, but it's not
> presented as an SPDX license tag, and I see that its use is already
> well-entrenched.  I expected to find something like a sed script in the
> man-pages scripts/ directory that manipulated lines matching
> '%%%LICENSE_START(' but failed to.  Perhaps a convenient new moniker
> could be adopted to supersede "VERBATIM" in this context, once the SPDX
> tagging initiative is complete?

The SPDX license text doesn't contain the LICENSE_START and LICENSE_END 
lines, so if we change the name, there will be no traces of VERBATIM 
(apart from the git history, that is).

Cheers,

Alex

> 
> Regards,
> Branden


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
