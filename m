Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4586A27F43F
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 23:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728660AbgI3VcY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 17:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgI3VcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 17:32:24 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47189C061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 14:32:24 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so3362648wrt.3
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 14:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yOprEcnRItLOUw4UB3u8vhRDTu3vBUPGfX4kP+/SGbo=;
        b=QkJgVFZGJtLFJU5jlLVANwr1iuLDKRo+tsyJ052z2gx+JF4a3mhZTcOmP6mx3vaAy9
         wPsJoPKTSzGzSa/OAKQPehFkLW6Vopt71UxDjBQ9UGtl4K1oANyaLlMEp9FsEkmmp5vN
         1HQe4JF/GbMutn5BjMGRJ4yyL3mZaoNiZ0igLcKsjZ1RKCiXEZS9/76H7AY0tsz7hrDv
         KnVwfhoAMKoJwlltsGZvNAur4gnHSYvRm+hA+l/6oyyE3OTvjDVM1wEOUU7yj1T7Ju4S
         tiLRHvBPU8w8cfURdzkwgtMN+3/q84OB1NO8co4LQLfw2QOfHse8J/VVKPShQutZE6vc
         F7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yOprEcnRItLOUw4UB3u8vhRDTu3vBUPGfX4kP+/SGbo=;
        b=ozvD4qE+R79AxiJoIH27H8Su8pyKmT56+jQpY1pb4bZZ7Tre8/6BKGviXcHo/UA3F7
         S49rvdnJzrhsbcT0VaoP4gUlf+8zdYQ7EBqsAHB7mkdqrdbGD4YpeuVgy5xpHwjigd5B
         RaGGhHg2nQ+/MljILd8lM8hJ4ch2aUJJWnSZgVUbikvI7EII33KQEgiMTQjUs+px7fYl
         LKpqCldh1tIhVZzvyi2Kh4/fHjYs9k9fvIKVW6N/t3M0a49iJJS/W5q3P6Bu7mt+4EWf
         bLxIyFeDF7MmAI57JwrrN1VI0lh8wCyxYTFEzPDRhv75wvQwFpDEf09I1nik1rCmxrQV
         ynUQ==
X-Gm-Message-State: AOAM53163PZc45gjAf6d/J7gJlmvApqNbeDBL1t+/ZdnpS+0PtjzP9jk
        i/kOI2WvozssQ1/DCS1+0/A=
X-Google-Smtp-Source: ABdhPJzYW4tKPpoveZ+EV9DdBRZCDFu6hqP2uoLf86zDIdiFAygr4ozRoGSS5WxyHsOajH9h5I/zhA==
X-Received: by 2002:adf:e802:: with SMTP id o2mr5080962wrm.309.1601501542879;
        Wed, 30 Sep 2020 14:32:22 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q20sm4801846wmc.39.2020.09.30.14.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:32:21 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
 <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
 <20200930104322.6ffed5lw3uqmlzph@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f9871768-cc7a-fac0-3500-6a0ccaa78099@gmail.com>
Date:   Wed, 30 Sep 2020 23:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930104322.6ffed5lw3uqmlzph@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden & Michael,

On 2020-09-30 12:43, G. Branden Robinson wrote:
 >> However, if using .br is a big headache, I would rather not use
 >> workarounds (as you proposed in an earlier email),
 >> and instead just live with the blank line.  It's not much of a
 >> problem.
 >
 > Was an actual decision taken on this?  I see patches continuing to roll
 > in containing this .br-based pattern.  I think if the extra line is
 > live-withable, it should be lived with (or one of my four proposed
 > alternatives could be used :) ), in preference to setting the bad
 > example of the "naked" .br requests.

No decision yet.
We continued with the patch,
considering that we might revert it
or change it to a different approach in the future.
Actually I thought Michael would have hold the patches until the decision,
but he merged them, and it may be easier this way...
we'll fix it when we decide.

For me, I can live with the extra blank line.
Michael, what are your thoughts?

 >
 > man page markup is highly prone to cargo-culting; on the groff list not
 > too long ago, some sleuthing revealed an example of a typo that crept
 > into the X Window System man pages over 30 years ago and was not only
 > diligently retained there but faithfully copied elsewhere by people who
 > didn't realize what they were copying[1].

As someone who has written man-pages only for about a month,
I completely ignore the problems about using .br.
I see it easy in my mind:
I want a line break (without fancy paragraph stuff), I write .br.
I guess it's somewhat more complicated than that :-)
You could probably convince me otherwise,
and in fact you may have already...

 >
 >> I leave it up to you to decide what to do, Michael.
 >>
 >> My proposals:
 >> If you prefer consistency in the source, I'd rather not use
 >> workarounds: I'd just leave .PP, and accept the blank line
 >> I see those workarounds uglier than .br.
 >
 > Too bad for me.  But I admit I'm not proud of that .TQ thing.  :P
 >
 >> If you however prefer consistency in the visual page,
 >
 > That's not how it appears to me; I may be bringing too much insider
 > knowledge to the question, but I know when I see them that the things
 > you've termed section headings aren't true section headings.  Primarily
 > I can tell by the fact that their indentation is wrong for an .SH macro.
 >
 > But the knowledge isn't all that far inside.  The worst hand-written man
 > page I have ever seen in my life, or expect to see, was written by
 > Albert Cahalan, who hated *roff with a passion I have reserved only for
 > love affairs.  He learned just enough of the language to subvert man-db
 > and groff into accepting his plain-text document as a man page[2].
 >
 > I don't know what ever became of Mr. Cahalan, but I imagine that he is
 > somewhere working on processing Markdown with XML:FO and enjoying
 > himself immensely.

8-O

I'm curious as to how that man page displays...

 >
 > Regards,
 > Branden
 >
 > [1] https://lists.gnu.org/archive/html/groff/2019-03/msg00047.html
 > [2] 
https://gitlab.com/procps-ng/procps/blob/7ac9a0e1f5606696dc799b773d5ec70183ca91a3/ps/ps.1
 >


I was writing about the different options and testing them,
when by accident I discovered that .RS alone, which I introduced lately,
already fixed the problem we had in the beginning:
.RS forces a line break after the tag
(so .br is actually redundant right now).

I guess we'll all be happy with just .RS, right? :-}

Cheers,

Alex
