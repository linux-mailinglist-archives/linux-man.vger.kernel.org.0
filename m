Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC4A1A321B
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2020 11:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbgDIJud (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Apr 2020 05:50:33 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:44028 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726589AbgDIJud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Apr 2020 05:50:33 -0400
Received: by mail-wr1-f42.google.com with SMTP id i10so4878782wrv.10
        for <linux-man@vger.kernel.org>; Thu, 09 Apr 2020 02:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nH6bJRxZtCdr799SveikM90VwAJyAmshAkKuAIMQ+7w=;
        b=MPYMxuSjO6drATdxpCJckJoEolILfPq3Pj0jrzgXF/NGlAgr1oQvWS89BdUF1gvNMq
         pCvDyfLK/QLJitJ3eWcbHAE0KrzVNVNMkD6XELoZUdBhmgL1diPQ8+MeqotHs/FlYtNE
         ryA3whTHqs9wjdcabK4xjcQaBRkgfL+3LxJbuxVuIbHxNcyV/YZJhiovvcW+Jl9pec+Y
         /xSM2uhnRY38AOKcgvs07gvT0k61W+0e7fRiDB8bJJrZKkGYRHf4b7DkkAwTri+MLFPB
         5UZ/8zoWuGLA1xuMYmg9T8+ra/1AUf962jn0J+nLkec0hWwdnNaOklSwOrWWxe3KVfmB
         uQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nH6bJRxZtCdr799SveikM90VwAJyAmshAkKuAIMQ+7w=;
        b=ru4dBCASI8+ALIdBhTjlWEmc7UTejadMSs4JwfHh6rDkE83xbKcItrCd0P75Pq+jpD
         k5cterp87JIcrHM5pnhyyYp3YnHKKwAGcEQzEv63LMFZah2awKS4k04KHUPFXco6/UKI
         qCOU2cd10ma1cO9as8TkEIMxJxMIy2ap72bN0Gq2APSYWmECib+7MUJ0qycL/EukL5rg
         DGGE3hVdG2fwraj9DBE8eRZRXZfdVBGsalamsimtN2pmfz+0L+KcyMf8zuIAVNfebmCn
         M3n964T3buprvmrdPVxbDA8lfa66aKVt4+w8gJbTYMQdfJ3EixpvIlz1EFQoHX1wNtuK
         GL+w==
X-Gm-Message-State: AGi0PuZYP9UXKona4U9ZwGyb9VBi+bPKqXR2ANjcJn18YSUkDP2XJV23
        TpkKp4Vn1wtW+SQcKYX2GNY=
X-Google-Smtp-Source: APiQypJV4zphS7E0EuSNIRXiCXbWQ2kCkagFhgZHQEeWZdgo4ltGQBeZzmp65FRjFZvj/csKulDvMA==
X-Received: by 2002:a5d:4409:: with SMTP id z9mr11263113wrq.325.1586425832251;
        Thu, 09 Apr 2020 02:50:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 138sm3254827wmb.14.2020.04.09.02.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 02:50:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk@man7.org" <mtk@man7.org>,
        Ponnuvel Palaniyappan <pponnuvel@gmail.com>,
        walter harms <wharms@bfs.de>
Subject: Re: Suggestion for edit
To:     Andrew Micallef <andrew.micallef@live.com.au>
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08f8d657-ef27-5c38-4707-296d04ca29b2@gmail.com>
Date:   Thu, 9 Apr 2020 11:50:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andrew,

On 4/7/20 6:06 AM, Andrew Micallef wrote:
> Hi Michael,
> 
> I'd like to suggest an edit to the description of `strcmp` in the standard C library man page.
> I found this description to be kind of confusing, and think the language could be a bit more
> straight forward.
>  At present the description reads as follows:
> 
> The strcmp() function compares the two strings s1 and s2.  The locale
>        is not taken into account (for a locale-aware comparison, see
>        strcoll(3)<http://man7.org/linux/man-pages/man3/strcoll.3.html>).
>        It returns an integer less than, equal to, or greater
>        than zero if s1 is found, respectively, to be less than, to match, or
>        be greater than s2.
> 
> I am suggesting the following edits:
> 
> The strcmp() function compares the two strings s1 and s2.  The locale
>        is not taken into account (for a locale-aware comparison, see
>        strcoll(3)<http://man7.org/linux/man-pages/man3/strcoll.3.html>).
>        It returns an integer, which is 0 if the strings
>        match. Otherwise, a negative integer indicates s1 is less than s2,
>        while a positive integer indicates s1 is greater than s2.

As Ponnuvel points out, the text pretty much matches POSIX. It is terse,
and clear. But also not so easy to parse, at least for some of us.

Furthermore, the text is essentially repeated twice in the page,
once in DESCRIPTION and then again in RETURN VALUE. Let's fix one of
those in the direction you suggest.

Also, I like Walter's suggestion of mentioning the arithmetic
difference.

How about this:

DESCRIPTION
       The  strcmp()  function  compares  the two strings s1 and s2.  The
       locale is not taken into account (for a  locale-aware  comparison,
       see  strcoll(3)).   The  comparison is done using unsigned charac‐
       ters.

*      strcmp() returns an integer indicating the result of the  compari‐
*       son, as follows:
*
*      · 0, if the s1 and s2 are equal;
*
*      · a negative value if s1 is less than s2;
*
*      · a positive value if s1 is greater than s2;

       The  strncmp()  function  is  similar, except it compares only the
       first (at most) n bytes of s1 and s2.

RETURN VALUE
       The strcmp() and strncmp() functions return an integer less  than,
       equal  to,  or  greater  than  zero  if  s1  (or the first n bytes
       thereof) is found, respectively, to be less than, to match, or  be
       greater than s2.

...

NOTES
*      POSIX.1 specifies only that:
*            The sign of a non-zero return value shall be determined  by
*             the  sign of the difference between the values of the first
*             pair of bytes (both interpreted as type unsigned char) that
*             differ in the strings being compared.
*
*      In  glibc,  as  in most other implementations, the return value is
*      the arithmetic result of subtracting the last  compared  character
*      in s2 from the last compared character in s1.  (If the two charac‐
*      ters are equal, this difference is 0.)

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
