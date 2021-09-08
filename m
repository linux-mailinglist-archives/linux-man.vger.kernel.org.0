Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B45E74036D4
	for <lists+linux-man@lfdr.de>; Wed,  8 Sep 2021 11:23:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351415AbhIHJYT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Sep 2021 05:24:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351419AbhIHJYR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Sep 2021 05:24:17 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A39C7C061575
        for <linux-man@vger.kernel.org>; Wed,  8 Sep 2021 02:23:09 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id q26so2205952wrc.7
        for <linux-man@vger.kernel.org>; Wed, 08 Sep 2021 02:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fh+F8CROR/VGjtwnArq/oSSwBfX7MOCM+iT+UjFKOsQ=;
        b=X5IZxsAjNhCpLNFWGkruA1U69Yz012X+5qavETg77Ely8C50Fbwdl3xt8F53herger
         aa/Re1P/jAim/3x6+hOio3gGmYIkCRSHIQRI/UMo/zxxSyT/siPhK2nh/FK02T0C9lQt
         bnrJxuKvsS90srDlAu5q0ht547E0IhQhWHsA/6ze8+fXCh6aJUrO/B8FvMNam3el+I4o
         myLrGsbgqRL2lHgohnA866lMpEW/6o/KiR6BJIvzLfTFtVHIKJoArJjx+82690hu4Fuf
         PNVHuK0YCK8pb2mWAzp3ALFLdQTI053AwqfgjWfdqJVpEgCrhYkLNTPDfdy0PknY9uuI
         cq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fh+F8CROR/VGjtwnArq/oSSwBfX7MOCM+iT+UjFKOsQ=;
        b=l6lUDUAHvGX8oWK7C2/aIcM5tGcbsr4uEV5UF9eSnZy0ITRCRK/91edNU12SWYgMhV
         QjOni7vXfGcJ5tJW1JiSix+uKTPgMzxJSKSo3rMWrDTXxRDHrrPEoZ+8KTiFrKW4Rs7S
         oeDQo1jMu/KXl3+FQmRrb4DQX5BIxNwPkQutFZnhM/MG6SCRS9E9LKV4BUvcvtwrRET0
         zXvoDAJIUnYHZ05fGYndXS1kv8QNp0qQiegnyfauokNQl5+HL8YFq/l77Tww7xgnZwpc
         q/7Fri1rDPCCsRfAgnIsMoiM0oYZ79cVrIsBQXDWAt3M9oKFLptcj6h0Ee8dfh/6DbB+
         AG5w==
X-Gm-Message-State: AOAM533j+uNAgNADpd4sYfyJ9WP2FPfJCDSRjCz6UaVCc8ded4DsVo9m
        ZCFR2n7Q/hhC00jBJA5W5KE=
X-Google-Smtp-Source: ABdhPJwL8+xrKJB6JaLucQg+6u6ELJSErm7zdiIAzXnjsu1o/WPc/pxVXKaguQxQVuQNLP0ehGqxDg==
X-Received: by 2002:adf:eb02:: with SMTP id s2mr2937880wrn.294.1631092988271;
        Wed, 08 Sep 2021 02:23:08 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m12sm1532126wrq.29.2021.09.08.02.23.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 02:23:07 -0700 (PDT)
Subject: Re: [RFC v3 1/9] LICENSES/GPL-1.0-or-later.txt, many pages: Use SPDX
 markings
To:     Richard Fontana <rfontana@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
 <20210905132542.245236-2-alx.manpages@gmail.com>
 <CAC1cPGy9hwwbSuGvsneg+ePar3rgiv7Oz3Gff4RALr+wdf-kZg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <074061d6-0973-f0a7-57ca-188e85e17f22@gmail.com>
Date:   Wed, 8 Sep 2021 11:23:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAC1cPGy9hwwbSuGvsneg+ePar3rgiv7Oz3Gff4RALr+wdf-kZg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Richard,

On 9/5/21 11:53 PM, Richard Fontana wrote:
> On Sun, Sep 5, 2021 at 9:25 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> To simplify understanding which license applies to each file,
>> let's use SPDX markings, which are simple, informative, and
>> commonly used in many projects.
>> Let's also follow REUSE <https://reuse.software/> conventions.
>>
>> I assime GPL-1.0-or-later is the closest thing to GPL_NOVERSION_ONELINE,
>> which I couldn't find anywhere.
> 
> That's pretty unlikely what any contributor to these files intended,
> but maybe harmless. But the inclusion of the GPL version 1 text (the
> logic of which I understand, given the desire to follow REUSE)
> emphasizes the awkwardness. If this were my project, I'd probably just
> recast these as GPL-2.0-or-later (which is generally understood to be
> permissible). Socially, I think by the early years of the kernel, GPL
> version 1 was largely forgotten, and "the GPL" had come to mean GPL
> version 2, or in some contexts GPL version 2 and (for a long time)
> hypothetical future versions of the GPL.

Technically, we could update 1.0+ to 2.0+, since it's a subset of it.
I didn't want to reduce rights artificially before knowing what 
GPL_NOVERSION_ONELINE is.  But if the general understanding is that 
authors wanted GPL 2, I'm fine with it.  I'll do that in a separate 
commit for now (which will remove the 1.0+ license text and change the 
identifiers), however, instead of amending.

> 
> One other thing:
> 
>> -.\" Copyright 1995-2000 David Engel (david@ods.com)
>> -.\" Copyright 1995 Rickard E. Faith (faith@cs.unc.edu)
>> -.\" Copyright 2000 Ben Collins (bcollins@debian.org)
>> -.\"    Redone for GLibc 2.2
>> -.\" Copyright 2000 Jakub Jelinek (jakub@redhat.com)
>> -.\"    Corrected.
>> -.\" and Copyright (C) 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
>> -.\"
>> -.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
>> -.\" Do not restrict distribution.
>> -.\" May be distributed under the GNU General Public License
>> -.\" %%%LICENSE_END
>> +.\" SPDX-FileCopyrightText: 1995-2000, David Engel <david@ods.com>
>> +.\" SPDX-FileCopyrightText: 1995, Rickard E. Faith <faith@cs.unc.edu>
>> +.\" SPDX-FileCopyrightText: 2000, Ben Collins <bcollins@debian.org>
>> +.\" SPDX-FileCopyrightText: 2000, Jakub Jelinek <jakub@redhat.com>
>> +.\" SPDX-FileCopyrightText: 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
> 
> I haven't followed what the kernel has been doing around use of SPDX
> expressions in source files for a long time. Is it now routinely
> replacing original copyright notices with these SPDX-FileCopyrightText
> statements? Without permission from the authors, this feels
> questionable to me, as (in theory) this could have some sort of
> unexpected legal consequence or violate the expectations of the
> authors. In at least some cases, the original copyright notice might
> be a formally valid copyright notice under US law (or perhaps, less
> likely I think, the law of some other jurisdiction) while the
> transformed version wouldn't be. To be sure, it's unlikely to matter
> for various reasons, but I just hope someone has thought about this.

I'm not an expert in legal matters, and also don't know very much what 
other projects have been doing about this.

I reformatted some of the copyright lines in the following ways:

- Transform () emails into <> for consistency.  Not a meaningful change.

- Add commas and spaces for consistency.  Not a meaningful change.

- Remove the "Copyright (c) " prefix, since I understand that 
"SPDX-FileCopyrightText: " replaces it, I hope both semantically and 
legally.  I hope this is not a meaningful change, but I'd like advise 
from experts (that's why I CCd some SPDX people).

- When dates were so specific to include the day, I simplified to only 
the year.  That's slightly meaningful, maybe too much...  But I thought 
that knowing the exact day a page was written isn't important 30 years 
after.

- I consciously removed text in a couple copyright of lines saying "All 
rights reserved." when the license was GPL.  It was simply wrong.  The 
GPL is already giving away rights, so they are not reserved.

> 
> Ah, I also see that the SPDX speaks of SPDX-FileCopyrightText :
> https://spdx.github.io/spdx-spec/appendix-IX-file-tags/
> 
> But in the examples there, it looks like the hypothetical original
> copyright notice is preserved and just gets "SPDX-FIleCopyrightText"
> prepended. Here you're transforming the original copyright notice into
> a "date, name" string.

Well, it's mostly what a copyright notice was originally meant to be, I 
think; copyright holder and date.  SPDX only formats it more consistently.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
