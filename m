Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8F8D27FD04
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730378AbgJAKOY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:14:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725975AbgJAKOY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:14:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D12D3C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:14:23 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e2so2415500wme.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WNrHfUguA4sOyGVpzlYF/1gmT1s1AIx4tmmgK8pkgCk=;
        b=StKzL+yQPj5sroLL1S08smpCG4quXeJzRxEOx52MvD8mwnu9V7D7D6zygz6fdAdnU+
         MU3fHi4nof/59EZsLQWprq3p6xeQrO8vmwQe9uepVZyurxcZR0sEeWJcOC+IVDdmB+QF
         71SVfhMK0BttjcNVLh9fk6Ya0kMS7fFedhBeSZMXLbmwJYdBcOQ+EKeA+bHCDArMrYlk
         KDKxTXIT8EA8SiHy9WP2JMSwFDtX6I+l+GZGZVGUI2PJ+6niN4TH/yg6gQD5FhsEZAf5
         5gZNpZBcBNOQfE23zk3IIoUtwjKdtRZNXUYfhmekyIU0UWwLeOsWRd/G5zmhkNUuLydS
         P4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WNrHfUguA4sOyGVpzlYF/1gmT1s1AIx4tmmgK8pkgCk=;
        b=H4luGZYzbUFAQz+m3+AdArq7xZ1vRLSHIv6hnOc4ujh3jns6+rzZ0p6UzDf7UuTZqK
         AzqcasYWqd6x0B4GUT4bHNXVqCoDmyXjR9ctMLP4/FPr2fmtfx7vvTGg/8vpb6pD9Im+
         BiFNtmyQIIkEqPqmI8I0lK748itm2rhVWnGDMdx5GvtdEhy1aUgiypIlBPtO2TZXJhkg
         6sLguh/+gpOcPO//BNRHWRZU4OYf/WpB7SjvHWLZ9LlT7dgq8yB/IfCsS6QDBN1S7EnG
         EiZJNBBg+EuwKFcQOzqY7I5RcBH/w4LkRXlXDs4eig88LShXQU89M9yGx762P69nReQy
         hk7Q==
X-Gm-Message-State: AOAM532qmQOPtAVc0InGRX3lAajUMRh9tA9KfZlLNq+1VjjuSpTUWDcg
        EQ9id3PPjL9Tbw3MQaJdXNQ=
X-Google-Smtp-Source: ABdhPJyC7z2mPwkIjJgYF8Q1c7YMBnKzbJ5KSqhgizuqlD2X3XU8rf85qwD0EVyRzU38HRgqIInlVw==
X-Received: by 2002:a1c:19c1:: with SMTP id 184mr8025777wmz.114.1601547262480;
        Thu, 01 Oct 2020 03:14:22 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d19sm7899927wmd.0.2020.10.01.03.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:14:21 -0700 (PDT)
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
Date:   Thu, 1 Oct 2020 12:14:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan,

On 2020-10-01 11:57, Jonathan Wakely wrote:
 > On Thu, 1 Oct 2020 at 10:26, Alejandro Colomar via Gcc 
<gcc@gcc.gnu.org> wrote:
 >>
 >> Hi,
 >>
 >> I'm documenting the system data types in the man-pages,
 >> and I was writing now about these types.
 >>
 >> I'm showing below both the rendered output and the source I have 
right now.
 >>
 >> Would you add anything to it?
 >>
 >> And I have some questions:
 >>
 >> Is 'signed __int128' a valid thing,
 >> and if so is it completely equivalent to '__int128'?
 >
 > Yes.
 >
 >> Is the GCC version correct?
 >>
 >> There's no implementation where 'long long' is 128 bits yet, right?
 >
 > Right.
 >
 >> Thanks,
 >>
 >> Alex
 >>
 >> Rendered output:
 >> [[
 >> __int128
 >>         A signed integer type of a fixed width of exactly 128 bits.
 >>
 >>         According to GNU, it is supported only for targets which have an
 >>         integer mode wide enough to hold 128 bits.
 >
 > "According to GNU"? Should that be GCC?
 >
 > The GNU project doesn't have anything to say about it.
 >
 > Maybe just "When using GCC, it is supported only ..."

Ok,  I thought that GCC is part of the GNU project, but I don't know how 
much...
I'll use "When using GCC," :)

 >
 >
 >>
 >>         Bugs: It is not possible to express an integer constant of  type
 >>         __int128  in  implementations  where  long long is less than 128
 >>         bits wide.
 >>
 >>         Conforming to: GCC 4.6.0 and later.
 >
 > It doesn't conform to anything, shouldn't this say "This type is a GNU
 > extension." or just "This type is an extension." ?

That's what I had first: "Conforming to: GCC extension"
Then I thought that I could include the version information,
so I changed it to that.

Maybe "GCC extension (since GCC 4.6.0)" would be better?

 >
 >>
 >>         Notes: This type is available without including any header.
 >>
 >>         See also the intmax_t, intN_t and  unsigned  __int128  types  in
 >>         this page.
 >
 > Why would this type refer to intmax_t?
 >

Because 'intmax_t' has a bug
(actually I know GCC rejected the bug report,
but the problem is still there and users should be informed about this)
which is related to __int128.

Here is the rendered intmax_t:

intmax_t
       Include: <stdint.h>.  Alternatively, <inttypes.h>.

       A  signed  integer type capable of representing any value of any
       signed integer type supported by the implementation.   According
       to  the C language standard, it shall be capable of storing val-
       ues in the range [INTMAX_MIN, INTMAX_MAX].

       The macro INTMAX_C() expands its argument to an integer constant
       of type intmax_t.

       The  length  modifier  for  intmax_t  for  the printf(3) and the
       scanf(3) families of functions is j; resulting commonly  in  %jd
       or %ji for printing intmax_t values.

       Bugs:  intmax_t  is not large enough to represent values of type
       __int128 in implementations where __int128 is defined  and  long
       long is less than 128 bits wide.

       Conforming to: C99 and later; POSIX.1-2001 and later.

       See also the uintmax_t type in this page.


Thanks,

Alex
