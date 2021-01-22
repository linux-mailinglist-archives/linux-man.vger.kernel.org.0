Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C166130056F
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 15:31:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728698AbhAVOaZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 09:30:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728780AbhAVO3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 09:29:49 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA009C06174A
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 06:29:08 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id 63so5223147oty.0
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 06:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=9U7Fi45ADMNgZtMHPAUIRtZpI0y82cpYjJ6yWREiRv0=;
        b=Bk4/JeDnvj70yqedTzCtDUzvIFzFXNgVyjLTkgahgBsCL1WIpz6GqADSlSYlHF3axt
         mfnd6ZOpEhQ7+Sk2F7iNV3KZDdnfUiRcG2yY11yrLaI2Pac45/23b6l+FUE0snjfd4y9
         NHQ8SInfswXWJ9hwuW6j6JErDF7Dh+z8WSrkKPmTA1mQlO24NLsMApEcW6UJW23DVdeL
         wZDiwbWv5FWCjvv9P39MOIMayf9BYdutkzQrdA0kohZt7resvHv4rpRJ9NKfnG/+6ixE
         6YFW7ZQeyEzFscmA80mjfFFaAVE9hFoODcoCuEqUP4PYQWg1fXmj4wFVFQd/+M8oH+9M
         YmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=9U7Fi45ADMNgZtMHPAUIRtZpI0y82cpYjJ6yWREiRv0=;
        b=ONh60mib1iOVJUBqIAsSkq6I9ynD3UwRcIAgsglDLl98YRqmwRCLluayB3EM91ZovL
         rTwyzeeiM8BOORXszvds+AP0AaBs+PKugf1t6lrMO6Fo47Kf8x37fYcbYQLIC44Pp3qA
         Ek/Jhr7ultJ77V/8V5sTU1LUwaOpOYGUE92/V8fGVuHp1OobuHWSSl5K88jk5LpKAVTV
         FRlbcL5Tu2p3czDdWMW4eUtG5eFPLtaSgndYEalhyBnLLyVNNdtc0GQ6m3CKSW12zHYK
         YJ9j6ogJZLATM68W1d2F1J/qsV/2GDLek5cSWR7937iEncVGCV1ZhO1yPC930GIKYlsF
         y9EA==
X-Gm-Message-State: AOAM531lOADa2Iy4QXX+AsfVV2Ocu5bEwu1T47+5GDjlKxBJQoHD9vvi
        x6bLdwhA92CyJfq3pok0iglpn7uYDZCjCiS6nJQ=
X-Google-Smtp-Source: ABdhPJxShPV5pAkOqrt31BlUwePg3PA+UaVRWAbOqhfUSlC9HwLT3ebUnIZOW3jjG3XIFlEBc6lbV1NGrHDBXoTxCr4=
X-Received: by 2002:a9d:5e0f:: with SMTP id d15mr3479043oti.308.1611325748274;
 Fri, 22 Jan 2021 06:29:08 -0800 (PST)
MIME-Version: 1.0
References: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
In-Reply-To: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 22 Jan 2021 15:28:57 +0100
Message-ID: <CAKgNAkgKCEvFPpECWq6=ih1aoZQfrYSO1c=Ke17Tf+RhtASJpw@mail.gmail.com>
Subject: Re: Correctly formatting URIs: slash
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 22 Jan 2021 at 14:00, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi all,
>
> Why do some pages use \:/ for the slash in the path part of a URL, but
> some others don't, and just use /?
>
> Moreover, why do the former use \:/ only for the path, but not for the
> protocol?
>
> $ grep -n '^\.UR' man7/uri.7;
> 173:.UR http://www.w3.org\:/CGI
> 243:.UR http://www.ietf.org\:/rfc\:/rfc1036.txt
> 383:.UR http://www.ietf.org\:/rfc\:/rfc2255.txt
> 396:.UR http://www.ietf.org\:/rfc\:/rfc2253.txt
> 414:.UR http://www.ietf.org\:/rfc\:/rfc2254.txt
> 456:.UR http://www.ietf.org\:/rfc\:/rfc1625.txt
> 555:.UR
> http://www.fwi.uva.nl\:/\(times\:/jargon\:/h\:/HackerWritingStyle.html
> 583:.UR http://www.ietf.org\:/rfc\:/rfc2396.txt
> 586:.UR http://www.w3.org\:/TR\:/REC\-html40
> 707:.UR http://www.ietf.org\:/rfc\:/rfc2255.txt
> $
>
> $ grep -Inr '^\.UR' man? \
>   |grep -c '\\:/';
> 56
> $
>
> $ grep -Inr '^\.UR' man? \
>   |grep -c -v '\\:/';
> 41
> $
>
> $ grep -Inr '^\.UR' man? \
>   |grep '\\:/' \
>   |head -n1;
> man2/futex.2:1910:.UR
> http://kernel.org\:/doc\:/ols\:/2002\:/ols2002\-pages\-479\-495.pdf
> $
>
> $ grep -Inr '^\.UR' man? \
>   |grep -v '\\:/' \
>   |head -n1;
> man1/memusage.1:206:.UR http://www.gnu.org/software/libc/bugs.html
> $
>
> What is the correct form?

The "\:" is a clue to groff that it can do a line break here if
necessary; i.e., it is a recommendation that is a better point to
break than, say, in the middle of a word in the URL. Useful especially
for long URLs.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
